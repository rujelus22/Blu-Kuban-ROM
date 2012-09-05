.class public Lcom/syncmldstmo/base/smlHandleCmd;
.super Lcom/syncmldstmo/base/smlHandleCmd_H;
.source "smlHandleCmd.java"


# static fields
.field public static gSyncDbStatus:[I


# instance fields
.field public final SML_LO_ERROR:I

.field public final SML_LO_LARGEOBJECT:I

.field public final SML_LO_LASTCHUNKNORECV:I

.field public final SML_LO_NORMAL:I

.field public final SML_LO_REQ_SIZE_TOO_BIG:I

.field public final SML_LO_SIZEMISMATCH:I

.field public final SML_LO_UNKNOWNSIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_NORMAL:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_LARGEOBJECT:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_SIZEMISMATCH:I

    .line 20
    const/4 v0, -0x2

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_UNKNOWNSIZE:I

    .line 21
    const/4 v0, -0x3

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_LASTCHUNKNORECV:I

    .line 22
    const/4 v0, -0x4

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_REQ_SIZE_TOO_BIG:I

    .line 23
    const/4 v0, -0x5

    iput v0, p0, Lcom/syncmldstmo/base/smlHandleCmd;->SML_LO_ERROR:I

    .line 13
    return-void
.end method

.method public static smlClearSyncDbStatus()V
    .registers 1

    .prologue
    .line 2245
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    .line 2246
    return-void
.end method

.method public static smlGetCurrentSyncDbStatus()[I
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    return-object v0
.end method

.method private smlHCmdStatusSetAuthState(Ljava/lang/String;)I
    .registers 6
    .parameter "szAuthCode"

    .prologue
    const/high16 v3, 0x4

    .line 108
    const-string v1, "212"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 110
    const-string v1, "Authentication Accepted ( 212 )"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    .line 190
    .local v0, authState:I
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "authState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 191
    return v0

    .line 113
    .end local v0           #authState:I
    :cond_23
    const-string v1, "200"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 115
    const/4 v0, 0x1

    .restart local v0       #authState:I
    goto :goto_10

    .line 117
    .end local v0           #authState:I
    :cond_2d
    const-string v1, "401"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 119
    const/4 v0, -0x2

    .restart local v0       #authState:I
    goto :goto_10

    .line 121
    .end local v0           #authState:I
    :cond_37
    const-string v1, "407"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 123
    const/4 v0, -0x3

    .restart local v0       #authState:I
    goto :goto_10

    .line 125
    .end local v0           #authState:I
    :cond_41
    const-string v1, "402"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 127
    const/4 v0, -0x4

    .restart local v0       #authState:I
    goto :goto_10

    .line 129
    .end local v0           #authState:I
    :cond_4b
    const-string v1, "417"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 131
    const/4 v0, -0x5

    .restart local v0       #authState:I
    goto :goto_10

    .line 133
    .end local v0           #authState:I
    :cond_55
    const-string v1, "101"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 135
    const/4 v0, -0x6

    .restart local v0       #authState:I
    goto :goto_10

    .line 137
    .end local v0           #authState:I
    :cond_5f
    const-string v1, "403"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 139
    const/16 v0, -0xc

    .restart local v0       #authState:I
    goto :goto_10

    .line 141
    .end local v0           #authState:I
    :cond_6a
    const-string v1, "511"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 143
    const/16 v0, -0xd

    .restart local v0       #authState:I
    goto :goto_10

    .line 145
    .end local v0           #authState:I
    :cond_75
    const-string v1, "513"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 147
    const/16 v0, -0x11

    .restart local v0       #authState:I
    goto :goto_10

    .line 149
    .end local v0           #authState:I
    :cond_80
    const-string v1, "500"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 151
    const/16 v0, -0x10

    .restart local v0       #authState:I
    goto :goto_10

    .line 153
    .end local v0           #authState:I
    :cond_8b
    const-string v1, "510"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 155
    const/16 v0, -0xe

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 157
    .end local v0           #authState:I
    :cond_97
    const-string v1, "506"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 159
    const/16 v0, -0xf

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 161
    .end local v0           #authState:I
    :cond_a3
    const-string v1, "404"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 163
    const/16 v0, -0xa

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 165
    .end local v0           #authState:I
    :cond_af
    const-string v1, "406"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 167
    const/16 v0, -0x12

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 169
    .end local v0           #authState:I
    :cond_bb
    const-string v1, "425"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 171
    const/16 v0, -0x13

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 173
    .end local v0           #authState:I
    :cond_c7
    const-string v1, "502"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 175
    const/16 v0, -0xd

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 177
    .end local v0           #authState:I
    :cond_d3
    const-string v1, "503"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 179
    const/16 v0, -0xd

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 181
    .end local v0           #authState:I
    :cond_df
    const-string v1, "504"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 183
    const/16 v0, -0xd

    .restart local v0       #authState:I
    goto/16 :goto_10

    .line 187
    .end local v0           #authState:I
    :cond_eb
    const/4 v0, -0x1

    .restart local v0       #authState:I
    goto/16 :goto_10
.end method

.method public static smlHandleDevinfCommand(Lcom/syncmldstmo/base/sml$SML_DEVINF;)V
    .registers 1
    .parameter "pDevinf"

    .prologue
    .line 2562
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlSetDevinf(Lcom/syncmldstmo/base/sml$SML_DEVINF;)Z

    .line 2563
    return-void
.end method


# virtual methods
.method public smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V
    .registers 5
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2538
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    .line 2540
    .local v0, ReceiveObj:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;
    if-eqz v0, :cond_1b

    .line 2542
    iput-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    .line 2543
    iput-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->guid:Ljava/lang/String;

    .line 2544
    iput-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->metaType:Ljava/lang/String;

    .line 2546
    iput-boolean v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->bReceiving:Z

    .line 2547
    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    .line 2548
    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    .line 2550
    iput-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->writeBuf:[C

    .line 2551
    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->writeBufLen:I

    .line 2552
    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->writeBufOffset:I

    .line 2553
    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->offset:I

    .line 2555
    const/4 v0, 0x0

    .line 2557
    :cond_1b
    return-void
.end method

.method public smlHCmdAdd(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ADD;)V
    .registers 26
    .parameter
    .parameter

    .prologue
    .line 1056
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 1057
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object/from16 v21, v0

    .line 1058
    const/16 v17, 0x0

    .line 1059
    const/4 v6, 0x0

    .line 1060
    const/4 v7, 0x0

    .line 1065
    const/4 v15, 0x0

    .line 1066
    const/4 v4, 0x0

    .line 1067
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1068
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1070
    const/4 v3, 0x0

    .line 1073
    const/high16 v5, 0x4

    const-string v8, "handle add cmd"

    invoke-static {v5, v8}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1076
    if-eqz v21, :cond_509

    .line 1078
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v5

    if-eqz v5, :cond_2c0

    .line 1080
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1081
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1082
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    move v11, v12

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v16, v17

    move-object/from16 v17, v5

    move v12, v13

    .line 1084
    :goto_3f
    if-nez v18, :cond_6e

    .line 1330
    :cond_41
    :goto_41
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v3, :pswitch_data_532

    .line 1365
    :goto_4a
    if-nez v15, :cond_56

    const/4 v3, 0x1

    if-le v4, v3, :cond_56

    .line 1367
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlRemoveRefOfStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;)V

    .line 1371
    :cond_56
    if-eqz v16, :cond_6d

    .line 1373
    move-object/from16 v0, p2

    iget v3, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->is_noresp:I

    if-nez v3, :cond_6d

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v3, :cond_6d

    .line 1375
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1378
    :cond_6d
    return-void

    .line 1086
    :cond_6e
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v3

    if-nez v3, :cond_41

    .line 1091
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlHandleItemData(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v3

    .line 1092
    const/high16 v5, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "smlHandleItemData retlo : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1093
    if-nez v3, :cond_27a

    .line 1095
    new-instance v3, Lcom/syncmldstmo/base/sml$Item_t;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$Item_t;-><init>()V

    .line 1096
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/syncmldstmo/base/smlBuildCmd;->smlMakeItemDataAdd(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ADD;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$Item_t;)Lcom/syncmldstmo/base/sml$Item_t;

    move-result-object v20

    .line 1097
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    .line 1099
    const/high16 v3, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ws.m_dbInfo.id : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v6, v6, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1102
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 1103
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    move-object/from16 v0, v20

    iput v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 1104
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v6, v6, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v6, v0}, Lcom/syncmldstmo/base/smlUpdate;->addItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I

    move-result v3

    .line 1105
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addItem ret : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1106
    packed-switch v3, :pswitch_data_540

    .line 1155
    :pswitch_119
    const-string v5, "510"

    .line 1156
    add-int/lit8 v3, v11, 0x1

    move-object v6, v5

    move v5, v4

    move v4, v12

    .line 1160
    :goto_120
    invoke-virtual/range {p0 .. p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    move v11, v3

    move v12, v4

    .line 1187
    :goto_125
    move-object/from16 v0, v19

    if-eq v6, v0, :cond_52b

    .line 1190
    if-eqz v16, :cond_528

    .line 1192
    move-object/from16 v0, p2

    iget v3, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->is_noresp:I

    if-nez v3, :cond_140

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v3, :cond_140

    .line 1194
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1196
    :cond_140
    const/4 v3, 0x1

    .line 1198
    :goto_141
    move-object/from16 v0, p2

    iget v4, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Add"

    move-object/from16 v0, p1

    invoke-static {v0, v4, v7, v6}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v4

    move v15, v3

    .line 1200
    :goto_152
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v3, v7}, Lcom/syncmldstmo/base/smlBuildCmd;->smlAddRefToStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-static/range {v17 .. v17}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1204
    invoke-static/range {v17 .. v17}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v7

    move-object/from16 v17, v7

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v16, v4

    move v4, v5

    goto/16 :goto_3f

    .line 1109
    :pswitch_176
    const/high16 v3, 0x4

    const-string v5, "success process add cmd"

    invoke-static {v3, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1110
    const-string v14, "201"

    .line 1111
    add-int/lit8 v13, v4, 0x1

    .line 1112
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v8

    .line 1113
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addItem luid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item luid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1114
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v4, "obex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    .line 1116
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v4, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v7, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    .line 1129
    :cond_1d0
    :goto_1d0
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addItem item.luid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1130
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    add-int/lit8 v3, v12, 0x1

    move v4, v3

    move v5, v13

    move-object v6, v14

    move v3, v11

    .line 1132
    goto/16 :goto_120

    .line 1118
    :cond_1fd
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_223

    .line 1120
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v4, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_1d0

    .line 1122
    :cond_223
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 1124
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v4, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_1d0

    .line 1135
    :pswitch_249
    const-string v5, "500"

    .line 1136
    add-int/lit8 v3, v11, 0x1

    move-object v6, v5

    move v5, v4

    move v4, v12

    .line 1137
    goto/16 :goto_120

    .line 1140
    :pswitch_252
    const-string v3, "500"

    move v5, v4

    move-object v6, v3

    move v3, v11

    move v4, v12

    .line 1141
    goto/16 :goto_120

    .line 1144
    :pswitch_25a
    const-string v5, "420"

    .line 1145
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetDeviceFull(Ljava/lang/Object;IZ)V

    .line 1146
    add-int/lit8 v3, v11, 0x1

    move-object v6, v5

    move v5, v4

    move v4, v12

    .line 1147
    goto/16 :goto_120

    .line 1150
    :pswitch_271
    const-string v5, "418"

    .line 1151
    add-int/lit8 v3, v11, 0x1

    move-object v6, v5

    move v5, v4

    move v4, v12

    .line 1152
    goto/16 :goto_120

    .line 1162
    :cond_27a
    const/4 v5, 0x1

    if-ne v3, v5, :cond_292

    .line 1164
    const/4 v3, 0x0

    const-string v5, "222"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdExtendAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_META;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v3

    .line 1165
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1167
    const-string v6, "213"

    move v5, v4

    goto/16 :goto_125

    .line 1169
    :cond_292
    const/4 v5, -0x3

    if-ne v3, v5, :cond_2a8

    .line 1171
    const/4 v3, 0x0

    const-string v5, "223"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdExtendAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_META;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v3

    .line 1172
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    move v5, v4

    goto/16 :goto_125

    .line 1174
    :cond_2a8
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2b0

    .line 1176
    const-string v6, "424"

    move v5, v4

    goto/16 :goto_125

    .line 1178
    :cond_2b0
    const/4 v5, -0x4

    if-ne v3, v5, :cond_2b8

    .line 1180
    const-string v6, "416"

    move v5, v4

    goto/16 :goto_125

    .line 1182
    :cond_2b8
    const/4 v5, -0x2

    if-ne v3, v5, :cond_52f

    .line 1184
    const-string v6, "411"

    move v5, v4

    goto/16 :goto_125

    .line 1209
    :cond_2c0
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v5, :cond_525

    .line 1211
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    move-object v11, v3

    .line 1214
    :goto_2cd
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1215
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1216
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    move/from16 v16, v15

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    .line 1218
    :goto_2e3
    if-nez v19, :cond_2ed

    move v11, v12

    move/from16 v15, v16

    move v12, v13

    move-object/from16 v16, v17

    goto/16 :goto_41

    .line 1221
    :cond_2ed
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v3

    if-eqz v3, :cond_2fb

    move v11, v12

    move/from16 v15, v16

    move v12, v13

    move-object/from16 v16, v17

    .line 1222
    goto/16 :goto_41

    .line 1225
    :cond_2fb
    new-instance v22, Lcom/syncmldstmo/base/sml$Item_t;

    invoke-direct/range {v22 .. v22}, Lcom/syncmldstmo/base/sml$Item_t;-><init>()V

    .line 1226
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v3, :cond_3b4

    .line 1228
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31c

    .line 1230
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    .line 1245
    :cond_31c
    :goto_31c
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 1246
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 1247
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v3, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    move-object/from16 v0, v22

    iput v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 1248
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v6, v6, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v6, v0}, Lcom/syncmldstmo/base/smlUpdate;->addItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I

    move-result v3

    .line 1249
    packed-switch v3, :pswitch_data_552

    .line 1304
    :pswitch_354
    const-string v5, "510"

    .line 1305
    add-int/lit8 v3, v12, 0x1

    move v6, v4

    move-object v7, v5

    move v4, v3

    move v5, v13

    .line 1309
    :goto_35c
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_521

    .line 1312
    if-eqz v17, :cond_51d

    .line 1314
    move-object/from16 v0, p2

    iget v3, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->is_noresp:I

    if-nez v3, :cond_37b

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v3, :cond_37b

    .line 1316
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1318
    :cond_37b
    const/4 v3, 0x1

    .line 1320
    :goto_37c
    move-object/from16 v0, p2

    iget v8, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    invoke-static {v8}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Add"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v8

    move/from16 v16, v3

    .line 1322
    :goto_38e
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v8, v3, v9}, Lcom/syncmldstmo/base/smlBuildCmd;->smlAddRefToStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-static/range {v18 .. v18}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1326
    invoke-static/range {v18 .. v18}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v9

    move v12, v4

    move v13, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v17, v8

    move v4, v6

    goto/16 :goto_2e3

    .line 1235
    :cond_3b4
    invoke-static {v11}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c0

    .line 1237
    move-object/from16 v0, v22

    iput-object v11, v0, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    goto/16 :goto_31c

    .line 1241
    :cond_3c0
    const-string v3, "WARNING !!  Server didnot send MIME Type."

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto/16 :goto_31c

    .line 1252
    :pswitch_3c7
    const/high16 v3, 0x4

    const-string v5, "success process add cmd."

    invoke-static {v3, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1253
    const-string v15, "201"

    .line 1254
    add-int/lit8 v14, v4, 0x1

    .line 1255
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v8

    .line 1256
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v4, "obex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_414

    .line 1258
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v4, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v7, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    .line 1271
    :cond_3ff
    :goto_3ff
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    add-int/lit8 v3, v13, 0x1

    move v4, v12

    move v5, v3

    move v6, v14

    move-object v7, v15

    .line 1273
    goto/16 :goto_35c

    .line 1260
    :cond_414
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43a

    .line 1262
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v4, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_3ff

    .line 1264
    :cond_43a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ff

    .line 1266
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v4, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_3ff

    .line 1276
    :pswitch_460
    const-string v5, "500"

    .line 1277
    add-int/lit8 v3, v12, 0x1

    move v6, v4

    move-object v7, v5

    move v4, v3

    move v5, v13

    .line 1278
    goto/16 :goto_35c

    .line 1281
    :pswitch_46a
    const-string v3, "500"

    move v5, v13

    move v6, v4

    move-object v7, v3

    move v4, v12

    .line 1283
    goto/16 :goto_35c

    .line 1286
    :pswitch_472
    const/high16 v3, 0x4

    const-string v5, "SML_DB_DEVICE_FULL."

    invoke-static {v3, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1287
    const-string v5, "420"

    .line 1288
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetDeviceFull(Ljava/lang/Object;IZ)V

    .line 1289
    add-int/lit8 v3, v12, 0x1

    move v6, v4

    move-object v7, v5

    move v4, v3

    move v5, v13

    .line 1290
    goto/16 :goto_35c

    .line 1293
    :pswitch_491
    const-string v5, "418"

    .line 1294
    add-int/lit8 v3, v12, 0x1

    move v6, v4

    move-object v7, v5

    move v4, v3

    move v5, v13

    .line 1295
    goto/16 :goto_35c

    .line 1299
    :pswitch_49b
    const-string v5, "406"

    .line 1300
    add-int/lit8 v3, v12, 0x1

    move v6, v4

    move-object v7, v5

    move v4, v3

    move v5, v13

    .line 1301
    goto/16 :goto_35c

    .line 1333
    :pswitch_4a5
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v12

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1334
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v11

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_4a

    .line 1338
    :pswitch_4b9
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v12

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1339
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v11

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_4a

    .line 1343
    :pswitch_4cd
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v12

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1344
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v11

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_4a

    .line 1348
    :pswitch_4e1
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v12

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1349
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v11

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_4a

    .line 1353
    :pswitch_4f5
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v12

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1354
    iget-object v3, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v10, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v11

    iput v5, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_4a

    .line 1360
    :cond_509
    const-string v3, "500"

    .line 1361
    move-object/from16 v0, p2

    iget v5, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    invoke-static {v5}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Add"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v3}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v16

    goto/16 :goto_4a

    :cond_51d
    move/from16 v3, v16

    goto/16 :goto_37c

    :cond_521
    move-object/from16 v8, v17

    goto/16 :goto_38e

    :cond_525
    move-object v11, v3

    goto/16 :goto_2cd

    :cond_528
    move v3, v15

    goto/16 :goto_141

    :cond_52b
    move-object/from16 v4, v16

    goto/16 :goto_152

    :cond_52f
    move v5, v4

    goto/16 :goto_125

    .line 1330
    :pswitch_data_532
    .packed-switch 0x0
        :pswitch_4a5
        :pswitch_4b9
        :pswitch_4cd
        :pswitch_4e1
        :pswitch_4f5
    .end packed-switch

    .line 1106
    :pswitch_data_540
    .packed-switch -0x5
        :pswitch_252
        :pswitch_119
        :pswitch_271
        :pswitch_25a
        :pswitch_249
        :pswitch_119
        :pswitch_176
    .end packed-switch

    .line 1249
    :pswitch_data_552
    .packed-switch -0x6
        :pswitch_49b
        :pswitch_46a
        :pswitch_354
        :pswitch_491
        :pswitch_472
        :pswitch_460
        :pswitch_354
        :pswitch_3c7
    .end packed-switch
.end method

.method public smlHCmdAlert(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ALERT;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 828
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 829
    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 831
    const/4 v3, 0x0

    .line 837
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 840
    const/high16 v1, 0x4

    const-string v2, "handle Alert cmd"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 842
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v2, "222"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 844
    iget v0, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alert"

    const-string v2, "200"

    invoke-static {p1, v0, v1, v2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_37

    .line 848
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->is_noresp:I

    if-nez v1, :cond_37

    iget-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v1, :cond_37

    .line 850
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1052
    :cond_37
    :goto_37
    return-void

    .line 857
    :cond_38
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_32c

    .line 859
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 860
    invoke-static {v2}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 861
    invoke-static {v2}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    .line 863
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 864
    invoke-virtual {v4}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    .line 866
    :goto_54
    if-nez v3, :cond_78

    move-object v0, v2

    .line 1040
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlSetCurrentProfileInfo()V

    .line 1043
    :goto_5a
    if-nez v0, :cond_6a

    .line 1045
    iget v0, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alert"

    const-string v2, "500"

    invoke-static {p1, v0, v1, v2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v0

    .line 1048
    :cond_6a
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->is_noresp:I

    if-nez v1, :cond_37

    iget-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v1, :cond_37

    .line 1050
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    goto :goto_37

    .line 868
    :cond_78
    iget-object v5, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    iget-object v6, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_322

    iget-object v5, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v5, v5, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    iget-object v6, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_322

    .line 870
    const/high16 v2, 0x4

    const-string v5, "target and sorce are same"

    invoke-static {v2, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "target.pLocURI : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v5, v5, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", sorce : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 874
    iget-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 877
    const/high16 v2, 0x4

    const-string v5, "item.meta.anchor.next is empty !!"

    invoke-static {v2, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 880
    :cond_ca
    iget v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/16 v5, 0x9

    if-eq v2, v5, :cond_f3

    .line 882
    const/high16 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "alert.data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 884
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "201"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 886
    const/4 v2, 0x1

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    .line 918
    :cond_f3
    :goto_f3
    iget v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_102

    .line 919
    iget v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v5, 0x6

    if-eq v2, v5, :cond_102

    .line 920
    iget v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_106

    .line 922
    :cond_102
    const-string v2, "00000000T000000Z"

    iput-object v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    .line 925
    :cond_106
    iget v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    packed-switch v2, :pswitch_data_330

    .line 1025
    :pswitch_10b
    iget v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    invoke-static {v2}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Alert"

    const-string v6, "500"

    invoke-static {p1, v2, v5, v6}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v2

    .line 1026
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    move-object v3, v2

    .line 1037
    :goto_11d
    invoke-virtual {v4}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_54

    .line 888
    :cond_128
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 890
    const/4 v2, 0x2

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto :goto_f3

    .line 892
    :cond_136
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "202"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    .line 894
    const/4 v2, 0x4

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto :goto_f3

    .line 896
    :cond_144
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "203"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 898
    const/4 v2, 0x6

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto :goto_f3

    .line 900
    :cond_152
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "204"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 902
    const/4 v2, 0x3

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto :goto_f3

    .line 904
    :cond_160
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "205"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 906
    const/4 v2, 0x5

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto :goto_f3

    .line 908
    :cond_16e
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    const-string v5, "206"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 910
    const/4 v2, 0x7

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto/16 :goto_f3

    .line 914
    :cond_17d
    const/4 v2, 0x0

    iput v2, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    goto/16 :goto_f3

    .line 936
    :pswitch_182
    iget v2, p2, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Alert"

    const-string v6, "200"

    invoke-static {p1, v2, v5, v6}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v2

    .line 939
    new-instance v5, Lcom/syncmldstmo/base/smlList;

    iget-object v6, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 942
    new-instance v5, Lcom/syncmldstmo/base/smlList;

    iget-object v6, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v6, v6, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    .line 945
    new-instance v5, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v5}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 946
    new-instance v6, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-direct {v6}, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;-><init>()V

    .line 947
    new-instance v7, Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-direct {v7}, Lcom/syncmldstmo/base/sml$SML_PCDATA;-><init>()V

    .line 949
    new-instance v8, Ljava/lang/String;

    iget-object v9, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v9, v9, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    iget-object v9, v9, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v8, v6, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    .line 950
    iput-object v7, v5, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 951
    iget-object v7, v5, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    const/4 v8, 0x2

    iput v8, v7, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 952
    iget-object v7, v5, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iput-object v6, v7, Lcom/syncmldstmo/base/sml$SML_PCDATA;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    .line 954
    new-instance v6, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v6, v5}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_STATUS;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 956
    new-instance v5, Lcom/syncmldstmo/base/smlDebug$RefInt;

    invoke-direct {v5}, Lcom/syncmldstmo/base/smlDebug$RefInt;-><init>()V

    .line 957
    iget-object v6, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v6, v6, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v7, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v7, v7, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-virtual {v6, v7, v3, v5}, Lcom/syncmldstmo/base/smlUpdate;->smlGetUpdateList(ILcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Lcom/syncmldstmo/base/smlDebug$RefInt;)I

    .line 958
    iget v5, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 960
    const/high16 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "count : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 962
    iget v6, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v6, :pswitch_data_346

    .line 995
    :goto_1fd
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    .line 996
    iget v5, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_329

    .line 1001
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget v6, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-virtual {v5, p1, v6}, Lcom/syncmldstmo/base/smlUpdate;->deleteAllItem(Ljava/lang/Object;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2dd

    .line 1003
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteAllItem fail DB id : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move-object v3, v2

    goto/16 :goto_11d

    .line 965
    :pswitch_22b
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v7, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 966
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v5, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 967
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Contact_SyncInfo.P2STotalItem  : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1fd

    .line 971
    :pswitch_24e
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v7, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 972
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v5, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 973
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Calendar_SyncInfo.P2STotalItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1fd

    .line 977
    :pswitch_271
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v7, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 978
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v5, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 979
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Task_SyncInfo.P2STotalItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_1fd

    .line 983
    :pswitch_295
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v7, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 984
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v5, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 985
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Memo_SyncInfo.P2STotalItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_1fd

    .line 989
    :pswitch_2b9
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v7, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 990
    iget-object v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v5, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 991
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Profile_SyncInfo.P2STotalItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_1fd

    .line 1007
    :cond_2dd
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v6, "obex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f4

    .line 1009
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteAllStatus(II)I

    move-object v3, v2

    goto/16 :goto_11d

    .line 1011
    :cond_2f4
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30b

    .line 1013
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v6, 0x3

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteAllStatus(II)I

    move-object v3, v2

    goto/16 :goto_11d

    .line 1015
    :cond_30b
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_329

    .line 1017
    iget-object v5, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v6, 0x3

    invoke-virtual {v5, v3, v6}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteAllStatus(II)I

    move-object v3, v2

    .line 1022
    goto/16 :goto_11d

    .line 1034
    :cond_322
    const/high16 v3, 0x4

    const-string v5, "target and sorce are not same"

    invoke-static {v3, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    :cond_329
    move-object v3, v2

    goto/16 :goto_11d

    :cond_32c
    move-object v0, v3

    goto/16 :goto_5a

    .line 925
    nop

    :pswitch_data_330
    .packed-switch 0x1
        :pswitch_182
        :pswitch_182
        :pswitch_182
        :pswitch_182
        :pswitch_182
        :pswitch_182
        :pswitch_182
        :pswitch_10b
        :pswitch_182
    .end packed-switch

    .line 962
    :pswitch_data_346
    .packed-switch 0x0
        :pswitch_22b
        :pswitch_24e
        :pswitch_271
        :pswitch_295
        :pswitch_2b9
    .end packed-switch
.end method

.method public smlHCmdAtomicEnd(Ljava/lang/Object;)V
    .registers 2
    .parameter "userdata"

    .prologue
    .line 2010
    return-void
.end method

.method public smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V
    .registers 3
    .parameter "userdata"
    .parameter "atomic"

    .prologue
    .line 2006
    return-void
.end method

.method public smlHCmdCopy(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_COPY;)V
    .registers 3
    .parameter "userdata"
    .parameter "copyCmd"

    .prologue
    .line 1832
    return-void
.end method

.method public smlHCmdDelete(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_DELETE;)V
    .registers 21
    .parameter
    .parameter

    .prologue
    .line 1836
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 1837
    const/4 v10, 0x0

    .line 1839
    const/4 v5, 0x0

    .line 1844
    const/4 v9, 0x0

    .line 1845
    const/4 v12, 0x0

    .line 1846
    const/4 v11, 0x0

    .line 1847
    const/4 v2, 0x0

    .line 1848
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1850
    const/high16 v1, 0x4

    const-string v3, "handle delete cmd"

    invoke-static {v1, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1853
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    if-eqz v1, :cond_21e

    .line 1855
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1856
    invoke-static {v3}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1857
    invoke-static {v3}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    move-object v15, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move v1, v2

    .line 1858
    :goto_30
    if-nez v16, :cond_5b

    .line 1954
    :cond_32
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v2, v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v2, :pswitch_data_23a

    .line 1989
    :goto_3b
    if-eqz v10, :cond_5a

    .line 1991
    if-nez v9, :cond_47

    const/4 v2, 0x1

    if-le v1, v2, :cond_47

    .line 1993
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/syncmldstmo/base/smlBuildCmd;->smlRemoveRefOfStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;)V

    .line 1997
    :cond_47
    move-object/from16 v0, p2

    iget v1, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_noresp:I

    if-nez v1, :cond_5a

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v1, :cond_5a

    .line 1999
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v10}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 2002
    :cond_5a
    return-void

    .line 1861
    :cond_5b
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v2

    if-nez v2, :cond_32

    .line 1864
    add-int/lit8 v14, v1, 0x1

    .line 1865
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_ce

    .line 1867
    const-string v1, "200"

    move v3, v11

    move v4, v12

    move-object v5, v1

    .line 1923
    :goto_77
    move-object/from16 v0, v17

    if-eq v5, v0, :cond_236

    .line 1926
    if-eqz v10, :cond_233

    .line 1928
    move-object/from16 v0, p2

    iget v1, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_noresp:I

    if-nez v1, :cond_233

    .line 1930
    move-object/from16 v0, p2

    iget v1, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_noresp:I

    if-nez v1, :cond_96

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v1, :cond_96

    .line 1932
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v10}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1934
    :cond_96
    const/4 v1, 0x1

    .line 1942
    :goto_97
    move-object/from16 v0, p2

    iget v2, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->cmdid:I

    invoke-static {v2}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Delete"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6, v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v2

    move v9, v1

    .line 1945
    :goto_a8
    const/4 v1, 0x0

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v7, v7, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1, v6}, Lcom/syncmldstmo/base/smlBuildCmd;->smlAddRefToStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-static {v15}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1950
    invoke-static {v15}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v6

    move v11, v3

    move v12, v4

    move-object v15, v6

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object v10, v2

    move v1, v14

    goto/16 :goto_30

    .line 1871
    :cond_ce
    new-instance v6, Lcom/syncmldstmo/base/sml$Item_t;

    invoke-direct {v6}, Lcom/syncmldstmo/base/sml$Item_t;-><init>()V

    .line 1872
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    iput-object v1, v6, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 1874
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_113

    .line 1876
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    .line 1883
    :goto_f3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-virtual {v1, v2, v3, v6}, Lcom/syncmldstmo/base/smlUpdate;->deleteItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I

    move-result v1

    .line 1885
    packed-switch v1, :pswitch_data_248

    .line 1917
    :pswitch_10a
    add-int/lit8 v1, v11, 0x1

    .line 1918
    const-string v2, "500"

    move v3, v1

    move v4, v12

    move-object v5, v2

    goto/16 :goto_77

    .line 1880
    :cond_113
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    goto :goto_f3

    .line 1888
    :pswitch_121
    const/high16 v1, 0x4

    const-string v2, "success process delete cmd"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1889
    const-string v13, "200"

    .line 1891
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v2, "obex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 1893
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v2, v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    iget v3, v6, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    iget v4, v6, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v5, 0x2

    iget-object v6, v6, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatusEx(IIIIILjava/lang/String;)I

    .line 1903
    :cond_151
    :goto_151
    add-int/lit8 v1, v12, 0x1

    move v3, v11

    move v4, v1

    move-object v5, v13

    .line 1904
    goto/16 :goto_77

    .line 1895
    :cond_158
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 1897
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v2, v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    iget v3, v6, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    iget v4, v6, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v5, 0x3

    iget-object v6, v6, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatusEx(IIIIILjava/lang/String;)I

    goto :goto_151

    .line 1899
    :cond_180
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 1901
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v2, v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    iget v3, v6, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    iget v4, v6, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v5, 0x3

    iget-object v6, v6, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatusEx(IIIIILjava/lang/String;)I

    goto :goto_151

    .line 1907
    :pswitch_1a8
    add-int/lit8 v1, v11, 0x1

    .line 1908
    const-string v2, "500"

    move v3, v1

    move v4, v12

    move-object v5, v2

    .line 1909
    goto/16 :goto_77

    .line 1912
    :pswitch_1b1
    add-int/lit8 v1, v11, 0x1

    .line 1913
    const-string v2, "211"

    move v3, v1

    move v4, v12

    move-object v5, v2

    .line 1914
    goto/16 :goto_77

    .line 1957
    :pswitch_1ba
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v12

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 1958
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    add-int/2addr v3, v11

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    goto/16 :goto_3b

    .line 1962
    :pswitch_1ce
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v12

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 1963
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    add-int/2addr v3, v11

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    goto/16 :goto_3b

    .line 1967
    :pswitch_1e2
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v12

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 1968
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    add-int/2addr v3, v11

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    goto/16 :goto_3b

    .line 1972
    :pswitch_1f6
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v12

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 1973
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    add-int/2addr v3, v11

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    goto/16 :goto_3b

    .line 1977
    :pswitch_20a
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v12

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 1978
    iget-object v2, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v8, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    add-int/2addr v3, v11

    iput v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    goto/16 :goto_3b

    .line 1984
    :cond_21e
    const-string v1, "500"

    .line 1985
    move-object/from16 v0, p2

    iget v3, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->cmdid:I

    invoke-static {v3}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Delete"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v10

    move v1, v2

    goto/16 :goto_3b

    :cond_233
    move v1, v9

    goto/16 :goto_97

    :cond_236
    move-object v2, v10

    goto/16 :goto_a8

    .line 1954
    nop

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1ce
        :pswitch_1e2
        :pswitch_1f6
        :pswitch_20a
    .end packed-switch

    .line 1885
    :pswitch_data_248
    .packed-switch -0x4
        :pswitch_1b1
        :pswitch_10a
        :pswitch_10a
        :pswitch_1a8
        :pswitch_10a
        :pswitch_121
    .end packed-switch
.end method

.method public smlHCmdEndSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V
    .registers 5
    .parameter "userdata"
    .parameter "sync"

    .prologue
    .line 2137
    move-object v0, p1

    check-cast v0, Lcom/syncmldstmo/base/smlWorkspace;

    .line 2139
    .local v0, ws:Lcom/syncmldstmo/base/smlWorkspace;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_inSyncCmd:Z

    .line 2140
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 2142
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2144
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 2146
    :cond_13
    return-void
.end method

.method public smlHCmdEndSyncml(Ljava/lang/Object;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2150
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 2152
    iget v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    packed-switch v0, :pswitch_data_c0

    .line 2241
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 2159
    :pswitch_d
    if-eqz p2, :cond_12

    .line 2161
    iput v7, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto :goto_c

    .line 2163
    :cond_12
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetAlertNextMessage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2165
    iput-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_hasMultiMessage:Z

    goto :goto_c

    .line 2170
    :pswitch_1b
    if-eqz p2, :cond_57

    .line 2174
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    iget-wide v3, v0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_39

    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    if-nez v0, :cond_39

    .line 2177
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 2178
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 2179
    :goto_36
    if-nez v0, :cond_3e

    move v2, v1

    .line 2194
    :cond_39
    if-eqz v2, :cond_53

    .line 2196
    iput v7, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto :goto_c

    .line 2181
    :cond_3e
    iget-object v3, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    if-eqz v3, :cond_4a

    iget-object v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    iget-wide v3, v0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_39

    .line 2186
    :cond_4a
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_36

    .line 2200
    :cond_53
    const/4 v0, 0x4

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto :goto_c

    .line 2203
    :cond_57
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetAlertNextMessage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2207
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    iget-wide v3, v0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_bc

    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    if-nez v0, :cond_bc

    .line 2210
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 2211
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 2212
    :goto_78
    if-nez v0, :cond_87

    move v0, v2

    .line 2222
    :goto_7b
    if-eqz v0, :cond_9e

    iget v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_SyncFinish:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_9e

    .line 2224
    iput v2, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_SyncFinish:I

    .line 2225
    iput v7, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto :goto_c

    .line 2214
    :cond_87
    iget v3, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    if-nez v3, :cond_95

    iget v3, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    if-nez v3, :cond_95

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    if-nez v0, :cond_95

    move v0, v1

    .line 2217
    goto :goto_7b

    .line 2219
    :cond_95
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_78

    .line 2229
    :cond_9e
    iget v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_SyncFinish:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_SyncFinish:I

    .line 2230
    iput-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_hasMultiMessage:Z

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Check the session finish  ws.m_SyncFinish="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_SyncFinish:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2236
    :cond_bc
    iput-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_hasMultiMessage:Z

    goto/16 :goto_c

    .line 2152
    :pswitch_data_c0
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public smlHCmdExec(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_EXEC;)V
    .registers 3
    .parameter "userdata"
    .parameter "exec"

    .prologue
    .line 1828
    return-void
.end method

.method public smlHCmdGet(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_GET;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 770
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 776
    const/high16 v0, 0x4

    const-string v3, "handle Get cmd"

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 778
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_GET;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 780
    invoke-static {v3}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 781
    invoke-static {v3}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    .line 784
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v3

    if-nez v3, :cond_67

    .line 786
    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const-string v3, "./devinf11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    move v0, v1

    .line 793
    :goto_29
    if-nez v0, :cond_7d

    .line 796
    new-instance v1, Lcom/syncmldstmo/base/smlDeviceInfo;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlDeviceInfo;-><init>()V

    .line 798
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v0

    if-nez v0, :cond_77

    .line 800
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlDeviceInfo;->smlGetSyncMLDeviceInfo_V11(Ljava/lang/Object;)V

    .line 807
    :goto_3b
    iget v0, p2, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Get"

    const-string v3, "200"

    invoke-static {p1, v0, v2, v3}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v0

    .line 808
    iget v2, p2, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    invoke-static {v2}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdResults(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/sml$SML_RESULTS;

    move-result-object v1

    .line 809
    iput-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    .line 817
    :goto_55
    if-eqz v0, :cond_64

    .line 819
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_GET;->is_noresp:I

    if-nez v1, :cond_64

    iget-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v1, :cond_64

    .line 821
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 824
    :cond_64
    return-void

    :cond_65
    move v0, v2

    .line 786
    goto :goto_29

    .line 790
    :cond_67
    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const-string v3, "./devinf12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    :goto_73
    move v0, v1

    goto :goto_29

    :cond_75
    move v1, v2

    goto :goto_73

    .line 804
    :cond_77
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlDeviceInfo;->smlGetSyncMLDeviceInfo_V12(Ljava/lang/Object;)V

    goto :goto_3b

    .line 814
    :cond_7d
    iget v0, p2, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get"

    const-string v2, "404"

    invoke-static {p1, v0, v1, v2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v0

    goto :goto_55
.end method

.method public smlHCmdReplace(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_REPLACE;)V
    .registers 30
    .parameter
    .parameter

    .prologue
    .line 1382
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 1383
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object/from16 v25, v0

    .line 1384
    const/16 v20, 0x0

    .line 1385
    const-string v9, ""

    const-string v8, ""

    .line 1390
    const/16 v18, 0x0

    .line 1391
    const/4 v6, 0x0

    .line 1392
    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 1393
    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 1394
    const/4 v5, 0x0

    .line 1395
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1397
    const/4 v4, 0x0

    .line 1400
    const/high16 v7, 0x4

    const-string v10, "handle replace cmd"

    invoke-static {v7, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1403
    if-eqz v25, :cond_760

    .line 1405
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v7

    if-eqz v7, :cond_39f

    .line 1407
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1408
    invoke-static {v7}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1409
    invoke-static {v7}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v7

    move v12, v13

    move-object/from16 v21, v7

    move-object/from16 v22, v4

    move-object/from16 v23, v8

    move-object/from16 v19, v20

    move v13, v14

    move-object v4, v9

    move v14, v15

    move/from16 v15, v16

    .line 1411
    :goto_4a
    if-nez v22, :cond_7a

    move v4, v5

    .line 1734
    :goto_4d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v5, :pswitch_data_796

    .line 1811
    :goto_56
    if-nez v18, :cond_62

    const/4 v4, 0x1

    if-le v6, v4, :cond_62

    .line 1813
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlRemoveRefOfStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;)V

    .line 1817
    :cond_62
    if-eqz v19, :cond_79

    .line 1819
    move-object/from16 v0, p2

    iget v4, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->is_noresp:I

    if-nez v4, :cond_79

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v4, :cond_79

    .line 1821
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1824
    :cond_79
    return-void

    .line 1413
    :cond_7a
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v7

    if-eqz v7, :cond_82

    move v4, v5

    .line 1414
    goto :goto_4d

    .line 1416
    :cond_82
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7}, Lcom/syncmldstmo/base/smlHandleCmd;->smlHandleItemData(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$SML_META;)I

    move-result v7

    .line 1417
    if-nez v7, :cond_34f

    .line 1419
    new-instance v24, Lcom/syncmldstmo/base/sml$Item_t;

    invoke-direct/range {v24 .. v24}, Lcom/syncmldstmo/base/sml$Item_t;-><init>()V

    .line 1420
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/syncmldstmo/base/smlBuildCmd;->smlMakeItemDataReplace(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_REPLACE;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$Item_t;)V

    .line 1421
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v7, v7, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v7

    move-object/from16 v0, v24

    iput v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    .line 1424
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    iget-object v8, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v24

    iput-object v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 1425
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    iget v7, v7, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    move-object/from16 v0, v24

    iput v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 1426
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v7, v7, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v9, v9, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_serverType:I

    move-object/from16 v0, v24

    invoke-virtual {v7, v8, v9, v0, v10}, Lcom/syncmldstmo/base/smlUpdate;->replaceItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;I)I

    move-result v7

    .line 1427
    const/high16 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "replaceItem ret : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1428
    const/4 v8, -0x4

    if-ne v7, v8, :cond_791

    .line 1430
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v5

    .line 1431
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v7, v7, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v8, v8, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v9, v9, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v10, -0x4

    invoke-virtual {v7, v8, v9, v5, v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatus(IIII)I

    .line 1433
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v8, v8, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    invoke-virtual {v5, v7, v8, v0}, Lcom/syncmldstmo/base/smlUpdate;->addItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I

    move-result v5

    .line 1434
    const/16 v20, 0x1

    .line 1437
    :goto_134
    packed-switch v5, :pswitch_data_7a4

    .line 1512
    :pswitch_137
    if-nez v20, :cond_34b

    .line 1514
    add-int/lit8 v13, v13, 0x1

    .line 1520
    :goto_13b
    const-string v4, "500"

    move v5, v15

    move-object v7, v4

    move v4, v14

    .line 1524
    :goto_140
    invoke-virtual/range {p0 .. p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    move v14, v4

    move v15, v5

    move-object v8, v7

    move v7, v6

    move/from16 v6, v20

    .line 1552
    :goto_149
    move-object/from16 v0, v23

    if-eq v8, v0, :cond_788

    .line 1554
    if-eqz v19, :cond_784

    .line 1556
    move-object/from16 v0, p2

    iget v4, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->is_noresp:I

    if-nez v4, :cond_164

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v4, :cond_164

    .line 1558
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1560
    :cond_164
    const/4 v4, 0x1

    .line 1563
    :goto_165
    move-object/from16 v0, p2

    iget v5, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cmdid:I

    invoke-static {v5}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "Replace"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v9, v8}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v5

    move/from16 v18, v4

    .line 1566
    :goto_177
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_197

    .line 1567
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "sml_item.source : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1568
    :cond_197
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v4, :cond_1c1

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 1569
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "sml_item.target  : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v9, v9, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1571
    :cond_1c1
    const/4 v4, 0x0

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v10, v10, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5, v4, v9}, Lcom/syncmldstmo/base/smlBuildCmd;->smlAddRefToStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-static/range {v21 .. v21}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1575
    invoke-static/range {v21 .. v21}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v9

    move-object/from16 v21, v9

    move-object/from16 v22, v4

    move-object/from16 v23, v8

    move-object/from16 v19, v5

    move v5, v6

    move-object v4, v8

    move v6, v7

    goto/16 :goto_4a

    .line 1440
    :pswitch_1e9
    if-nez v20, :cond_283

    .line 1442
    add-int/lit8 v16, v6, 0x1

    .line 1443
    const/high16 v4, 0x4

    const-string v5, "success process replace cmd"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1444
    const-string v17, "200"

    .line 1446
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "obex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 1448
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x2

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatusEx(IIIIILjava/lang/String;)I

    .line 1458
    :cond_221
    :goto_221
    add-int/lit8 v4, v15, 0x1

    move v5, v4

    move/from16 v6, v16

    move-object/from16 v7, v17

    move v4, v14

    goto/16 :goto_140

    .line 1450
    :cond_22b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_257

    .line 1452
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatusEx(IIIIILjava/lang/String;)I

    goto :goto_221

    .line 1454
    :cond_257
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_221

    .line 1456
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatusEx(IIIIILjava/lang/String;)I

    goto :goto_221

    .line 1462
    :cond_283
    add-int/lit8 v16, v6, 0x1

    .line 1463
    const/high16 v4, 0x4

    const-string v5, "success process Repalace As Add cmd"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1464
    const-string v17, "201"

    .line 1465
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "obex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d1

    .line 1467
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    .line 1468
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x2

    .line 1469
    const/4 v10, 0x0

    .line 1468
    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    .line 1483
    :cond_2bb
    :goto_2bb
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v0, v4, v5}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    add-int/lit8 v4, v14, 0x1

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    .line 1486
    goto/16 :goto_140

    .line 1471
    :cond_2d1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ff

    .line 1473
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    .line 1474
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    .line 1475
    const/4 v10, 0x0

    .line 1474
    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_2bb

    .line 1477
    :cond_2ff
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2bb

    .line 1479
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    .line 1480
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    .line 1481
    const/4 v10, 0x0

    .line 1480
    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_2bb

    .line 1489
    :pswitch_32d
    const-string v4, "201"

    move v5, v15

    move-object v7, v4

    move v4, v14

    .line 1490
    goto/16 :goto_140

    .line 1493
    :pswitch_334
    if-nez v20, :cond_342

    .line 1495
    add-int/lit8 v4, v13, 0x1

    move v5, v4

    move v4, v12

    .line 1501
    :goto_33a
    const-string v7, "500"

    move v12, v4

    move v13, v5

    move v4, v14

    move v5, v15

    .line 1502
    goto/16 :goto_140

    .line 1499
    :cond_342
    add-int/lit8 v4, v12, 0x1

    move v5, v13

    goto :goto_33a

    :pswitch_346
    move v5, v15

    move-object v7, v4

    move v4, v14

    .line 1509
    goto/16 :goto_140

    .line 1518
    :cond_34b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_13b

    .line 1527
    :cond_34f
    const/4 v8, 0x1

    if-ne v7, v8, :cond_369

    .line 1529
    const/4 v4, 0x0

    const-string v7, "222"

    move-object/from16 v0, p1

    invoke-static {v0, v4, v7}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdExtendAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_META;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v4

    .line 1530
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v7, v4}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1532
    const-string v4, "213"

    move v7, v6

    move-object v8, v4

    move v6, v5

    goto/16 :goto_149

    .line 1534
    :cond_369
    const/4 v8, -0x3

    if-ne v7, v8, :cond_381

    .line 1536
    const/4 v7, 0x0

    const-string v8, "223"

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdExtendAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_META;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v7

    .line 1537
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v8, v7}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    move v7, v6

    move-object v8, v4

    move v6, v5

    goto/16 :goto_149

    .line 1539
    :cond_381
    const/4 v8, -0x1

    if-ne v7, v8, :cond_38b

    .line 1541
    const-string v4, "424"

    move v7, v6

    move-object v8, v4

    move v6, v5

    goto/16 :goto_149

    .line 1543
    :cond_38b
    const/4 v8, -0x4

    if-ne v7, v8, :cond_395

    .line 1545
    const-string v4, "413"

    move v7, v6

    move-object v8, v4

    move v6, v5

    goto/16 :goto_149

    .line 1547
    :cond_395
    const/4 v8, -0x2

    if-ne v7, v8, :cond_78c

    .line 1549
    const-string v4, "411"

    move v7, v6

    move-object v8, v4

    move v6, v5

    goto/16 :goto_149

    .line 1580
    :cond_39f
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v7, :cond_781

    .line 1582
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    move-object v12, v4

    .line 1585
    :goto_3ac
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1586
    invoke-static {v7}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1587
    invoke-static {v7}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v7

    move/from16 v19, v18

    move-object/from16 v22, v7

    move-object/from16 v23, v4

    move-object/from16 v24, v8

    move-object v4, v9

    .line 1589
    :goto_3c3
    if-nez v23, :cond_3d1

    move v4, v5

    move v12, v13

    move/from16 v18, v19

    move v13, v14

    move-object/from16 v19, v20

    move v14, v15

    move/from16 v15, v16

    goto/16 :goto_4d

    .line 1591
    :cond_3d1
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v7

    if-eqz v7, :cond_3e3

    move v4, v5

    move v12, v13

    move/from16 v18, v19

    move v13, v14

    move-object/from16 v19, v20

    move v14, v15

    move/from16 v15, v16

    .line 1592
    goto/16 :goto_4d

    .line 1594
    :cond_3e3
    new-instance v26, Lcom/syncmldstmo/base/sml$Item_t;

    invoke-direct/range {v26 .. v26}, Lcom/syncmldstmo/base/sml$Item_t;-><init>()V

    .line 1595
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v7, :cond_512

    .line 1597
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v7, v7, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_404

    .line 1599
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v7, v7, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    .line 1607
    :cond_404
    :goto_404
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v7, :cond_518

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v7, v7, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_518

    .line 1609
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v7, v7, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 1616
    :goto_420
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v7, v7, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    iput-object v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 1617
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 1618
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v7, v7, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    move-object/from16 v0, v26

    iput v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 1620
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v7, v7, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v9, v9, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_serverType:I

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v9, v0, v10}, Lcom/syncmldstmo/base/smlUpdate;->replaceItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;I)I

    move-result v7

    .line 1621
    const/high16 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "replaceItem ret : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1622
    const/4 v8, -0x4

    if-ne v7, v8, :cond_77c

    .line 1624
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v5}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v5

    .line 1625
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v7, v7, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v8, v8, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v9, v9, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    const/4 v10, -0x4

    invoke-virtual {v7, v8, v9, v5, v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatus(IIII)I

    .line 1626
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v8, v8, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    invoke-virtual {v5, v7, v8, v0}, Lcom/syncmldstmo/base/smlUpdate;->addItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I

    move-result v7

    .line 1627
    const/4 v5, 0x1

    move/from16 v21, v5

    move v5, v7

    .line 1630
    :goto_4a8
    packed-switch v5, :pswitch_data_7b6

    .line 1701
    :pswitch_4ab
    if-nez v21, :cond_68a

    .line 1703
    add-int/lit8 v14, v14, 0x1

    .line 1709
    :goto_4af
    const-string v4, "500"

    move v5, v15

    move v7, v6

    move-object v8, v4

    move/from16 v6, v16

    .line 1713
    :goto_4b6
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_778

    .line 1716
    if-eqz v20, :cond_774

    .line 1718
    move-object/from16 v0, p2

    iget v4, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->is_noresp:I

    if-nez v4, :cond_4d5

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v4, :cond_4d5

    .line 1720
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 1722
    :cond_4d5
    const/4 v4, 0x1

    .line 1724
    :goto_4d6
    move-object/from16 v0, p2

    iget v9, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cmdid:I

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Replace"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v10, v8}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v9

    move/from16 v19, v4

    .line 1726
    :goto_4e8
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9, v4, v10}, Lcom/syncmldstmo/base/smlBuildCmd;->smlAddRefToStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-static/range {v22 .. v22}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 1730
    invoke-static/range {v22 .. v22}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v10

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    move-object/from16 v24, v8

    move-object/from16 v20, v9

    move/from16 v5, v21

    move-object v4, v8

    move v6, v7

    goto/16 :goto_3c3

    .line 1604
    :cond_512
    move-object/from16 v0, v26

    iput-object v12, v0, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    goto/16 :goto_404

    .line 1613
    :cond_518
    const-string v7, "################## no LocURI ###################!!!!"

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto/16 :goto_420

    .line 1633
    :pswitch_51f
    if-nez v21, :cond_5b9

    .line 1635
    add-int/lit8 v17, v6, 0x1

    .line 1636
    const/high16 v4, 0x4

    const-string v5, "success process replace cmd"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1637
    const-string v18, "200"

    .line 1638
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "obex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_561

    .line 1640
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x2

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatusEx(IIIIILjava/lang/String;)I

    .line 1650
    :cond_557
    :goto_557
    add-int/lit8 v4, v16, 0x1

    move v5, v15

    move v6, v4

    move/from16 v7, v17

    move-object/from16 v8, v18

    goto/16 :goto_4b6

    .line 1642
    :cond_561
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58d

    .line 1644
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatusEx(IIIIILjava/lang/String;)I

    goto :goto_557

    .line 1646
    :cond_58d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_557

    .line 1648
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, v25

    iget v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatusEx(IIIIILjava/lang/String;)I

    goto :goto_557

    .line 1654
    :cond_5b9
    add-int/lit8 v17, v6, 0x1

    .line 1655
    const/high16 v4, 0x4

    const-string v5, "success process Repalace As Add cmd"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1656
    const-string v18, "201"

    .line 1657
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "obex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_609

    .line 1659
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    .line 1660
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    .line 1672
    :cond_5f1
    :goto_5f1
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v0, v4, v5}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    add-int/lit8 v4, v15, 0x1

    move v5, v4

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    .line 1675
    goto/16 :goto_4b6

    .line 1662
    :cond_609
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_637

    .line 1664
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    .line 1665
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_5f1

    .line 1667
    :cond_637
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f1

    .line 1669
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v9

    .line 1670
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v5, v5, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/syncmldstmo/base/sml$Item_t;->address:I

    const/4 v8, 0x3

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatusEx(IIIIILjava/lang/String;)I

    goto :goto_5f1

    .line 1678
    :pswitch_665
    const-string v4, "201"

    move v5, v15

    move v7, v6

    move-object v8, v4

    move/from16 v6, v16

    .line 1679
    goto/16 :goto_4b6

    .line 1682
    :pswitch_66e
    if-nez v21, :cond_67f

    .line 1684
    add-int/lit8 v4, v14, 0x1

    move v5, v4

    move v4, v13

    .line 1690
    :goto_674
    const-string v7, "500"

    move v13, v4

    move v14, v5

    move-object v8, v7

    move v7, v6

    move v5, v15

    move/from16 v6, v16

    .line 1691
    goto/16 :goto_4b6

    .line 1688
    :cond_67f
    add-int/lit8 v4, v13, 0x1

    move v5, v14

    goto :goto_674

    :pswitch_683
    move v5, v15

    move v7, v6

    move-object v8, v4

    move/from16 v6, v16

    .line 1698
    goto/16 :goto_4b6

    .line 1707
    :cond_68a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4af

    .line 1737
    :pswitch_68e
    if-nez v4, :cond_6a4

    .line 1739
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 1741
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    add-int/2addr v5, v13

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    goto/16 :goto_56

    .line 1745
    :cond_6a4
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v14

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1746
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v12

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_56

    .line 1751
    :pswitch_6b8
    if-nez v4, :cond_6ce

    .line 1753
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 1755
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    add-int/2addr v5, v13

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    goto/16 :goto_56

    .line 1759
    :cond_6ce
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v14

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1760
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v12

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_56

    .line 1765
    :pswitch_6e2
    if-nez v4, :cond_6f8

    .line 1767
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 1768
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    add-int/2addr v5, v13

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    goto/16 :goto_56

    .line 1772
    :cond_6f8
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v14

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1773
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v12

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_56

    .line 1778
    :pswitch_70c
    if-nez v4, :cond_722

    .line 1780
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 1781
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    add-int/2addr v5, v13

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    goto/16 :goto_56

    .line 1785
    :cond_722
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v14

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1786
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v12

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_56

    .line 1791
    :pswitch_736
    if-nez v4, :cond_74c

    .line 1793
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v5, v15

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 1794
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    add-int/2addr v5, v13

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    goto/16 :goto_56

    .line 1798
    :cond_74c
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v5, v14

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 1799
    iget-object v4, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v5, v11, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    add-int/2addr v5, v12

    iput v5, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    goto/16 :goto_56

    .line 1806
    :cond_760
    const-string v4, "500"

    .line 1807
    move-object/from16 v0, p2

    iget v5, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cmdid:I

    invoke-static {v5}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Replace"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7, v4}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v19

    goto/16 :goto_56

    :cond_774
    move/from16 v4, v19

    goto/16 :goto_4d6

    :cond_778
    move-object/from16 v9, v20

    goto/16 :goto_4e8

    :cond_77c
    move/from16 v21, v5

    move v5, v7

    goto/16 :goto_4a8

    :cond_781
    move-object v12, v4

    goto/16 :goto_3ac

    :cond_784
    move/from16 v4, v18

    goto/16 :goto_165

    :cond_788
    move-object/from16 v5, v19

    goto/16 :goto_177

    :cond_78c
    move v7, v6

    move-object v8, v4

    move v6, v5

    goto/16 :goto_149

    :cond_791
    move/from16 v20, v5

    move v5, v7

    goto/16 :goto_134

    .line 1734
    :pswitch_data_796
    .packed-switch 0x0
        :pswitch_68e
        :pswitch_6b8
        :pswitch_6e2
        :pswitch_70c
        :pswitch_736
    .end packed-switch

    .line 1437
    :pswitch_data_7a4
    .packed-switch -0x4
        :pswitch_346
        :pswitch_137
        :pswitch_137
        :pswitch_334
        :pswitch_137
        :pswitch_1e9
        :pswitch_32d
    .end packed-switch

    .line 1630
    :pswitch_data_7b6
    .packed-switch -0x4
        :pswitch_683
        :pswitch_4ab
        :pswitch_4ab
        :pswitch_66e
        :pswitch_4ab
        :pswitch_51f
        :pswitch_665
    .end packed-switch
