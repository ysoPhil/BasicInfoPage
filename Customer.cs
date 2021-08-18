using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodingTest2
{
    public class Customer
    {
        string dateOfBirth;
        public string DOB
        {
            get
            {
                return dateOfBirth;
            }
            set
            {
               dateOfBirth = value;
            }
        }

        string name;
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }

        string email;
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }

        string company;
        public string Company
        {
            get
            {
                return company;
            }
            set
            {
                company = value;
            }
        }

        string membership;
        public string Membership
        {
            get
            {
                return membership;
            }
            set
            {
                membership = value;
            }
        }
    }
}