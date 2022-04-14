using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
            //if () checkPassword = false;

            bool checkPassword = true;

            if (checkPassword)
            {
                executors Executors = new executors();
                Executors.executor_name = ExecuterTextBox.Text;
                Executors.login = LoginTextBox.Text;
                Executors.password = PasswordBox.Password != "" ? PasswordBox.Password : PasswordTextBox.Text;
                // Добавление пользователя в базу данных
                DataBase.executors.Add(Executors);
                // Сохранение изменений
                DataBase.SaveChanges();
                Window AutorizationWin = new MainWindow();
                Close();
                AutorizationWin.Show();
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
