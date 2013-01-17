Select
  trunc(a.datetime) DateTime,
  a.bsc As BSC,
  c.SITE_NAME As Site,
  c.LAC As LAC,
  c.cell_id As CID,
  c.CITY_MNG As City,


ROUND (  100* (
div(
sum(
NVL(suimasca_1,0)+ NVL(suimasca_2,0)+ NVL(suimasca_3,0)+
NVL(suimasca_4,0)+ NVL(suimasca_5,0)+ NVL(suimasca_6,0)
),
sum(
NVL(atimasca_1,0)+ NVL(atimasca_2,0)+ NVL(atimasca_3,0)+
NVL(atimasca_4,0)+ NVL(atimasca_5,0)+ NVL(atimasca_6,0)+
NVL(atimasca_7,0)+ NVL(atimasca_8,0)+ NVL(atimasca_9,0)+
NVL(atimasca_10,0)+ NVL(atimasca_11,0)+ NVL(atimasca_12,0)+
NVL(atimasca_13,0)+ NVL(atimasca_14,0)
)
)
*
div(
sum(
NVL(nacsucpr_2,0)+NVL(nacsucpr_3,0)
),
sum(
NVL(taccbpro_2,0)+NVL(taccbpro_3,0)
)
)
*
div(
sum(
NVL(nsucchpc_1,0)+ NVL(nsucchpc_2,0)+ NVL(nsucchpc_3,0)+ NVL(nsucchpc_4,0)+
NVL(nsucchpc_5,0)+ NVL(nsucchpc_6,0)+ NVL(nsucchpc_9,0)+ NVL(nsucchpc_10,0)+
NVL(nsucchpc_11,0)+ NVL(nsucchpc_12,0)+ NVL(nsucchpc_13,0)+ NVL(nsucchpc_14,0)+
NVL(nsucchpc_17,0)+ NVL(nsucchpc_18,0)+ NVL(nsucchpc_19,0)+ NVL(nsucchpc_20,0)+
NVL(nsucchpc_21,0)+ NVL(nsucchpc_22,0)
),
sum(
NVL(suimasca_1,0)+ NVL(suimasca_2,0)+ NVL(suimasca_3,0)+ NVL(suimasca_4,0)+
NVL(suimasca_5,0)+ NVL(suimasca_6,0)+ NVL(nacsucpr_2,0)+NVL(nacsucpr_3,0)-
NVL(taccbpro_2,0)-NVL(taccbpro_3,0)
)
)
*
div(
sum(
NVL(tasssucc_2,0)+ NVL(tasssucc_3,0)+ NVL(sinthint_7,0)+ NVL(suinbhdo_7,0)
),
sum(
NVL(tassatt_3,0) + NVL(tassatt_2,0)
)
)
*
(  1 -
div(
sum(
NVL(nrclrreq_19,0)+ NVL(nrclrreq_20,0)+ NVL(nrclrreq_21,0)+
NVL(nrclrreq_23,0)+ NVL(nrclrreq_24,0)+ NVL(nrclrreq_25,0)+NVL(nrclrreq_26,0)
),
sum(
NVL(nsucchpc_1,0)+ NVL(nsucchpc_2,0)+ NVL(nsucchpc_3,0)+
NVL(nsucchpc_4,0)+ NVL(nsucchpc_5,0)+ NVL(nsucchpc_6,0)
)
)
)

)
,2) aS cssr_bss_Non_HARM,

round(
(1 -
DIV(
Sum(
NVL(a.nsucchpc_1,0) + NVL(a.nsucchpc_2,0) + NVL(a.nsucchpc_3,0) +
NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) + NVL(a.nsucchpc_6,0) +
NVL(a.nsucchpc_9,0) + NVL(a.nsucchpc_10,0)+ NVL(a.nsucchpc_11,0)+
NVL(a.nsucchpc_12,0)+ NVL(a.nsucchpc_13,0)+ NVL(a.nsucchpc_14,0)+
NVL(a.nsucchpc_17,0)+ NVL(a.nsucchpc_18,0)+ NVL(a.nsucchpc_19,0)+
NVL(a.nsucchpc_20,0)+ NVL(a.nsucchpc_21,0)+ NVL(a.nsucchpc_22,0)
),
sum(
NVL(a.atimasca_1,0) + NVL(a.atimasca_2,0) + NVL(a.atimasca_3,0)+
NVL(a.atimasca_4,0) + NVL(a.atimasca_5,0) + NVL(a.atimasca_6,0)+
NVL(a.atimasca_7,0) + NVL(a.atimasca_8,0) + NVL(a.atimasca_9,0)+
NVL(a.atimasca_10,0)+ NVL(a.atimasca_11,0)+ NVL(a.atimasca_12,0)+
NVL(a.atimasca_13,0)+ NVL(a.atimasca_14,0)-(
NVL(a.nacsucpr_2,0)+NVL(a.nacsucpr_3,0)
)+
NVL(a.atsdcmbs_1,0) + NVL(a.nsucchpc_1,0) + NVL(a.nsucchpc_2,0) +
NVL(a.nsucchpc_3,0) + NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +
NVL(a.nsucchpc_6,0) + NVL(a.nsucchpc_9,0) + NVL(a.nsucchpc_10,0) +
NVL(a.nsucchpc_11,0)+ NVL(a.nsucchpc_12,0)+ NVL(a.nsucchpc_13,0) +
NVL(a.nsucchpc_14,0)+ NVL(a.nsucchpc_17,0)+ NVL(a.nsucchpc_18,0) +
NVL(a.nsucchpc_19,0)+ NVL(a.nsucchpc_20,0)+ NVL(a.nsucchpc_21,0) +
NVL(a.nsucchpc_22,0)
)
)
) * 100, 3) As SD_BLOCKING,
ROUND(
div(
sum(
NVL(nacsucpr_2,0)+NVL(nacsucpr_3,0)
)*100,
SUm(
NVL(taccbpro_2,0)+NVL(taccbpro_3,0)
)
)
,2) AGCH_Non_Overload_Rate ,

SUm(
NVL(taccbpro_2,0)+NVL(taccbpro_3,0)-NVL(a.nacsucpr_2,0)-NVL(a.nacsucpr_3,0)
) as AGCH_Overloads,

