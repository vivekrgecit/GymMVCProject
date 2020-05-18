using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GymMvcCore.Models;

namespace GymMvcCore.Repository
{
    public interface IPaymentlisting
    {
        IEnumerable<PaymentlistingDTO> AllPaymentDetails(string MemberID);
        IEnumerable<PaymentlistingDTO> AllPaymentDetails();
        IEnumerable<PaymentAutocompDTO> ListofMemberNo(string Memberno);
        IEnumerable<PaymentAutocompDTO> ListofMemberName(string Membername);
    }
}
