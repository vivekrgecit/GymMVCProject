using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using GymMvcCore.Models;
using Dapper;
using System.Security.Cryptography;
using System.Text;

namespace GymMvcCore.Repository
{
    public class AccountData : IAccountData
    {
        public string _ConStr { get; set; }
        public AccountData(string conStr)
        {
            _ConStr = conStr;
        }
        public IEnumerable<Role> GetRoles()
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                return con.Query<Role>("Usp_GetRoles", null, null, true, 0, CommandType.StoredProcedure).ToList();
            }
        }

        public IEnumerable<Users> GetAllUsers()
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                return con.Query<Users>("Usp_GetAllUsers", null, null, true, 0, CommandType.StoredProcedure).ToList();
            }
        }

        public string GetRoleByUserID(string UserId)
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                var para = new DynamicParameters();
                para.Add("@UserId", UserId);
                return con.Query<string>("Usp_getRoleByUserID", para, null, true, 0, CommandType.StoredProcedure).SingleOrDefault();
            }
        }

        /// <summary>
        /// Authenticate user
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>

        public bool AuthenticateUser(string UserName, string Password)
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                string pass = GetMd5Hash(Password);
                string Query = "IF EXISTS(select 1 from dbo.Users as u inner join dbo.webpages_Membership as wm on u.Id=wm.UserId where u.UserName=@UserName and wm.Password=@Password) BEGIN SELECT 1 END ELSE BEGIN SELECT 0 END";
                var param = new DynamicParameters();
                param.Add("@UserName", UserName);
                param.Add("@Password", pass);

                return con.Query<bool>(Query, param, null, true, 0, CommandType.Text).Single();
            }
        }

        public string GetUserID_By_UserName(string UserName)
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                var para = new DynamicParameters();
                para.Add("@UserName", UserName);
                return con.Query<string>("Usp_UserIDbyUserName", para, null, true, 0, CommandType.StoredProcedure).SingleOrDefault();
            }
        }

        public string Get_checkUsernameExits(string username)
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                var para = new DynamicParameters();
                para.Add("@UserName", username);
                return con.Query<string>("Usp_checkUsernameExits", para, null, true, 0, CommandType.StoredProcedure).SingleOrDefault();
            }
        }

        public bool Get_CheckUserRoles(string UserId)
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                var para = new DynamicParameters();
                para.Add("@UserId", UserId);
                return con.Query<bool>("Usp_CheckUserRoles", para, null, true, 0, CommandType.StoredProcedure).SingleOrDefault();
            }
        }

        public string GetUserName_BY_UserID(string UserId)
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                var para = new DynamicParameters();
                para.Add("@UserId", UserId);
                return con.Query<string>("Usp_UserNamebyUserID", para, null, true, 0, CommandType.StoredProcedure).SingleOrDefault();
            }
        }

        public IEnumerable<AllroleandUser> DisplayAllUser_And_Roles()
        {
            using (SqlConnection con = new SqlConnection(_ConStr))
            {
                return con.Query<AllroleandUser>("Usp_DisplayAllUser_And_Roles", null, null, true, 0, CommandType.StoredProcedure).ToList();
            }
        }
        private string GetMd5Hash(string input)
        { // Create a new instance of the MD5CryptoServiceProvider object.
            MD5 md5Hasher = MD5.Create(); // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));
            // Create a new Stringbuilder to collect the bytes // and create a string.
            StringBuilder sBuilder = new StringBuilder(); // Loop through each byte of the hashed data // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            // Return the hexadecimal string.
            return sBuilder.ToString();
        }
    }
}