ROUND (
100*(
div (
sum(
NVL(suimasca_1,0)+NVL(suimasca_2,0)+ NVL(suimasca_3,0)+
NVL(suimasca_4,0)+NVL(suimasca_5,0)+ NVL(suimasca_6,0)
 ),
sum(
NVL(atimasca_1,0) +NVL(atimasca_2,0) +NVL(atimasca_3,0)+
NVL(atimasca_4,0) +NVL(atimasca_5,0) +NVL(atimasca_6,0)+
NVL(atimasca_7,0) +NVL(atimasca_8,0) +NVL(atimasca_9,0)+
NVL(atimasca_10,0)+NVL(atimasca_11,0)+NVL(atimasca_12,0)+
NVL(atimasca_13,0)+NVL(atimasca_14,0)
)
)
)
,2) Imm_Assign_Succ_Rate,
ROUND(
    div (
    sum(
                             NVL(nsucchpc_1,0)
                           + NVL(nsucchpc_2,0)
                           + NVL(nsucchpc_3,0)
                           + NVL(nsucchpc_4,0)
                           + NVL(nsucchpc_5,0)
                           + NVL(nsucchpc_6,0)
                           + NVL(nsucchpc_9,0)
                           + NVL(nsucchpc_10,0)
                           + NVL(nsucchpc_11,0)
                           + NVL(nsucchpc_12,0)
                           + NVL(nsucchpc_13,0)
                           + NVL(nsucchpc_14,0)
                           + NVL(nsucchpc_17,0)
                           + NVL(nsucchpc_18,0)
                           + NVL(nsucchpc_19,0)
                           + NVL(nsucchpc_20,0)
                           + NVL(nsucchpc_21,0)
                           + NVL(nsucchpc_22,0)
          )*100,
      SUm(
                             NVL(suimasca_1,0)
                           + NVL(suimasca_2,0)
                           + NVL(suimasca_3,0)
                           + NVL(suimasca_4,0)
                           + NVL(suimasca_5,0)
                           + NVL(suimasca_6,0)
                           + NVL(nacsucpr_2,0)
                           + NVL(nacsucpr_3,0)
                           - NVL(taccbpro_2,0)
                           - NVL(taccbpro_3,0)
                           )
                           )

,2) As SD_Seizure_Success_Rate,
Round(
    DIV(
    sum(
    NVL(a.tassfail_1,0)+ NVL(a.tassfail_6,0) + NVL(a.tassfail_7,0) +
    NVL(a.nrclrreq_19,0) +  NVL(a.nrclrreq_20,0) + NVL(a.nrclrreq_21,0) +
    NVL(a.nrclrreq_23,0) + NVL(a.nrclrreq_24,0) + NVL(a.nrclrreq_25,0) +
    NVL(a.nrclrreq_26,0) + NVL(a.tassfail_15,0) + NVL(a.tassfail_10,0) +
    NVL(a.tassfail_11,0) + NVL(a.tassfail_12,0)
    )*100,
    sum(
    NVL(a.nsucchpc_1,0) +  NVL(a.nsucchpc_2,0) + NVL(a.nsucchpc_3,0) +
    NVL(a.nsucchpc_4,0) +  NVL(a.nsucchpc_5,0) + NVL(a.nsucchpc_6,0)
    )
    )
,2) As SDR_Siemens,

Round(
    DIV(
    sum(
    NVL(a.nrclrreq_19,0) +  NVL(a.nrclrreq_20,0) + NVL(a.nrclrreq_21,0) +
    NVL(a.nrclrreq_23,0) + NVL(a.nrclrreq_24,0) + NVL(a.nrclrreq_25,0) +
    NVL(a.nrclrreq_26,0) + NVL(a.tassfail_15,0) + NVL(a.tassfail_10,0) +
    NVL(a.tassfail_11,0) + NVL(a.tassfail_12,0)
    )*100,
    sum(
    NVL(a.nsucchpc_1,0) +  NVL(a.nsucchpc_2,0) + NVL(a.nsucchpc_3,0) +
    NVL(a.nsucchpc_4,0) +  NVL(a.nsucchpc_5,0) + NVL(a.nsucchpc_6,0)
    )
    )
,2) As SDR_BSS,

Sum(

NVL(a.nrclrreq_19,0) + NVL(a.nrclrreq_20,0) + NVL(a.nrclrreq_21,0) +
NVL(a.nrclrreq_23,0) + NVL(a.nrclrreq_24,0) + NVL(a.nrclrreq_25,0) +
NVL(a.nrclrreq_26,0) + NVL(a.tassfail_15,0) + NVL(a.tassfail_10,0) +
NVL(a.tassfail_11,0) + NVL(a.tassfail_12,0)

) SD_Drops,

Round(
DIV(
sum(
    NVL(a.MBUSYSDC_1,0))*3600,

sum(
    NVL(a.NSUCCHPC_1,0)+NVL(a.NSUCCHPC_2,0)+
    NVL(a.NSUCCHPC_3,0)+NVL(a.NSUCCHPC_4,0)+
    NVL(a.NSUCCHPC_5,0)+NVL(a.NSUCCHPC_6,0)
    )
),2) As SD_MHT,

 sum( NVL(a.mbusysdc_1,0)) As SD_Traffic,
 sum( NVL(a.NDESDCCH_2,0)) As SDCCH_DEF,
 sum( NVL(a.MAXBUSDC_1,0)) As SDCCH_Busy_Max,
 sum( NVL(a.NAVSDCCH_2,0)) As SDCCH_Avail_Max,
Round(DIV(
sum(
NVL(a.nsucchpc_1,0))*100,
sum(
NVL(a.nsucchpc_1,0) + NVL(a.nsucchpc_2,0) +
NVL(a.nsucchpc_3,0) + NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +
NVL(a.nsucchpc_6,0) + NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0)
)
)
,2) MTC_Call,

Round(
DIV(
sum(
NVL(a.nsucchpc_2,0)
) *100,
sum(
NVL(a.nsucchpc_1,0) + NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) +
NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) +
NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0)
)
)
,2) Emergency_Call,


Round(
DIV(
sum(
NVL(a.nsucchpc_3,0))*100,
sum(
NVL(a.nsucchpc_1,0) +NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) +
NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) +
NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0)
)
)
,2) Call_Reestablishment,

Round(DIV(sum(
NVL(a.nsucchpc_4,0))*100,
sum(
NVL(a.nsucchpc_1,0) +NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) +
NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) +
NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0)
)),2) MOC_Call,
Round(DIV(sum(NVL(a.nsucchpc_5,0))*100,sum(NVL(a.nsucchpc_1,0) +NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) + NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) + NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0))),2) Location_Upd,
Round(DIV(sum(NVL(a.nsucchpc_6,0))*100,sum(NVL(a.nsucchpc_1,0) +NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) + NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) + NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0))),2) IMSI_etc,
Round(DIV(sum(NVL(a.nsucchpc_7,0))*100,sum(NVL(a.nsucchpc_1,0) +NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) + NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) + NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0))),2) SMS_MOC,
Round(DIV(sum(NVL(a.nsucchpc_8,0))*100,sum(NVL(a.nsucchpc_1,0) +NVL(a.nsucchpc_2,0) +NVL(a.nsucchpc_3,0) + NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0) +NVL(a.nsucchpc_6,0) + NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0))),2) SMS_MTC,

