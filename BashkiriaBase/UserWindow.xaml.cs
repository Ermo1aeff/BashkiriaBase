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
using BashkiriaBase.Pages;

namespace BashkiriaBase
{
    /// <summary>
    /// Логика взаимодействия для UserWindow.xaml
    /// </summary>
    public partial class UserWindow : Window
    {
        public UserWindow()
        {
            InitializeComponent();
        }

        private void ShowExeccutorPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new ExecutorsPage());
        }

        private void ShowSubprogramPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new SubprogramsPage());
        }

        private void ShowProgramPage(object sender, RoutedEventArgs e)
        {
            RootFrame.Navigate(new ProgramsPage());
        }
    }
}
