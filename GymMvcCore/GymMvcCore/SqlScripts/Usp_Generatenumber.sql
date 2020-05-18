ALTER proc [dbo].[Usp_Generatenumber]                    
as                      
begin            
            
BEGIN TRANSACTION            
            
Declare @Memnum nvarchar(4)            
Declare @Name nvarchar(6)            
Declare @MemberNo nvarchar(20)            
Declare @Year nvarchar(4)            
            
set @Year =(select YEAR(GETDATE()))            
            
set @Name = 'GYMONE'            
            
set @Memnum = (SELECT Isnull(max(MainMemberID),0) FROM MemberRegistration WITH(HOLDLOCK))            
            
if(@Memnum = 0)            
begin                 
set @MemberNo = @Name+'/'+'1'+'/'+@Year       
set @Memnum = 1         
end            
else            
begin            
set @Memnum = (SELECT (max(MainMemberID )+ 1) FROM MemberRegistration WITH(HOLDLOCK))            
set @MemberNo = @Name+'/'+@Memnum+'/'+@Year            
end            
COMMIT TRANSACTION            
            
select @MemberNo as MemberNo  ,@Memnum as Memnumber          
            
end 