sum(
NVL(a.nsucchpc_1,0) + NVL(a.nsucchpc_2,0)+NVL(a.nsucchpc_3,0) +
NVL(a.nsucchpc_4,0) + NVL(a.nsucchpc_5,0)+NVL(a.nsucchpc_6,0) +
NVL(a.nsucchpc_7,0) + NVL(a.nsucchpc_8,0)
) Total_SD_Accessed,

ROUND(
    div (
    sum(
                          NVL (tasssucc_2,0)
                        + NVL (tasssucc_3,0)
                        + NVL (sinthint_7,0)
                        + NVL (suinbhdo_7,0)
    )*100,
    sum(                  NVL(tassatt_3,0)
                        + NVL (tassatt_2,0)

       )
         )
,2) TCH_Access_Success_Rate,

Round(
    DIV(
       sum (
            NVL(TASSFAIL_1,0)+NVL(TASSFAIL_6,0)+NVL(TASSFAIL_11,0)
        )*100,
      sum  (
            NVL(a.tassatt_3,0)+NVL(a.tassatt_2,0) +  NVL(a.tassatt_3,0))
    )
,2) TASS_Fail_RIF,

Round(
    DIV(
    sum    (
            NVL(TASSFAIL_2,0)+NVL(TASSFAIL_7,0)+NVL(TASSFAIL_12,0)
        )*100,
     sum    (
            NVL(a.tassatt_1,0)+NVL(a.tassatt_2,0) +  NVL(a.tassatt_3,0)
        )
    )
,2) TASS_Fail_RFOC,

round(DIV(
   sum (
        NVL(a.tassfail_13,0) + NVL(a.tassfail_14,0) + NVL(a.tassfail_8,0) +   NVL(a.tassfail_9,0) + NVL(a.NMSGDISQ_1,0) + NVL(a.NMSGDISQ_2,0)- NVL(a.suinbhdo_7,0)
    ),
    sum (
        NVL(a.tassatt_2,0) +  NVL(a.tassatt_3,0)- NVL(a.suinbhdo_7,0)- NVL(a.SINTHINT_7,0) 

    )
)*100, 4) As CS_BLOCKING,

sum(NVL(a.MDURTCRQ_1,0)) TCH_Ass_Que_FR_Time,
sum(NVL(a.MDURTCRQ_2,0)) TCH_Ass_Que_HR_TIme,
sum(NVL(a.MDURTCRQ_3,0)) TCH_HO_Q_FR_Time,
sum(NVL(a.MDURTCRQ_4,0)) TCH_HO_Q_HR_Time,

sum(
NVL(a.TASSSUCC_2,0)+NVL(a.TASSSUCC_3,0)+NVL(a.TASSSUCC_4,0)+NVL(a.TASSSUCC_5,0)
) As Total_Calls,

round(0.5*sum(

 NVL(a.NAVTCH_18,0)+
 NVL(a.NAVTCH_6,0)+
 NVL(a.NAVTCH_12,0)
 
 ), 2) TCH_Avail_DR,
sum(
NVL(a.NAVTCH_3,0)+
NVL(a.NAVTCH_9,0)+
NVL(a.NAVTCH_15,0)
)TCH_Avail_FR,

sum(
NVL(a.NAVTCH_3,0)+NVL(a.NAVTCH_9,0) +NVL(a.NAVTCH_15,0)+
NVL(a.NAVTCH_6,0)+NVL(a.NAVTCH_12,0)+NVL(a.NAVTCH_18,0)
 )
TCH_Avail_Tot,

 trunc(
  DIV(
   sum (
        NVL(a.NAVTCH_3,0)+NVL(a.NAVTCH_6,0)+ NVL(a.NAVTCH_9,0) +
        NVL(a.NAVTCH_12,0) +NVL(a.NAVTCH_15,0)+NVL(a.NAVTCH_18,0)
    )*100,
     sum(
        NVL(a.NRDEFTCH_3,0)+ NVL(a.NRDEFTCH_6,0)+ NVL(a.NRDEFTCH_9,0)+
        NVL(a.NRDEFTCH_12,0) + NVL(a.NRDEFTCH_15,0) + NVL(a.NRDEFTCH_18,0)
        )
    )
) As TCH_Availability,

sum(
NVL(a.MEBUSTCH_1,0)+NVL(a.MEBUSTCH_2,0)+NVL(a.MEBUSTCH_3,0)+NVL(a.MEBUSTCH_4,0)+
NVL(a.MEBUSTCH_5,0)+NVL(a.MEBUSTCH_6,0)
)TCH_Traffic,
sum(
NVL(a.mebustch_5,0) + NVL(a.mebustch_6,0)
)Traffic_Complete,
sum(NVL(a.mebustch_1,0) + NVL(a.mebustch_2,0)+ NVL(a.mebustch_3,0)+ NVL(a.mebustch_4,0)) As Traffic_Inner,
sum(NVL(a.MEBUSTCH_1,0)+NVL(a.MEBUSTCH_3,0)+NVL(a.MEBUSTCH_5,0)) TCH_Traffic_FR,
sum(NVL(a.MEBUSTCH_2,0)+NVL(a.MEBUSTCH_4,0)+NVL(a.MEBUSTCH_6,0)) TCH_Traffic_HR,
Round(DIV(
sum(
NVL(a.MEBUSTCH_1,0)+NVL(a.MEBUSTCH_2,0)+NVL(a.MEBUSTCH_3,0)+NVL(a.MEBUSTCH_4,0)+
NVL(a.MEBUSTCH_5,0)+NVL(a.MEBUSTCH_6,0)
)*3600,
sum(
NVL(a.TNTCHCL_1,0)+NVL(a.TNTCHCL_2,0)+NVL(a.TNTCHCL_3,0)+NVL(a.TNTCHCL_4,0)+
NVL(a.TNTCHCL_5,0)+NVL(a.TNTCHCL_6,0)
)
)
,2) As TCH_MHT,

Round(Div(sum(
NVL(a.mebustch_1,0) + NVL(a.mebustch_2,0)+NVL(a.mebustch_3,0) +
NVL(a.mebustch_4,0)+ NVL(a.mebustch_5,0)+ NVL(a.mebustch_6,0))*60,
sum(
NVL(NRCLRREQ_3,0)+NVL(NRCLRREQ_12,0) +
NVL(NRCLRREQ_2,0)+NVL(NRCLRREQ_11,0) +
NVL(NRCLRREQ_4,0)+NVL(NRCLRREQ_13,0) +
NVL(NRCLRREQ_5,0)+NVL(NRCLRREQ_14,0) +
NVL(NRCLRREQ_7,0)+NVL(NRCLRREQ_16,0) +
NVL(NRCLRREQ_9,0)+NVL(NRCLRREQ_18,0) +
NVL(NRCLRREQ_8,0)+NVL(NRCLRREQ_17,0) +
NVL(NRCLRREQ_1,0)+NVL(NRCLRREQ_10,0) +
NVL(NRCLRREQ_6,0)+NVL(NRCLRREQ_15,0)
)
)
,2) As MPD,


