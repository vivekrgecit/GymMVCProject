﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GymMvcCore.Models;

namespace GymMvcCore.Repository
{
    public interface IPaymentDetails
    {
        int InsertPaymentDetails(PaymentDetailsDTO objPD);
        int UpdatePaymentDetails(PaymentDetailsDTO objPD);
    }
}
