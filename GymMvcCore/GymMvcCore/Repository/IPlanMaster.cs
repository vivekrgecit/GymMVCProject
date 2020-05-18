﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GymMvcCore.Models;

namespace GymMvcCore.Repository
{
   public interface IPlanMaster
    {
        void InsertPlan(PlanMasterDTO Plan); // C
        IEnumerable<PlanMasterDTO> GetPlan(); // R
        PlanMasterDTO GetPlanByID(string PlanID); // R
        void UpdatePlan(PlanMasterDTO Plan); //U
        void DeletePlan(string PlanID); //D
        bool PlannameExists(string Planname);
        IEnumerable<PlanMasterDTO> GetPlanByWorkTypeID(string SchemeID); // R
    }
}