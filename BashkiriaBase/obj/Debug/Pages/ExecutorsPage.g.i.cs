// Updated by XamlIntelliSenseFileGenerator 16.04.2022 11:06:27
#pragma checksum "..\..\..\Pages\ExecutorsPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "8E947E1ED12DA4453A83326275DD38BA091ED1B849035E98B98D870FA2596E1F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using BashkiriaBase.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace BashkiriaBase.Pages
{


    /// <summary>
    /// ExecutorsPage
    /// </summary>
    public partial class ExecutorsPage : System.Windows.Window, System.Windows.Markup.IComponentConnector
    {

        private bool _contentLoaded;

        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent()
        {
            if (_contentLoaded)
            {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/BashkiriaBase;component/pages/executorspage.xaml", System.UriKind.Relative);

#line 1 "..\..\..\Pages\ExecutorsPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);

#line default
#line hidden
        }

        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target)
        {
            this._contentLoaded = true;
        }

        internal System.Windows.Controls.ColumnDefinition CarNumColumnChange;
        internal System.Windows.Controls.DockPanel ReadersDataGridDockPanel;
        internal System.Windows.Controls.Button AddCarNumButton;
        internal System.Windows.Controls.Button CopyCarNumButton;
        internal System.Windows.Controls.Button EditCarNumButton;
        internal System.Windows.Controls.Button DeleteCarNumButton;
        internal System.Windows.Controls.ComboBox FilterComboBox;
        internal System.Windows.Controls.TextBox FilterTextBox;
        internal System.Windows.Controls.StackPanel PhotoStackPanel;
        internal System.Windows.Controls.DataGrid CarNum;
        internal System.Windows.Controls.GridSplitter DialogGridSplitter;
        internal System.Windows.Controls.Label CarNumTitle;
        internal System.Windows.Controls.ComboBox CarNumComboBoxMake;
        internal System.Windows.Controls.ComboBox CarNumComboBoxModel;
        internal System.Windows.Controls.ComboBox CarNumTextYearIssue;
        internal System.Windows.Controls.TextBox CarNumTextRegPlates;
        internal System.Windows.Controls.Button CopyAddCommit;
        internal System.Windows.Controls.Button CopyAddRollback;
    }
}
