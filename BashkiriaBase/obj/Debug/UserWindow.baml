   M S B A M L   `   `   `  ����H  DBashkiriaBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:BashkiriaBaseBashkiriaBase  5   	       BashkiriaBase.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:BashkiriaBase     5   	     � Title$  
UserWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5
       �� 
TargetType �� Property �� Value��%�   '��       �� 5   
   " ��6   .�5      ��  � �� �#e287436+   �� 5       � ��$ 35��6'   �� 5       � ��$ 15(�6)   �� 5       � �� �#e287436,   �� 5       � ��
 �����6+   5      5      .��5      � ���#eeeee4 � ColumnDefinitions 5   
   �� 5      $	��130 �6   $	��130��6+   $	��250��6:   �� 5      $
��Auto �6   �� 5      $��* �6   $	��300��6)    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��35 �6   .+�5   
   �� $��0��6   $��0��6%   $��2��62   ���#eab676.+�5       �� $��logo.png��6   $	��120��6&   $	��120��62   $��	0,10,0,10q�6?   �� 5!      -   5         ��Name$ ExecutorButton��5!      $��Исполнители��6G   �� 5"      -   5        $ SubprogramButton��5"      $��Подпрограммы��6J   �� 5#      -   5        $ ProgramButton��5#      $��Программы��6D   5$      �� 5&   
   $��1��6   $��0��6'   $��2��64   $��3��5'      $��Stretch=�6!   ���#eab6766?    � 5)   
   -   5          �Name$ 	RootFrame��5)      $��2��6#   $��0��63   	  � NavigationUIVisibility$	 Hidden=�6@   �� 5+   
   $��2��6   $��1��6$   ���#eab67661   �� 5,   
   $��2��6   $��1��6%   
 �� Orientation$
 
Horizontal=�62   $
��Left=�6K   .+�5-      �� -   5        $ PreviosPageButton��5-      $��
Назад��60   $��80��6@   �� 5.      -   5        $ NextPageButton��5.      $��Вперед��6-   $��80��6>   5/      �� 50   
   $��2��6   $��1��6%   $
 
Horizontal=�62   $��Right=�6K   .+�51      �� -   5        $ ClosePageButton��51      $%��Закрыть страницу��6.   $	��140��52      53      54      55      