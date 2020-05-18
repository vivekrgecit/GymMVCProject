
 ALTER PROCEDURE [dbo].[sprocPlanMasterInsertUpdateSingleItem]                
(                
 @PlanID int=0                
,@SchemeID int=0            
,@PeriodID int=0             
,@PlanName varchar(50)=NULL                
,@PlanAmount decimal(18,2)  =NULL                
,@ServiceTax decimal(18,2)  =NULL                
,@CreateDate datetime=NULL                
,@CreateUserID int=0                
,@ModifyDate datetime                
,@ModifyUserID int=0                
,@RecStatus char(1)=NULL                
 )             
AS                
DECLARE @ReturnValue int         
DECLARE @servicetaxAM decimal(18,2) =12.36       
IF (@PlanID =0) -- New Item                
BEGIN                
                
 Declare @tax decimal(18,0)               
          set @tax = @PlanAmount * @ServiceTax      
        set @servicetaxAM = @tax / 100      
              
              
       Declare @totalamt decimal(18,0)           
       set  @totalamt = @PlanAmount + @servicetaxAM        
                
 INSERT                
 INTO [PlanMaster]                
 (                
  PlanName                
,PlanAmount                
,ServiceTax                
,CreateDate                
,CreateUserID                
,ModifyDate                
,ModifyUserID                
,RecStatus                
,SchemeID            
,PeriodID         
,TotalAmout       
,ServicetaxAmout      
 )                
  VALUES                
  (                
  @PlanName                
,@PlanAmount                
,@ServiceTax               
,GETDATE()                
,@CreateUserID                
,@ModifyDate                
,@ModifyUserID                
,@RecStatus                
,@SchemeID           
,@PeriodID        
,@totalamt      
,@servicetaxAM      
      
 )                
                 
 SELECT @ReturnValue = SCOPE_IDENTITY()                
                
 END                
 ELSE                
 BEGIN                
    declare @CreatedDate datetime    
 select @CreatedDate = CreateDate from [PlanMaster] where [PlanID] = @PlanID     
    
 UPDATE [PlanMaster]                
 SET                
  PlanName = @PlanName                
,PlanAmount = @PlanAmount                
,ServiceTax = @ServiceTax                
,CreateDate = @CreatedDate                 
,CreateUserID = @CreateUserID                
,ModifyDate = @ModifyDate                
,ModifyUserID = @ModifyUserID                
,RecStatus = @RecStatus                
,SchemeID =@SchemeID             
,PeriodID =@PeriodID            
 WHERE                
  [PlanID] = @PlanID                
                
SELECT @ReturnValue = @PlanID                
                
END                
  IF (@@ERROR != 0)                
  BEGIN                
    RETURN -1                
  END                
  ELSE                
  BEGIN                
    RETURN @ReturnValue                
 END
