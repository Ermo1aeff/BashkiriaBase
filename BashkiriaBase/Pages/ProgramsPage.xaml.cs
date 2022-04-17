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
    /// Логика взаимодействия для ProgramsPage.xaml
    /// </summary>
    public partial class ProgramsPage : Page
    {
        BashkiriaEntities db = new BashkiriaEntities();

        public ProgramsPage()
        {
            InitializeComponent();
            DataContext = this;
            ProgramsGrid.ItemsSource = db.executors.ToList();
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

        private void CarNumCommit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void CarNumRollback_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