Round(DIV(sum(

                NVL(a.mebustch_5,0)+NVL(a.mebustch_6,0))*60,
           sum( NVL(a.NRFLTCH_37,0)+NVL(a.NRFLTCH_38,0)+NVL(a.NRFLTCH_39,0)+NVL(a.NRFLTCH_40,0)+
                NVL(a.NRFLTCH_41,0)+NVL(a.NRFLTCH_42,0)+NVL(a.NRFLTCH_43,0)+NVL(a.NRFLTCH_44,0)+
                NVL(a.NRFLTCH_45,0)+NVL(a.NRFLTCH_46,0)+NVL(a.NRFLTCH_47,0)+NVL(a.NRFLTCH_48,0)+
                NVL(a.NRFLTCH_49,0)+NVL(a.NRFLTCH_50,0)+NVL(a.NRFLTCH_51,0)+NVL(a.NRFLTCH_52,0)+
                NVL(a.NRFLTCH_53,0)+NVL(a.NRFLTCH_54,0)

             )),2) As MPD_Outer,

             Round(DIV(
        sum(NVL(a.mebustch_1,0)+NVL(a.mebustch_2,0)+NVL(a.mebustch_3,0)+NVL(a.mebustch_4,0))*60 ,
       sum(  NVL(a.NRFLTCH_1,0)+NVL(a.NRFLTCH_2,0)+NVL(a.NRFLTCH_3,0)+NVL(a.NRFLTCH_4,0)+
         NVL(a.NRFLTCH_5,0)+NVL(a.NRFLTCH_6,0)+NVL(a.NRFLTCH_7,0)+NVL(a.NRFLTCH_8,0)+
         NVL(a.NRFLTCH_9,0)+NVL(a.NRFLTCH_10,0)+NVL(a.NRFLTCH_11,0)+NVL(a.NRFLTCH_12,0)+
         NVL(a.NRFLTCH_13,0)+NVL(a.NRFLTCH_14,0)+NVL(a.NRFLTCH_15,0)+NVL(a.NRFLTCH_16,0)+
         NVL(a.NRFLTCH_17,0)+NVL(a.NRFLTCH_18,0)+NVL(a.NRFLTCH_19,0)+NVL(a.NRFLTCH_20,0)+
         NVL(a.NRFLTCH_21,0)+NVL(a.NRFLTCH_22,0)+NVL(a.NRFLTCH_23,0)+NVL(a.NRFLTCH_24,0)+
         NVL(a.NRFLTCH_25,0)+NVL(a.NRFLTCH_26,0)+NVL(a.NRFLTCH_27,0)+NVL(a.NRFLTCH_28,0)+
         NVL(a.NRFLTCH_29,0)+NVL(a.NRFLTCH_30,0)+NVL(a.NRFLTCH_31,0)+NVL(a.NRFLTCH_32,0)+
         NVL(a.NRFLTCH_33,0)+NVL(a.NRFLTCH_34,0)+NVL(a.NRFLTCH_35,0)+NVL(a.NRFLTCH_36,0)
       )),2) As MPD_Inner,


Round(DIV(
sum(
NVL(a.NRCLRREQ_1,0)+NVL(a.NRCLRREQ_2,0)+NVL(a.NRCLRREQ_3,0)+NVL(a.NRCLRREQ_5,0)+
NVL(a.NRCLRREQ_6,0)+NVL(a.NRCLRREQ_7,0)+NVL(a.NRCLRREQ_8,0)+NVL(a.NRCLRREQ_9,0)+
NVL(a.NRCLRREQ_10,0)+NVL(a.NRCLRREQ_11,0)+NVL(a.NRCLRREQ_12,0)+NVL(a.NRCLRREQ_14,0)+
NVL(a.NRCLRREQ_15,0)+NVL(a.NRCLRREQ_16,0)+NVL(a.NRCLRREQ_17,0)+NVL(a.NRCLRREQ_18,0)
)*100,
sum(
NVL(a.NRCLRCMD_1,0)+NVL(a.NRCLRCMD_2,0)+NVL(a.NRCLRCMD_4,0)+NVL(a.NRCLRCMD_5,0)+
NVL(a.NRCLRCMD_6,0)+NVL(a.NRCLRCMD_7,0)+NVL(a.NRCLRCMD_8,0)+NVL(a.NRCLRCMD_10,0)+
NVL(a.NRCLRCMD_11,0)+NVL(a.NRCLRCMD_12,0)-
(
NVL(a.NRCLRREQ_4,0)+NVL(a.NRCLRREQ_13,0)
)-
(
NVL(a.TASSFAIL_6,0)+NVL(a.TASSFAIL_7,0)+NVL(a.TASSFAIL_8,0)+NVL(a.TASSFAIL_11,0)+
NVL(a.TASSFAIL_12,0)+NVL(a.TASSFAIL_13,0)
)
)
),2) DCR,

Round(DIV(sum(
NVL(a.NRCLRREQ_1,0)+NVL(a.NRCLRREQ_2,0)+NVL(a.NRCLRREQ_3,0)+NVL(a.NRCLRREQ_5,0)+
NVL(a.NRCLRREQ_6,0)+NVL(a.NRCLRREQ_7,0)+NVL(a.NRCLRREQ_8,0)+NVL(a.NRCLRREQ_9,0)+
NVL(a.NRCLRREQ_10,0)+NVL(a.NRCLRREQ_11,0)+NVL(a.NRCLRREQ_12,0)+NVL(a.NRCLRREQ_14,0)+
NVL(a.NRCLRREQ_15,0)+NVL(a.NRCLRREQ_16,0)+NVL(a.NRCLRREQ_17,0)+NVL(a.NRCLRREQ_18,0)
)*100,
  sum(
  NVL(SUCTCHSE_1,0)+NVL(SUCTCHSE_2,0)
  )
),2) DCR_Siemens,