.end method

.method public smlHCmdSequenceEnd(Ljava/lang/Object;)V
    .registers 2
    .parameter "userdata"

    .prologue
    .line 2018
    return-void
.end method

.method public smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V
    .registers 3
    .parameter "userdata"
    .parameter "sequence"

    .prologue
    .line 2014
    return-void
.end method

.method public smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x4

    .line 2022
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 2027
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 2029
    const-string v1, "start to handle sync cmd"

    invoke-static {v6, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2031
    iput-boolean v7, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_inSyncCmd:Z

    .line 2032
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->numofchanges:I

    if-eqz v1, :cond_88

    .line 2033
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->numofchanges:I

    move v2, v1

    .line 2041
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "nNumOfChanges : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2043
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 2044
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v3}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 2045
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 2046
    :goto_3b
    if-nez v1, :cond_8a

    .line 2107
    :goto_3d
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    if-eqz v0, :cond_19b

    .line 2109
    const-string v0, "SYNC status OK"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2110
    const-string v0, "200"

    .line 2118
    :goto_48
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->cmdid:I

    invoke-static {v1}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sync"

    invoke-static {p1, v1, v2, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v0

    .line 2120
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2122
    new-instance v1, Lcom/syncmldstmo/base/smlList;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->source:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 2123
    new-instance v1, Lcom/syncmldstmo/base/smlList;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    .line 2126
    :cond_78
    if-eqz v0, :cond_87

    .line 2128
    iget-boolean v1, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresp:Z

    if-nez v1, :cond_87

    iget-boolean v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    if-nez v1, :cond_87

    .line 2130
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 2133
    :cond_87
    return-void

    :cond_88
    move v2, v3

    .line 2035
    goto :goto_19

    .line 2048
    :cond_8a
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const-string v5, "./Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 2050
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    if-nez v4, :cond_ba

    .line 2052
    sget-object v4, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    aput v7, v4, v3

    .line 2053
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 2054
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "si.Contact_SyncInfo.S2PTotalItem : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2058
    :cond_ba
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const-string v5, "./Event"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 2060
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    if-nez v4, :cond_ea

    .line 2062
    sget-object v4, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    aput v7, v4, v7

    .line 2063
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 2064
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "si.Calendar_SyncInfo.S2PTotalItem : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2068
    :cond_ea
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const-string v5, "./Task"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 2070
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    if-nez v4, :cond_11b

    .line 2072
    sget-object v4, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    const/4 v5, 0x2

    aput v7, v4, v5

    .line 2073
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 2074
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "si.Task_SyncInfo.S2PTotalItem : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2078
    :cond_11b
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    const-string v5, "./Note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 2080
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    if-nez v4, :cond_14c

    .line 2082
    sget-object v4, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    const/4 v5, 0x3

    aput v7, v4, v5

    .line 2083
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 2084
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "si.Memo_SyncInfo.S2PTotalItem : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2088
    :cond_14c
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 2090
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    if-nez v4, :cond_17e

    .line 2092
    sget-object v4, Lcom/syncmldstmo/base/smlHandleCmd;->gSyncDbStatus:[I

    aput v7, v4, v8

    .line 2093
    iget-object v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput v2, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 2094
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "si.SyncSetting_SyncInfo.S2PTotalItem : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v5, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2098
    :cond_17e
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_SYNC;->source:Ljava/lang/String;

    iget-object v5, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_191

    .line 2100
    const-string v0, "ws.dbInfo setted by db"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2101
    iput-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto/16 :goto_3d

    .line 2104
    :cond_191
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto/16 :goto_3b

    .line 2114
    :cond_19b
    const-string v0, "SYNC status FAIL"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2115
    const-string v0, "500"

    goto/16 :goto_48
.end method

.method public smlHCmdStatus(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_STATUS;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 196
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 197
    iget-object v7, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    .line 198
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    .line 202
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    invoke-virtual {p1, p1, v0, v2, v3}, Lcom/syncmldstmo/base/smlWorkspace;->wsFindAction(Lcom/syncmldstmo/base/smlWorkspace;IILjava/lang/String;)Lcom/syncmldstmo/base/sml$Action_t;

    move-result-object v6

    .line 204
    const/high16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle Status cmd : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 207
    if-nez v6, :cond_66

    .line 209
    const/high16 v0, 0x4

    const-string v1, "WARNING !! Can not find action(null).. it may cause a serious error"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 210
    const/high16 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgref : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cmdref : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 766
    :cond_65
    :goto_65
    return-void

    .line 214
    :cond_66
    invoke-static {v1}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v3

    .line 216
    const-string v0, "SyncHdr"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 218
    const/high16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Authentication Response : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlHCmdStatusSetAuthState(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    .line 223
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetErrorStatusHandle()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 225
    iget v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a7

    iget v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    if-eqz v0, :cond_a7

    .line 227
    const/high16 v0, 0x4

    const-string v1, "synchdr status not ok"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 228
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetResponseStatusCode(Ljava/lang/Object;I)V

    .line 232
    :cond_a7
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v0, :cond_767

    .line 234
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    const-string v1, "syncml:auth-md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 238
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlUser;->smlSetCredType(Ljava/lang/Object;I)V

    .line 239
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_META;->nextnonce:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlBase64;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlUser;->smlSetNextNonce(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_credType:I

    move-object v0, v6

    .line 762
    :goto_d6
    if-eqz v0, :cond_65

    .line 764
    invoke-static {p1, v0}, Lcom/syncmldstmo/base/smlWorkspace;->wsRemoveAction(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$Action_t;)V

    goto :goto_65

    .line 243
    :cond_dc
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    const-string v1, "syncml:auth-basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_767

    .line 245
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlUser;->smlSetCredType(Ljava/lang/Object;I)V

    .line 246
    const/4 v0, 0x0

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_credType:I

    move-object v0, v6

    goto :goto_d6

    .line 250
    :cond_f3
    const-string v0, "Sync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 252
    const/high16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync Response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 254
    const-string v0, "500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 256
    const/4 v0, -0x1

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdSyncState:I

    move-object v0, v6

    goto :goto_d6

    .line 258
    :cond_11c
    const-string v0, "508"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 260
    const/4 v0, 0x1

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdSyncState:I

    move-object v0, v6

    goto :goto_d6

    .line 262
    :cond_129
    const-string v0, "512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_767

    .line 264
    const/4 v0, -0x1

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdSyncState:I

    move-object v0, v6

    goto :goto_d6

    .line 267
    :cond_136
    const-string v0, "Add"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "Replace"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "Delete"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_619

    .line 272
    :cond_14e
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v8, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 273
    const/4 v1, 0x0

    .line 274
    iget-object v9, v6, Lcom/syncmldstmo/base/sml$Action_t;->sourceList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 275
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "XX"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v4

    if-eqz v4, :cond_2e9

    .line 280
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "status Response : "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 282
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    const-string v5, "424"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1b9

    .line 284
    const-string v1, "Add"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_238

    .line 285
    const/4 v1, 0x1

    .line 292
    :goto_1a3
    const-string v4, "4XX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b3

    const-string v4, "5XX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 294
    :cond_1b3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_278

    .line 296
    packed-switch v8, :pswitch_data_7e4

    .line 463
    :cond_1b9
    :goto_1b9
    const-string v0, "201"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b9

    .line 465
    const/4 v0, 0x1

    move v2, v0

    .line 512
    :goto_1c5
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetErrorStatusHandle()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 514
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1da

    .line 516
    const/high16 v0, 0x4

    const-string v4, "item db fail"

    invoke-static {v0, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 517
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetResponseStatusCode(Ljava/lang/Object;I)V

    .line 521
    :cond_1da
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v0

    if-eqz v0, :cond_509

    .line 523
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    const-string v3, "424"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_767

    .line 526
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_215

    .line 527
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_215

    .line 528
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_215

    .line 529
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_215

    .line 530
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_215

    .line 531
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_767

    .line 533
    :cond_215
    const/4 v3, -0x1

    .line 534
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 535
    if-eqz v4, :cond_4a9

    .line 538
    invoke-static {v4}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 539
    invoke-static {v4}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    move v0, v3

    .line 540
    :goto_227
    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_446

    .line 581
    :cond_22d
    iget-wide v0, v9, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_767

    .line 583
    const/4 v0, 0x0

    goto/16 :goto_d6

    .line 286
    :cond_238
    const-string v1, "Replace"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 287
    const/4 v1, 0x2

    goto/16 :goto_1a3

    .line 289
    :cond_243
    const/4 v1, 0x4

    goto/16 :goto_1a3

    .line 299
    :pswitch_246
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 303
    :pswitch_250
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 307
    :pswitch_25a
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 311
    :pswitch_264
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 315
    :pswitch_26e
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 319
    :cond_278
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b2

    .line 321
    packed-switch v8, :pswitch_data_7f2

    goto/16 :goto_1b9

    .line 324
    :pswitch_280
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 328
    :pswitch_28a
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 332
    :pswitch_294
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 336
    :pswitch_29e
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 340
    :pswitch_2a8
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 346
    :cond_2b2
    packed-switch v8, :pswitch_data_800

    goto/16 :goto_1b9

    .line 349
    :pswitch_2b7
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 353
    :pswitch_2c1
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 357
    :pswitch_2cb
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 361
    :pswitch_2d5
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 365
    :pswitch_2df
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 374
    :cond_2e9
    const-string v1, "Add"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_314

    .line 375
    const/4 v1, 0x1

    .line 382
    :goto_2f2
    const-string v4, "4XX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_302

    const-string v4, "5XX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 384
    :cond_302
    const/4 v2, 0x1

    if-ne v1, v2, :cond_348

    .line 386
    packed-switch v8, :pswitch_data_80e

    goto/16 :goto_1b9

    .line 389
    :pswitch_30a
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 376
    :cond_314
    const-string v1, "Replace"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 377
    const/4 v1, 0x2

    goto :goto_2f2

    .line 379
    :cond_31e
    const/4 v1, 0x4

    goto :goto_2f2

    .line 393
    :pswitch_320
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 397
    :pswitch_32a
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 401
    :pswitch_334
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 405
    :pswitch_33e
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    goto/16 :goto_1b9

    .line 409
    :cond_348
    const/4 v2, 0x2

    if-ne v1, v2, :cond_382

    .line 411
    packed-switch v8, :pswitch_data_81c

    goto/16 :goto_1b9

    .line 414
    :pswitch_350
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 418
    :pswitch_35a
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 422
    :pswitch_364
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 426
    :pswitch_36e
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 430
    :pswitch_378
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    goto/16 :goto_1b9

    .line 436
    :cond_382
    packed-switch v8, :pswitch_data_82a

    goto/16 :goto_1b9

    .line 439
    :pswitch_387
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 443
    :pswitch_391
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 447
    :pswitch_39b
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 451
    :pswitch_3a5
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 455
    :pswitch_3af
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    goto/16 :goto_1b9

    .line 467
    :cond_3b9
    const-string v0, "200"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c7

    .line 469
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_1c5

    .line 471
    :cond_3c7
    const-string v0, "404"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d5

    .line 473
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_1c5

    .line 475
    :cond_3d5
    const-string v0, "211"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 477
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_1c5

    .line 479
    :cond_3e3
    const-string v0, "420"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f7

    .line 481
    const/4 v0, -0x2

    .line 482
    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_DevDatastoreCheck:I

    .line 483
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v8, v2}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetDeviceFull(Ljava/lang/Object;IZ)V

    move v2, v0

    goto/16 :goto_1c5

    .line 485
    :cond_3f7
    const-string v0, "418"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_405

    .line 487
    const/4 v0, -0x3

    move v2, v0

    goto/16 :goto_1c5

    .line 489
    :cond_405
    const-string v0, "208"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_413

    .line 491
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_1c5

    .line 493
    :cond_413
    const-string v0, "213"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_424

    .line 495
    const/4 v0, 0x1

    .line 496
    invoke-static {p1, p2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlRemoveRefOfStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;)V

    move v2, v0

    goto/16 :goto_1c5

    .line 498
    :cond_424
    const-string v0, "409"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_432

    .line 500
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_1c5

    .line 502
    :cond_432
    const-string v0, "510"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_442

    .line 504
    const/4 v0, -0x5

    .line 505
    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_DevDatastoreCheck:I

    move v2, v0

    goto/16 :goto_1c5

    .line 509
    :cond_442
    const/4 v0, -0x1

    move v2, v0

    goto/16 :goto_1c5

    .line 542
    :cond_446
    const/4 v3, 0x1

    if-ne v1, v3, :cond_481

    .line 543
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v3, v8, v10, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatus(IIII)I

    move-result v3

    .line 549
    :goto_459
    if-nez v3, :cond_46b

    const-string v0, "Delete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46b

    .line 551
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v10, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    .line 554
    :cond_46b
    const/4 v0, 0x0

    invoke-virtual {v9, v4, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 557
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    move v0, v3

    goto/16 :goto_227

    .line 544
    :cond_481
    const/4 v3, 0x2

    if-ne v1, v3, :cond_495

    .line 545
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v3, v8, v10, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatus(IIII)I

    move-result v3

    goto :goto_459

    .line 546
    :cond_495
    const/4 v3, 0x4

    if-ne v1, v3, :cond_7e0

    .line 547
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v3, v8, v10, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatus(IIII)I

    move-result v3

    goto :goto_459

    .line 562
    :cond_4a9
    invoke-virtual {v9}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAtFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    :goto_4af
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22d

    .line 565
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4e1

    .line 566
    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v4, v4, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v8, v0, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatus(IIII)I

    move-result v3

    .line 573
    :cond_4c8
    :goto_4c8
    if-nez v3, :cond_4da

    const-string v0, "Delete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4da

    .line 575
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    .line 577
    :cond_4da
    invoke-virtual {v9}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAtFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4af

    .line 567
    :cond_4e1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4f5

    .line 568
    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v4, v4, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v8, v0, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatus(IIII)I

    move-result v3

    goto :goto_4c8

    .line 569
    :cond_4f5
    const/4 v4, 0x4

    if-ne v1, v4, :cond_4c8

    .line 570
    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v4, v4, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v8, v0, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatus(IIII)I

    move-result v3

    goto :goto_4c8

    .line 591
    :cond_509
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_534

    .line 592
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_534

    .line 593
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_534

    .line 594
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_534

    .line 595
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_534

    .line 596
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_767

    .line 598
    :cond_534
    const/4 v3, -0x1

    .line 599
    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 600
    if-eqz v4, :cond_5b9

    .line 603
    invoke-static {v4}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    invoke-static {v4}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    move v0, v3

    .line 605
    :goto_546
    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_557

    .line 646
    :cond_54c
    iget-wide v0, v9, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_767

    .line 648
    const/4 v0, 0x0

    goto/16 :goto_d6

    .line 607
    :cond_557
    const/4 v3, 0x1

    if-ne v1, v3, :cond_591

    .line 608
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v3, v8, v10, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatus(IIII)I

    move-result v3

    .line 614
    :goto_56a
    if-nez v3, :cond_57c

    const-string v0, "Delete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57c

    .line 616
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v10, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    .line 619
    :cond_57c
    const/4 v0, 0x0

    invoke-virtual {v9, v4, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObject(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_item_only(Lcom/syncmldstmo/base/smlList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    invoke-static {v5}, Lcom/syncmldstmo/base/smlList;->sml_list_get_next(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    move v0, v3

    goto :goto_546

    .line 609
    :cond_591
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5a5

    .line 610
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v3, v8, v10, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatus(IIII)I

    move-result v3

    goto :goto_56a

    .line 611
    :cond_5a5
    const/4 v3, 0x4

    if-ne v1, v3, :cond_7dd

    .line 612
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v3, v3, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v4}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v3, v8, v10, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatus(IIII)I

    move-result v3

    goto :goto_56a

    .line 627
    :cond_5b9
    invoke-virtual {v9}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAtFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 628
    :goto_5bf
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54c

    .line 630
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5f1

    .line 631
    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v4, v4, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v8, v0, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyAddStatus(IIII)I

    move-result v3

    .line 638
    :cond_5d8
    :goto_5d8
    if-nez v3, :cond_5ea

    const-string v0, "Delete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ea

    .line 640
    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->currentDeleteIndex:I

    .line 642
    :cond_5ea
    invoke-virtual {v9}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAtFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5bf

    .line 632
    :cond_5f1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_605

    .line 633
    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v4, v4, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v8, v0, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyReplaceStatus(IIII)I

    move-result v3

    goto :goto_5d8

    .line 634
    :cond_605
    const/4 v4, 0x4

    if-ne v1, v4, :cond_5d8

    .line 635
    iget-object v3, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v4, v4, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v8, v0, v2}, Lcom/syncmldstmo/base/smlUpdate;->notifyDeleteStatus(IIII)I

    move-result v3

    goto :goto_5d8

    .line 653
    :cond_619
    const-string v0, "Map"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_656

    .line 655
    const/high16 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map Response : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetErrorStatusHandle()Z

    move-result v0

    if-eqz v0, :cond_767

    .line 658
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_767

    .line 660
    const/high16 v0, 0x4

    const-string v1, "alert status not ok"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 661
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetResponseStatusCode(Ljava/lang/Object;I)V

    move-object v0, v6

    goto/16 :goto_d6

    .line 665
    :cond_656
    const-string v0, "Alert"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_767

    .line 669
    const/high16 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "alert Response : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v0

    if-eqz v0, :cond_6aa

    .line 673
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v0

    if-eqz v0, :cond_692

    .line 675
    const/4 v0, 0x6

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 676
    const-string v0, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76a

    .line 678
    const/high16 v0, 0x4

    const-string v2, "[suspend&resume] supported in server"

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 686
    :cond_692
    :goto_692
    const-string v0, "508"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6aa

    .line 688
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 689
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 690
    :goto_6a8
    if-nez v0, :cond_777

    .line 697
    :cond_6aa
    const-string v0, "406"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b5

    .line 699
    const/4 v0, -0x1

    iput v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdAlertState:I

    .line 702
    :cond_6b5
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetErrorStatusHandle()Z

    move-result v0

    if-eqz v0, :cond_6f1

    .line 704
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "222"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6db

    .line 706
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6db

    .line 708
    const/high16 v0, 0x4

    const-string v1, "alert status not ok"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 709
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetResponseStatusCode(Ljava/lang/Object;I)V

    .line 712
    :cond_6db
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6f1

    .line 714
    const/high16 v0, 0x4

    const-string v1, "alert status not ok"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 715
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetResponseStatusCode(Ljava/lang/Object;I)V

    .line 719
    :cond_6f1
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72d

    .line 720
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72d

    .line 721
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72d

    .line 722
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "204"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72d

    .line 723
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "203"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72d

    .line 724
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    const-string v1, "205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_767

    .line 726
    :cond_72d
    if-eqz v6, :cond_767

    iget-object v0, v6, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    if-eqz v0, :cond_767

    .line 729
    const/high16 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alert command status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DB_ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 731
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 732
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 733
    :goto_765
    if-nez v0, :cond_784

    :cond_767
    move-object v0, v6

    goto/16 :goto_d6

    .line 682
    :cond_76a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->smlSetSuspending(Z)V

    .line 683
    const/high16 v0, 0x4

    const-string v2, "[suspend&resume] not supported in server"

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_692

    .line 692
    :cond_777
    const/4 v2, 0x1

    iput v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    .line 693
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto/16 :goto_6a8

    .line 735
    :cond_784
    iget-object v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d4

    .line 737
    const-string v1, "400"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b8

    .line 738
    const-string v1, "401"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b8

    .line 739
    const-string v1, "403"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b8

    .line 740
    const-string v1, "404"

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7bb

    .line 744
    :cond_7b8
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    .line 746
    :cond_7bb
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetErrorStatusHandle()Z

    move-result v1

    if-eqz v1, :cond_767

    .line 748
    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    if-nez v0, :cond_767

    .line 750
    const/high16 v0, 0x4

    const-string v1, "alert status dbInfo.sync is false"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 751
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/syncmldstmo/base/smlHandleCmd;->smlSetResponseStatusCode(Ljava/lang/Object;I)V

    move-object v0, v6

    .line 754
    goto/16 :goto_d6

    .line 756
    :cond_7d4
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_765

    :cond_7dd
    move v3, v0

    goto/16 :goto_56a

    :cond_7e0
    move v3, v0

    goto/16 :goto_459

    .line 296
    nop

    :pswitch_data_7e4
    .packed-switch 0x0
        :pswitch_246
        :pswitch_250
        :pswitch_25a
        :pswitch_264
        :pswitch_26e
    .end packed-switch

    .line 321
    :pswitch_data_7f2
    .packed-switch 0x0
        :pswitch_280
        :pswitch_28a
        :pswitch_294
        :pswitch_29e
        :pswitch_2a8
    .end packed-switch

    .line 346
    :pswitch_data_800
    .packed-switch 0x0
        :pswitch_2b7
        :pswitch_2c1
        :pswitch_2cb
        :pswitch_2d5
        :pswitch_2df
    .end packed-switch

    .line 386
    :pswitch_data_80e
    .packed-switch 0x0
        :pswitch_30a
        :pswitch_320
        :pswitch_32a
        :pswitch_334
        :pswitch_33e
    .end packed-switch

    .line 411
    :pswitch_data_81c
    .packed-switch 0x0
        :pswitch_350
        :pswitch_35a
        :pswitch_364
        :pswitch_36e
        :pswitch_378
    .end packed-switch

    .line 436
    :pswitch_data_82a
    .packed-switch 0x0
        :pswitch_387
        :pswitch_391
        :pswitch_39b
        :pswitch_3a5
        :pswitch_3af
    .end packed-switch
.end method

.method public smlHCmdSyncHdr(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)V
    .registers 12
    .parameter "userdata"
    .parameter "header"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x100000

    .line 32
    move-object v2, p1

    check-cast v2, Lcom/syncmldstmo/base/smlWorkspace;

    .line 33
    .local v2, ws:Lcom/syncmldstmo/base/smlWorkspace;
    const/4 v1, 0x0

    .line 34
    .local v1, status:Lcom/syncmldstmo/base/sml$SML_STATUS;
    const/4 v0, 0x0

    .line 36
    .local v0, h:Lcom/syncmldstmo/base/smlList;
    iget v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    invoke-static {v3}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->msgRef:Ljava/lang/String;

    .line 37
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 39
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 44
    :cond_1e
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v3, :cond_8f

    .line 46
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-wide v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_87

    .line 48
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-wide v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    iput-wide v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    .line 49
    iget-wide v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3f

    iget-wide v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    const-wide/32 v5, 0x500000

    cmp-long v3, v3, v5

    if-lez v3, :cond_41

    .line 51
    :cond_3f
    iput-wide v7, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    .line 59
    :cond_41
    :goto_41
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    if-lez v3, :cond_8a

    .line 61
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget v3, v3, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    .line 75
    :goto_4e
    const-string v3, "0"

    const-string v4, "SyncHdr"

    const-string v5, "200"

    invoke-static {v2, v3, v4, v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 78
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_92

    .line 80
    new-instance v0, Lcom/syncmldstmo/base/smlList;

    .end local v0           #h:Lcom/syncmldstmo/base/smlList;
    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .line 86
    .restart local v0       #h:Lcom/syncmldstmo/base/smlList;
    :goto_6d
    iput-object v0, v1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 87
    new-instance v3, Lcom/syncmldstmo/base/smlList;

    iget-object v4, v2, Lcom/syncmldstmo/base/smlWorkspace;->sourceURI:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    .line 90
    :cond_78
    if-eqz v1, :cond_86

    .line 92
    iget v3, p2, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->is_noresp:I

    if-nez v3, :cond_9a

    .line 94
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    .line 95
    iget-object v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v3, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 102
    :cond_86
    :goto_86
    return-void

    .line 56
    :cond_87
    iput-wide v7, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    goto :goto_41

    .line 65
    :cond_8a
    const-wide/16 v3, 0x1000

    iput-wide v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    goto :goto_4e

    .line 71
    :cond_8f
    iput-wide v7, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    goto :goto_4e

    .line 84
    :cond_92
    new-instance v0, Lcom/syncmldstmo/base/smlList;

    .end local v0           #h:Lcom/syncmldstmo/base/smlList;
    iget-object v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local v0       #h:Lcom/syncmldstmo/base/smlList;
    goto :goto_6d

    .line 99
    :cond_9a
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_bHeaderNoResp:Z

    goto :goto_86
.end method

.method public smlHandleItemData(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$SML_META;)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x5

    const/4 v3, -0x3

    const/4 v2, 0x1

    const/high16 v6, 0x4

    const/4 v0, 0x0

    .line 2365
    iget-object v4, p1, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    .line 2368
    if-nez p2, :cond_14

    .line 2370
    const-string v0, "item is null !!"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    move v0, v1

    .line 2533
    :cond_13
    :goto_13
    return v0

    .line 2376
    :cond_14
    if-nez v4, :cond_1d

    .line 2378
    const-string v0, "ReceiveObj is null !!"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move v0, v1

    .line 2380
    goto :goto_13

    .line 2383
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "item.moredata : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->moredata:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", bReceiving : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->bReceiving:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2384
    iget v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->moredata:I

    if-lez v1, :cond_16d

    .line 2386
    iget-boolean v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->bReceiving:Z

    if-nez v1, :cond_136

    .line 2388
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 2389
    iput-boolean v2, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->bReceiving:Z

    .line 2390
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 2392
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    iput-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->guid:Ljava/lang/String;

    .line 2399
    :cond_56
    :goto_56
    if-eqz p3, :cond_99

    iget-object v1, p3, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 2401
    iget-object v1, p3, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    .line 2412
    :goto_68
    if-eqz p3, :cond_b7

    iget-object v1, p3, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 2414
    iget-object v1, p3, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    iput-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->metaType:Ljava/lang/String;

    .line 2422
    :cond_76
    :goto_76
    iget v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    if-gtz v1, :cond_ce

    .line 2424
    const-string v0, "SML_LO_UNKNOWNSIZE"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2425
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 2427
    const/4 v0, -0x2

    goto :goto_13

    .line 2394
    :cond_84
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_56

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 2396
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    iput-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->guid:Ljava/lang/String;

    goto :goto_56

    .line 2403
    :cond_99
    if-eqz p2, :cond_b4

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_b4

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 2405
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    goto :goto_68

    .line 2409
    :cond_b4
    iput v0, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    goto :goto_68

    .line 2416
    :cond_b7
    if-eqz p2, :cond_76

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_76

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 2418
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    iput-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->metaType:Ljava/lang/String;

    goto :goto_76

    .line 2429
    :cond_ce
    if-eqz p2, :cond_e7

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v1, :cond_e7

    iget v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v3, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    if-ge v1, v3, :cond_e7

    .line 2431
    const-string v0, "SML_LO_REQ_SIZE_TOO_BIG"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2432
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 2434
    const/4 v0, -0x4

    goto/16 :goto_13

    .line 2437
    :cond_e7
    iget v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    new-array v1, v1, [C

    iput-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    .line 2439
    if-eqz p2, :cond_130

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v1, :cond_130

    .line 2441
    const-string v1, "ReceiveObj.totalsize [%d], item.data.size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v5, v5, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2443
    :goto_111
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    if-lt v0, v1, :cond_123

    .line 2447
    iget v0, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    :goto_120
    move v0, v2

    .line 2455
    goto/16 :goto_13

    .line 2445
    :cond_123
    iget-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v3, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    aget-char v3, v3, v0

    aput-char v3, v1, v0

    .line 2443
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 2451
    :cond_130
    const-string v0, "item or ite.data is null!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_120

    .line 2461
    :cond_136
    iget v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    iget-object v3, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v3, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    add-int/2addr v1, v3

    iget v3, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    if-le v1, v3, :cond_15b

    .line 2463
    const-string v0, "SML_LO_SIZEMISMATCH"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2464
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 2466
    const/4 v0, -0x1

    goto/16 :goto_13

    .line 2472
    :cond_14c
    iget-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    iget v3, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    add-int/2addr v3, v0

    iget-object v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v5, v5, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    aget-char v5, v5, v0

    aput-char v5, v1, v3

    .line 2470
    add-int/lit8 v0, v0, 0x1

    :cond_15b
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    if-lt v0, v1, :cond_14c

    .line 2475
    iget v0, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    add-int/2addr v0, v1

    iput v0, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    move v0, v2

    .line 2477
    goto/16 :goto_13

    .line 2482
    :cond_16d
    iget-boolean v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->bReceiving:Z

    if-eqz v1, :cond_1fa

    .line 2484
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_189

    .line 2486
    iget-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->guid:Ljava/lang/String;

    iget-object v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1af

    .line 2488
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    move v0, v3

    .line 2490
    goto/16 :goto_13

    .line 2493
    :cond_189
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_1a9

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 2495
    iget-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->guid:Ljava/lang/String;

    iget-object v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v5, v5, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1af

    .line 2497
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    move v0, v3

    .line 2499
    goto/16 :goto_13

    .line 2504
    :cond_1a9
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    move v0, v3

    .line 2506
    goto/16 :goto_13

    .line 2509
    :cond_1af
    const-string v1, "ReceiveObj.totalsize [%d], item.data.size [%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v5, v5, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2510
    iget v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    add-int/2addr v1, v2

    iget v2, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    if-le v1, v2, :cond_1e3

    .line 2512
    const-string v0, "SML_LO_SIZEMISMATCH"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2513
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearReceiveLO(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 2515
    const/4 v0, -0x1

    goto/16 :goto_13

    :cond_1e3
    move v1, v0

    .line 2519
    :goto_1e4
    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    if-ge v1, v2, :cond_13

    .line 2521
    iget-object v2, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    iget v3, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->pos:I

    add-int/2addr v3, v1

    iget-object v5, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v5, v5, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    aget-char v5, v5, v1

    aput-char v5, v2, v3

    .line 2519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e4

    .line 2529
    :cond_1fa
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    iput v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->totalsize:I

    .line 2530
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    iput-object v1, v4, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->data:[C

    goto/16 :goto_13
.end method

.method smlSetDeviceFull(Ljava/lang/Object;IZ)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2250
    check-cast p1, Lcom/syncmldstmo/base/smlWorkspace;

    .line 2252
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 2255
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 2258
    :cond_d
    iget-object v1, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 2260
    if-nez v1, :cond_1f

    .line 2262
    const/high16 v0, 0x4

    const-string v1, "saSetDeviceFull dbinfo is  NULL~~!!!"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2361
    :goto_1e
    return-void

    .line 2267
    :cond_1f
    packed-switch p2, :pswitch_data_9e

    .line 2360
    :cond_22
    if-nez v1, :cond_d

    goto :goto_1e

    .line 2270
    :pswitch_25
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2272
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 2273
    if-eqz p3, :cond_38

    .line 2275
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    .line 2276
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    goto :goto_1e

    .line 2280
    :cond_38
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isDeviceFull:Z

    .line 2281
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    goto :goto_1e

    .line 2288
    :pswitch_3d
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2290
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 2291
    if-eqz p3, :cond_50

    .line 2293
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    .line 2294
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    goto :goto_1e

    .line 2298
    :cond_50
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isDeviceFull:Z

    .line 2299
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    goto :goto_1e

    .line 2306
    :pswitch_55
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Task"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2308
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 2309
    if-eqz p3, :cond_68

    .line 2311
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    .line 2312
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    goto :goto_1e

    .line 2316
    :cond_68
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isDeviceFull:Z

    .line 2317
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    goto :goto_1e

    .line 2324
    :pswitch_6d
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2326
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 2327
    if-eqz p3, :cond_80

    .line 2329
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    .line 2330
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    goto :goto_1e

    .line 2334
    :cond_80
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isDeviceFull:Z

    .line 2335
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    goto :goto_1e

    .line 2342
    :pswitch_85
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2344
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 2345
    if-eqz p3, :cond_98

    .line 2347
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    .line 2348
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    goto :goto_1e

    .line 2352
    :cond_98
    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isDeviceFull:Z

    .line 2353
    iput-boolean v4, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    goto :goto_1e

    .line 2267
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_3d
        :pswitch_55
        :pswitch_6d
        :pswitch_85
    .end packed-switch
.end method

.method public smlSetResponseStatusCode(Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2568
    check-cast p1, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 2570
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetErrorStatusHandle()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2574
    const/high16 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set error status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2575
    iput p2, p1, Lcom/syncmldstmo/database/smlDbProfileInfo;->ErrorCode:I

    .line 2578
    :cond_1e
    return-void
.end method
