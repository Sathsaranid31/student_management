using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DesktopApp.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace DesktopApp
{
    public  partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public  ObservableCollection<Member> users;
        [ObservableProperty]
        public Member selectedUser=null;



        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }




        [RelayCommand]
        public void messeage()
        {

            MessageBox.Show($"{selectedUser.FirstName} GPA value must be between 0 and 4.", "Error");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddNewUserWdVM();
            vm.title = "STUDENT REGISTRATION";
            AddNewUserWd window = new AddNewUserWd(vm);
            window.ShowDialog();

            if (vm.Student.FirstName != null)
            {
                users.Add(vm.Student);
            }
        }

        [RelayCommand]
        public void DeleteStudent()
        {
            if (selectedUser != null)
            {
                string name = selectedUser.FirstName;
                users.Remove(selectedUser);
                MessageBox.Show($"{name} is deleted.", "SUCCESSFUL\a ");
                
            }
            else
            {
                MessageBox.Show("Select the student first.", "Wrong!!");


            }
        }
        [RelayCommand]
        public void EditStudent()
        {
            if (selectedUser != null)
            {
                var vm = new AddNewUserWdVM(selectedUser);
                vm.title = "EDIT STUDENT DETAILS";
                var window = new AddNewUserWd(vm);

                window.ShowDialog();


                int index = users.IndexOf(selectedUser);
                users.RemoveAt(index);
                users.Insert(index, vm.Student);



            }
            else
            {
                MessageBox.Show("Select the student that you want to edit", "Wrong");
            }
        }

        public  MainWindowVM()
        {
            users = new ObservableCollection<Member>();
            BitmapImage image1 = new BitmapImage(new Uri("/Model/Images/1.png", UriKind.Relative));
            users.Add(new Member("Com", "Dilsha", "Sathsarani", "31/12/1999", image1));
            BitmapImage image2 = new BitmapImage(new Uri("/Model/Images/2.png", UriKind.Relative));
            users.Add(new Member("Manu", "Sandeepa", "Prabhash", "22/09/1999", image2));
            BitmapImage image3 = new BitmapImage(new Uri("/Model/Images/3.png", UriKind.Relative));
            users.Add(new Member("Elec", "Navindi", "Kulasena", "25/03/2000", image3));
            BitmapImage image4 = new BitmapImage(new Uri("/Model/Images/4.png", UriKind.Relative));
            users.Add(new Member("Mech", "Chathuni", "Kavindi", "16/12/2000", image4));

        }
    }
}
