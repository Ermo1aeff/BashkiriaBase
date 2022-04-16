using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using BashkiriaBase.Data;

namespace BashkiriaBase
{
    /// <summary>
    /// Interaction logic for Registration.xaml
    /// </summary>
    public partial class Registration : Window
    {
        private BashkiriaEntities DataBase;

        public Registration()
        {
            InitializeComponent();
            try
            {
                DataBase = new BashkiriaEntities();
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к базе данных. Проверьте настройки подключения приложения.",
                    "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
                Close();
            }
        }

        private void OkButton_Click(object sender, RoutedEventArgs e)
        {
            string message = "";

            string password = PasswordBox.Password != "" ? PasswordBox.Password : PasswordTextBox.Text;

            if (password.Length < 8)
            {
                message = "Пароль должен быть не менее \n8 символов.";
            }

            Regex regex = new Regex(".*[A-Z].*");
            if (!regex.IsMatch(password))
            {
                message = "Пароль должен содержать \nзаглавные буквы латинского алфавита.";
            }

            regex = new Regex(".*[a-z].*");
            if (!regex.IsMatch(password))
            {
                message = "Пароль должен содержать \nпрописные буквы латинского алфавита.";
            }

            regex = new Regex(@".*\s.*");
            if (regex.IsMatch(password))
            {
                message = "Пароль НЕ должен содержать \nпробелы!";
            }

            regex = new Regex(@"(.*\W.*)");
            if (!regex.IsMatch(password))
            {
                message = "Пароль должен содержать специ-\nальные символы по типу: ? . \\ # ^ ( ) @.";
            }

            regex = new Regex(@"(.*[0-9].*)");
            if (!regex.IsMatch(password))
            {
                message = "Пароль должен содержать цифры.";
            }

            string login = LoginTextBox.Text;

            if (login.Length < 8)
            {
                message = "Логин должен быть не менее \n8 символов.";
            }

            if (message == "")
            {
                executors Executors = new executors();
                Executors.executor_name = ExecuterTextBox.Text;
                Executors.login = LoginTextBox.Text;
                Executors.password = password;
                // Добавление пользователя в базу данных
                DataBase.executors.Add(Executors);
                // Сохранение изменений
                DataBase.SaveChanges();
                Window AutorizationWin = new MainWindow();
                Close();
                AutorizationWin.Show();
            }
            else 
            {
                ErrorMessage.FontSize = 12;
                if (message.Length > 60)
                {
                    ErrorMessage.FontSize *= (double)60 / message.Length;
                }
                ErrorMessage.Content = message;
            }
        }

        private void PasswordButton_Click(object sender, RoutedEventArgs e)
        {
            String Password = PasswordBox.Password;
            Visibility Visibility = PasswordBox.Visibility;
            double Width = PasswordBox.ActualWidth;
            double FontSize = PasswordBox.FontSize;
            // Изменение подписи на кнопке
            PasswordButton.Content = Visibility == Visibility.Visible ? "Скрыть" : "Показать";
            //Переброска информации из TextBox'а в PasswordBox
            PasswordBox.Password = PasswordTextBox.Text;
            PasswordBox.Visibility = PasswordTextBox.Visibility;
            PasswordBox.Width = PasswordTextBox.Width;
            // Возврат информации из временных буферов в TextBox
            PasswordTextBox.Text = Password;
            PasswordTextBox.Visibility = Visibility;
            PasswordTextBox.Width = Width;
            PasswordTextBox.FontSize = FontSize;
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            Window AutorizationWin = new MainWindow();
            Close();
            AutorizationWin.Show();
        }
    }
}
