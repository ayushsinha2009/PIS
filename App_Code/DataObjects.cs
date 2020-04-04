using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

//// <summary>
/// Developer Name:Ayush Sinha,Swati Singh
/// Date: 17,18,19,20,21,22,23,24,25,26-10-2019
/// Project : Alllmaa PIS
/// Company :Alllmaa IT Solution Pvt. Ltd.
/// </summary>

public class DataObjects
{
    #region Class Declaration
    public DataObjects()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    #endregion

    #region Save Career Details
    public int InsertCareerDetails(string Post, string Technology, string Description, string SourceTypeId, string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_InsertCareer";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Post", DbType.String, Post);
            objDatabase.AddInParameter(objDBCommand, "@Technology", DbType.String, Technology);
            objDatabase.AddInParameter(objDBCommand, "@Description", DbType.String, Description);
            objDatabase.AddInParameter(objDBCommand, "@SourceTypeId", DbType.String, SourceTypeId);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Save Contact Details
    public int InsertContactDetails(string Name, string Email, string Phone, string CompanyName, string Subject, string Message, string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_InsertContact";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Name", DbType.String, Name);
            objDatabase.AddInParameter(objDBCommand, "@Email", DbType.String, Email);
            objDatabase.AddInParameter(objDBCommand, "@Phone", DbType.String, Phone);
            objDatabase.AddInParameter(objDBCommand, "@CompanyName", DbType.String, CompanyName);
            objDatabase.AddInParameter(objDBCommand, "@Subject", DbType.String, Subject);
            objDatabase.AddInParameter(objDBCommand, "@Message", DbType.String, Message);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion

    #region  Check Admin Login
    public DataTable CheckLogin(string Username, string Password)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CheckLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@Username", DbType.String, Username);
            objDatabase.AddInParameter(objDBCommand, "@Password", DbType.String, Password);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Select All Career Details
    public DataTable SelectAllCareerDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectAllCareer";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Select Career Details
    public DataTable SelectCareerDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectCareer";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Select Contact Details
    public DataTable SelectContactDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectContactDetails";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Update Career Details
    public int UpdateCareerDetails(int Id, string Post, string Technology, string Description, string SourceTypeId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateCareer";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@Id", DbType.Int32, Id);
            objDatabase.AddInParameter(objDBCommand, "@Post", DbType.String, Post);
            objDatabase.AddInParameter(objDBCommand, "@Technology", DbType.String, Technology);
            objDatabase.AddInParameter(objDBCommand, "@Description", DbType.String, Description);
            objDatabase.AddInParameter(objDBCommand, "@SourceTypeId", DbType.String, SourceTypeId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion

    #region Save Employee Details
    public int InsertEmployeeDetails(string EmpPhoto, string Xmarksheet, string Diplomamarksheet, string Mastermarksheet, string previousexperince,
        string bachlormarksheet, string XIImarksheet, string Empcode, string EmpDoJ, string Designation, string EmpFirstname,
        string EmpLastname, string EmpFathername, string EmpMothername, string emptype,
string EmpPermanentAddress, string EmpCorrespondanceAddress, string EmpIdDetails,
        string EmpMobileNo, string EmpPhoneNo, string EmpClassX, string EmpClassXII,
string EmpBachelorDegree, string EmpMasterDegree, string EmpDiploma, string EmpCertification,
        string EmpAchievements, string EmpMaritalStatus, string Email, string CurrentSalery, string EmpDOB, string EmpDoA,
string EmpBankname, string EmpBranchname, string EmpBankAccountNo, string EmpIFSCCode, string Empusername,
        string EmpPassword, string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddEmployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpPhoto", DbType.String, EmpPhoto);

            objDatabase.AddInParameter(objDBCommand, "@Xmarksheet", DbType.String, Xmarksheet);

            objDatabase.AddInParameter(objDBCommand, "@Diplomamarksheet", DbType.String, Diplomamarksheet);
            objDatabase.AddInParameter(objDBCommand, "@Mastermarksheet", DbType.String, Mastermarksheet);
            objDatabase.AddInParameter(objDBCommand, "@previousexperince", DbType.String, previousexperince);
            objDatabase.AddInParameter(objDBCommand, "@bachlormarksheet", DbType.String, bachlormarksheet);
            objDatabase.AddInParameter(objDBCommand, "@XIImarksheet", DbType.String, XIImarksheet);
            objDatabase.AddInParameter(objDBCommand, "@Empcode", DbType.String, Empcode);
            objDatabase.AddInParameter(objDBCommand, "@EmpDoJ", DbType.String, EmpDoJ);
            objDatabase.AddInParameter(objDBCommand, "@Designation", DbType.String, Designation);
            objDatabase.AddInParameter(objDBCommand, "@EmpFirstname", DbType.String, EmpFirstname);
            objDatabase.AddInParameter(objDBCommand, "@EmpLastname", DbType.String, EmpLastname);
            objDatabase.AddInParameter(objDBCommand, "@EmpFathername", DbType.String, EmpFathername);
            objDatabase.AddInParameter(objDBCommand, "@EmpMothername", DbType.String, EmpMothername);
            objDatabase.AddInParameter(objDBCommand, "@emptype", DbType.String, emptype);

            objDatabase.AddInParameter(objDBCommand, "@EmpPermanentAddress", DbType.String, EmpPermanentAddress);
            objDatabase.AddInParameter(objDBCommand, "@EmpCorrespondanceAddress", DbType.String, EmpCorrespondanceAddress);
            objDatabase.AddInParameter(objDBCommand, "@EmpIdDetails", DbType.String, EmpIdDetails);
            objDatabase.AddInParameter(objDBCommand, "@EmpMobileNo", DbType.String, EmpMobileNo);
            objDatabase.AddInParameter(objDBCommand, "@EmpPhoneNo", DbType.String, EmpPhoneNo);
            objDatabase.AddInParameter(objDBCommand, "@EmpClassX", DbType.String, EmpClassX);
            objDatabase.AddInParameter(objDBCommand, "@EmpClassXII", DbType.String, EmpClassXII);
            objDatabase.AddInParameter(objDBCommand, "@EmpBachelorDegree", DbType.String, EmpBachelorDegree);

            objDatabase.AddInParameter(objDBCommand, "@EmpMasterDegree", DbType.String, EmpMasterDegree);
            objDatabase.AddInParameter(objDBCommand, "@EmpDiploma", DbType.String, EmpDiploma);
            objDatabase.AddInParameter(objDBCommand, "@EmpCertification", DbType.String, EmpCertification);
            objDatabase.AddInParameter(objDBCommand, "@EmpAchievements", DbType.String, EmpAchievements);
            objDatabase.AddInParameter(objDBCommand, "@EmpMaritalStatus", DbType.String, EmpMaritalStatus);
            objDatabase.AddInParameter(objDBCommand, "@Email", DbType.String, Email);
            objDatabase.AddInParameter(objDBCommand, "@CurrentSalery", DbType.String, CurrentSalery);


            objDatabase.AddInParameter(objDBCommand, "@EmpDOB", DbType.String, EmpDOB);
            objDatabase.AddInParameter(objDBCommand, "@EmpDoA", DbType.String, EmpDoA);
            objDatabase.AddInParameter(objDBCommand, "@EmpBankname", DbType.String, EmpBankname);
            objDatabase.AddInParameter(objDBCommand, "@EmpBranchname", DbType.String, EmpBranchname);
            objDatabase.AddInParameter(objDBCommand, "@EmpBankAccountNo", DbType.String, EmpBankAccountNo);
            objDatabase.AddInParameter(objDBCommand, "@EmpIFSCCode", DbType.String, EmpIFSCCode);
            objDatabase.AddInParameter(objDBCommand, "@Empusername", DbType.String, Empusername);
            objDatabase.AddInParameter(objDBCommand, "@EmpPassword", DbType.String, EmpPassword);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion

    #region Select Employee Details
    public DataTable SelectEmployeeDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectAllEmployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }


    public DataTable selectemployeetype()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_selectdroptype";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Select EmployeeId & Name
    public DataTable SelectEmployeeIdName()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectEmployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Save Leave Details
    public int InsertLeaveDetails(int EmpId, string TotalLeave, string Casualleave, string Sickleave,
        string Paidleave, string UnPaidLeave, string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_LeaveDetails";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@TotalLeave", DbType.String, TotalLeave);
            objDatabase.AddInParameter(objDBCommand, "@Casualleave", DbType.String, Casualleave);
            objDatabase.AddInParameter(objDBCommand, "@Sickleave", DbType.String, Sickleave);
            objDatabase.AddInParameter(objDBCommand, "@Paidleave", DbType.String, Paidleave);
            objDatabase.AddInParameter(objDBCommand, "@UnPaidLeave", DbType.String, UnPaidLeave);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion

    #region Select Employee Leave Detail
    public DataTable SelectEmployeeLeaveDetail()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectEmpLeaveDetail";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Check Employee Login Detail
    public DataTable checkEmployeeloginDetail(string username, string Password)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CheckEmpLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, username);
            objDatabase.AddInParameter(objDBCommand, "@Password", DbType.String, Password);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion

