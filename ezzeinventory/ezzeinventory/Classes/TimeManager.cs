using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ezzeinventory.Classes
{
    public class TimeManager
    {
        public string BeforeMidNight(DateTime indate)
        {
            DateTime beforemidnight = new DateTime(indate.Year, indate.Month, indate.Day, 23, 59, 59);
            return beforemidnight.ToString("yyyy-MM-dd HH:mm:ss");
        }

        public string AfterMidNight(DateTime indate)
        {
            DateTime aftermidnight = new DateTime(indate.Year, indate.Month, indate.Day, 0, 0, 0);
            return aftermidnight.ToString("yyyy-MM-dd HH:mm:ss");
        }
        
        public DateTime FirstDayOfMonth()
        {
            DateTime first = new DateTime(System.DateTime.Now.Year, System.DateTime.Now.Month, 1);
            return first;
        }
 
        public string NowToString()
        {
            string datetime = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            return datetime;
        }

        public string NowToAmericanString()
        {
            string datetime = System.DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss");
            return datetime;
        }

        public string FullMonthDate(DateTime dt)
        {
            string datetime = dt.ToString("dd-MMM-yyyy");
            return datetime;
        }
    }
}
