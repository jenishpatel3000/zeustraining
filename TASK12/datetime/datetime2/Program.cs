using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace datetime2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            DateTime date1 = new DateTime();
            date1=DateTime.Now;

            Console.WriteLine(date1);

            DateTime? date2 = new DateTime?();
            date2 = DateTime.Now;
            Console.WriteLine(date2.HasValue);
           Console.WriteLine(date2.Value);


           DateTime date3 = new DateTime();
           date3 = DateTime.UtcNow;
           Console.WriteLine(date3);
        //   Console.WriteLine(System.TimeZoneInfo.ConvertTimeToUtc(date1));
          
           date1=DateTime.SpecifyKind(date1,DateTimeKind.Unspecified);
           System.TimeZoneInfo tmz=TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
           Console.WriteLine(tmz);
           var converteddate1 = System.TimeZoneInfo.ConvertTimeToUtc(date1, tmz);
           Console.WriteLine(converteddate1);

            converteddate1 = DateTime.SpecifyKind(converteddate1, DateTimeKind.Utc);
            System.TimeZoneInfo tmz1 = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
           Console.WriteLine(System.TimeZoneInfo.ConvertTimeFromUtc(converteddate1, tmz1));


           DateTime date5=new DateTime(1990,3,4,2,3,44);
           string myString = date5.ToShortDateString();
           string myString1 = date5.ToLongDateString();
           string myString2 = date5.ToShortTimeString();
           string myString3 = date5.ToLongTimeString();
           string myString4 = date5.ToString("yyyy MMMM dd HH:mm:ss");

           Console.WriteLine(myString);
           Console.WriteLine(myString1);
           Console.WriteLine(myString2);
           Console.WriteLine(myString3);
           Console.WriteLine(myString4);

            Console.ReadLine();
        }
    }
}
