.class public Lcom/google/android/location/os/real/RealCellState;
.super Lcom/google/android/location/data/CellState;
.source "RealCellState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;IJ)V
    .registers 28
    .parameter "telephonyManager"
    .parameter "location"
    .parameter "signalStrength"
    .parameter "timeSinceBoot"

    .prologue
    .line 41
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/data/CellState;-><init>(J)V

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/os/real/RealCellState;->getRadioType(Landroid/telephony/TelephonyManager;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mRadioType:I

    .line 43
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mSignalStrength:I

    .line 45
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v16, v0

    if-eqz v16, :cond_ee

    move-object/from16 v7, p2

    .line 46
    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 47
    .local v7, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mLac:I

    .line 48
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mCid:I

    .line 64
    .end local v7           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_37
    :goto_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/os/real/RealCellState;->mRadioType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a5

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    .line 67
    .local v15, operator:Ljava/lang/String;
    if-eqz v15, :cond_a5

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a5

    .line 71
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_57
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, mcc:Ljava/lang/String;
    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, mnc:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 74
    .local v9, mccTmp:I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 77
    .local v11, mncTmp:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/location/os/real/RealCellState;->mMcc:I

    .line 78
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/location/os/real/RealCellState;->mMnc:I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_71} :catch_13e

    .line 84
    .end local v8           #mcc:Ljava/lang/String;
    .end local v9           #mccTmp:I
    .end local v10           #mnc:Ljava/lang/String;
    .end local v11           #mncTmp:I
    :goto_71
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, homeOperator:Ljava/lang/String;
    if-eqz v5, :cond_a5

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a5

    .line 90
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_85
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 91
    .restart local v8       #mcc:Ljava/lang/String;
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 92
    .restart local v10       #mnc:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 93
    .restart local v9       #mccTmp:I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 96
    .restart local v11       #mncTmp:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/location/os/real/RealCellState;->mHomeMcc:I

    .line 97
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/location/os/real/RealCellState;->mHomeMnc:I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a5} :catch_165

    .line 110
    .end local v5           #homeOperator:Ljava/lang/String;
    .end local v8           #mcc:Ljava/lang/String;
    .end local v9           #mccTmp:I
    .end local v10           #mnc:Ljava/lang/String;
    .end local v11           #mncTmp:I
    .end local v15           #operator:Ljava/lang/String;
    :cond_a5
    :goto_a5
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v13

    .line 112
    .local v13, neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v13, :cond_1b6

    .line 113
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_af
    :goto_af
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 114
    .local v12, n:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v14

    .line 115
    .local v14, networkType:I
    packed-switch v14, :pswitch_data_1f2

    :pswitch_c2
    goto :goto_af

    .line 118
    :pswitch_c3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/os/real/RealCellState;->mRadioType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_af

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/os/real/RealCellState;->mNeighbors:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/google/android/location/data/CellState$NeighborCell;

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v18

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v19

    const/16 v20, -0x1

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Lcom/google/android/location/data/CellState$NeighborCell;-><init>(IIII)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 49
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #n:Landroid/telephony/NeighboringCellInfo;
    .end local v13           #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v14           #networkType:I
    :cond_ee
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v16, v0

    if-eqz v16, :cond_37

    move-object/from16 v7, p2

    .line 50
    check-cast v7, Landroid/telephony/cdma/CdmaCellLocation;

    .line 51
    .local v7, loc:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mLac:I

    .line 52
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mCid:I

    .line 53
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mMnc:I

    .line 55
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mMcc:I

    .line 56
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mLatitude:I

    .line 57
    invoke-virtual {v7}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mLongitude:I

    .line 60
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/os/real/RealCellState;->mRadioType:I

    goto/16 :goto_37

    .line 79
    .end local v7           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v15       #operator:Ljava/lang/String;
    :catch_13e
    move-exception v4

    .line 80
    .local v4, e:Ljava/lang/Exception;
    const-string v16, "CellState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error parsing MCC/MNC from operator \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    .line 98
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #homeOperator:Ljava/lang/String;
    :catch_165
    move-exception v4

    .line 99
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "CellState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error parsing MCC/MNC from home operator \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5

    .line 128
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #homeOperator:Ljava/lang/String;
    .end local v15           #operator:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v12       #n:Landroid/telephony/NeighboringCellInfo;
    .restart local v13       #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .restart local v14       #networkType:I
    :pswitch_18c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/os/real/RealCellState;->mRadioType:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_af

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/os/real/RealCellState;->mNeighbors:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/google/android/location/data/CellState$NeighborCell;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v20

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Lcom/google/android/location/data/CellState$NeighborCell;-><init>(IIII)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_af

    .line 139
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #n:Landroid/telephony/NeighboringCellInfo;
    .end local v14           #networkType:I
    :cond_1b6
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, carrier:Ljava/lang/String;
    if-eqz v3, :cond_1ca

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1ca

    .line 141
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/location/os/real/RealCellState;->mCarrier:Ljava/lang/String;

    .line 144
    :cond_1ca
    const-string v16, "CellState"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Lcom/google/android/location/os/Logger;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_1f0

    .line 145
    const-string v16, "CellState"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CellState(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/location/os/real/RealCellState;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/android/location/os/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1f0
    return-void

    .line 115
    nop

    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_c3
        :pswitch_18c
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_18c
        :pswitch_18c
        :pswitch_18c
    .end packed-switch
.end method

.method public static final getRadioType(Landroid/telephony/TelephonyManager;)I
    .registers 6
    .parameter "telephonyManager"

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 154
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 155
    .local v0, networkType:I
    if-eq v0, v4, :cond_c

    if-ne v0, v2, :cond_e

    :cond_c
    move v1, v4

    .line 172
    :cond_d
    :goto_d
    return v1

    .line 158
    :cond_e
    if-eq v0, v3, :cond_1c

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1c

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1e

    :cond_1c
    move v1, v3

    .line 162
    goto :goto_d

    .line 163
    :cond_1e
    if-eq v0, v1, :cond_2d

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2d

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2f

    :cond_2d
    move v1, v2

    .line 168
    goto :goto_d

    .line 169
    :cond_2f
    const/16 v2, 0xd

    if-eq v0, v2, :cond_d

    .line 172
    const/4 v1, -0x1

    goto :goto_d
.end method
