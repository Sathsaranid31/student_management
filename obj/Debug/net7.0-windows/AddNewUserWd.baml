   M S B A M L   `   `   `  ����E  ADesktopApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:DesktopApp
DesktopApp  5   	       DesktopApp.AddNewUserWd   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:DesktopApp     5   	   $	��450��5   E   $	��800��6R     � Title  6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5	         DesktopApp.AddNewUserWdVM  5
   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� 
����ح�$	��800��5   #   $	��450��6/   $��Center=�6<   $	��Top=�5       �� Orientation$ Vertical=�6%   .+�5      �� $��5q�6    �� TextAlignment$ Center=�6"   $��Center=�6t   $	��200��6�   ��69   �� *Title+$ PropertyChanged=�6�   �� 5      $��First Name:��6   $��5q�6*   �� 5       $
��Left=�5!      $	��500��60   $��5q�6<   $��1��6G   ��5       �� *	Firstname+$ PropertyChanged=�5!   G   �� 5#      $��
Last Name:��6   $��5q�6*   $��1��65   �� 5$      $
��Left=�5%      $	��500��61   $��5q�6=   $��1��6H   ��5$      �� *
Lastname+$ PropertyChanged=�5%   H   �� 5'      $��DateOfBirth:��6   $��5q�6,   $��1��67   �� 5(      $
��Left=�5)      $	��500��6.   $��5q�6:   $��1��6E   $��1��6R   ��5(      �� *Dateofbirth+$ PropertyChanged=�5)   R   �� 5+      $��Department:��6   $��5q�6+   $��1��66   �� 5,      $
��Left=�5-      $	��500��61   $��5q�6=   $��1��6H   $��1��6U   ��5,      �� *
Department+$ PropertyChanged=�5-   U   �� 5/      $
��GPA:��6   $��5q�6$   $��1��6/   �� 50      $
��Left=�51      $	��500��61   $��5q�6=   $��1��6H   $��1��6U   ��50      �� *Gpa+$ PropertyChanged=�51   U   �� 53      $��	Add photo��6   $	��100��6)   $��25��65   
�����_�
����  �$
��Left=�54      $��
5,20,5,-90q�6X   $��3��6l   $��Bottom=�55      $��2��60   ��54   1   �� *InsertPhotoCommand+55   0   �� 57      $��50��6   $
��Left=�6    $	��100��6;   $	��Top=�6G   $��
130 20 0 0q�58      ��6(   �� *SelectedImage+$ PropertyChanged=��� 5:      $
��Save��6   $	��100��6$   
�����_�$��15(�6G   
����  �$
��70 0q�5;   5   $��3��6C   $��Right=�6P   $��Bottom=�5<      $��2��60   ��5;      �� *SaveCommand+5<   0   5?      5A      5B      