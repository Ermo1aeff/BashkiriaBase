   M S B A M L   `   `   `  ����H  DBashkiriaBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:BashkiriaBase.PagesBashkiriaBase.Pages  5      )    #BashkiriaBase.Pages.SubprogramsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:BashkiriaBase.Pages     5        N� 
Background  �#eab676.��5      � .+�5   
   ]� -   5         ]�Name$ ReadersDataGridDockPanel��5      $��1��66   $��0��6C   $��2��5      .+�5      ��  �� Orientation$ 
Horizontal=�6   $	��Top=�62   $��30��6G   $��3��6S   ���#e28743.+�5      �� $��Подпрограммы��6   $��15(�6/   $
��auto��6=   
�������6J   5      ]� 5      $	��Top=�6   .+�5      �� $��Поиск:��6   $��15(�6)   $
��auto��67   �� 5      -   5         ��Name$ FilterComboBox��5      $	��120��63   $��30��6?   �� 5      -   5         ��Name$ FilterTextBox��5      
�������$��15(�6D   $��30��6R   $
��auto��6^   5      ]� 5      .+�5      �� -   5         ��Name$ PhotoStackPanel��5      $��Right=�66   $
��Auto��6M   .+�5      �� 
�������$��1q�64   
�������6H   5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ SubprogramsGrid��5         AutoGenerateColumns .     CanUserAddRows .  
�������	   AlternatingRowBackground
	 �����
   RowBackground
 �	#FFEAB676$��15(�5    i    � 	Resources 5"      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� BasedOn �� 
TargetType �� Property �� Value��%#  '        7 '�� �     �� 5#      8   "  6Y   .�5$      ��  � �� �#e287436;   �� 5%       � ��$ 25��67   �� 5&       � ��$ 15(�69   �� 5'       � ��
 �����6;   5(      �� 5)      " ��6    .�5*      ��  � ��
 �����6;   5+      5,         Columns 5-      0  *System.Windows.Controls.DataGridTextColumn  5.      ,  &System.Windows.Controls.DataGridColumn   Header$ Подпрограмма��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$	 10* 6l   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6C   ��  �� Path$ subprogram_name�6l     5/      $ Программа��6-   $	 10* 6o    6@   �� $ programs.program_name�6o   51      52      53      54      55      