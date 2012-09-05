.class public Lcom/syncmldstmo/base/smlBuildCmd;
.super Ljava/lang/Object;
.source "smlBuildCmd.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static g_pDevinfOfServer:Lcom/syncmldstmo/base/sml$SML_DEVINF;

.field public static g_pList_FilterQuery:Lcom/syncmldstmo/base/smlLinkedList;

.field public static g_pProperty:Lcom/syncmldstmo/base/sml$SML_PROPERTY;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/syncmldstmo/base/smlBuildCmd;->g_pDevinfOfServer:Lcom/syncmldstmo/base/sml$SML_DEVINF;

    .line 48
    sput-object v0, Lcom/syncmldstmo/base/smlBuildCmd;->g_pProperty:Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    .line 49
    sput-object v0, Lcom/syncmldstmo/base/smlBuildCmd;->g_pList_FilterQuery:Lcom/syncmldstmo/base/smlLinkedList;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I
    .registers 3
    .parameter "ws"

    .prologue
    .line 84
    iget v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    return v0
.end method

.method public static parseTargetURI(Lcom/syncmldstmo/base/smlWorkspace;)V
    .registers 8
    .parameter "ws"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, pos:I
    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 94
    .local v2, target:Ljava/lang/String;
    const-string v4, ""

    iput-object v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    .line 95
    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 96
    if-eq v1, v5, :cond_1d

    .line 98
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    .line 99
    add-int/lit8 v4, v1, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    :cond_1d
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 102
    if-eq v1, v5, :cond_4a

    .line 106
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, tmp:Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 108
    .local v0, idx:I
    if-eq v0, v5, :cond_43

    .line 110
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->hostname:Ljava/lang/String;

    .line 111
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    .line 114
    :cond_43
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    .line 120
    .end local v0           #idx:I
    .end local v3           #tmp:Ljava/lang/String;
    :goto_49
    return-void

    .line 118
    :cond_4a
    iput-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->hostname:Ljava/lang/String;

    goto :goto_49
.end method

