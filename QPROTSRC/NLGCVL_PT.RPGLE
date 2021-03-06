**free
//**********************************************************************
// LWW   Next Level
//**********************************************************************
//
// Description..: NLGCVL - Prototype
// Programmer...: Mats Lidström
// Company......: Apper Systems AB
// Date.........: 2019-03-28
//
// *********************************************************************

/IF DEFINED (NLGCVL)
/EOF
/ENDIF

/DEFINE NLGCVL

dcl-DS p_ConfigurationValue_Data  Extname('NLGCVL') Qualified Alias ;
END-DS;
dcl-DS p_ConfigurationValueV1_Data    Extname('NLGCVLV1') Qualified Alias ;   // View without autogenerated columns.
end-DS ;
dcl-DS p_ConfigurationValueV2_Data    Extname('NLGCVLV2') Qualified Alias ;   // View over full table.
end-DS ;

//----------------------------------------------------------------------
//  @Procedure_Name        : create_ConfigurationValue
//  @Procedure_Description : Create ConfigurationValue in table NLGCVL
//  @Procedure_Description : Generated ConfigurationValue is returned back in p_ConfigurationValue_Data
//  @Procedure_Source      : QRPGLESRC,NLGCVL_PR
//  @Procedure_Prototype   : /include QPROTSRC,NLGCVL_PT
//  @Procedure_Input       : p_ConfigurationValue_Data
//  @Procedure_Output      : Indicator   (True/False)
//  @Procedure_Output      : p_ConfigurationValue_Data (DS with the newly created row)
//  @Procedure_Example     : if not create_ConfigurationValue(p_ConfigurationValue_Data) ;
//  @Procedure_Example     :    receive_Messages(p_Messages : p_MessageRows) ; // Receive Message from requested proc when error
//  @Procedure_Example     : endif ;
//----------------------------------------------------------------------
dcl-PR create_ConfigurationValue ind ;
      Create_ConfigurationValue_Data      likeds(p_ConfigurationValue_Data) ;
end-PR ;


//----------------------------------------------------------------------
//  @Procedure_Name        : get_ConfigurationValue
//  @Procedure_Description : Get ConfigurationValue from table NLGCVL
//  @Procedure_Description : Fetched data is returned back in p_ConfigurationValue_Data
//  @Procedure_Source      : QRPGLESRC,NLGCVL_PR
//  @Procedure_Prototype   : /include QPROTSRC,NLGCVL_PT
//  @Procedure_Input       : p_ConfigurationValue_Data
//  @Procedure_Output      : Indicator   (True/False)
//  @Procedure_Output      : p_ConfigurationValue_Data (all additional info)
//  @Procedure_Example     : if not get_ConfigurationValue(p_ConfigurationValue_Data) ;
//  @Procedure_Example     :    receive_Messages(p_Messages : p_MessageRows) ; // Receive Message from requested proc when error
//  @Procedure_Example     : endif ;
//----------------------------------------------------------------------
dcl-PR get_ConfigurationValue ind ;
      Get_ConfigurationValue_Data         likeds(p_ConfigurationValue_Data) ;
end-PR ;


//----------------------------------------------------------------------
//  @Procedure_Name        : update_ConfigurationValue
//  @Procedure_Description : Update ConfigurationValue information in table NLGCVL
//  @Procedure_Description : Must not have be changed since last get (Update_TS)
//  @Procedure_Source      : QRPGLESRC,NLGCVL_PR
//  @Procedure_Prototype   : /include QPROTSRC,NLGCVL_PT
//  @Procedure_Input       : p_ConfigurationValue_Data
//  @Procedure_Output      : Indicator   (True/False)
//  @Procedure_Example     : if not update_ConfigurationValue (p_ConfigurationValue_Data) ;
//  @Procedure_Example     :    receive_Messages(p_Messages : p_MessageRows) ; // Receive Message from requested proc when error
//  @Procedure_Example     : endif ;
//----------------------------------------------------------------------
dcl-PR update_ConfigurationValue ind ;
      Update_ConfigurationValue_Data      likeds(p_ConfigurationValue_Data) ;
end-PR ;


//----------------------------------------------------------------------
//  @Procedure_Name        : delete_ConfigurationValue
//  @Procedure_Description : Delete ConfigurationValue from table NLGCVL
//  @Procedure_Source      : QRPGLESRC,NLGCVL_PR
//  @Procedure_Prototype   : /include QPROTSRC,NLGCVL_PT
//  @Procedure_Input       : p_ConfigurationValue_Data.Key
//  @Procedure_Output      : Indicator   (True/False)
//  @Procedure_Example     : if not delete_ConfigurationValue(p_ConfigurationValue_Data.Key) ;
//  @Procedure_Example     :    receive_Messages(p_Messages : p_MessageRows) ; // Receive Message from requested proc when error
//  @Procedure_Example     : endif ;
//----------------------------------------------------------------------
dcl-PR delete_ConfigurationValue ind ;
      pKey           like(p_ConfigurationValue_Data.Key) const;
end-PR ;


//----------------------------------------------------------------------
//  @Procedure_Name        : checkIfexist_ConfigurationValue
//  @Procedure_Description : Check if ConfigurationValue exists in table NLGCVL
//  @Procedure_Source      : QRPGLESRC,NLGCVL_PR
//  @Procedure_Prototype   : /include QPROTSRC,NLGCVL_PT
//  @Procedure_Input       : p_ConfigurationValue_Data.Key
//  @Procedure_Output      : Indicator   (True/False)  Indicates if ConfigurationValue exists or not
//  @Procedure_Example     : if not checkIfexist_ConfigurationValue(p_ConfigurationValue_Data.Key) ;
//  @Procedure_Example     :    ...do something when ConfigurationValue does not exist...
//  @Procedure_Example     : endif ;
//----------------------------------------------------------------------
dcl-PR checkIfexist_ConfigurationValue ind ;
      pKey           like(p_ConfigurationValue_Data.Key) const;
end-PR ;