Round(

Div
(
sum
(
NVL(a.NRFLTCH_1,0)+NVL(a.NRFLTCH_2,0)+NVL(a.NRFLTCH_3,0)+NVL(a.NRFLTCH_4,0)+
NVL(a.NRFLTCH_5,0)+NVL(a.NRFLTCH_6,0)+NVL(a.NRFLTCH_7,0)+NVL(a.NRFLTCH_8,0)+
NVL(a.NRFLTCH_9,0)+NVL(a.NRFLTCH_10,0)+NVL(a.NRFLTCH_11,0)+NVL(a.NRFLTCH_12,0)+
NVL(a.NRFLTCH_13,0)+NVL(a.NRFLTCH_14,0)+NVL(a.NRFLTCH_15,0)+NVL(a.NRFLTCH_16,0)+
NVL(a.NRFLTCH_17,0)+NVL(a.NRFLTCH_18,0)+NVL(a.NRFLTCH_19,0)+NVL(a.NRFLTCH_20,0)+
NVL(a.NRFLTCH_21,0)+NVL(a.NRFLTCH_22,0)+NVL(a.NRFLTCH_23,0)+NVL(a.NRFLTCH_24,0)+
NVL(a.NRFLTCH_25,0)+NVL(a.NRFLTCH_26,0)+NVL(a.NRFLTCH_27,0)+NVL(a.NRFLTCH_28,0)+
NVL(a.NRFLTCH_29,0)+NVL(a.NRFLTCH_30,0)+NVL(a.NRFLTCH_31,0)+NVL(a.NRFLTCH_32,0)+
NVL(a.NRFLTCH_33,0)+NVL(a.NRFLTCH_34,0)+NVL(a.NRFLTCH_35,0)+NVL(a.NRFLTCH_36,0)+
NVL(a.NRFLTCH_37,0)+NVL(a.NRFLTCH_38,0)+NVL(a.NRFLTCH_39,0)+NVL(a.NRFLTCH_40,0)+
NVL(a.NRFLTCH_41,0)+NVL(a.NRFLTCH_42,0)+NVL(a.NRFLTCH_43,0)+NVL(a.NRFLTCH_44,0)+
NVL(a.NRFLTCH_45,0)+NVL(a.NRFLTCH_46,0)+NVL(a.NRFLTCH_47,0)+NVL(a.NRFLTCH_48,0)+
NVL(a.NRFLTCH_49,0)+NVL(a.NRFLTCH_50,0)+NVL(a.NRFLTCH_51,0)+NVL(a.NRFLTCH_52,0)+
NVL(a.NRFLTCH_53,0)+NVL(a.NRFLTCH_54,0)
)*100,
sum(
NVL(a.NRCLRCMD_1,0)+NVL(a.NRCLRCMD_2,0)+NVL(a.NRCLRCMD_4,0)+NVL(a.NRCLRCMD_5,0)+
NVL(a.NRCLRCMD_6,0)+NVL(a.NRCLRCMD_7,0)+NVL(a.NRCLRCMD_8,0)+NVL(a.NRCLRCMD_10,0)+
NVL(a.NRCLRCMD_11,0)+NVL(a.NRCLRCMD_12,0)-
(
NVL(a.NRCLRREQ_4,0)+NVL(a.NRCLRREQ_13,0)
)-
(
NVL(a.TASSFAIL_6,0)+NVL(a.TASSFAIL_7,0)+NVL(a.TASSFAIL_8,0)+NVL(a.TASSFAIL_11,0)+
NVL(a.TASSFAIL_12,0)+NVL(a.TASSFAIL_13,0)
)
)
)
,2) DCR_Radio,


Round(Div(

SUM((--Total HO Drops    
      NVL (a.UNIHIALC_1,0)
    + NVL (a.UNIHIRLC_1,0) 
    +    (
          NVL (a.interbschoatt, 0) 
        - NVL (a.interbschosucc, 0)
        - NVL (a.interbschofail, 0)
        - NVL (a.umcshlc_1, 0)
        )
))*100,
sum(
NVL(a.NRCLRCMD_1,0)+NVL(a.NRCLRCMD_2,0)+NVL(a.NRCLRCMD_4,0)+NVL(a.NRCLRCMD_5,0)+
NVL(a.NRCLRCMD_6,0)+NVL(a.NRCLRCMD_7,0)+NVL(a.NRCLRCMD_8,0)+NVL(a.NRCLRCMD_10,0)+
NVL(a.NRCLRCMD_11,0)+NVL(a.NRCLRCMD_12,0)-
(
NVL(a.NRCLRREQ_4,0)+NVL(a.NRCLRREQ_13,0)
)-
(
NVL(a.TASSFAIL_6,0)+NVL(a.TASSFAIL_7,0)+NVL(a.TASSFAIL_8,0)+NVL(a.TASSFAIL_11,0)+
NVL(a.TASSFAIL_12,0)+NVL(a.TASSFAIL_13,0)
)
)
),2) DCR_HO,




SUM(NVL (a.UNIHIALC_1,0) )HO_DROPS_IntraCell,              -- Intracell HO Drops
SUM(NVL (a.UNIHIRLC_1,0)) HO_DROPS_InterCell_Intra,     -- Intercell IntraBSC HO Drops 
SUM((NVL (a.interbschoatt, 0) - NVL (a.interbschosucc, 0)- NVL (a.interbschofail, 0) - NVL (a.umcshlc_1, 0))) HO_DROPS_InterCell_Inter, -- Intercell InterBSC HO Drops 

SUM((--Total HO Drops    
      NVL (a.UNIHIALC_1,0)
    + NVL (a.UNIHIRLC_1,0) 
    +    (
          NVL (a.interbschoatt, 0) 
        - NVL (a.interbschosucc, 0)
        - NVL (a.interbschofail, 0)
        - NVL (a.umcshlc_1, 0)
        )
)) HO_DROPS_TOTAL,





sum(
NVL(a.NRFLTCH_1,0)+NVL(a.NRFLTCH_2,0)+NVL(a.NRFLTCH_3,0)+NVL(a.NRFLTCH_4,0)+
NVL(a.NRFLTCH_5,0)+NVL(a.NRFLTCH_6,0)+NVL(a.NRFLTCH_7,0)+NVL(a.NRFLTCH_8,0)+
NVL(a.NRFLTCH_9,0)+NVL(a.NRFLTCH_10,0)+NVL(a.NRFLTCH_11,0)+NVL(a.NRFLTCH_12,0)+
NVL(a.NRFLTCH_13,0)+NVL(a.NRFLTCH_14,0)+NVL(a.NRFLTCH_15,0)+NVL(a.NRFLTCH_16,0)+
NVL(a.NRFLTCH_17,0)+NVL(a.NRFLTCH_18,0)+NVL(a.NRFLTCH_19,0)+NVL(a.NRFLTCH_20,0)+
NVL(a.NRFLTCH_21,0)+NVL(a.NRFLTCH_22,0)+NVL(a.NRFLTCH_23,0)+NVL(a.NRFLTCH_24,0)+
NVL(a.NRFLTCH_25,0)+NVL(a.NRFLTCH_26,0)+NVL(a.NRFLTCH_27,0)+NVL(a.NRFLTCH_28,0)+
NVL(a.NRFLTCH_29,0)+NVL(a.NRFLTCH_30,0)+NVL(a.NRFLTCH_31,0)+NVL(a.NRFLTCH_32,0)+
NVL(a.NRFLTCH_33,0)+NVL(a.NRFLTCH_34,0)+NVL(a.NRFLTCH_35,0)+NVL(a.NRFLTCH_36,0)+
NVL(a.NRFLTCH_37,0)+NVL(a.NRFLTCH_38,0)+NVL(a.NRFLTCH_39,0)+NVL(a.NRFLTCH_40,0)+
NVL(a.NRFLTCH_41,0)+NVL(a.NRFLTCH_42,0)+NVL(a.NRFLTCH_43,0)+NVL(a.NRFLTCH_44,0)+
NVL(a.NRFLTCH_45,0)+NVL(a.NRFLTCH_46,0)+NVL(a.NRFLTCH_47,0)+NVL(a.NRFLTCH_48,0)+
NVL(a.NRFLTCH_49,0)+NVL(a.NRFLTCH_50,0)+NVL(a.NRFLTCH_51,0)+NVL(a.NRFLTCH_52,0)+
NVL(a.NRFLTCH_53,0)+NVL(a.NRFLTCH_54,0)) Radio_Drops_Total,


