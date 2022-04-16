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

namespace BashkiriaBase.Pages
{
    /// <summary>
    /// Interaction logic for ExecutorPage.xaml
    /// </summary>
    public partial class ExecutorPage : Page
    {
        Data.BashkiriaEntities db = new BashkiriaEntities();

        public ExecutorPage()
        {
            InitializeComponent();
            DataContext = this;
            ExecutorNum.ItemsSource = db.executors.ToList();
            CarNumColumnChange.Width = new GridLength(0);
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Copy_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ExecutorCommit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ExecutorRollback_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
