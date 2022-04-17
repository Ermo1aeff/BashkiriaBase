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
    public partial class ExecutorsPage : Page
    {
        BashkiriaEntities db = new BashkiriaEntities();

        public ExecutorsPage()
        {
            InitializeComponent();
            DataContext = this;
            ExecutorGrid.ItemsSource = db.executors.ToList();
        }
    }
}