Div(sum(
NVL(NCRLBRQU_3,0)+NVL(NCRLBRQU_4,0)
)*100,
sum(
NVL(NCRLBRQU_1,0)+NVL(NCRLBRQU_2,0)
)
)UL_2_DL_Drop,

sum(
NVL(NRCLRREQ_3,0)+NVL(NRCLRREQ_12,0) +
NVL(NRCLRREQ_2,0)+NVL(NRCLRREQ_11,0) +
NVL(NRCLRREQ_4,0)+NVL(NRCLRREQ_13,0) +
NVL(NRCLRREQ_5,0)+NVL(NRCLRREQ_14,0) +
NVL(NRCLRREQ_7,0)+NVL(NRCLRREQ_16,0) +
NVL(NRCLRREQ_9,0)+NVL(NRCLRREQ_18,0) +
NVL(NRCLRREQ_8,0)+NVL(NRCLRREQ_17,0) +
NVL(NRCLRREQ_1,0)+NVL(NRCLRREQ_10,0) +
NVL(NRCLRREQ_6,0)+NVL(NRCLRREQ_15,0)
) Drop_Total,

sum(
NVL(a.NRFLTCH_1,0)+NVL(a.NRFLTCH_2,0)+NVL(a.NRFLTCH_3,0)+NVL(a.NRFLTCH_4,0)+
NVL(a.NRFLTCH_5,0)+NVL(a.NRFLTCH_6,0)+NVL(a.NRFLTCH_7,0)+NVL(a.NRFLTCH_8,0)+
NVL(a.NRFLTCH_9,0)+NVL(a.NRFLTCH_10,0)+NVL(a.NRFLTCH_11,0)+NVL(a.NRFLTCH_12,0)+
NVL(a.NRFLTCH_13,0)+NVL(a.NRFLTCH_14,0)+NVL(a.NRFLTCH_15,0)+NVL(a.NRFLTCH_16,0)+
NVL(a.NRFLTCH_17,0)+NVL(a.NRFLTCH_18,0)+NVL(a.NRFLTCH_19,0)+NVL(a.NRFLTCH_20,0)+
NVL(a.NRFLTCH_21,0)+NVL(a.NRFLTCH_22,0)+NVL(a.NRFLTCH_23,0)+NVL(a.NRFLTCH_24,0)+
NVL(a.NRFLTCH_25,0)+NVL(a.NRFLTCH_26,0)+NVL(a.NRFLTCH_27,0)+NVL(a.NRFLTCH_28,0)+
NVL(a.NRFLTCH_29,0)+NVL(a.NRFLTCH_30,0)+NVL(a.NRFLTCH_31,0)+NVL(a.NRFLTCH_32,0)+
NVL(a.NRFLTCH_33,0)+NVL(a.NRFLTCH_34,0)+NVL(a.NRFLTCH_35,0)+NVL(a.NRFLTCH_36,0)

) Radio_Drop_1800,

sum(
NVL(a.NRFLTCH_37,0)+NVL(a.NRFLTCH_38,0)+NVL(a.NRFLTCH_39,0)+NVL(a.NRFLTCH_40,0)+
NVL(a.NRFLTCH_41,0)+NVL(a.NRFLTCH_42,0)+NVL(a.NRFLTCH_43,0)+NVL(a.NRFLTCH_44,0)+
NVL(a.NRFLTCH_45,0)+NVL(a.NRFLTCH_46,0)+NVL(a.NRFLTCH_47,0)+NVL(a.NRFLTCH_48,0)+
NVL(a.NRFLTCH_49,0)+NVL(a.NRFLTCH_50,0)+NVL(a.NRFLTCH_51,0)+NVL(a.NRFLTCH_52,0)+
NVL(a.NRFLTCH_53,0)+NVL(a.NRFLTCH_54,0)
) Radio_Drop_900,

sum(NVL(NRCLRREQ_3,0)+NVL(NRCLRREQ_12,0)) DRop_RIMF,
sum(NVL(NRCLRREQ_2,0)+NVL(NRCLRREQ_11,0)) Drop_RIF,
sum(NVL(NRCLRREQ_4,0)+NVL(NRCLRREQ_13,0)) Drop_No_Resource,
sum(NVL(NRCLRREQ_5,0)+NVL(NRCLRREQ_14,0)) Drop_Protocall_Error,
sum(NVL(NRCLRREQ_7,0)+NVL(NRCLRREQ_16,0)) Drop_Prem,
sum(NVL(NRCLRREQ_9,0)+NVL(NRCLRREQ_18,0)) Drop_Others,
sum(NVL(NRCLRREQ_8,0)+NVL(NRCLRREQ_17,0)) Drop_O_and_M,
sum(NVL(NRCLRREQ_1,0)+NVL(NRCLRREQ_10,0)) Drop_Equip,
sum(NVL(NRCLRREQ_6,0)+NVL(NRCLRREQ_15,0)) Drop_Dist,



sum(
NVL(a.NRFLTCH_8,0)+NVL(a.NRFLTCH_17,0)+NVL(a.NRFLTCH_26,0)+
NVL(a.NRFLTCH_35,0)+NVL(a.NRFLTCH_44,0)+NVL(a.NRFLTCH_53,0)

) TRAU_Fail,

sum(
NVL(a.NRFLTCH_1,0)+NVL(a.NRFLTCH_10,0)+NVL(a.NRFLTCH_19,0)+
NVL(a.NRFLTCH_28,0)+NVL(a.NRFLTCH_37,0)+NVL(a.NRFLTCH_46,0)) T200_Exp,

