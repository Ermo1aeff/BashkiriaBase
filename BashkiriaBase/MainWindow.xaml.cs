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
using System.Windows.Navigation;
using System.Windows.Shapes;
using BashkiriaBase.Data;

namespace BashkiriaBase
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private BashkiriaEntities DataBase;

        public MainWindow()
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

        private void RegistrationButton_Click(object sender, RoutedEventArgs e)
        {
            Window ReigstrutionWin = new Registration();
            Close();
            ReigstrutionWin.Show();
        }

        private void AuthorizationCommit_Click(object sender, RoutedEventArgs e)
        {
            executors Executor = DataBase.executors.SingleOrDefault(U => U.login == LoginText.Text && U.password == PasswordText.Text);
            if (Executor != null)
            {
                UserWindow window = new UserWindow();
                Close();
                window.Show();
            }
        }

        private void AuthorizationRollBack_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы действительно хотите выйти из программы?", "Внимание", MessageBoxButton.OKCancel, MessageBoxImage.Warning) == MessageBoxResult.OK)
            {
                Close();
            }
        }
    }
}
