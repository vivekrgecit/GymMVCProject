using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GymMvcCore.Models;

namespace GymMvcCore.Repository
{
    interface IRenewal
    {
        RenewalDATA GetDataofMember(string MemberID);
        string Get_PeriodID_byPlan(string PlanID);
    }
}