    #region Check Employee Login Detail
    public DataTable checkEmployeeleaveDetail(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectLeaveId";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        { }
        return dt;
    }
    #endregion


    #region Save Leave Apply For Details
    public int InsertLeaveApplyDetails(int EmpId, string LeaveType, string Month, string Date, string ToDate, string Days, string Leavedescription, string LeaveOptFor,
string WhetherApproved_DisApproved, string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddLeave";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@LeaveType", DbType.String, LeaveType);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String, Month);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@ToDate", DbType.String, ToDate);
            objDatabase.AddInParameter(objDBCommand, "@Days", DbType.String, Days);
            objDatabase.AddInParameter(objDBCommand, "@Leavedescription", DbType.String, Leavedescription);
            objDatabase.AddInParameter(objDBCommand, "@LeaveOptFor", DbType.String, LeaveOptFor);
            objDatabase.AddInParameter(objDBCommand, "@WhetherApproved_DisApproved", DbType.String, WhetherApproved_DisApproved);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion


    #region Save Lead Apply For Details
    public int InsertLeadgeneration(int EmpId, string LeadType, string Project, string Client, string Budget, string Projectdescription,
     string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddLead";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@LeadType", DbType.String, LeadType);
            objDatabase.AddInParameter(objDBCommand, "@Project", DbType.String, Project);
            objDatabase.AddInParameter(objDBCommand, "@Client", DbType.String, Client);
            objDatabase.AddInParameter(objDBCommand, "@Budget", DbType.String, Budget);
            objDatabase.AddInParameter(objDBCommand, "@Projectdescription", DbType.String, Projectdescription);
            objDatabase.AddInParameter(objDBCommand, "@WhetherApproved_DisApproved", DbType.String, null);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion


    #region Select Lead Approved Details
    public DataTable SelectLeadApprovedDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_Showlead";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    public DataTable SelectLeadApprovedDetailsEmpDevplor(int Client)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_showDevLead";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, Client);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Select Lead Approved Details
    public DataTable SelectLeadEmpApprovedDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_showEmpLead";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Select Lead Approved Details for Employee
    public DataTable SelectLeadApprovedDetailsforemp(int empid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_ShowEmpLead";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, empid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception)
        {

        }
        return dt;
    }
    #endregion

    #region Select Leave Details

    public DataTable SelectLeaveDetails()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_LeaveApplied";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Select Job Approved Details With Id
    public DataTable SelectJobApprovedDetails(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_GetApprovedJobId";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Update Leave Details
    public int UpdateLeaveDetails(int EmpId, string TotalLeave, string CasualLeave, string SickLeave, string Paidleave, string UnPaidLeave)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateLeaveDetail";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@TotalLeave", DbType.String, TotalLeave);
            objDatabase.AddInParameter(objDBCommand, "@CasualLeave", DbType.String, CasualLeave);
            objDatabase.AddInParameter(objDBCommand, "@SickLeave", DbType.String, SickLeave);
            objDatabase.AddInParameter(objDBCommand, "@Paidleave", DbType.String, Paidleave);
            objDatabase.AddInParameter(objDBCommand, "@UnPaidLeave", DbType.String, UnPaidLeave);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion

    #region Update Leave Apply For
    public int UpdateLeaveApplyFor(int EmpId, string WhetherApprovedDisApproved)
    {
        int result = 0;
        try
        {

            string _Proc = "Proc_LeaveAppFor";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@WhetherApprovedDisApproved", DbType.String, WhetherApprovedDisApproved);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region addtarget
    public int Addtarget(int empid, string targetname, int numdays, DateTime fromdate, DateTime todate, string createby, string createon, int emptype)
    {
        int result = 0;
        try
        {
            string _Proc = "proc_addtargetemp";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@empid", DbType.Int32, empid);
            objDatabase.AddInParameter(objDBCommand, "@targetname", DbType.String, targetname);
            objDatabase.AddInParameter(objDBCommand, "@numdays", DbType.Int32, numdays);
            objDatabase.AddInParameter(objDBCommand, "@fromdate", DbType.DateTime, fromdate);
            objDatabase.AddInParameter(objDBCommand, "@todate", DbType.DateTime, todate);
            objDatabase.AddInParameter(objDBCommand, "@emptype", DbType.Int32, emptype);
            objDatabase.AddInParameter(objDBCommand, "@createby", DbType.String, createby);
            objDatabase.AddInParameter(objDBCommand, "@createon", DbType.String, createon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion


    #region AddDepartment
    public int AddDepartment(string depname, string createdby, string createdon, string updatedby, string updatedon)
    {
        int result = 0;
        try
        {
            string _Proc = "Proc_addDepartment";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@depname", DbType.String, depname);
            objDatabase.AddInParameter(objDBCommand, "@createdby", DbType.String, createdby);
            objDatabase.AddInParameter(objDBCommand, "@createdon", DbType.String, createdon);
            objDatabase.AddInParameter(objDBCommand, "@updatedby", DbType.String, updatedby);
            objDatabase.AddInParameter(objDBCommand, "@updatedon", DbType.String, updatedon);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }

    #endregion

    #region UpdateDepartment
    public int UpdateDepartment(int depid, string depname, string updatedby, string updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "Proc_updateDepartement";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@id", DbType.Int32, depid);
            objDatabase.AddInParameter(objDBCommand, "@depname", DbType.String, depname);
            objDatabase.AddInParameter(objDBCommand, "@updatedby", DbType.String, updatedby);
            objDatabase.AddInParameter(objDBCommand, "@updatedon", DbType.String, updatedon);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;

    }
    #endregion

    #region DeleteDepartment
    public int DeleteDepartment(int depid)
    {
        int result = 0;
        try
        {

            string _Proc = "Proc_DeleteDepartment";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@depid", DbType.Int32, depid);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select EmployeeId & Name
    public DataTable SelectDepartment()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectDepartment";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Select Emptype
    public DataTable dropdownemptype()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "[proc_selectdroptype]";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Select Emptype Name
    public DataTable dropdownemptypeName(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {

            string _Proc = "[proc_SelectEmpTarget]";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Select EmpTarget
    public DataTable SelectTargetEmp(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelecttargetEmp";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@id", DbType.Int32, EmpId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region savetarget
    public int savetarget(string targetstatus, string createdby, string createdon, int targrt, int empid)
    {
        int result = 0;
        try
        {
            string _Proc = "Proc_savetargets";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@targetstatus", DbType.String, targetstatus);
            objDatabase.AddInParameter(objDBCommand, "@createdby", DbType.String, createdby);
            objDatabase.AddInParameter(objDBCommand, "@createdon", DbType.String, createdon);
            objDatabase.AddInParameter(objDBCommand, "@targetid", DbType.Int32, targrt);
            objDatabase.AddInParameter(objDBCommand, "@empid", DbType.Int32, empid);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch
        {

        }
        return result;
    }

    #endregion

    #region Select target
    public DataTable SelectTarget(string empid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_selecttarget";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@empid", DbType.Int32, Convert.ToInt32(empid));
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception)
        {
        }
        return dt;
    }
    #endregion

    #region Forgetpassword
    public DataTable Forgetpassword(string name)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select Empusername,EmpPassword,Email from tblEmployee where EmpFirstname='" + name + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Forget password Admin
    public DataTable Forgetpasswordadmin(string name)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select UserName,Password,Email from tblUsers where FullName='" + name + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion

    #region Update Employee

    public int UpdateEmployees(int EmpId, string EmpPhoto, string Xmarksheet, string Diplomamarksheet, string Mastermarksheet, string previousexperince,
        string bachlormarksheet, string XIImarksheet, string Empcode, string EmpDoJ, string Designation, string EmpFirstname,
        string EmpLastname, string EmpFathername, string EmpMothername, string emptype,
string EmpPermanentAddress, string EmpCorrespondanceAddress, string EmpIdDetails,
        string EmpMobileNo, string EmpPhoneNo, string EmpClassX, string EmpClassXII,
string EmpBachelorDegree, string EmpMasterDegree, string EmpDiploma, string EmpCertification,
        string EmpAchievements, string EmpMaritalStatus, string Email, string CurrentSalery, string EmpDOB, string EmpDoA,
string EmpBankname, string EmpBranchname, string EmpBankAccountNo, string EmpIFSCCode, string Empusername,
        string EmpPassword, string Updatedby, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_updateemployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@EmpPhoto", DbType.String, EmpPhoto);

            objDatabase.AddInParameter(objDBCommand, "@Xmarksheet", DbType.String, Xmarksheet);

            objDatabase.AddInParameter(objDBCommand, "@Diplomamarksheet", DbType.String, Diplomamarksheet);
            objDatabase.AddInParameter(objDBCommand, "@Mastermarksheet", DbType.String, Mastermarksheet);
            objDatabase.AddInParameter(objDBCommand, "@previousexperince", DbType.String, previousexperince);
            objDatabase.AddInParameter(objDBCommand, "@bachlormarksheet", DbType.String, bachlormarksheet);
            objDatabase.AddInParameter(objDBCommand, "@XIImarksheet", DbType.String, XIImarksheet);
            objDatabase.AddInParameter(objDBCommand, "@Empcode", DbType.String, Empcode);
            objDatabase.AddInParameter(objDBCommand, "@EmpDoJ", DbType.String, EmpDoJ);
            objDatabase.AddInParameter(objDBCommand, "@Designation", DbType.String, Designation);
            objDatabase.AddInParameter(objDBCommand, "@EmpFirstname", DbType.String, EmpFirstname);
            objDatabase.AddInParameter(objDBCommand, "@EmpLastname", DbType.String, EmpLastname);
            objDatabase.AddInParameter(objDBCommand, "@EmpFathername", DbType.String, EmpFathername);
            objDatabase.AddInParameter(objDBCommand, "@EmpMothername", DbType.String, EmpMothername);
            objDatabase.AddInParameter(objDBCommand, "@emptype", DbType.String, emptype);

            objDatabase.AddInParameter(objDBCommand, "@EmpPermanentAddress", DbType.String, EmpPermanentAddress);
            objDatabase.AddInParameter(objDBCommand, "@EmpCorrespondanceAddress", DbType.String, EmpCorrespondanceAddress);
            objDatabase.AddInParameter(objDBCommand, "@EmpIdDetails", DbType.String, EmpIdDetails);
            objDatabase.AddInParameter(objDBCommand, "@EmpMobileNo", DbType.String, EmpMobileNo);
            objDatabase.AddInParameter(objDBCommand, "@EmpPhoneNo", DbType.String, EmpPhoneNo);
            objDatabase.AddInParameter(objDBCommand, "@EmpClassX", DbType.String, EmpClassX);
            objDatabase.AddInParameter(objDBCommand, "@EmpClassXII", DbType.String, EmpClassXII);
            objDatabase.AddInParameter(objDBCommand, "@EmpBachelorDegree", DbType.String, EmpBachelorDegree);

            objDatabase.AddInParameter(objDBCommand, "@EmpMasterDegree", DbType.String, EmpMasterDegree);
            objDatabase.AddInParameter(objDBCommand, "@EmpDiploma", DbType.String, EmpDiploma);
            objDatabase.AddInParameter(objDBCommand, "@EmpCertification", DbType.String, EmpCertification);
            objDatabase.AddInParameter(objDBCommand, "@EmpAchievements", DbType.String, EmpAchievements);
            objDatabase.AddInParameter(objDBCommand, "@EmpMaritalStatus", DbType.String, EmpMaritalStatus);
            objDatabase.AddInParameter(objDBCommand, "@Email", DbType.String, Email);
            objDatabase.AddInParameter(objDBCommand, "@CurrentSalery", DbType.String, CurrentSalery);


            objDatabase.AddInParameter(objDBCommand, "@EmpDOB", DbType.String, EmpDOB);
            objDatabase.AddInParameter(objDBCommand, "@EmpDoA", DbType.String, EmpDoA);
            objDatabase.AddInParameter(objDBCommand, "@EmpBankname", DbType.String, EmpBankname);
            objDatabase.AddInParameter(objDBCommand, "@EmpBranchname", DbType.String, EmpBranchname);
            objDatabase.AddInParameter(objDBCommand, "@EmpBankAccountNo", DbType.String, EmpBankAccountNo);
            objDatabase.AddInParameter(objDBCommand, "@EmpIFSCCode", DbType.String, EmpIFSCCode);
            objDatabase.AddInParameter(objDBCommand, "@Empusername", DbType.String, Empusername);
            objDatabase.AddInParameter(objDBCommand, "@EmpPassword", DbType.String, EmpPassword);
            objDatabase.AddInParameter(objDBCommand, "@Updatedby", DbType.String, Updatedby);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;

    }
    #endregion


    #region Delete Employee
    public int DeleteEmployee(int EmpId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_deleteemployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region  Add Staff Attendance
    public int AddStaffAttendances(int EmpId, string Date, string Month, string Day, string Timein, string Tmeout, string TotalWorkingHours, string StaffPresent_Absent, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStaffAttendances";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String, Month);
            objDatabase.AddInParameter(objDBCommand, "@Day", DbType.String, Day);
            objDatabase.AddInParameter(objDBCommand, "@Timein", DbType.String, Timein);
            objDatabase.AddInParameter(objDBCommand, "@Tmeout", DbType.String, Tmeout);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkingHours", DbType.String, TotalWorkingHours);
            objDatabase.AddInParameter(objDBCommand, "@StaffPresent_Absent", DbType.String, StaffPresent_Absent);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion


    #region Select Staff  Id Wise
    public DataTable SelectStaffIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select EmpId,EmpFirstname+EmpLastname as 'EmpName' from tblEmployee";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Staff  Attendance
    public DataTable SelectStaffAttendance()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.EmpFirstname +a.EmpLastname as 'FullName',b.* from tblAddStaffAttendances b inner join tblEmployee a on a.Empid=b.EmpId";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion


    #region Check Attendance
    public DataTable CheckAttendance(string Date, string Month, string Day, int Empid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStaffAttendances where Date='" + Date + "' And Month='" + Month + "' Day='" + Day + "' And Empid=" + Empid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Curriculumn
    public int AddCurriculmn(string Date, string Topic, string Curriculumndesc, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddCurriclumn";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);

            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Curriculumndesc", DbType.String, Curriculumndesc);

            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Curriculumn
    public int UpdateCurriculum(int CurriculumnId, string Date, string Topic, string Curriculumndesc)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateCurriCulm";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@CurriculumnId", DbType.Int32, CurriculumnId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Curriculumndesc", DbType.String, Curriculumndesc);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Curriculumn
    public int DeleteCurriculum(int CurriculumnId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteCurriCulm";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@CurriculumnId", DbType.Int32, CurriculumnId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Curriculumn

    public DataTable SelectCurriculumn()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectCurriclumn";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Top Curriculumn
    public DataTable SelecttopCurriculmn()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "SELECT  TOP 1 Date,Topic,Curriculumndesc FROM tblSchoolManagementCurriculumn order by Date desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Notice
    public int AddNotice(string Date, string Topic, string Noticedesc, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddNotice";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);

            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Noticedesc", DbType.String, Noticedesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Notice
    public int UpdateNotice(int NoticeId, string Date, string Topic, string Noticedesc)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateNotice";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@NoticeId", DbType.Int32, NoticeId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Noticedesc", DbType.String, Noticedesc);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Notice
    public int DeleteNotice(int NoticeId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteNotice";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@NoticeId", DbType.Int32, NoticeId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Notice
    public DataTable SelectNtotice(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = " select top 10 NoticeId,Date,Topic,Noticedesc,Createdby,UserId,Createdon from tblSchoolManagementNotice where UserId='" + EmpId + "' order by Createdon desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Top Notice
    public DataTable SelecttopNtotice()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "SELECT TOP 1 Date,Topic,Noticedesc FROM tblSchoolManagementNotice  order by Date desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Notreplacing photo
    public DataTable nonreplace(int empid)
    {
        DataTable dt = new DataTable();
        try
        {

            string _Proc = "proc_empphoto";

            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@id", DbType.Int32, empid);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }


        catch (Exception)
        {
        }
        return dt;
    }
    #endregion

    //Developed By Ayush Sinha
    #region Select Department New
    public DataTable SelectDepartmentNew()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select depid,depname from tblDepartment";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion



    #region Add Holidays
    public int AddHolidays(string Date, string Topic, string Noticedesc, string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddHolidays";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@date", DbType.String, Date);

            objDatabase.AddInParameter(objDBCommand, "@name", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@description", DbType.String, Noticedesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);

            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion



    #region Update Holidays
    public int Updateholidays(int id, string Date, string Topic, string Noticedesc)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateHoliday";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@id", DbType.Int32, id);

            objDatabase.AddInParameter(objDBCommand, "@date", DbType.String, Date);

            objDatabase.AddInParameter(objDBCommand, "@name", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@description", DbType.String, Noticedesc);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion



    #region Delete Holidays
    public int DeleteHolidays(int id)
    {
        int result = 0;
        try
        {
            string _Proc = "proc_DeleteHolidays";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@id", DbType.Int32, id);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion



    #region Select Holidays
    public DataTable SelectHolidays()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = " proc_SelectHoliday";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion


    #region Showtarget
    public DataTable ShowTarget(int empid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select targetname,numdays,fromdate,todate from tbl_emptarget where Empid=" + empid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception)
        {

        }
        return dt;
    }
    #endregion


    #region Show target on Admin
    public DataTable ShowtargetonAdmin()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "   select s.targetname,s.numdays,s.fromdate,s.todate,d.targetstatus,d.createdby from tbl_emptarget s inner join tblsavetarget d on s.empid=d.empid";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion



    #region Show target on Admin
    public DataTable ShowtargetonAdminnew(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "   select s.targetname,s.numdays,s.fromdate,s.todate,d.targetstatus,d.createdby from tbl_emptarget s inner join tblsavetarget d on s.empid=d.empid where d.empid=" + EmpId + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Update Lead
    public int UpdateLead(int leadid, string WhetherApprovedDisApproved)
    {
        int result = 0;
        try
        {

            string _Proc = "Proc_LeadAppFor";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@leadid", DbType.Int32, leadid);
            objDatabase.AddInParameter(objDBCommand, "@WhetherApprovedDisApproved", DbType.String, WhetherApprovedDisApproved);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Approve lead
    public int ApproveLead(int EmpId, string LeadType, string Project, string Client, string Budget, string Projectdescription, string WhetherApproved_DisApproved,
     string Createdby, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateLead";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@EmpId", DbType.Int32, EmpId);
            objDatabase.AddInParameter(objDBCommand, "@LeadType", DbType.String, LeadType);
            objDatabase.AddInParameter(objDBCommand, "@Project", DbType.String, Project);
            objDatabase.AddInParameter(objDBCommand, "@Client", DbType.String, Client);
            objDatabase.AddInParameter(objDBCommand, "@Budget", DbType.String, Budget);
            objDatabase.AddInParameter(objDBCommand, "@Projectdescription", DbType.String, Projectdescription);
            objDatabase.AddInParameter(objDBCommand, "@WhetherApproved_DisApproved", DbType.String, WhetherApproved_DisApproved);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        { }
        return result;
    }
    #endregion


    #region Select Updated Lead Approved Details
    public DataTable UpdatedLeadApproved()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_Approvedlead";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
        }
        return dt;
    }
    #endregion




    #region Seeleads
    public DataTable Seeleads(int EmpId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = " select * from tblAddLead where EmpId ='" + EmpId + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion
}