﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using GymMvcCore.Models;
using Dapper;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace GymMvcCore.Repository
{
    public class RegisterMember : IRegisterMember
    {
        public string _conStr { get; set; }
        public RegisterMember(string conStr)
        {
            _conStr = conStr;
        }

        public int InsertMember(MemberRegistrationDTO objMRDTO)
        {
            using (SqlConnection con = new SqlConnection(_conStr))
            {
                var para = new DynamicParameters();
                para.Add("@MemID", objMRDTO.MemID);
                para.Add("@MemberFName", objMRDTO.MemberFName);
                para.Add("@MemberLName", objMRDTO.MemberLName);
                para.Add("@MemberMName", objMRDTO.MemberMName);
                para.Add("@Address", objMRDTO.Address);
                para.Add("@DOB", objMRDTO.DOB);
                para.Add("@Age", objMRDTO.Age);
                para.Add("@Contactno", objMRDTO.Contactno);
                para.Add("@EmailID", objMRDTO.EmailID);
                para.Add("@Gender", objMRDTO.Gender);
                para.Add("@PlantypeID", objMRDTO.PlantypeID);
                para.Add("@WorkouttypeID", objMRDTO.WorkouttypeID);
                para.Add("@Createdby", objMRDTO.Createdby);
                para.Add("@JoiningDate", objMRDTO.JoiningDate);
                para.Add("@ModifiedBy", 0);
                para.Add("@MemIDOUT", dbType: DbType.Int32, direction: ParameterDirection.Output);
                con.Execute("SprocMemberRegistrationInsertUpdateSingleItem", para, null, 0, CommandType.StoredProcedure);
                int MemID = para.Get<int>("MemIDOUT");
                return MemID;
            }
        }

        public IEnumerable<MemberRegistrationDTO> GetMember()
        {
            using (SqlConnection con = new SqlConnection(_conStr))
            {
                return con.Query<MemberRegistrationDTO>("sprocMemberRegistrationSelectList", null, null, true, 0, commandType: CommandType.StoredProcedure);
            }
        }

        public MemberRegistrationDTO GetMemberbyID(string MemID)
        {
            using (SqlConnection con = new SqlConnection(_conStr))
            {
                var para = new DynamicParameters();
                para.Add("@MemID", MemID);
                return con.Query<MemberRegistrationDTO>("sprocMemberRegistrationSelectSingleItem", para, null, true, 0, commandType: CommandType.StoredProcedure).Single(); 
            }
        }

        public int UpdateMember(MemberRegistrationDTO objMRDTO)
        {
            using (SqlConnection con = new SqlConnection(_conStr))
            {
                var para = new DynamicParameters();
                para.Add("@MemID", objMRDTO.MemID);
                para.Add("@MemberFName", objMRDTO.MemberFName);
                para.Add("@MemberLName", objMRDTO.MemberLName);
                para.Add("@MemberMName", objMRDTO.MemberMName);
                para.Add("@Address", objMRDTO.Address);
                para.Add("@DOB", objMRDTO.DOB);
                para.Add("@Age", objMRDTO.Age);
                para.Add("@Contactno", objMRDTO.Contactno);
                para.Add("@EmailID", objMRDTO.EmailID);
                para.Add("@Gender", objMRDTO.Gender);
                para.Add("@PlantypeID", objMRDTO.PlantypeID);
                para.Add("@WorkouttypeID", objMRDTO.WorkouttypeID);
                para.Add("@Createdby", objMRDTO.Createdby);
                para.Add("@JoiningDate", objMRDTO.JoiningDate);
                para.Add("@ModifiedBy", 0);
                para.Add("@MemIDOUT", dbType: DbType.Int32, direction: ParameterDirection.Output);
                con.Execute("SprocMemberRegistrationInsertUpdateSingleItem", para, null, 0, CommandType.StoredProcedure);
                int MemID = para.Get<int>("MemIDOUT");
                return MemID;
            }
        }

        public void DeleteMember(string MemID)
        {
            using (SqlConnection con = new SqlConnection(_conStr))
            {
                string val = string.Empty;
                var para = new DynamicParameters();
                para.Add("@MemID", MemID);
                val = con.Query<string>("sprocMemberRegistrationDeleteSingleItem", para, null, true, 0, CommandType.StoredProcedure).SingleOrDefault();
            }
        }

        public string GetAmount(string PlanID, string WorkTypeID)
        {
            using (SqlConnection con = new SqlConnection(_conStr))
            {
                string val = string.Empty;
                var para = new DynamicParameters();
                para.Add("@PlanID", PlanID);
                para.Add("@SchemeID", WorkTypeID);
                return val = con.Query<string>("Usp_GetAmount_reg", para, null, true, 0, commandType: CommandType.StoredProcedure).SingleOrDefault();
            }
        }
    }
}