sum(
NVL(a.NRFLTCH_7, 0) +
NVL(a.NRFLTCH_16, 0)+
NVL(a.NRFLTCH_25, 0)+
NVL(a.NRFLTCH_34, 0)+
NVL(a.NRFLTCH_43, 0)+
NVL(a.NRFLTCH_52, 0)) RLF, 



sum(
NVL(a.NRFLTCH_1,0)+NVL(a.NRFLTCH_2,0)+NVL(a.NRFLTCH_3,0)+NVL(a.NRFLTCH_4,0)+
NVL(a.NRFLTCH_5,0)+NVL(a.NRFLTCH_6,0)+NVL(a.NRFLTCH_7,0)+NVL(a.NRFLTCH_8,0)+
NVL(a.NRFLTCH_9,0)+NVL(a.NRFLTCH_19,0)+NVL(a.NRFLTCH_20,0)+NVL(a.NRFLTCH_21,0)+
NVL(a.NRFLTCH_22,0)+NVL(a.NRFLTCH_23,0)+NVL(a.NRFLTCH_24,0)+NVL(a.NRFLTCH_25,0)+
NVL(a.NRFLTCH_26,0)+NVL(a.NRFLTCH_27,0)
) Radio_Drop_1800_FR,

sum(
NVL(a.NRFLTCH_10,0)+NVL(a.NRFLTCH_11,0)+NVL(a.NRFLTCH_12,0)+NVL(a.NRFLTCH_13,0)+
NVL(a.NRFLTCH_14,0)+NVL(a.NRFLTCH_15,0)+NVL(a.NRFLTCH_16,0)+NVL(a.NRFLTCH_17,0)+
NVL(a.NRFLTCH_18,0)+NVL(a.NRFLTCH_28,0)+NVL(a.NRFLTCH_29,0)+NVL(a.NRFLTCH_30,0)+
NVL(a.NRFLTCH_31,0)+NVL(a.NRFLTCH_32,0)+NVL(a.NRFLTCH_33,0)+NVL(a.NRFLTCH_34,0)+
NVL(a.NRFLTCH_35,0)+NVL(a.NRFLTCH_36,0)
) Radio_Drop_1800_HR ,

sum(
NVL(a.NRFLTCH_37,0)+NVL(a.NRFLTCH_38,0)+NVL(a.NRFLTCH_39,0)+NVL(a.NRFLTCH_40,0)+
NVL(a.NRFLTCH_41,0)+NVL(a.NRFLTCH_42,0)+NVL(a.NRFLTCH_43,0)+NVL(a.NRFLTCH_44,0)+
NVL(a.NRFLTCH_45,0)
) Radio_Drop_900_FR ,

sum(
NVL(a.NRFLTCH_46,0)+NVL(a.NRFLTCH_47,0)+NVL(a.NRFLTCH_48,0)+NVL(a.NRFLTCH_49,0)+
NVL(a.NRFLTCH_50,0)+NVL(a.NRFLTCH_51,0)+NVL(a.NRFLTCH_52,0)+NVL(a.NRFLTCH_53,0)+
NVL(a.NRFLTCH_54,0)
) Radio_Drop_900_HR,



ROUND(100*DIV(sum(
 NVL(SUCTCHSE_1,0) +
 NVL(SUCTCHSE_2,0) -
 (NVL(TASSSUCC_2,0) +
 NVL(TASSSUCC_3,0)) -
 (NVL(SINTHITA_1,0) +
 NVL(SINTHITA_2,0) +
 NVL(SINTHITA_3,0) +
 NVL(SINTHITA_4,0) +
 NVL(SINTHITA_5,0) +
 NVL(SINTHITA_6,0) +
 NVL(SINTHITA_7,0) +
 NVL(SINTHITA_8,0) +
 NVL(SINTHITA_9,0) +
 NVL(SINTHITA_10,0) +
 NVL(SINTHITA_11,0) +
 NVL(SINTHITA_12,0) +
 NVL(SINTHITA_13,0) +
 NVL(SINTHITA_14,0)) -
 (NVL(NSUCCHPC_9,0) +
 NVL(NSUCCHPC_10,0) +
 NVL(NSUCCHPC_11,0) +
 NVL(NSUCCHPC_12,0) +
 NVL(NSUCCHPC_13,0) +
 NVL(NSUCCHPC_14,0) +
 NVL(NSUCCHPC_17,0) +
 NVL(NSUCCHPC_18,0) +
 NVL(NSUCCHPC_19,0) +
 NVL(NSUCCHPC_20,0) +
 NVL(NSUCCHPC_21,0) +
 NVL(NSUCCHPC_22,0))
 )
,
sum(
NVL(ATTCHSEI_1,0) +
 NVL(ATTCHSEI_2,0) -
 (NVL(TASSATT_2,0) +
 NVL(TASSATT_3,0)) -
 (NVL(ATINHIAC_1,0) +
 NVL(ATINHIAC_2,0) +
 NVL(ATINHIAC_3,0) +
 NVL(ATINHIAC_4,0) +
 NVL(ATINHIAC_5,0) +
 NVL(ATINHIAC_6,0) +
 NVL(ATINHIAC_7,0) +
 NVL(ATINHIAC_8,0) +
 NVL(ATINHIAC_9,0) +
 NVL(ATINHIAC_10,0) +
 NVL(ATINHIAC_11,0) +
 NVL(ATINHIAC_12,0) +
 NVL(ATINHIAC_13,0) +
 NVL(ATINHIAC_14,0)) -
 (NVL(ATIMASCA_7,0) +
 NVL(ATIMASCA_8,0) +
 NVL(ATIMASCA_9,0) +
 NVL(ATIMASCA_10,0) +
 NVL(ATIMASCA_11,0) +
 NVL(ATIMASCA_12,0) +
 NVL(ATIMASCA_13,0) +
 NVL(ATIMASCA_14,0))),-1,0),2) Incoming_HSR,

