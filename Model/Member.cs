using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace DesktopApp.Model
{
    public class Member
    {
        public string Department { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public BitmapImage Image { get; set; }  

        public string  DateOfBirth{ get; set; }
        public Double GPA { get; set; }

        public String ImagePath
        {
            get { return $"/Model/Images/{Image}"; }
        }

        public Member(string department, string firstName, string lastName, string dateOfBirth,BitmapImage  image )
        {
            Department = department;
            FirstName = firstName;
            LastName = lastName;
            DateOfBirth = dateOfBirth;
            Image = image;
        }

        public Member()
        {
        }
    }
}
