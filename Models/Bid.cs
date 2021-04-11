using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProj.Models
{
    public class Bid
    {
        public Bid(string date, string car, double msrp, double bid, string firstname, string lastname, string email, string phonenumber, string address, string city, string state, int zipcode)
        {
            // Required to submit bid
            Date = date;
            Car = car;
            MSRP = msrp;
            BidAmt = bid;

            // Autofill from when account is created
            Fname = firstname;
            Lname = lastname;
            Email = email;
            Pnumber = phonenumber;
            Address = address;
            City = city;
            State = state;
            Zcode = zipcode;
        }

        public string Date { get; set; }
        public string Car { get; set; }
        public double MSRP { get; set; }
        public double BidAmt { get; set; }
        public string Fname { get; set; }
        public string Lname { get; set; }
        public string Email { get; set; }
        public string Pnumber { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public int Zcode { get; set; }



    }
}