using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProj.Models
{
    public class BidList
    {
        public List<Bid> BList { get; set; }

        public BidList() { BList = new List<Bid>(); }

        public int count { get { return BList.Count; } }

        public Bid this[int index] { get { return BList[index]; } }

        public Bid this[string lastname]
        {
            get
            {
                foreach (Bid b in BList)
                    if (b.Lname == lastname) return b;
                return null;
            }
        }

        public static BidList GetBids()
        {
            BidList BList = (BidList)HttpContext.Current.Session["BList"];
            if (BList == null)
                HttpContext.Current.Session["BList"] = new BidList();
            return (BidList)HttpContext.Current.Session["BList"];
        }

        public void AddBid(string date, string car, double msrp, double bid, string firstname, string lastname, string email, string phonenumber, string address, string city, string state, int zipcode)
        {
            Bid b = new Bid(date, car, msrp, bid, firstname, lastname, email, phonenumber, address, city, state, zipcode);
            BList.Add(b);
        }
    }
}