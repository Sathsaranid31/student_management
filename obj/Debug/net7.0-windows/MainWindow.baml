   M S B A M L   `   `   `  ����E  ADesktopApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:DesktopApp
DesktopApp  5   	       DesktopApp.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:DesktopApp     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
MainWindow��5	   	   $	��450��6   $	��800��6)    � DataContext 5
         DesktopApp.MainWindowVM  5   
   .��5      � .+�5   
   �� $	��800��6   $	��100��6!   $��Bottom=�5      
����ح� �� Orientation$ 
Horizontal=�5   ,   .+�5      �� $��Add a New Student��6   
���   �   
mainbutten#��[  5      ��6:   �� *AddStudentCommand+�� 5      -   5        $��Edit Student Details��5      
���   �#��[  5      ��69   �� *EditStudentCommand+6`   �� 5      $��Delete a Student��6   
���   �#��[  5      ��69   �� *DeleteStudentCommand+5      �� 5   
   $	��335��6   
�����_�$	��Top=�69   $ Vertical=�6Q   .+�5      �� $��	 40 0 0 0q�6   $
��Left=�6-   $	��600��6H   
������ $ 
Horizontal=�6n   .+�5       �� $��	FirstName��6   
����  �  ListView#��[ 6D   �� 5"      $��LastName��6   
����  �#��[ 6D   �� 5$      $��DataOfBirth��6   
����  �#��[ 6G   �� 5&      $��
Department��6   
����  �#��[ 6E   �� 5(      $	��Gpa��6   
����  �#��[ 6>   5*      �� 5,      -   5         ��Name$ Listview��5,      $��0 20 0 0q�6*   
������ $	��280��6U   ��5-      �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5.      �� *SelectedUser+$ PropertyChanged=���50      �� 51      .R�53      �� $	��600��6)   
������ $ 
Horizontal=�6O   .+�55   "   �� $��30��6(   $��30��63   $��1q�6?   ��6J   �� *Image+�� 57   "   #��[ 58   ,   ��57   ,   �� *	FirstName+$ PropertyChanged=�58   ,   �� 5:   "   #��[ 5;   ,   ��5:   ,   �� *
LastName+$ PropertyChanged=�5;   ,   �� 5=   "   #��[ 5>   ,   ��5=   ,   �� *DateOfBirth+$ PropertyChanged=�5>   ,   �� 5@   "   #��[ 5A   ,   ��5@   ,   �� *
Department+$ PropertyChanged=�5A   ,   �� 5C   "   #��[ 5D   ,   ��5C   ,   �� *GPA+$ PropertyChanged=�5D   ,   5F      5I      5L      5M      5O      5P      