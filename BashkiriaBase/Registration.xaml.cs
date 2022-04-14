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
        private BashkiriaEntities DataBase = new BashkiriaEntities();

        public Registration()
        {
            InitializeComponent();
        }

        private void OkButton_Click(object sender, RoutedEventArgs e)
        {
            executors Executors  = new executors();
            Executors.executor_name = ExecuterTextBox.Text;
            Executors.login = LoginTextBox.Text;
            Executors.password = PasswordPasswordBox.Password != "" ? PasswordPasswordBox.Password : PasswordTextBox.Text;
            // Добавление его в базу данных
            DataBase.executors.Add(Executors);
            // Сохранение изменений
            DataBase.SaveChanges();
            Close();
        }

        private void PasswordButton_Click(object sender, RoutedEventArgs e)
        {
            String Password = PasswordPasswordBox.Password;
            Visibility Visibility = PasswordPasswordBox.Visibility;
            double Width = PasswordPasswordBox.ActualWidth;
            double FontSize = PasswordPasswordBox.FontSize;
            // Изменение подписи на кнопке
            PasswordButton.Content = Visibility == Visibility.Visible ? "Скрыть" : "Показать";
            //Переброска информации из TextBox'а в PasswordBox
            PasswordPasswordBox.Password = PasswordTextBox.Text;
            PasswordPasswordBox.Visibility = PasswordTextBox.Visibility;
            PasswordPasswordBox.Width = PasswordTextBox.Width;
            // Возврат информации из временных буферов в TextBox
            PasswordTextBox.Text = Password;
            PasswordTextBox.Visibility = Visibility;
            PasswordTextBox.Width = Width;
            PasswordTextBox.FontSize = FontSize;
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            Window a = new MainWindow();
            a.Show();
            this.Close();
        }
    }
}
