using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GymMvcCore.Repository
{
    public sealed class DataConfiguration
    {
        private static DataConfiguration _instance = null;
        private static readonly object _syncObject = new object();
        public readonly string conString = @"Data Source=MSI;Database=MAINGYMONEDB;UID=sa;Password=sa@123;";
        private DataConfiguration()
        {
            
        }
        public static DataConfiguration Instance
        {
            get
            {
                if (_instance == null)
                {
                    lock (_syncObject)
                    {
                        if (_instance == null)
                        {
                            _instance = new DataConfiguration();
                        }
                    }
                }
                return _instance;
            }
        }
    }
}
