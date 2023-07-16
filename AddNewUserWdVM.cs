using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DesktopApp.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace DesktopApp
{
    public partial class AddNewUserWdVM : ObservableObject

    {
        
   
        [ObservableProperty]
        public string firstname;


        [ObservableProperty]
        public string lastname;

        [ObservableProperty]
        public string dateofbirth;

        [ObservableProperty]
        public string department;

        [ObservableProperty]
        public double gpa;

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage selectedImage;

      

        public AddNewUserWdVM(Member u)
        {
            Student = u;
          
            firstname  = Student.FirstName;
            lastname = Student.LastName;
            department = Student.Department;
            gpa = Student.GPA;
            dateofbirth = Student.DateOfBirth;
            selectedImage=Student.Image;
            
        }
        public AddNewUserWdVM()
        {
            
        }


        //get image 
        [RelayCommand]
        public void InsertPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                selectedImage = new BitmapImage(new Uri(dialog.FileName));
               
                MessageBox.Show("Imgae successfuly uploded!", "successfull");
            }
        }






        public Member Student { get; private set; }
        public Action CloseAction { get; internal set; }
        
        [RelayCommand]
        public void Save()
        {
          
            
            
            if (gpa<0 || gpa>4) {
                MessageBox.Show("GPA value should be 0 to 4 ", "Wrong!!" );
                return;
            }
            if(Student==null)
            {

                Student = new Member()
                {
                    FirstName = firstname,
                    LastName = lastname,
                    Department = department,
                    DateOfBirth = dateofbirth,
                    Image = selectedImage,

                    GPA = gpa

                };


            }
            else
            {
                
                Student.FirstName = firstname;
                Student.LastName = lastname;
                Student.Department = department;
                Student.GPA = gpa;
                Student.Image = selectedImage;
                Student.DateOfBirth = dateofbirth;
                
                
                
            }
           
            if(Student.FirstName != null ) { 

                CloseAction(); }
            Application.Current.MainWindow.Show();


        }
    }
}