--round(div(sum(NVL(a.INTERCELLINCHOSUCC, 0))*100,sum(NVL(a.INTERCELLINCHOATT, 0)), 2) as Incoming_HSR, 

ROUND(DIV(sum(
NVL(b.NTDMPCH_1,0)+
NVL(b.NTDMPCH_2,0) +
NVL(b.NTDMPCH_3,0) +
NVL(b.NTDMPCH_4,0)
) ,
3600),2) PPS,

ROUND(DIV(sum(NVL(b.NTDMPCH_1,0)),3600),2) PPS_CS,
ROUND(DIV(sum(NVL(b.NTDMPCH_2,0)),3600),2) PPS_PS,
ROUND(DIV(sum(NVL(b.NTDMPCH_3,0)),3600),2) PPS_CS_Discard,
ROUND(DIV(sum(NVL(b.NTDMPCH_4,0)),3600),2) PPS_CS_Discard,

ROUND(DIV(sum(
NVL(a.MEITCHIB_1,0)
)*100,
sum(
NVL(a.MEITCHIB_1,0)+
NVL(a.MEITCHIB_2,0)+
NVL(a.MEITCHIB_3,0)+
NVL(a.MEITCHIB_4,0)+
NVL(a.MEITCHIB_5,0)
)
)
,2) I_Band_1,

ROUND(DIV(sum(
NVL(a.MEITCHIB_2,0)
)*100,
sum(
NVL(a.MEITCHIB_1,0)+
NVL(a.MEITCHIB_2,0)+
NVL(a.MEITCHIB_3,0)+
NVL(a.MEITCHIB_4,0)+
NVL(a.MEITCHIB_5,0)
)
)
,2) I_Band_2,

ROUND(DIV(sum(
NVL(a.MEITCHIB_3,0)
)*100,
sum(
NVL(a.MEITCHIB_1,0)+
NVL(a.MEITCHIB_2,0)+
NVL(a.MEITCHIB_3,0)+
NVL(a.MEITCHIB_4,0)+
NVL(a.MEITCHIB_5,0)
)
)
,2) I_Band_3,

ROUND(DIV(sum(
NVL(a.MEITCHIB_4,0)
)*100,
sum(
NVL(a.MEITCHIB_1,0)+
NVL(a.MEITCHIB_2,0)+
NVL(a.MEITCHIB_3,0)+
NVL(a.MEITCHIB_4,0)+
NVL(a.MEITCHIB_5,0)
)
)
,2) I_Band_4,

ROUND(DIV(sum(
NVL(a.MEITCHIB_5,0)
)*100,
sum(
NVL(a.MEITCHIB_1,0)+
NVL(a.MEITCHIB_2,0)+
NVL(a.MEITCHIB_3,0)+
NVL(a.MEITCHIB_4,0)+
NVL(a.MEITCHIB_5,0)
)
)
,2) I_Band_5,


ROUND(100 *DIV(sum(
NVL(NACSUCPR_4,0)
),
sum(
NVL(NACSUCPR_4,0)+NVL(b.NINVRACH_1,0)+NVL(b.NINVRACH_3,0)+NVL(b.NINVRACH_2,0))
,-1,0),2) RACH_Success_Rate,

sum(NVL(b.NINVRACH_1,0)) RACH_Fail_LowLevel,
sum(NVL(b.NINVRACH_2,0)) RACH_Fail_HiDist,
sum(NVL(b.NINVRACH_3,0)) RACH_Fail_Others,

sum(NVL(a.ATINHIAC_1, 0 )) INTRATUQ,
sum(NVL(a.ATINHIAC_2, 0 )) INTRATDQ,
sum(NVL(a.ATINHIAC_3, 0 )) INTRATI2C,
sum(NVL(a.ATINHIAC_4, 0 )) INTRATC2I,
sum(NVL(a.ATINHIAC_8, 0 )) INTRATH2FAMR,
sum(NVL(a.ATINHIAC_9, 0 )) INTRATF2HAMR,

--sum(NVL(a.INTERCELLHOATT, 0)) as Intra_BSC_HO_ATT_Out,

--sum(NVL(a.INTERBSCHOATT, 0)) as Inter_BSC_HO_ATT_Out,


--sum(NVL(a.INTERCELLINCHOATT, 0)) as Inter_cell_HO_ATT_in,


round(
div(
sum(
NVL(a.INTERCELLHOSUCC, 0) + 
NVL(a.INTERBSCHOSUCC, 0)
)*100,

sum(
NVL(a.INTERCELLHOATT, 0)+
NVL(a.INTERBSCHOATT, 0)
)
), 2) as HOSR,





ROUND(DIV(SUM(NVL(a.ATINHIRC_1 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_UQ_ATT,	

ROUND(DIV(SUM(NVL(a.ATINHIRC_2 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_DQ_ATT,

ROUND(DIV(SUM(NVL(a.ATINHIRC_3 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_US_ATT,

ROUND(DIV(SUM(NVL(a.ATINHIRC_4 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_DS_ATT,

ROUND(DIV(SUM(NVL(a.ATINHIRC_5 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_DIST_ATT,

ROUND(DIV(SUM(NVL(a.ATINHIRC_6 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_BC_ATT,

ROUND(DIV(SUM(NVL(a.ATINHIRC_7 , 0) )*100,
SUM(
NVL(a.ATINHIRC_1 , 0) +
NVL(a.ATINHIRC_2 , 0) +
NVL(a.ATINHIRC_3 , 0) +
NVL(a.ATINHIRC_4 , 0) +
NVL(a.ATINHIRC_5 , 0) +
NVL(a.ATINHIRC_6 , 0) +
NVL(a.ATINHIRC_7 , 0) +
NVL(a.ATINHIRC_8 , 0) +
NVL(a.ATINHIRC_9 , 0) +
NVL(a.ATINHIRC_10 , 0) +
NVL(a.ATINHIRC_11 , 0) +
NVL(a.ATINHIRC_12 , 0) 
)
),2) AS HO_DR_ATT,

round(div(SUM(NVL(a.MBTCHCHT_1 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_FR,

round(div(SUM(NVL(a.MBTCHCHT_2 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_EFR,

round(div(SUM(NVL(a.MBTCHCHT_3 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_AMR_FR,

round(div(SUM(NVL(a.MBTCHCHT_4 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_DATA,

round(div(SUM(NVL(a.MBTCHCHT_5 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_HR,


round(div(SUM(NVL(a.MBTCHCHT_6 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_AMR_HR,

round(div(SUM(NVL(a.MBTCHCHT_7 , 0))*100,
Sum(
NVL(a.MBTCHCHT_1 , 0) +
NVL(a.MBTCHCHT_2 , 0) +
NVL(a.MBTCHCHT_3 , 0) +
NVL(a.MBTCHCHT_4 , 0) +
NVL(a.MBTCHCHT_5 , 0) +
NVL(a.MBTCHCHT_6 , 0) +
NVL(a.MBTCHCHT_7 , 0) 
)), 2) as TCH_AMR_WB_FRS




FROM SIEMENS_BSS.SCANBTS_DY a, SIEMENS_BSS.SCANBTSE_DY b, SIEMENS_BSS.CELLCFG c
where
replace(a.BSC,'_BR10','')=c.BSC(+) and
a.Cell=c.Cell(+) and
a.BSC = b.BSC(+) and
a.Cell=b.Cell(+) and
a.datetime = b.datetime(+) and


(
a.BSC like '%11-%' or
a.BSC like '%18-%' or
a.BSC like '%68-%' or
a.BSC like '%73-%'
)




and
                                     
-- insert date: a.datetime

and 

c.Region = 'S'

group by a.datetime, a.BSC, c.SITE_NAME, c.LAC, c.cell_id, c.CITY_MNG        