.method public static smlAddRefToStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "ws"
    .parameter "status"
    .parameter "sourceRef"
    .parameter "targetRef"

    .prologue
    .line 1172
    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1174
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    if-nez v0, :cond_12

    .line 1175
    new-instance v0, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v0, p2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 1186
    :cond_11
    :goto_11
    return-void

    .line 1177
    :cond_12
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {v0, p2}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_11

    .line 1179
    :cond_18
    invoke-static {p3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1181
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    if-nez v0, :cond_2a

    .line 1182
    new-instance v0, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v0, p2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    goto :goto_11

    .line 1184
    :cond_2a
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {v0, p2}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_11
.end method

.method public static smlBCmdAdd(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;I)Lcom/syncmldstmo/base/sml$SML_ADD;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1025
    iget v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    if-nez v0, :cond_6

    .line 1026
    const/4 v0, 0x0

    .line 1047
    :goto_5
    return-object v0

    .line 1028
    :cond_6
    const/high16 v0, 0x4

    const-string v1, "build add cmd"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1030
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_ADD;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_ADD;-><init>()V

    .line 1031
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 1032
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v2

    iput v2, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    .line 1033
    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 1034
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1037
    const-string v1, "Add"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    move-result-object v1

    .line 1038
    if-nez v1, :cond_32

    .line 1040
    const-string v1, "WARNING!!! wsCreateAction Failed"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_5

    .line 1044
    :cond_32
    iput-object p1, v1, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_5
.end method

.method public static smlBCmdAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_ALERT;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/high16 v2, 0x4

    .line 370
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_ALERT;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_ALERT;-><init>()V

    .line 375
    const-string v1, "build alert cmd"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 376
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    .line 443
    iget-boolean v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_hasMultiMessage:Z

    if-eqz v1, :cond_24

    .line 445
    const-string v1, "222"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    .line 446
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_hasMultiMessage:Z

    .line 447
    const-string v1, "Alert"

    invoke-static {p0, v1, v9}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    .line 583
    :goto_23
    return-object v0

    .line 452
    :cond_24
    iget v1, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    packed-switch v1, :pswitch_data_102

    .line 493
    const-string v1, "201"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    .line 499
    :goto_2d
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 500
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 501
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;-><init>()V

    .line 502
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 503
    iget-object v4, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v5, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v5, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 504
    iget-object v4, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 507
    iget v4, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    packed-switch v4, :pswitch_data_118

    .line 522
    :pswitch_52
    iget-object v4, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    .line 523
    iget-object v4, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 524
    const-string v4, "00000000T000000Z"

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    .line 528
    :cond_62
    :goto_62
    invoke-static {}, Lcom/syncmldstmo/base/smlLib;->smlGetCurrentGlobalTime()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->nextAnchor:Ljava/lang/String;

    .line 529
    iget-object v4, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->nextAnchor:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    .line 530
    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    .line 559
    iget-object v3, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->userID:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fe

    iget-object v3, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 564
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    .line 565
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 568
    iget v5, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_credType:I

    invoke-static {v5}, Lcom/syncmldstmo/base/smlAuth;->smlCredType2String(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 569
    const-string v5, "b64"

    iput-object v5, v4, Lcom/syncmldstmo/base/sml$SML_META;->format:Ljava/lang/String;

    .line 570
    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 571
    iget v4, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->credType:I

    iget-object v5, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    iget-object v6, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->userID:Ljava/lang/String;

    iget-object v7, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->password:Ljava/lang/String;

    iget-object v8, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->nextnonce:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/syncmldstmo/base/smlBuildCmd;->smlCreateCredData(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_CRED;->data:Ljava/lang/String;

    .line 572
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 579
    :goto_a8
    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 580
    new-instance v2, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v2, v1}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 582
    const-string v1, "Alert"

    invoke-static {p0, v1, v9}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    goto/16 :goto_23

    .line 455
    :pswitch_b8
    const-string v1, "201"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 459
    :pswitch_be
    const-string v1, "200"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 463
    :pswitch_c4
    const-string v1, "202"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 467
    :pswitch_ca
    const-string v1, "203"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 471
    :pswitch_d0
    const-string v1, "204"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 475
    :pswitch_d6
    const-string v1, "205"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 479
    :pswitch_dc
    const-string v1, "206"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 483
    :pswitch_e2
    const-string v1, "[suspend&resume] ALERT_SUSPEND"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 484
    const-string v1, "224"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 488
    :pswitch_ed
    const-string v1, "[suspend&resume] ALERT_RESUME"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 489
    const-string v1, "225"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto/16 :goto_2d

    .line 512
    :pswitch_f8
    const-string v4, "00000000T000000Z"

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    goto/16 :goto_62

    .line 576
    :cond_fe
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    goto :goto_a8

    .line 452
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_be
        :pswitch_d0
        :pswitch_c4
        :pswitch_d6
        :pswitch_ca
        :pswitch_dc
        :pswitch_e2
        :pswitch_ed
    .end packed-switch

    .line 507
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_f8
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_f8
        :pswitch_f8
    .end packed-switch
.end method

.method public static smlBCmdAlertSuspendResume(Lcom/syncmldstmo/base/smlWorkspace;I)Lcom/syncmldstmo/base/sml$SML_ALERT;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 589
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_ALERT;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_ALERT;-><init>()V

    .line 592
    const/high16 v1, 0x4

    const-string v2, "build alert suspend resume cmd"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 595
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    .line 597
    packed-switch p1, :pswitch_data_44

    .line 608
    :goto_15
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 609
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 610
    iget-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 611
    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->sourceURI:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 613
    new-instance v2, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v2, v1}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 615
    const-string v1, "Alert"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    .line 616
    return-object v0

    .line 600
    :pswitch_39
    const-string v1, "224"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto :goto_15

    .line 604
    :pswitch_3e
    const-string v1, "225"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto :goto_15

    .line 597
    nop

    :pswitch_data_44
    .packed-switch 0x8
        :pswitch_39
        :pswitch_3e
    .end packed-switch
.end method

.method public static smlBCmdDelete(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;I)Lcom/syncmldstmo/base/sml$SML_DELETE;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    iget v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    if-nez v0, :cond_6

    .line 1090
    const/4 v0, 0x0

    .line 1104
    :goto_5
    return-object v0

    .line 1093
    :cond_6
    const/high16 v0, 0x4

    const-string v1, "build delete cmd"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1094
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_DELETE;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_DELETE;-><init>()V

    .line 1095
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 1096
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v2

    iput v2, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->cmdid:I

    .line 1097
    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 1098
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1101
    const-string v1, "Delete"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    move-result-object v1

    .line 1102
    iput-object p1, v1, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_5
.end method

.method public static smlBCmdEncodeItemList(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILcom/syncmldstmo/base/smlDebug$RefInt;ILcom/syncmldstmo/base/smlDebug$RefInt;)Z
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_recentAction:Lcom/syncmldstmo/base/sml$Action_t;

    iget-object v7, v3, Lcom/syncmldstmo/base/sml$Action_t;->sourceList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 655
    const/4 v5, 0x0

    .line 657
    const/4 v4, 0x0

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v3, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 661
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    .line 664
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v9, v6, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    .line 665
    const/high16 v6, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "protocol : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 666
    const/high16 v6, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ItemType : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 668
    new-instance v10, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v10}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 669
    new-instance v11, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v11}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 670
    new-instance v12, Lcom/syncmldstmo/base/sml$Item_t;

    invoke-direct {v12}, Lcom/syncmldstmo/base/sml$Item_t;-><init>()V

    .line 671
    move/from16 v0, p2

    iput v0, v12, Lcom/syncmldstmo/base/sml$Item_t;->dataObjType:I

    .line 673
    const/4 v6, 0x1

    move/from16 v0, p4

    if-eq v0, v6, :cond_5f

    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_76

    .line 675
    :cond_5f
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    iput-object v6, v12, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    .line 676
    new-instance v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-direct {v6}, Lcom/syncmldstmo/base/sml$SML_PCDATA;-><init>()V

    iput-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 677
    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    const/4 v13, 0x0

    iput v13, v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 678
    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    const/4 v13, 0x1

    iput v13, v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 681
    :cond_76
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v6

    if-eqz v6, :cond_284

    .line 683
    :cond_7c
    :goto_7c
    move-object/from16 v0, p3

    iget v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    if-gtz v6, :cond_ac

    .line 897
    :cond_82
    :goto_82
    move-object/from16 v0, p5

    iget v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    add-int/2addr v6, v4

    move-object/from16 v0, p5

    iput v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 900
    const/4 v6, 0x1

    move/from16 v0, p4

    if-ne v0, v6, :cond_3a7

    .line 902
    move-object/from16 v0, p1

    iget v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v6, :pswitch_data_52a

    .line 991
    :cond_97
    :goto_97
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_a1

    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_a6

    .line 993
    :cond_a1
    if-eqz v10, :cond_a6

    .line 995
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 999
    :cond_a6
    if-eqz v10, :cond_521

    .line 1001
    const/4 v3, 0x0

    iput-object v3, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 1011
    :goto_ab
    return v5

    .line 685
    :cond_ac
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v6

    if-nez v6, :cond_82

    .line 688
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_get_buffer_size(Lcom/syncmldstmo/base/smlEncoder;)I

    move-result v6

    add-int/lit8 v6, v6, 0x40

    add-int/lit16 v6, v6, 0x200

    int-to-long v13, v6

    const-wide/16 v15, 0x1000

    cmp-long v6, v13, v15

    if-ltz v6, :cond_c7

    .line 690
    const/4 v5, 0x1

    .line 691
    goto :goto_82

    .line 694
    :cond_c7
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportMultipleItems()Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 696
    const/16 v6, 0x32

    if-lt v4, v6, :cond_dc

    .line 698
    const/4 v5, 0x1

    .line 699
    goto :goto_82

    .line 704
    :cond_d3
    const/4 v6, 0x2

    if-eq v9, v6, :cond_d9

    const/4 v6, 0x1

    if-ne v9, v6, :cond_dc

    .line 706
    :cond_d9
    const/4 v6, 0x1

    if-ge v4, v6, :cond_82

    .line 711
    :cond_dc
    const/4 v6, 0x0

    .line 712
    move-object/from16 v0, p3

    iget v13, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    if-lez v13, :cond_ed

    .line 714
    move-object/from16 v0, p3

    iget v13, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p3

    iput v13, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 717
    :cond_ed
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v13, v13, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v13, v0, v1, v2, v9}, Lcom/syncmldstmo/base/smlUpdate;->getNextUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v13

    .line 718
    if-eqz v13, :cond_82

    .line 721
    iget v14, v13, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->luid:I

    invoke-static {v14}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 722
    iget-object v14, v12, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    iput-object v14, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 726
    const/4 v14, 0x1

    move/from16 v0, p4

    if-eq v0, v14, :cond_115

    const/4 v14, 0x2

    move/from16 v0, p4

    if-ne v0, v14, :cond_189

    .line 728
    :cond_115
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 729
    if-eqz v11, :cond_123

    .line 731
    iget-object v6, v12, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    iput-object v6, v11, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 732
    iput-object v11, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 735
    :cond_123
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    iget-boolean v6, v6, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    if-nez v6, :cond_153

    .line 738
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v6, v6, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v12, v13}, Lcom/syncmldstmo/base/smlUpdate;->getItem(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$Item_t;Lcom/syncmldstmo/base/smlUpdate$UpdateItem;)I

    .line 740
    iget v6, v12, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    if-nez v6, :cond_143

    .line 742
    const/high16 v6, 0x4

    const-string v13, "return no data"

    invoke-static {v6, v13}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_7c

    .line 746
    :cond_143
    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v13, v12, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    iput-object v13, v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 747
    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v13, v12, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    iput v13, v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 750
    :cond_153
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/syncmldstmo/base/smlBuildCmd;->smlMakeSendItemData(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    move-result v6

    .line 751
    const/high16 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "retlo : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 752
    const/4 v13, 0x1

    if-ne v6, v13, :cond_1c7

    .line 756
    const/high16 v13, 0x4

    const-string v14, "retlo == LARGE_OBJECT_START"

    invoke-static {v13, v14}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 757
    iget v13, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->size:I

    invoke-static {v13}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v13

    .line 758
    iget-object v14, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-nez v14, :cond_185

    .line 760
    if-eqz v11, :cond_1bf

    .line 762
    iput-object v11, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 769
    :cond_185
    :goto_185
    iget-object v14, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iput-object v13, v14, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    .line 781
    :cond_189
    const/4 v13, 0x1

    if-eq v6, v13, :cond_18f

    const/4 v13, 0x2

    if-ne v6, v13, :cond_1a9

    .line 783
    :cond_18f
    move-object/from16 v0, p3

    iget v5, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    iput v5, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v9}, Lcom/syncmldstmo/base/smlUpdate;->getPrevUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    .line 785
    const/4 v5, 0x1

    .line 787
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    invoke-static {v13, v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_item(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    .line 789
    const/4 v13, 0x1

    if-eq v6, v13, :cond_1b6

    const/4 v13, 0x2

    if-ne v6, v13, :cond_1ed

    .line 792
    :cond_1b6
    const/high16 v6, 0x4

    const-string v7, "break while. retlo == LARGE_OBJECT_START or LARGE_OBJECT_CONTINUE"

    invoke-static {v6, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_82

    .line 766
    :cond_1bf
    new-instance v14, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v14}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v14, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_185

    .line 771
    :cond_1c7
    const/4 v13, 0x3

    if-ne v6, v13, :cond_189

    .line 773
    const/high16 v5, 0x4

    const-string v6, "retlo == LARGE_OBJECT_NEXT_MESSAGE"

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 774
    move-object/from16 v0, p3

    iget v5, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    iput v5, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 775
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v9}, Lcom/syncmldstmo/base/smlUpdate;->getPrevUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    .line 776
    const/4 v5, 0x1

    .line 777
    goto/16 :goto_82

    .line 796
    :cond_1ed
    const/4 v13, 0x4

    if-eq v6, v13, :cond_1f2

    if-nez v6, :cond_7c

    .line 798
    :cond_1f2
    iget-object v6, v12, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 799
    invoke-virtual {v7, v6}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7c

    .line 808
    :cond_1fb
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v6

    if-nez v6, :cond_82

    .line 811
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_get_buffer_size(Lcom/syncmldstmo/base/smlEncoder;)I

    move-result v6

    add-int/lit8 v6, v6, 0x40

    add-int/lit16 v6, v6, 0x200

    int-to-long v13, v6

    const-wide/16 v15, 0x1000

    cmp-long v6, v13, v15

    if-ltz v6, :cond_217

    .line 813
    const/4 v5, 0x1

    .line 814
    goto/16 :goto_82

    .line 817
    :cond_217
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportMultipleItems()Z

    move-result v6

    if-eqz v6, :cond_224

    .line 819
    const/16 v6, 0x32

    if-lt v4, v6, :cond_22d

    .line 821
    const/4 v5, 0x1

    .line 822
    goto/16 :goto_82

    .line 827
    :cond_224
    const/4 v6, 0x2

    if-eq v9, v6, :cond_22a

    const/4 v6, 0x1

    if-ne v9, v6, :cond_22d

    .line 829
    :cond_22a
    const/4 v6, 0x1

    if-ge v4, v6, :cond_82

    .line 834
    :cond_22d
    move-object/from16 v0, p3

    iget v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    if-lez v6, :cond_23d

    .line 836
    move-object/from16 v0, p3

    iget v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p3

    iput v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 839
    :cond_23d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v6, v6, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2, v9}, Lcom/syncmldstmo/base/smlUpdate;->getNextUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    move-result-object v6

    .line 840
    if-eqz v6, :cond_82

    .line 842
    iget v8, v6, Lcom/syncmldstmo/base/smlUpdate$UpdateItem;->luid:I

    invoke-static {v8}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 844
    if-eqz v10, :cond_28c

    .line 846
    iget-object v8, v12, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    iput-object v8, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 855
    :goto_25d
    const/4 v8, 0x1

    move/from16 v0, p4

    if-eq v0, v8, :cond_267

    const/4 v8, 0x2

    move/from16 v0, p4

    if-ne v0, v8, :cond_2a9

    .line 857
    :cond_267
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 858
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    iget-boolean v8, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    if-nez v8, :cond_2a9

    .line 860
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v8, v8, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12, v6}, Lcom/syncmldstmo/base/smlUpdate;->getItem(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$Item_t;Lcom/syncmldstmo/base/smlUpdate$UpdateItem;)I

    .line 862
    iget v6, v12, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    if-nez v6, :cond_293

    .line 806
    :cond_284
    :goto_284
    move-object/from16 v0, p3

    iget v6, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    if-gtz v6, :cond_1fb

    goto/16 :goto_82

    .line 850
    :cond_28c
    const/4 v8, 0x1

    const-string v11, "sml_item is null!!"

    invoke-static {v8, v11}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_25d

    .line 867
    :cond_293
    if-eqz v10, :cond_2e2

    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v6, :cond_2e2

    .line 869
    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v8, v12, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    iput-object v8, v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 870
    iget-object v6, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v8, v12, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    iput v8, v6, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 879
    :cond_2a9
    :goto_2a9
    const/4 v6, 0x4

    move/from16 v0, p4

    if-eq v0, v6, :cond_2e9

    if-eqz v10, :cond_2e9

    .line 881
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_get_buffer_size(Lcom/syncmldstmo/base/smlEncoder;)I

    move-result v6

    add-int/lit8 v6, v6, 0x40

    iget-object v8, v10, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v8, v8, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    add-int/2addr v6, v8

    int-to-long v13, v6

    const-wide/16 v15, 0x1000

    cmp-long v6, v13, v15

    if-ltz v6, :cond_2e9

    .line 883
    move-object/from16 v0, p3

    iget v5, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    iput v5, v0, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v9}, Lcom/syncmldstmo/base/smlUpdate;->getPrevUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;

    .line 885
    const/4 v5, 0x1

    .line 886
    goto/16 :goto_82

    .line 874
    :cond_2e2
    const/4 v6, 0x1

    const-string v8, "sml_item or sml_item.data is null!!"

    invoke-static {v6, v8}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2a9

    .line 890
    :cond_2e9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    invoke-static {v6, v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_item(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/sml$SML_ITEM;)I

    .line 891
    iget-object v6, v12, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 892
    invoke-virtual {v7, v6}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 893
    add-int/lit8 v4, v4, 0x1

    goto :goto_284

    .line 905
    :pswitch_2f8
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 906
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Contact_SyncInfo.P2SAddItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 910
    :pswitch_31b
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 911
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Calendar_SyncInfo.P2SAddItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 915
    :pswitch_33e
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 916
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Task_SyncInfo.P2SAddItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 920
    :pswitch_361
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 921
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Memo_SyncInfo.P2SAddItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 925
    :pswitch_384
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 926
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Profile_SyncInfo.P2SAddItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 930
    :cond_3a7
    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_464

    .line 932
    move-object/from16 v0, p1

    iget v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v6, :pswitch_data_538

    goto/16 :goto_97

    .line 935
    :pswitch_3b5
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 936
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Contact_SyncInfo.P2SReplaceItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 940
    :pswitch_3d8
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 941
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Calendar_SyncInfo.P2SReplaceItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 945
    :pswitch_3fb
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 946
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Task_SyncInfo.P2SReplaceItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 950
    :pswitch_41e
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 951
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Memo_SyncInfo.P2SReplaceItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 955
    :pswitch_441
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 956
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Profile_SyncInfo.P2SReplaceItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 960
    :cond_464
    const/4 v6, 0x4

    move/from16 v0, p4

    if-ne v0, v6, :cond_97

    .line 962
    move-object/from16 v0, p1

    iget v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v6, :pswitch_data_546

    goto/16 :goto_97

    .line 965
    :pswitch_472
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 966
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Contact_SyncInfo.P2SDeleteItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 970
    :pswitch_495
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 971
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Calendar_SyncInfo.P2SDeleteItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 975
    :pswitch_4b8
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 976
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Task_SyncInfo.P2SDeleteItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 980
    :pswitch_4db
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 981
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Memo_SyncInfo.P2SDeleteItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 985
    :pswitch_4fe
    iget-object v6, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v7, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v4, v7

    iput v4, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 986
    const/high16 v4, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "si.Profile_SyncInfo.P2SDeleteItem : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_97

    .line 1006
    :cond_521
    const/4 v3, 0x1

    const-string v4, "sml_item is null!!"

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_ab

    .line 902
    nop

    :pswitch_data_52a
    .packed-switch 0x0
        :pswitch_2f8
        :pswitch_31b
        :pswitch_33e
        :pswitch_361
        :pswitch_384
    .end packed-switch

    .line 932
    :pswitch_data_538
    .packed-switch 0x0
        :pswitch_3b5
        :pswitch_3d8
        :pswitch_3fb
        :pswitch_41e
        :pswitch_441
    .end packed-switch

    .line 962
    :pswitch_data_546
    .packed-switch 0x0
        :pswitch_472
        :pswitch_495
        :pswitch_4b8
        :pswitch_4db
        :pswitch_4fe
    .end packed-switch
.end method

.method public static smlBCmdEncodeMapItem(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Z
    .registers 10
    .parameter "ws"
    .parameter "dbInfo"

    .prologue
    const-wide/16 v6, 0x0

    .line 1134
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    .line 1139
    .local v0, e:Lcom/syncmldstmo/base/smlEncoder;
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_MAPITEM;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_MAPITEM;-><init>()V

    .line 1140
    .local v3, sml_mapItem:Lcom/syncmldstmo/base/sml$SML_MAPITEM;
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 1142
    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 1143
    .local v2, mapList:Lcom/syncmldstmo/base/smlLinkedList;
    invoke-virtual {v2, v6, v7}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$MapItem_t;

    .line 1144
    .local v1, mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    :goto_18
    if-nez v1, :cond_1c

    .line 1152
    const/4 v4, 0x0

    return v4

    .line 1146
    :cond_1c
    iget-object v4, v1, Lcom/syncmldstmo/base/sml$MapItem_t;->luid:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->source:Ljava/lang/String;

    .line 1147
    iget-object v4, v3, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v5, v1, Lcom/syncmldstmo/base/sml$MapItem_t;->guid:Ljava/lang/String;

    iput-object v5, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 1148
    invoke-virtual {v0, v0, v3}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_mapitem(Lcom/syncmldstmo/base/smlEncoder;Lcom/syncmldstmo/base/sml$SML_MAPITEM;)I

    .line 1149
    invoke-virtual {v2, v6, v7}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    check-cast v1, Lcom/syncmldstmo/base/sml$MapItem_t;

    .restart local v1       #mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    goto :goto_18
.end method

.method public static smlBCmdExtendAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_META;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_ALERT;
    .registers 7
    .parameter "ws"
    .parameter "meta"
    .parameter "data"

    .prologue
    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, AlertCmd:Lcom/syncmldstmo/base/sml$SML_ALERT;
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 1203
    .local v1, item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_ALERT;

    .end local v0           #AlertCmd:Lcom/syncmldstmo/base/sml$SML_ALERT;
    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_ALERT;-><init>()V

    .line 1204
    .restart local v0       #AlertCmd:Lcom/syncmldstmo/base/sml$SML_ALERT;
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v2

    iput v2, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    .line 1205
    iput-object p2, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    .line 1208
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 1209
    iget-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 1210
    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 1212
    if-eqz p1, :cond_2c

    .line 1214
    iput-object p1, v1, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1217
    :cond_2c
    new-instance v2, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v2, v1}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 1219
    return-object v0
.end method

.method public static smlBCmdGet(Lcom/syncmldstmo/base/smlWorkspace;)Lcom/syncmldstmo/base/sml$SML_GET;
    .registers 6
    .parameter

    .prologue
    .line 272
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_GET;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_GET;-><init>()V

    .line 273
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 274
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 276
    const/high16 v3, 0x4

    const-string v4, "build get cmd"

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 277
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v3

    iput v3, v0, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    .line 278
    const-string v3, "application/vnd.syncml-devinf+wbxml"

    iput-object v3, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 279
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_GET;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 281
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v1

    if-nez v1, :cond_3c

    .line 283
    iget-object v1, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    const-string v3, "./devinf11"

    iput-object v3, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 290
    :goto_2e
    new-instance v1, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_GET;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 291
    const-string v1, "Get"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    .line 292
    return-object v0

    .line 287
    :cond_3c
    iget-object v1, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    const-string v3, "./devinf12"

    iput-object v3, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    goto :goto_2e
.end method

.method public static smlBCmdMap(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_MAP;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1112
    iget-object v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    iget-wide v0, v0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1114
    const/4 v0, 0x0

    .line 1129
    :goto_b
    return-object v0

    .line 1117
    :cond_c
    const/high16 v0, 0x4

    const-string v1, "build map cmd"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1119
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_MAP;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_MAP;-><init>()V

    .line 1120
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_MAP;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 1123
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_MAP;->cmdid:I

    .line 1124
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_MAP;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 1125
    iget-object v1, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_MAP;->source:Ljava/lang/String;

    .line 1127
    const-string v1, "Map"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    goto :goto_b
.end method

.method public static smlBCmdPut(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/sml$SML_PUT;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 298
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_PUT;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_PUT;-><init>()V

    .line 299
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 300
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 301
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_PCDATA;-><init>()V

    .line 304
    const/high16 v4, 0x4

    const-string v5, "build put cmd"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 305
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v4

    iput v4, v0, Lcom/syncmldstmo/base/sml$SML_PUT;->cmdid:I

    .line 306
    const-string v4, "application/vnd.syncml-devinf+wbxml"

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 307
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PUT;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 309
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v1

    if-nez v1, :cond_54

    .line 311
    const-string v1, "./devinf11"

    iput-object v1, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 318
    :goto_31
    invoke-static {p1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_devinf2opaque(Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/smlByteBuffer;

    move-result-object v1

    .line 319
    const/4 v4, 0x1

    iput v4, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 320
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v4

    iput v4, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 321
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->toCharArray()[C

    move-result-object v1

    iput-object v1, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 322
    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 324
    new-instance v1, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PUT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 325
    const-string v1, "Put"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    .line 326
    return-object v0

    .line 315
    :cond_54
    const-string v1, "./devinf12"

    iput-object v1, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    goto :goto_31
.end method

.method public static smlBCmdReplace(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;I)Lcom/syncmldstmo/base/sml$SML_REPLACE;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1057
    iget v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    if-nez v0, :cond_7

    .line 1059
    const/4 v0, 0x0

    .line 1078
    :goto_6
    return-object v0

    .line 1062
    :cond_7
    const/high16 v0, 0x4

    const-string v1, "build replace cmd"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1063
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_REPLACE;-><init>()V

    .line 1064
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 1065
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v2

    iput v2, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->cmdid:I

    .line 1067
    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-static {v2}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetClientSupportFieldLevel(I)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-static {v2}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetServerSupportFieldLevel(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1069
    iput-boolean v3, v1, Lcom/syncmldstmo/base/sml$SML_META;->is_fieldlevel:Z

    .line 1071
    :cond_30
    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 1072
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1075
    const-string v1, "Replace"

    invoke-static {p0, v1, v3}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    move-result-object v1

    .line 1076
    iput-object p1, v1, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_6
.end method

.method public static smlBCmdResults(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/sml$SML_RESULTS;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_RESULTS;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_RESULTS;-><init>()V

    .line 333
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 334
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 335
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_PCDATA;-><init>()V

    .line 337
    const/high16 v4, 0x4

    const-string v5, "build result cmd"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 339
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v4

    iput v4, v0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdid:I

    .line 340
    iget-object v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->msgRef:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->msgref:Ljava/lang/String;

    .line 341
    iput-object p1, v0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdref:Ljava/lang/String;

    .line 342
    const-string v4, "application/vnd.syncml-devinf+wbxml"

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 343
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 345
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v1

    if-nez v1, :cond_5a

    .line 347
    const-string v1, "./devinf11"

    iput-object v1, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 355
    :goto_37
    invoke-static {p2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_devinf2opaque(Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/smlByteBuffer;

    move-result-object v1

    .line 357
    const/4 v4, 0x1

    iput v4, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 358
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v4

    iput v4, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 359
    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->toCharArray()[C

    move-result-object v1

    iput-object v1, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 360
    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 362
    new-instance v1, Lcom/syncmldstmo/base/smlList;

    invoke-direct {v1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 363
    const-string v1, "Results"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    .line 364
    return-object v0

    .line 351
    :cond_5a
    const-string v1, "./devinf12"

    iput-object v1, v2, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    goto :goto_37
.end method

.method public static smlBCmdStatus(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/syncmldstmo/base/sml$SML_STATUS;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1158
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_STATUS;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_STATUS;-><init>()V

    .line 1159
    const/high16 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "build status cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1161
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdid:I

    .line 1162
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->msgRef:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    .line 1163
    iput-object p1, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    .line 1164
    iput-object p2, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    .line 1165
    iput-object p3, v0, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    .line 1167
    return-object v0
.end method

.method public static smlBCmdSync(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_SYNC;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 623
    .line 625
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isSent:Z

    if-eqz v0, :cond_9

    .line 627
    :cond_7
    const/4 v0, 0x0

    .line 646
    :goto_8
    return-object v0

    .line 630
    :cond_9
    const/high16 v0, 0x4

    const-string v2, "build sync cmd."

    invoke-static {v0, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 632
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_SYNC;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_SYNC;-><init>()V

    .line 633
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v0, v2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 634
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->getCmdID(Lcom/syncmldstmo/base/smlWorkspace;)I

    move-result v0

    iput v0, v2, Lcom/syncmldstmo/base/sml$SML_SYNC;->cmdid:I

    .line 636
    iget-object v0, v2, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v3, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 637
    iget-object v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    iput-object v0, v2, Lcom/syncmldstmo/base/sml$SML_SYNC;->source:Ljava/lang/String;

    .line 639
    if-eqz p1, :cond_3f

    .line 641
    iget v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    iget v3, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    add-int/2addr v0, v3

    iget v3, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    add-int/2addr v0, v3

    .line 643
    :goto_36
    iput v0, v2, Lcom/syncmldstmo/base/sml$SML_SYNC;->numofchanges:I

    .line 644
    const-string v0, "Sync"

    invoke-static {p0, v0, v1}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    move-object v0, v2

    .line 646
    goto :goto_8

    :cond_3f
    move v0, v1

    goto :goto_36
.end method

.method public static smlBCmdSyncHeader(Lcom/syncmldstmo/base/smlWorkspace;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4

    .line 156
    const-string v0, "SyncHdr"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;

    move-result-object v0

    .line 157
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/syncmldstmo/base/sml$Action_t;->cmdID:J

    .line 159
    const-string v0, "build synchdr cmd"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    if-nez v0, :cond_17a

    .line 164
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    .line 165
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    .line 168
    const-string v1, ""

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 172
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 174
    const-string v1, "http"

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    .line 180
    :goto_3a
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 182
    :cond_44
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 184
    iget v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    if-eqz v1, :cond_76

    .line 186
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14a

    iget v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_14a

    .line 187
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    const-string v2, ":%d"

    iget v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->strFormat(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 192
    :cond_76
    :goto_76
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 194
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 196
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "target : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v1

    if-nez v1, :cond_170

    .line 201
    const-string v1, "1.1"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verdtd:Ljava/lang/String;

    .line 202
    const-string v1, "SyncML/1.1"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verproto:Ljava/lang/String;

    .line 209
    :goto_aa
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->sessionID:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->sessionid:Ljava/lang/String;

    .line 210
    iget-wide v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    long-to-int v1, v1

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    .line 212
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->sourceURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->source:Ljava/lang/String;

    .line 213
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 214
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userID:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->locname:Ljava/lang/String;

    .line 218
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 219
    iget-wide v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_maxMsgSize:J

    long-to-int v2, v2

    iput v2, v1, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    .line 222
    iget-wide v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_maxObjSize:J

    iput-wide v2, v1, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    .line 224
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 240
    :cond_d8
    :goto_d8
    iget v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_197

    .line 245
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_194

    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_194

    .line 247
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    .line 248
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 251
    iget v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_credType:I

    invoke-static {v3}, Lcom/syncmldstmo/base/smlAuth;->smlCredType2String(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 252
    const-string v3, "b64"

    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_META;->format:Ljava/lang/String;

    .line 253
    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", password : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nonce : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->nextnonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 255
    iget v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_credType:I

    iget-object v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    iget-object v4, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userID:Ljava/lang/String;

    iget-object v5, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_password:Ljava/lang/String;

    iget-object v6, p0, Lcom/syncmldstmo/base/smlWorkspace;->nextnonce:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/syncmldstmo/base/smlBuildCmd;->smlCreateCredData(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_CRED;->data:Ljava/lang/String;

    .line 256
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 267
    :goto_143
    return-void

    .line 178
    :cond_144
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    goto/16 :goto_3a

    .line 188
    :cond_14a
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_76

    .line 189
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    const-string v2, ":%d"

    iget v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->strFormat(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    goto/16 :goto_76

    .line 206
    :cond_170
    const-string v1, "1.2"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verdtd:Ljava/lang/String;

    .line 207
    const-string v1, "SyncML/1.2"

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verproto:Ljava/lang/String;

    goto/16 :goto_aa

    .line 228
    :cond_17a
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    .line 231
    iget-wide v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    long-to-int v1, v1

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    .line 233
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iget-object v2, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    if-eq v1, v2, :cond_d8

    .line 235
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iput-object v2, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 236
    invoke-static {p0}, Lcom/syncmldstmo/base/smlBuildCmd;->parseTargetURI(Lcom/syncmldstmo/base/smlWorkspace;)V

    goto/16 :goto_d8

    .line 260
    :cond_194
    iput-object v5, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    goto :goto_143

    .line 265
    :cond_197
    iput-object v5, v0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    goto :goto_143
.end method

.method public static smlCreateCredData(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "credType"
    .parameter "userInfo"
    .parameter "userID"
    .parameter "password"
    .parameter "nextnonce"

    .prologue
    const/high16 v4, 0x4

    .line 124
    const-string v1, ""

    .line 125
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .line 128
    .local v0, creddata:Ljava/lang/String;
    packed-switch p0, :pswitch_data_52

    .line 144
    const/4 v2, 0x1

    const-string v3, "Not Support Auth Type"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    .line 149
    :goto_f
    return-object v2

    .line 131
    :pswitch_10
    move-object v0, p2

    .line 132
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlBase64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", passWord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", creddata : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    :goto_49
    move-object v2, v1

    .line 149
    goto :goto_f

    .line 139
    :pswitch_4b
    const-string v2, "FIXME:MD5 Auth"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_49

    .line 128
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_10
        :pswitch_4b
    .end packed-switch
.end method

.method public static smlMakeItemDataAdd(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ADD;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$Item_t;)Lcom/syncmldstmo/base/sml$Item_t;
    .registers 7
    .parameter "ws"
    .parameter "Cmd"
    .parameter "item"
    .parameter "newitem"

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    .line 1350
    .local v0, ReceiveObj:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_64

    .line 1352
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    .line 1363
    :cond_c
    :goto_c
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v1, :cond_27

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    if-eqz v1, :cond_27

    .line 1365
    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 1366
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    iput v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 1369
    :cond_27
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_3b

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1371
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 1374
    :cond_3b
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    if-eqz v1, :cond_4f

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;->pLocURI:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1376
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;->pLocURI:Ljava/lang/String;

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->parentluid:Ljava/lang/String;

    .line 1379
    :cond_4f
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    if-eqz v1, :cond_63

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;->pLocURI:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1381
    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;->pLocURI:Ljava/lang/String;

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->svrparentluid:Ljava/lang/String;

    .line 1384
    :cond_63
    return-object p3

    .line 1354
    :cond_64
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_6f

    .line 1356
    iget-object v1, p1, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    goto :goto_c

    .line 1358
    :cond_6f
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->metaType:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1360
    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;->metaType:Ljava/lang/String;

    iput-object v1, p3, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    goto :goto_c
.end method

.method public static smlMakeItemDataReplace(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_REPLACE;Lcom/syncmldstmo/base/sml$SML_ITEM;Lcom/syncmldstmo/base/sml$Item_t;)V
    .registers 6
    .parameter "ws"
    .parameter "Cmd"
    .parameter "item"
    .parameter "newitem"

    .prologue
    .line 1321
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v0, :cond_30

    .line 1323
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    .line 1330
    :cond_a
    :goto_a
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v0, :cond_25

    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    if-eqz v0, :cond_25

    .line 1333
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v1, v1, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->data:Ljava/lang/String;

    .line 1334
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v0, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    iput v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->datasize:I

    .line 1337
    :cond_25
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v0, :cond_2f

    .line 1339
    iget-object v0, p2, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->luid:Ljava/lang/String;

    .line 1341
    :cond_2f
    return-void

    .line 1325
    :cond_30
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v0, :cond_a

    .line 1327
    iget-object v0, p1, Lcom/syncmldstmo/base/sml$SML_REPLACE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    iget-object v0, v0, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    iput-object v0, p3, Lcom/syncmldstmo/base/sml$Item_t;->mimeType:Ljava/lang/String;

    goto :goto_a
.end method

.method public static smlMakeSendItemData(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_ITEM;)I
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x4

    const/high16 v11, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1227
    const/16 v7, 0x1000

    .line 1231
    iget-object v8, p0, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    .line 1234
    const-wide/16 v2, 0x1000

    .line 1235
    iget-object v9, p0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_get_buffer_size(Lcom/syncmldstmo/base/smlEncoder;)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v2, v9

    .line 1236
    const-wide/16 v9, 0x40

    sub-long/2addr v2, v9

    .line 1238
    cmp-long v9, v2, v0

    if-gez v9, :cond_b8

    .line 1241
    :goto_1c
    iget-boolean v2, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    if-eqz v2, :cond_64

    .line 1243
    iget v2, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->size:I

    iget v3, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->pos:I

    sub-int/2addr v2, v3

    .line 1245
    int-to-long v9, v2

    cmp-long v3, v9, v0

    if-gtz v3, :cond_50

    .line 1247
    int-to-long v0, v2

    .line 1249
    iput-boolean v6, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    move v2, v4

    .line 1257
    :goto_2e
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    new-array v5, v7, [C

    iput-object v5, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 1258
    iget-object v3, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    long-to-int v5, v0

    iput v5, v3, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    move v3, v6

    .line 1260
    :goto_3a
    int-to-long v9, v3

    cmp-long v5, v9, v0

    if-ltz v5, :cond_54

    .line 1265
    iget v3, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->pos:I

    int-to-long v9, v3

    add-long/2addr v0, v9

    long-to-int v0, v0

    iput v0, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->pos:I

    .line 1268
    if-ne v2, v4, :cond_4f

    .line 1270
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->data:[C

    .line 1271
    iput v6, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->pos:I

    .line 1272
    iput v6, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->size:I

    .line 1316
    :cond_4f
    :goto_4f
    return v2

    .line 1253
    :cond_50
    iput v5, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->moredata:I

    .line 1254
    const/4 v2, 0x2

    goto :goto_2e

    .line 1262
    :cond_54
    iget-object v5, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v5, v5, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    iget-object v7, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->data:[C

    iget v9, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->pos:I

    add-int/2addr v9, v3

    aget-char v7, v7, v9

    aput-char v7, v5, v3

    .line 1260
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1276
    :cond_64
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_b1

    .line 1278
    const-wide/16 v2, 0x400

    cmp-long v2, v0, v2

    if-gez v2, :cond_7a

    .line 1280
    const-string v0, "nFreesize < 1024"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1281
    const/4 v2, 0x3

    goto :goto_4f

    .line 1285
    :cond_7a
    const-string v2, "nFreesize >= 1024"

    invoke-static {v11, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1287
    long-to-int v2, v0

    iput v2, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->pos:I

    .line 1288
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    iput v2, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->size:I

    .line 1289
    iput-boolean v5, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    .line 1291
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    iput-object v2, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->data:[C

    .line 1299
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    new-array v3, v7, [C

    iput-object v3, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 1300
    :goto_96
    int-to-long v2, v6

    cmp-long v2, v2, v0

    if-ltz v2, :cond_a4

    .line 1304
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    long-to-int v0, v0

    iput v0, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 1305
    iput v5, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->moredata:I

    move v2, v5

    .line 1307
    goto :goto_4f

    .line 1302
    :cond_a4
    iget-object v2, p1, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    iget-object v2, v2, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    iget-object v3, v8, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->data:[C

    aget-char v3, v3, v6

    aput-char v3, v2, v6

    .line 1300
    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    .line 1313
    :cond_b1
    const-string v0, "LARGE_OBJECT_NOT"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v2, v6

    goto :goto_4f

    :cond_b8
    move-wide v0, v2

    goto/16 :goto_1c
.end method

.method public static smlRemoveRefOfStatus(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$SML_STATUS;)V
    .registers 3
    .parameter "ws"
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 1190
    if-nez p1, :cond_4

    .line 1195
    :goto_3
    return-void

    .line 1193
    :cond_4
    iput-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    .line 1194
    iput-object v0, p1, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public static smlSetDevinf(Lcom/syncmldstmo/base/sml$SML_DEVINF;)Z
    .registers 2
    .parameter "pDevinf"

    .prologue
    .line 1421
    sput-object p0, Lcom/syncmldstmo/base/smlBuildCmd;->g_pDevinfOfServer:Lcom/syncmldstmo/base/sml$SML_DEVINF;

    .line 1422
    const/4 v0, 0x1

    return v0
.end method
