.class public Lcom/syncmldstmo/base/smlAgent;
.super Ljava/lang/Object;
.source "smlAgent.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static gSuspendState:Z

.field public static g_StartSyncAfterCP:Z

.field public static g_bBackgroundState:Z

.field public static m_SyncStart:Z

.field public static m_bStopping:Z

.field public static m_inSync:Z


# instance fields
.field public _beginSyncTime:J

.field public _endSyncTime:J

.field public gLocalSyncDb:[Z

.field public gRemoteSyncDb:[Z

.field public gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

.field public ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

.field public m_context:Landroid/content/Context;

.field public m_lastRet:I

.field public m_ws:Lcom/syncmldstmo/base/smlWorkspace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_inSync:Z

    .line 23
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_bStopping:Z

    .line 24
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_SyncStart:Z

    .line 26
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->g_bBackgroundState:Z

    .line 27
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->g_StartSyncAfterCP:Z

    .line 39
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->gSuspendState:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    .line 29
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gRemoteSyncDb:[Z

    .line 30
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gLocalSyncDb:[Z

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 19
    return-void
.end method

.method public static getIsStopping()Z
    .registers 1

    .prologue
    .line 1486
    sget-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_bStopping:Z

    return v0
.end method

.method public static getSyncStart()Z
    .registers 1

    .prologue
    .line 1453
    sget-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_SyncStart:Z

    return v0
.end method

.method public static inSyncMode()Z
    .registers 1

    .prologue
    .line 1448
    sget-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_inSync:Z

    return v0
.end method

.method public static setIsStopping(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1491
    if-eqz p0, :cond_9

    .line 1493
    const/high16 v0, 0x4

    const-string v1, "Stopping is true"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1495
    :cond_9
    sput-boolean p0, Lcom/syncmldstmo/base/smlAgent;->m_bStopping:Z

    .line 1496
    return-void
.end method

.method public static setSyncFinish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1475
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_inSync:Z

    .line 1476
    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 1477
    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->setIsStopping(Z)V

    .line 1478
    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->setSyncIndicator(Z)V

    .line 1479
    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetIsSyncFlag(Z)V

    .line 1480
    const/high16 v0, 0x4

    const-string v1, "sync finish"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1481
    return-void
.end method

.method public static setSyncIndicator(Z)V
    .registers 3
    .parameter "bSync"

    .prologue
    const/4 v1, 0x0

    .line 1510
    if-eqz p0, :cond_c

    .line 1512
    const/16 v0, 0x32

    invoke-static {v1, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 1518
    :goto_8
    invoke-static {}, Lcom/syncmldstmo/base/smlHandleCmd;->smlClearSyncDbStatus()V

    .line 1519
    return-void

    .line 1516
    :cond_c
    const/16 v0, 0x33

    invoke-static {v1, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_8
.end method

.method public static setSyncStart(Z)V
    .registers 3
    .parameter

    .prologue
    const/high16 v1, 0x4

    .line 1458
    sput-boolean p0, Lcom/syncmldstmo/base/smlAgent;->m_SyncStart:Z

    .line 1459
    if-eqz p0, :cond_c

    .line 1460
    const-string v0, "sync start true"

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1463
    :goto_b
    return-void

    .line 1462
    :cond_c
    const-string v0, "sync start false"

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_b
.end method

.method public static setSyncing()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1467
    sput-boolean v0, Lcom/syncmldstmo/base/smlAgent;->m_inSync:Z

    .line 1468
    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->setSyncIndicator(Z)V

    .line 1469
    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetIsSyncFlag(Z)V

    .line 1470
    const/high16 v0, 0x4

    const-string v1, "syncing"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1471
    return-void
.end method

.method public static smlGetBackgroundState()Z
    .registers 1

    .prologue
    .line 1580
    sget-boolean v0, Lcom/syncmldstmo/base/smlAgent;->g_bBackgroundState:Z

    return v0
.end method

.method public static smlGetCurrentSyncDbStatus()[I
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Lcom/syncmldstmo/base/smlHandleCmd;->smlGetCurrentSyncDbStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public static smlGetStartSyncAfterCP()Z
    .registers 1

    .prologue
    .line 1590
    sget-boolean v0, Lcom/syncmldstmo/base/smlAgent;->g_StartSyncAfterCP:Z

    return v0
.end method

.method public static smlGetSuspending()Z
    .registers 1

    .prologue
    .line 1596
    sget-boolean v0, Lcom/syncmldstmo/base/smlAgent;->gSuspendState:Z

    return v0
.end method

.method private smlSetAuthFailEvent()I
    .registers 3

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, event:I
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    packed-switch v1, :pswitch_data_2c

    .line 981
    :pswitch_8
    const/16 v0, 0x1b

    .line 985
    :goto_a
    return v0

    .line 932
    :pswitch_b
    const/16 v0, 0x1b

    .line 933
    goto :goto_a

    .line 936
    :pswitch_e
    const/16 v0, 0x1d

    .line 937
    goto :goto_a

    .line 940
    :pswitch_11
    const/16 v0, 0x1e

    .line 941
    goto :goto_a

    .line 944
    :pswitch_14
    const/16 v0, 0x22

    .line 945
    goto :goto_a

    .line 949
    :pswitch_17
    const/16 v0, 0x19

    .line 950
    goto :goto_a

    .line 953
    :pswitch_1a
    const/16 v0, 0x2b

    .line 954
    goto :goto_a

    .line 958
    :pswitch_1d
    const/16 v0, 0x21

    .line 959
    goto :goto_a

    .line 962
    :pswitch_20
    const/16 v0, 0x1c

    .line 963
    goto :goto_a

    .line 967
    :pswitch_23
    const/16 v0, 0x1a

    .line 968
    goto :goto_a

    .line 973
    :pswitch_26
    const/16 v0, 0x2c

    .line 974
    goto :goto_a

    .line 977
    :pswitch_29
    const/16 v0, 0x2f

    .line 978
    goto :goto_a

    .line 928
    :pswitch_data_2c
    .packed-switch -0x13
        :pswitch_14
        :pswitch_1d
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_29
        :pswitch_23
        :pswitch_11
        :pswitch_8
        :pswitch_1d
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_17
        :pswitch_23
        :pswitch_e
        :pswitch_20
        :pswitch_b
        :pswitch_1a
    .end packed-switch
.end method

.method public static smlSetBackgroundState(Z)V
    .registers 1
    .parameter "bState"

    .prologue
    .line 1575
    sput-boolean p0, Lcom/syncmldstmo/base/smlAgent;->g_bBackgroundState:Z

    .line 1576
    return-void
.end method

.method public static smlSetStartSyncAfterCP(Z)V
    .registers 1
    .parameter "state"

    .prologue
    .line 1585
    sput-boolean p0, Lcom/syncmldstmo/base/smlAgent;->g_StartSyncAfterCP:Z

    .line 1586
    return-void
.end method

.method public static smlSetSuspending(Z)V
    .registers 1
    .parameter "flag"

    .prologue
    .line 1601
    sput-boolean p0, Lcom/syncmldstmo/base/smlAgent;->gSuspendState:Z

    .line 1603
    return-void
.end method


# virtual methods
.method public InitAgent(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 43
    iput-object p1, p0, Lcom/syncmldstmo/base/smlAgent;->m_context:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    .line 46
    iput v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 47
    sput-boolean v1, Lcom/syncmldstmo/base/smlAgent;->m_inSync:Z

    .line 48
    sput-boolean v1, Lcom/syncmldstmo/base/smlAgent;->m_bStopping:Z

    .line 49
    sput-boolean v1, Lcom/syncmldstmo/base/smlAgent;->g_bBackgroundState:Z

    .line 51
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gRemoteSyncDb:[Z

    .line 52
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gLocalSyncDb:[Z

    .line 54
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;

    invoke-direct {v0, p1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    .line 55
    new-instance v0, Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-direct {v0, p1}, Lcom/syncmldstmo/network/smlHttpAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    .line 56
    return-void
.end method

.method public abortSync(I)I
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x4

    const/16 v2, 0x2c

    const/16 v0, 0x23

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 990
    const/16 v1, 0x2b

    .line 994
    sparse-switch p1, :sswitch_data_d4

    move v1, v0

    .line 1069
    :goto_e
    :sswitch_e
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    if-eqz v0, :cond_61

    .line 1072
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1074
    iput v6, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->SyncResult:I

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "aborted in msgID : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ws.state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", abortcode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v5}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 1079
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 1080
    :goto_5f
    if-nez v0, :cond_b3

    .line 1091
    :cond_61
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlUpdate;->saveMapTable()I

    .line 1092
    invoke-virtual {p0, v5, v1}, Lcom/syncmldstmo/base/smlAgent;->destroy(ZI)V

    .line 1093
    const-string v0, "SyncMode is false"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1095
    return v5

    .line 997
    :sswitch_6f
    const/16 v0, 0x27

    move v1, v0

    .line 998
    goto :goto_e

    .line 1001
    :sswitch_73
    const/16 v0, 0x28

    move v1, v0

    .line 1002
    goto :goto_e

    .line 1005
    :sswitch_77
    const/16 v0, 0xe

    move v1, v0

    .line 1006
    goto :goto_e

    .line 1009
    :sswitch_7b
    const/16 v0, 0x26

    move v1, v0

    .line 1010
    goto :goto_e

    .line 1013
    :sswitch_7f
    const/16 v0, 0x25

    move v1, v0

    .line 1014
    goto :goto_e

    .line 1017
    :sswitch_83
    const/16 v0, 0x24

    move v1, v0

    .line 1018
    goto :goto_e

    .line 1021
    :sswitch_87
    const/16 v0, 0x29

    move v1, v0

    .line 1022
    goto :goto_e

    .line 1025
    :sswitch_8b
    const/16 v0, 0x2a

    move v1, v0

    .line 1026
    goto :goto_e

    :sswitch_8f
    move v1, v0

    .line 1030
    goto/16 :goto_e

    :sswitch_92
    move v1, v2

    .line 1037
    goto/16 :goto_e

    :sswitch_95
    move v1, v2

    .line 1041
    goto/16 :goto_e

    .line 1044
    :sswitch_98
    const/16 v0, 0x2d

    move v1, v0

    .line 1045
    goto/16 :goto_e

    .line 1048
    :sswitch_9d
    const/16 v0, 0x2e

    move v1, v0

    .line 1049
    goto/16 :goto_e

    .line 1052
    :sswitch_a2
    const/16 v0, 0x1f

    move v1, v0

    .line 1053
    goto/16 :goto_e

    .line 1056
    :sswitch_a7
    const/16 v0, 0xa

    move v1, v0

    .line 1057
    goto/16 :goto_e

    .line 1061
    :sswitch_ac
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlAgent;->smlSetAuthFailEvent()I

    move-result v0

    move v1, v0

    .line 1062
    goto/16 :goto_e

    .line 1082
    :cond_b3
    const/16 v2, 0xfb

    if-ne p1, v2, :cond_cb

    .line 1083
    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/syncmldstmo/base/smlPim;->smlApplySyncResult(Ljava/lang/Object;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILjava/lang/String;)V

    .line 1087
    :goto_c0
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_5f

    .line 1085
    :cond_cb
    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v0, v6, v3}, Lcom/syncmldstmo/base/smlPim;->smlApplySyncResult(Ljava/lang/Object;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILjava/lang/String;)V

    goto :goto_c0

    .line 994
    :sswitch_data_d4
    .sparse-switch
        0xc0 -> :sswitch_8f
        0xed -> :sswitch_a7
        0xee -> :sswitch_a2
        0xef -> :sswitch_9d
        0xf0 -> :sswitch_95
        0xf1 -> :sswitch_98
        0xf2 -> :sswitch_92
        0xf4 -> :sswitch_e
        0xf5 -> :sswitch_ac
        0xf7 -> :sswitch_ac
        0xf8 -> :sswitch_8b
        0xf9 -> :sswitch_6f
        0xfa -> :sswitch_87
        0xfb -> :sswitch_83
        0xfc -> :sswitch_7f
        0xfd -> :sswitch_7b
        0xfe -> :sswitch_77
        0xff -> :sswitch_73
    .end sparse-switch
.end method

.method destroy(ZI)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4

    .line 840
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    if-eqz v0, :cond_60

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/syncmldstmo/base/smlAgent;->_endSyncTime:J

    .line 844
    const-string v0, " ===================================="

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " - TotalSyncTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/syncmldstmo/base/smlAgent;->_endSyncTime:J

    iget-wide v3, p0, Lcom/syncmldstmo/base/smlAgent;->_beginSyncTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millsecond"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 846
    const-string v0, " ===================================="

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nIsSyncProfileIndex:I

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlUser;->smlFinalize(Ljava/lang/Object;I)V

    .line 849
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlWorkspace;->smlDSFreeWorkSpace()V

    .line 850
    iput-object v6, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    .line 852
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 854
    const-string v0, "[suspend&resume] suspend end"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 855
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->smlSetSuspending(Z)V

    .line 857
    :cond_5b
    const-string v0, "completed"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 860
    :cond_60
    if-eqz p1, :cond_75

    .line 862
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 872
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    if-eqz v0, :cond_74

    .line 874
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlWorkspace;->smlDSFreeWorkSpace()V

    .line 875
    iput-object v6, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    .line 877
    :cond_74
    return-void

    .line 866
    :cond_75
    const/16 v0, 0xa

    if-eq p2, v0, :cond_69

    .line 868
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v0, p2}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_69
.end method

.method public doSync()I
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/high16 v11, 0x4

    .line 1271
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    if-ne v0, v4, :cond_25

    .line 1273
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v1, 0x3

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 1345
    :goto_11
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1d1

    .line 1347
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    packed-switch v0, :pswitch_data_226

    .line 1381
    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    .line 1434
    :cond_24
    :goto_24
    return v6

    .line 1277
    :cond_25
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplReceiveData(Lcom/syncmldstmo/base/smlByteBuffer;)I

    move-result v0

    .line 1278
    if-gez v0, :cond_37

    .line 1280
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto :goto_24

    .line 1283
    :cond_37
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->_p:Lcom/syncmldstmo/base/smlParser;

    if-nez v0, :cond_4b

    .line 1285
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    new-instance v1, Lcom/syncmldstmo/base/smlParser;

    new-instance v3, Lcom/syncmldstmo/base/smlHandleCmd;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlHandleCmd;-><init>()V

    invoke-direct {v1, v3}, Lcom/syncmldstmo/base/smlParser;-><init>(Lcom/syncmldstmo/base/smlHandleCmd_H;)V

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->_p:Lcom/syncmldstmo/base/smlParser;

    .line 1288
    :cond_4b
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    if-nez v0, :cond_101

    .line 1290
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->r_init()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 1292
    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto :goto_24

    .line 1295
    :cond_5c
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    if-eq v0, v2, :cond_73

    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    const-wide/16 v7, 0x2

    cmp-long v0, v0, v7

    if-ltz v0, :cond_73

    .line 1297
    const/16 v0, -0x64

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto :goto_24

    .line 1299
    :cond_73
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_91

    .line 1300
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_91

    .line 1301
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_91

    .line 1302
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0x13

    if-ne v0, v1, :cond_97

    .line 1304
    :cond_91
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto :goto_24

    .line 1306
    :cond_97
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    if-eq v0, v5, :cond_ea

    .line 1307
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_ea

    .line 1308
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_ea

    .line 1309
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_ea

    .line 1310
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0x12

    if-eq v0, v1, :cond_ea

    .line 1311
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0xd

    if-eq v0, v1, :cond_ea

    .line 1312
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0x11

    if-eq v0, v1, :cond_ea

    .line 1313
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0xe

    if-eq v0, v1, :cond_ea

    .line 1314
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_ea

    .line 1315
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0x10

    if-eq v0, v1, :cond_ea

    .line 1316
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    const/16 v1, -0xf

    if-ne v0, v1, :cond_f2

    .line 1318
    :cond_ea
    const/16 v0, -0xc

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto/16 :goto_24

    .line 1320
    :cond_f2
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdAlertState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12f

    .line 1322
    const/16 v0, -0xb

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto/16 :goto_24

    .line 1327
    :cond_101
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->r_clientMap()I

    move-result v0

    if-eqz v0, :cond_10d

    .line 1329
    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto/16 :goto_24

    .line 1332
    :cond_10d
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdSyncState:I

    if-eq v0, v2, :cond_11a

    .line 1334
    const/4 v0, -0x8

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto/16 :goto_24

    .line 1336
    :cond_11a
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_DevDatastoreCheck:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_127

    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_DevDatastoreCheck:I

    if-ne v0, v5, :cond_12f

    .line 1338
    :cond_127
    const/16 v0, -0x9

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto/16 :goto_24

    .line 1342
    :cond_12f
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    goto/16 :goto_11

    .line 1350
    :pswitch_13a
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->s_clientMap()I

    .line 1383
    :goto_13d
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->setConnectInfo()V

    .line 1385
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    if-eq v0, v4, :cond_150

    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    if-ne v0, v2, :cond_1ad

    .line 1388
    :cond_150
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 1390
    iput v6, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1391
    iget v6, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_24

    .line 1353
    :pswitch_15c
    const-string v0, "DS_STATE_INIT"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1354
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->s_init()I

    goto :goto_13d

    .line 1357
    :pswitch_165
    const-string v0, "DS_STATE_CLIENT_MODIFICATION"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1358
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->s_clientModification()I

    goto :goto_13d

    .line 1361
    :pswitch_16e
    const-string v0, "DS_STATE_CLIENT_MAP ws.IsNeedDeleteAll is false"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-boolean v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_IsNeedDeleteAll:Z

    if-eqz v0, :cond_185

    .line 1365
    const-string v0, "DS_STATE_CLIENT_MAP ws.IsNeedDeleteAll is true"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 1368
    const/4 v6, -0x7

    goto/16 :goto_24

    .line 1370
    :cond_185
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->s_clientMap()I

    goto :goto_13d

    .line 1373
    :pswitch_189
    const-string v0, "DS_STATE_CLIENT_MAP_FINISH"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->s_clientMap()I

    .line 1375
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v1, 0x6

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto :goto_13d

    .line 1378
    :pswitch_197
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v1, 0x6

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto :goto_13d

    .line 1393
    :cond_19d
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v5, v5, Lcom/syncmldstmo/base/smlWorkspace;->m_appId:I

    invoke-virtual/range {v0 .. v6}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    .line 1397
    :cond_1ad
    const-string v0, "smltplSendData"

    invoke-static {v11, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplSendData([BI)I

    move-result v0

    .line 1400
    if-gez v0, :cond_24

    .line 1402
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/base/smlAgent;->doSyncReturnFail(I)I

    move-result v6

    goto/16 :goto_24

    .line 1407
    :cond_1d1
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1411
    const-string v1, "DS_STATE_FINISH sync result is SML_SYNC_TRUE"

    invoke-static {v11, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1412
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v6}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 1414
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 1415
    if-nez v1, :cond_224

    .line 1417
    const-string v3, "dbinfo is null!!"

    invoke-static {v11, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v3, v2

    .line 1421
    :goto_1f5
    if-nez v1, :cond_1fc

    .line 1429
    iput v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->SyncResult:I

    move v6, v2

    .line 1431
    goto/16 :goto_24

    .line 1423
    :cond_1fc
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "call smlApplySyncResult() DB_ID : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1424
    iget-object v5, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v5, v5, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    iget-object v6, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->nextAnchor:Ljava/lang/String;

    invoke-static {v5, v1, v4, v6}, Lcom/syncmldstmo/base/smlPim;->smlApplySyncResult(Ljava/lang/Object;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILjava/lang/String;)V

    .line 1426
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_1f5

    :cond_224
    move v3, v4

    goto :goto_1f5

    .line 1347
    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_15c
        :pswitch_165
        :pswitch_13a
        :pswitch_16e
        :pswitch_189
        :pswitch_197
    .end packed-switch
.end method

.method doSyncReturnFail(I)I
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x4

    .line 1200
    sparse-switch p1, :sswitch_data_14e

    .line 1263
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    :goto_7
    return v0

    .line 1203
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_CREATE_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1204
    const/4 v0, -0x6

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1205
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_7

    .line 1208
    :sswitch_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_PARSING_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1209
    const/4 v0, -0x5

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1210
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_7

    .line 1213
    :sswitch_40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_RECEIVE_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1214
    const/4 v0, -0x4

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1215
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_7

    .line 1218
    :sswitch_5c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_SEND_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1219
    const/4 v0, -0x3

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1220
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_7

    .line 1223
    :sswitch_78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_CMDSYNC_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1224
    const/4 v0, -0x8

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1225
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_7

    .line 1228
    :sswitch_95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_CMDALERT_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1229
    const/16 v0, -0xb

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1230
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_7

    .line 1234
    :sswitch_b3
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_DevDatastoreCheck:I

    packed-switch v0, :pswitch_data_17c

    .line 1246
    :goto_ba
    :pswitch_ba
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_7

    .line 1237
    :pswitch_be
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_DB_DEVICE_FULL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1238
    const/16 v0, -0x9

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_ba

    .line 1242
    :pswitch_d9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_DB_NOT_DATA m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1243
    const/16 v0, -0xa

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_ba

    .line 1249
    :sswitch_f4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_AUTH_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1250
    const/4 v0, -0x2

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1251
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_7

    .line 1254
    :sswitch_111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_SERVER_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1255
    const/16 v0, -0xc

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1256
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_7

    .line 1259
    :sswitch_12f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SML_AGENT_RET_FAIL m_ws.m_state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1260
    const/16 v0, -0x64

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1261
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_7

    .line 1200
    nop

    :sswitch_data_14e
    .sparse-switch
        -0x64 -> :sswitch_12f
        -0xc -> :sswitch_111
        -0xb -> :sswitch_95
        -0xa -> :sswitch_b3
        -0x9 -> :sswitch_b3
        -0x8 -> :sswitch_78
        -0x6 -> :sswitch_8
        -0x5 -> :sswitch_24
        -0x4 -> :sswitch_40
        -0x3 -> :sswitch_5c
        -0x2 -> :sswitch_f4
    .end sparse-switch

    .line 1234
    :pswitch_data_17c
    .packed-switch -0x5
        :pswitch_d9
        :pswitch_ba
        :pswitch_ba
        :pswitch_be
    .end packed-switch
.end method

.method public exitSync()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1439
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlUpdate;->mapTableReinitAlloc()I

    .line 1440
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlUpdate;->saveMapTable()I

    .line 1441
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/syncmldstmo/base/smlAgent;->destroy(ZI)V

    .line 1443
    return v1
.end method

.method includeResults()V
    .registers 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    .line 96
    .local v0, e:Lcom/syncmldstmo/base/smlEncoder;
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    if-eqz v1, :cond_16

    .line 98
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddResults(Lcom/syncmldstmo/base/sml$SML_RESULTS;)I

    .line 99
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    .line 101
    :cond_16
    return-void
.end method

.method includeStatus()Z
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 65
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v3, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    .line 67
    .local v0, e:Lcom/syncmldstmo/base/smlEncoder;
    const/4 v1, 0x0

    .line 69
    .local v1, ret:Z
    const/high16 v3, 0x4

    const-string v4, "called"

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v3, v5, v6}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syncmldstmo/base/sml$SML_STATUS;

    .line 72
    .local v2, status:Lcom/syncmldstmo/base/sml$SML_STATUS;
    :goto_18
    if-nez v2, :cond_1b

    .line 89
    return v1

    .line 85
    :cond_1b
    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddStatus(Lcom/syncmldstmo/base/sml$SML_STATUS;)I

    .line 86
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v3, v5, v6}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #status:Lcom/syncmldstmo/base/sml$SML_STATUS;
    check-cast v2, Lcom/syncmldstmo/base/sml$SML_STATUS;

    .restart local v2       #status:Lcom/syncmldstmo/base/sml$SML_STATUS;
    goto :goto_18
.end method

.method public initSync(Ljava/lang/Object;)I
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/high16 v7, 0x4

    const/4 v6, 0x0

    .line 1111
    move-object v0, p1

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 1113
    invoke-static {}, Lcom/syncmldstmo/base/smlDebug;->timecheckReset()V

    .line 1115
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/syncmldstmo/base/smlAgent;->_endSyncTime:J

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/syncmldstmo/base/smlAgent;->_beginSyncTime:J

    .line 1118
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetObexServerMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1120
    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "obex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1122
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlAgent;->sync_initialize(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1124
    const-string v0, "fail by initFailException 1"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1125
    iput v5, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1127
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1195
    :goto_39
    return v0

    .line 1137
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlAgent;->sync_initialize(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1139
    const-string v0, "fail by initFailException 2"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1140
    iput v5, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1142
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_39

    .line 1146
    :cond_4a
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const-wide/16 v3, 0x1

    iput-wide v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    .line 1147
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 1148
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v8, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_appId:I

    .line 1149
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput-boolean v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_IsNeedDeleteAll:Z

    .line 1150
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    .line 1152
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->gUpdateAdapter:Lcom/syncmldstmo/base/smlUpdate;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlUpdate;->initMapDB()I

    .line 1154
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->s_init()I

    move-result v0

    .line 1155
    if-gez v0, :cond_75

    .line 1157
    const-string v0, "fail by initFailException 3"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1158
    iput v5, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1160
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_39

    .line 1163
    :cond_75
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->setConnectInfo()V

    .line 1165
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1167
    const-string v0, "[initSync][suspend&resume] suspend end"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1168
    invoke-static {v6}, Lcom/syncmldstmo/base/smlAgent;->smlSetSuspending(Z)V

    .line 1172
    :cond_8c
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9d

    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    if-ne v0, v8, :cond_b7

    .line 1174
    :cond_9d
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1176
    iput v6, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1178
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto :goto_39

    .line 1181
    :cond_a8
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    const/4 v4, 0x6

    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v5, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_appId:I

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    .line 1184
    :cond_b7
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplSendData([BI)I

    move-result v0

    .line 1185
    if-gez v0, :cond_db

    .line 1187
    const-string v0, "fail by tplSendException 4"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1188
    const/4 v0, -0x3

    iput v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1190
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_39

    .line 1193
    :cond_db
    iput v6, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    .line 1195
    iget v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_lastRet:I

    goto/16 :goto_39
.end method

.method public isLocalSync()Z
    .registers 2

    .prologue
    .line 1505
    const/4 v0, 0x0

    return v0
.end method

.method r_clientMap()I
    .registers 6

    .prologue
    const/high16 v4, 0x4

    .line 811
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->_p:Lcom/syncmldstmo/base/smlParser;

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start parsing syncml non-init package. msgid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ws.state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v2, 0x1

    iput v2, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    .line 817
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlParser;->_smlparParseInit(Ljava/lang/Object;)V

    .line 818
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlParser;->_smlparParse(Lcom/syncmldstmo/base/smlByteBuffer;)I

    move-result v0

    .line 820
    if-nez v0, :cond_40

    .line 822
    const/4 v0, 0x0

    .line 827
    :goto_3f
    return v0

    .line 826
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed in smlpar_parse ret : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos : 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 827
    const/16 v0, -0x64

    goto :goto_3f
.end method

.method public r_init()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x4

    .line 323
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 325
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->_p:Lcom/syncmldstmo/base/smlParser;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start parsing syncml init package. msgid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ws.state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v7, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    .line 332
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {v0, v3}, Lcom/syncmldstmo/base/smlParser;->_smlparParseInit(Ljava/lang/Object;)V

    .line 333
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0, v3}, Lcom/syncmldstmo/base/smlParser;->_smlparParse(Lcom/syncmldstmo/base/smlByteBuffer;)I

    move-result v0

    .line 335
    if-nez v0, :cond_ad

    .line 337
    invoke-virtual {v2, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 338
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 339
    :goto_50
    if-nez v0, :cond_81

    .line 347
    iget-wide v2, v2, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_5f

    .line 349
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v2, -0x1

    iput v2, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdAlertState:I

    .line 351
    :cond_5f
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    if-ne v0, v7, :cond_96

    .line 353
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v7, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 360
    :goto_69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "authState is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v0, v1

    .line 366
    :goto_80
    return v0

    .line 341
    :cond_81
    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    if-nez v0, :cond_8b

    .line 343
    invoke-virtual {v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemovePreviousObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 345
    :cond_8b
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_50

    .line 357
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "authState Fail ... Reason is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_69

    .line 365
    :cond_ad
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed in smlpar_parse res : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 366
    const/16 v0, -0x64

    goto :goto_80
.end method

.method s_clientMap()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x6a

    const/high16 v6, 0x4

    const/4 v2, 0x0

    .line 713
    const/4 v0, 0x0

    .line 714
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    new-instance v3, Lcom/syncmldstmo/base/smlEncoder;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlEncoder;-><init>()V

    iput-object v3, v1, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Start to create map package. msgid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", ws.state : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v3, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencInit(Lcom/syncmldstmo/base/smlByteBuffer;)V

    .line 724
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v1

    if-nez v1, :cond_c9

    .line 726
    const-string v1, "-//SYNCML//DTD SyncML 1.1//EN"

    const-string v4, "-//SYNCML//DTD SyncML 1.1//EN"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v7, v1, v4}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_syncml(IILjava/lang/String;I)I

    .line 734
    :goto_4d
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdSyncHeader(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 735
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    invoke-virtual {v3, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSyncHeader(Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)I

    .line 737
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncbody()I

    .line 739
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-boolean v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_hasMultiMessage:Z

    if-eqz v1, :cond_6b

    .line 741
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v0

    .line 742
    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_alert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I

    .line 746
    :cond_6b
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->includeStatus()Z

    move-result v0

    .line 747
    if-nez v0, :cond_112

    .line 750
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 752
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 753
    :goto_82
    if-nez v0, :cond_d6

    .line 774
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_102

    const/4 v0, 0x1

    move v1, v0

    .line 776
    :goto_8d
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 778
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 780
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v8, v9}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_ALERT;

    .line 781
    :goto_a4
    if-nez v0, :cond_104

    .line 796
    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 798
    const-string v0, "[suspend&resume] create suspend alert"

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdAlertSuspendResume(Lcom/syncmldstmo/base/smlWorkspace;I)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v0

    .line 800
    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddAlert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I

    .line 803
    :cond_c2
    invoke-virtual {v3, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_syncbody(Z)I

    .line 804
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndSyncml()I

    .line 806
    return v2

    .line 730
    :cond_c9
    const-string v1, "-//SYNCML//DTD SyncML 1.2//EN"

    const-string v4, "-//SYNCML//DTD SyncML 1.2//EN"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v7, v1, v4}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_syncml(IILjava/lang/String;I)I

    goto/16 :goto_4d

    .line 755
    :cond_d6
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdMap(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_MAP;

    move-result-object v1

    .line 756
    if-eqz v1, :cond_f7

    .line 758
    invoke-virtual {v3, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_map(Lcom/syncmldstmo/base/sml$SML_MAP;)I

    .line 760
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportCachedMap()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 762
    iget v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_ef

    .line 764
    invoke-static {v0}, Lcom/syncmldstmo/base/smlPim;->smlCacheMapItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)V

    .line 767
    :cond_ef
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdEncodeMapItem(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Z

    .line 768
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_map()I

    .line 771
    :cond_f7
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_82

    :cond_102
    move v1, v2

    .line 774
    goto :goto_8d

    .line 783
    :cond_104
    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_alert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I

    .line 786
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v8, v9}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_ALERT;

    goto :goto_a4

    .line 792
    :cond_112
    const-string v0, "too Many Status Command. so.. try multimessage.."

    invoke-static {v6, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v2

    .line 793
    goto :goto_a6
.end method

.method s_clientModification()I
    .registers 15

    .prologue
    .line 373
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    new-instance v10, Lcom/syncmldstmo/base/smlEncoder;

    invoke-direct {v10}, Lcom/syncmldstmo/base/smlEncoder;-><init>()V

    iput-object v10, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    .line 381
    const/4 v4, 0x0

    .line 382
    const/4 v9, 0x1

    .line 383
    const/4 v8, 0x1

    .line 385
    const/4 v6, 0x1

    .line 386
    const/4 v7, 0x1

    .line 388
    new-instance v3, Lcom/syncmldstmo/base/smlDebug$RefInt;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlDebug$RefInt;-><init>()V

    .line 389
    new-instance v5, Lcom/syncmldstmo/base/smlDebug$RefInt;

    invoke-direct {v5}, Lcom/syncmldstmo/base/smlDebug$RefInt;-><init>()V

    .line 391
    const/high16 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start to create sync package. msgid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v11, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ws.state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v10, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencInit(Lcom/syncmldstmo/base/smlByteBuffer;)V

    .line 394
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v0

    if-nez v0, :cond_e9

    .line 396
    const/4 v0, 0x0

    const/16 v1, 0x6a

    const-string v2, "-//SYNCML//DTD SyncML 1.1//EN"

    const-string v11, "-//SYNCML//DTD SyncML 1.1//EN"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v0, v1, v2, v11}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncml(IILjava/lang/String;I)I

    .line 404
    :goto_59
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdSyncHeader(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 406
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    invoke-virtual {v10, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddSyncHeader(Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)I

    .line 408
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncbody()I

    .line 410
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->includeStatus()Z

    .line 411
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->includeResults()V

    .line 413
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 415
    const/high16 v0, 0x4

    const-string v1, "[suspend&resume] create suspend alert"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdAlertSuspendResume(Lcom/syncmldstmo/base/smlWorkspace;I)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v0

    .line 417
    invoke-virtual {v10, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddAlert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I

    .line 421
    :cond_8c
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportCachedMap()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 423
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCachedMapCount()I

    move-result v0

    if-lez v0, :cond_ac

    .line 426
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 428
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 429
    :goto_aa
    if-nez v0, :cond_f9

    .line 450
    :cond_ac
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 452
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object v1, v0

    .line 453
    :goto_bf
    if-nez v1, :cond_11a

    .line 665
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 667
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move v2, v8

    move-object v3, v0

    move v0, v9

    .line 668
    :goto_d6
    if-nez v3, :cond_2f2

    .line 693
    :cond_d8
    :goto_d8
    invoke-virtual {v10, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndSyncbody(Z)I

    .line 694
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->_smlencEndSyncml()I

    .line 696
    if-eqz v0, :cond_e7

    .line 698
    if-eqz v2, :cond_32d

    .line 700
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v1, 0x3

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 708
    :cond_e7
    :goto_e7
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_e9
    const/4 v0, 0x0

    const/16 v1, 0x6a

    const-string v2, "-//SYNCML//DTD SyncML 1.2//EN"

    const-string v11, "-//SYNCML//DTD SyncML 1.2//EN"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v0, v1, v2, v11}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncml(IILjava/lang/String;I)I

    goto/16 :goto_59

    .line 432
    :cond_f9
    invoke-static {v0}, Lcom/syncmldstmo/base/smlPim;->smlCreateCachedMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)V

    .line 435
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdMap(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_MAP;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_10f

    .line 438
    invoke-virtual {v10, v1}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_map(Lcom/syncmldstmo/base/sml$SML_MAP;)I

    .line 440
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdEncodeMapItem(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Z

    .line 441
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_map()I

    .line 443
    :cond_10f
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_aa

    .line 455
    :cond_11a
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 457
    const/high16 v0, 0x1

    const-string v1, "[suspend&resume] Suspending.. break"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_c1

    .line 461
    :cond_12e
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 464
    iget v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    if-eqz v0, :cond_2ed

    .line 466
    iget-boolean v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    if-eqz v0, :cond_165

    iget-boolean v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isSent:Z

    if-nez v0, :cond_165

    .line 468
    const/4 v0, 0x0

    .line 471
    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdSync(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_SYNC;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_165

    .line 474
    invoke-virtual {v10, v2}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_sync(Lcom/syncmldstmo/base/sml$SML_SYNC;)I

    move v13, v6

    move v6, v4

    move v4, v13

    .line 475
    :goto_14f
    if-eqz v0, :cond_172

    move v13, v4

    move v4, v6

    move v6, v13

    .line 643
    :cond_154
    :goto_154
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_sync()I

    .line 647
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    if-nez v1, :cond_163

    .line 649
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 652
    :cond_163
    if-nez v0, :cond_c1

    .line 662
    :cond_165
    :goto_165
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object v1, v0

    goto/16 :goto_bf

    .line 479
    :cond_172
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v2

    if-eqz v2, :cond_17c

    move v13, v4

    move v4, v6

    move v6, v13

    .line 480
    goto :goto_154

    .line 482
    :cond_17c
    if-nez v0, :cond_33b

    .line 484
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    iget-object v11, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v2

    .line 486
    iget-object v11, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v11, v1, v2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdDelete(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;I)Lcom/syncmldstmo/base/sml$SML_DELETE;

    move-result-object v11

    .line 487
    if-eqz v11, :cond_33b

    .line 491
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_mark()Z

    .line 493
    iget v12, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 495
    invoke-virtual {v10, v11}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_delete(Lcom/syncmldstmo/base/sml$SML_DELETE;)I

    .line 498
    iget v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    iput v0, v3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 499
    iput v6, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 500
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v4, 0x4

    invoke-static/range {v0 .. v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdEncodeItemList(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILcom/syncmldstmo/base/smlDebug$RefInt;ILcom/syncmldstmo/base/smlDebug$RefInt;)Z

    move-result v0

    .line 501
    iget v2, v3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    iput v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 502
    iget v4, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 504
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_delete()I

    .line 506
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    if-ne v12, v2, :cond_1b3

    .line 508
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_reset()Z

    .line 511
    :cond_1b3
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    if-nez v2, :cond_27b

    .line 513
    const/4 v2, 0x1

    move v6, v2

    .line 524
    :goto_1b9
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v2

    if-nez v2, :cond_154

    .line 527
    if-nez v0, :cond_213

    if-eqz v6, :cond_213

    .line 529
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    iget-object v11, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v2

    .line 531
    iget-object v11, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v11, v1, v2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdReplace(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;I)Lcom/syncmldstmo/base/sml$SML_REPLACE;

    move-result-object v11

    .line 532
    if-eqz v11, :cond_213

    .line 536
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_mark()Z

    .line 537
    iget v7, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 538
    invoke-virtual {v10, v11}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_replace(Lcom/syncmldstmo/base/sml$SML_REPLACE;)I

    .line 541
    iget v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    iput v0, v3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 542
    iput v4, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 543
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v4, 0x2

    invoke-static/range {v0 .. v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdEncodeItemList(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILcom/syncmldstmo/base/smlDebug$RefInt;ILcom/syncmldstmo/base/smlDebug$RefInt;)Z

    move-result v0

    .line 544
    iget v2, v3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    iput v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 545
    iget v4, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 547
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_replace()I

    .line 549
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v2

    if-eqz v2, :cond_27f

    .line 551
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    if-ne v7, v2, :cond_20d

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    iget-boolean v2, v2, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    if-nez v2, :cond_20d

    .line 553
    const/high16 v2, 0x4

    const-string v7, "smlenc_reset at updateListSize == dbInfo.addListCount"

    invoke-static {v2, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 554
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_reset()Z

    .line 566
    :cond_20d
    :goto_20d
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    if-nez v2, :cond_28e

    .line 568
    const/4 v2, 0x1

    move v7, v2

    .line 579
    :cond_213
    :goto_213
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v2

    if-nez v2, :cond_154

    .line 582
    if-nez v0, :cond_24c

    if-eqz v6, :cond_24c

    if-eqz v7, :cond_24c

    .line 584
    iget-boolean v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    if-eqz v2, :cond_291

    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    if-eqz v2, :cond_291

    .line 586
    const/high16 v2, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isServerFull : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", addListCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 587
    const/4 v2, 0x0

    iput v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 628
    :cond_24c
    :goto_24c
    const/high16 v2, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "itemCountofMsg : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v2

    if-nez v2, :cond_154

    .line 633
    const/16 v2, 0xa

    if-ge v4, v2, :cond_154

    .line 636
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    if-nez v2, :cond_336

    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    if-nez v2, :cond_336

    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    if-nez v2, :cond_336

    .line 638
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isSent:Z

    goto/16 :goto_154

    .line 517
    :cond_27b
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1b9

    .line 559
    :cond_27f
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    if-ne v7, v2, :cond_20d

    .line 561
    const/high16 v2, 0x4

    const-string v7, "smlenc_reset at updateListSize == dbInfo.addListCount"

    invoke-static {v2, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 562
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_reset()Z

    goto :goto_20d

    .line 572
    :cond_28e
    const/4 v2, 0x0

    move v7, v2

    goto :goto_213

    .line 591
    :cond_291
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    iget-object v11, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlPim;->smlGetDataObjType(ILjava/lang/String;)I

    move-result v2

    .line 593
    iget-object v11, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v11, v1, v2}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdAdd(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;I)Lcom/syncmldstmo/base/sml$SML_ADD;

    move-result-object v11

    .line 594
    if-eqz v11, :cond_24c

    .line 597
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_mark()Z

    .line 598
    iget v12, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 600
    invoke-virtual {v10, v11}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_start_add(Lcom/syncmldstmo/base/sml$SML_ADD;)I

    .line 601
    iget v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    iput v0, v3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 602
    iput v4, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 603
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdEncodeItemList(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILcom/syncmldstmo/base/smlDebug$RefInt;ILcom/syncmldstmo/base/smlDebug$RefInt;)Z

    move-result v0

    .line 604
    iget v2, v3, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    iput v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 605
    iget v4, v5, Lcom/syncmldstmo/base/smlDebug$RefInt;->val:I

    .line 607
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_add()I

    .line 608
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v2

    if-eqz v2, :cond_2dd

    .line 610
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    if-ne v12, v2, :cond_24c

    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    iget-boolean v2, v2, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;->bSending:Z

    if-nez v2, :cond_24c

    .line 612
    const/high16 v2, 0x4

    const-string v11, "smlenc_reset at updateListSize == dbInfo.addListCount"

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 613
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_reset()Z

    goto/16 :goto_24c

    .line 618
    :cond_2dd
    iget v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    if-ne v12, v2, :cond_24c

    .line 620
    const/high16 v2, 0x4

    const-string v11, "smlenc_reset at updateListSize == dbInfo.addListCount"

    invoke-static {v2, v11}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 621
    invoke-virtual {v10}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_reset()Z

    goto/16 :goto_24c

    .line 659
    :cond_2ed
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isSent:Z

    goto/16 :goto_165

    .line 670
    :cond_2f2
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v1

    if-eqz v1, :cond_307

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v1

    if-eqz v1, :cond_307

    .line 672
    const/high16 v1, 0x1

    const-string v3, "[suspend&resume] Suspending.. break"

    invoke-static {v1, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_d8

    .line 677
    :cond_307
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    if-nez v1, :cond_d8

    .line 680
    iget-boolean v1, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isSent:Z

    if-nez v1, :cond_334

    .line 682
    const/4 v0, 0x0

    move v1, v0

    .line 685
    :goto_313
    iget v0, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_31d

    iget v0, v3, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_31f

    .line 687
    :cond_31d
    const/4 v0, 0x0

    move v2, v0

    .line 690
    :cond_31f
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    move-object v3, v0

    move v0, v1

    goto/16 :goto_d6

    .line 704
    :cond_32d
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    const/4 v1, 0x5

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    goto/16 :goto_e7

    :cond_334
    move v1, v0

    goto :goto_313

    :cond_336
    move v13, v6

    move v6, v4

    move v4, v13

    goto/16 :goto_14f

    :cond_33b
    move v13, v4

    move v4, v6

    move v6, v13

    goto/16 :goto_1b9
.end method

.method s_init()I
    .registers 10

    .prologue
    const/16 v8, 0x6a

    const/high16 v7, 0x4

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    new-instance v3, Lcom/syncmldstmo/base/smlEncoder;

    invoke-direct {v3}, Lcom/syncmldstmo/base/smlEncoder;-><init>()V

    iput-object v3, v0, Lcom/syncmldstmo/base/smlWorkspace;->_e:Lcom/syncmldstmo/base/smlEncoder;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Start to create init package. msgid : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", ws.state : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    .line 143
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlClearLinkedList()V

    .line 144
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlClearLinkedList()V

    .line 147
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-static {v0, v4}, Lcom/syncmldstmo/base/smlPim;->smlGetSyncDBInfo(Ljava/lang/Object;Lcom/syncmldstmo/base/smlLinkedList;)I

    move-result v0

    if-eq v0, v6, :cond_54

    move v0, v1

    .line 234
    :goto_53
    return v0

    .line 150
    :cond_54
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 151
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 153
    :goto_65
    if-nez v0, :cond_ef

    .line 170
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencInit(Lcom/syncmldstmo/base/smlByteBuffer;)V

    .line 171
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v0

    if-nez v0, :cond_114

    .line 173
    const-string v0, "-//SYNCML//DTD SyncML 1.1//EN"

    const-string v1, "-//SYNCML//DTD SyncML 1.1//EN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v2, v8, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncml(IILjava/lang/String;I)I

    .line 181
    :goto_7f
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdSyncHeader(Lcom/syncmldstmo/base/smlWorkspace;)V

    .line 182
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_add_syncheader(Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)I

    .line 183
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncbody()I

    .line 184
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->includeStatus()Z

    .line 187
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDeviceInfo;->smlSendDeviceInfo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 190
    new-instance v0, Lcom/syncmldstmo/base/smlDeviceInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDeviceInfo;-><init>()V

    .line 192
    const-string v1, "making DEVINF to send.."

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetDSVersion()I

    move-result v1

    if-nez v1, :cond_121

    .line 196
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlDeviceInfo;->smlGetSyncMLDeviceInfo_V11(Ljava/lang/Object;)V

    .line 203
    :goto_b2
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdPut(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/smlDeviceInfo;)Lcom/syncmldstmo/base/sml$SML_PUT;

    move-result-object v0

    .line 204
    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddPut(Lcom/syncmldstmo/base/sml$SML_PUT;)I

    .line 209
    :cond_bb
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDeviceInfo;->smlRequestDeviceInfo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 212
    const-string v0, "smlRequestDeviceInfo() is true"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdGet(Lcom/syncmldstmo/base/smlWorkspace;)Lcom/syncmldstmo/base/sml$SML_GET;

    move-result-object v0

    .line 214
    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddGet(Lcom/syncmldstmo/base/sml$SML_GET;)I

    .line 219
    :cond_d3
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 220
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 221
    :goto_e4
    if-nez v0, :cond_129

    .line 231
    invoke-virtual {v3, v6}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_syncbody(Z)I

    .line 232
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlEncoder;->smlenc_end_syncml()I

    move v0, v2

    .line 234
    goto/16 :goto_53

    .line 155
    :cond_ef
    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isDeviceFull:Z

    .line 156
    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isServerFull:Z

    .line 157
    iput v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->serverFreeID:I

    .line 158
    iput v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->serverFreeMem:I

    .line 159
    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    .line 160
    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->isSent:Z

    .line 162
    iput v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->addListCount:I

    .line 163
    iput v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->replaceListCount:I

    .line 164
    iput v2, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->deleteListCount:I

    .line 166
    new-instance v4, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v4}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 167
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto/16 :goto_65

    .line 177
    :cond_114
    const-string v0, "-//SYNCML//DTD SyncML 1.2//EN"

    const-string v1, "-//SYNCML//DTD SyncML 1.2//EN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v2, v8, v0, v1}, Lcom/syncmldstmo/base/smlEncoder;->_smlencStartSyncml(IILjava/lang/String;I)I

    goto/16 :goto_7f

    .line 200
    :cond_121
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlDeviceInfo;->smlGetSyncMLDeviceInfo_V12(Ljava/lang/Object;)V

    goto :goto_b2

    .line 223
    :cond_129
    iget-object v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    if-eqz v1, :cond_151

    iget-object v1, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    if-eqz v1, :cond_151

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "build alert command source : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", target : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 226
    :cond_151
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlBuildCmd;->smlBCmdAlert(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)Lcom/syncmldstmo/base/sml$SML_ALERT;

    move-result-object v0

    .line 227
    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/smlEncoder;->_smlencAddAlert(Lcom/syncmldstmo/base/sml$SML_ALERT;)I

    .line 228
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_e4
.end method

.method setConnectInfo()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 107
    :cond_18
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    const/4 v1, 0x2

    iput v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    .line 108
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;->uri:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;->protocol:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->hostname:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;->hostname:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;->path:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->sinfo:Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    iput v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpServerInfo_t;->port:I

    .line 118
    :cond_5b
    :goto_5b
    return-void

    .line 114
    :cond_5c
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    const-string v1, "obex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 116
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    const/4 v1, 0x4

    iput v1, v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;->type:I

    goto :goto_5b
.end method

.method public smlInitLocalSyncDb()V
    .registers 5

    .prologue
    .line 1549
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 1551
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->gLocalSyncDb:[Z

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    aput-boolean v3, v1, v2

    .line 1553
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->gLocalSyncDb:[Z

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    aput-boolean v3, v1, v2

    .line 1559
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->gLocalSyncDb:[Z

    const/4 v2, 0x4

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    aput-boolean v3, v1, v2

    .line 1560
    return-void
.end method

.method public smlInitRemoteSyncDb()V
    .registers 5

    .prologue
    .line 1523
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 1525
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->gRemoteSyncDb:[Z

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    aput-boolean v3, v1, v2

    .line 1527
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->gRemoteSyncDb:[Z

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    aput-boolean v3, v1, v2

    .line 1533
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->gRemoteSyncDb:[Z

    const/4 v2, 0x4

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    aput-boolean v3, v1, v2

    .line 1534
    return-void
.end method

.method public smlMakeSessionID()Ljava/lang/String;
    .registers 9

    .prologue
    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    .local v0, data:Ljava/util/Calendar;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 125
    .local v1, minute:I
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 127
    .local v2, second:I
    const-string v4, "%x%x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, sessionid:Ljava/lang/String;
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sessionid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 130
    return-object v3
.end method

.method sync_initialize(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 881
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    if-eqz v0, :cond_b

    .line 882
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlWorkspace;->smlDSFreeWorkSpace()V

    .line 884
    :cond_b
    new-instance v0, Lcom/syncmldstmo/base/smlWorkspace;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/base/smlWorkspace;-><init>(Lcom/syncmldstmo/base/smlAgent;)V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    .line 886
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput-object p1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 888
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    .line 889
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v5, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_appId:I

    .line 890
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v4, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllTimeoutCounter:I

    .line 892
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetCredType(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_credType:I

    .line 894
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetUserID(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userID:Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetPassword(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_password:Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetProtocol(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetHostname(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->hostname:Ljava/lang/String;

    .line 898
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetPort(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_port:I

    .line 899
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlGetPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->sourceURI:Ljava/lang/String;

    .line 902
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileSessionId()I

    move-result v0

    if-lez v0, :cond_c6

    .line 904
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileSessionId()I

    move-result v0

    .line 906
    const/high16 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SAN sessionID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 907
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlLib;->itoa(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->sessionID:Ljava/lang/String;

    .line 910
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 911
    iput v4, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->SessionId:I

    .line 912
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 919
    :goto_b9
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlUser;->smlServerType(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_serverType:I

    .line 921
    return v5

    .line 916
    :cond_c6
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->smlMakeSessionID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->sessionID:Ljava/lang/String;

    goto :goto_b9
.end method

.method public zero_init()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/16 v8, -0x64

    const/high16 v7, 0x4

    const/4 v6, 0x0

    .line 239
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 241
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 242
    iget-object v2, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v2, v2, Lcom/syncmldstmo/base/smlWorkspace;->_p:Lcom/syncmldstmo/base/smlParser;

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start parsing syncml init package. MsgId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-wide v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ws.state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v4, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v9, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    .line 249
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-virtual {v2, v3}, Lcom/syncmldstmo/base/smlParser;->_smlparParseInit(Ljava/lang/Object;)V

    .line 250
    iget-object v3, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v3, v3, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2, v3}, Lcom/syncmldstmo/base/smlParser;->_smlparParse(Lcom/syncmldstmo/base/smlByteBuffer;)I

    move-result v2

    .line 252
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v6, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 253
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v6, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 254
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v6, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 255
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v6, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 256
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v6, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 258
    if-nez v2, :cond_14a

    .line 261
    iget-wide v2, v1, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_76

    .line 263
    invoke-virtual {v1, v6}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 264
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 265
    :goto_74
    if-nez v1, :cond_97

    .line 302
    :cond_76
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v0, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    if-ne v0, v9, :cond_132

    .line 304
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iput v6, v0, Lcom/syncmldstmo/base/smlWorkspace;->m_state:I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 318
    :goto_96
    return v8

    .line 267
    :cond_97
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 269
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 270
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    iput-boolean v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 271
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v1, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 298
    :cond_b3
    :goto_b3
    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    goto :goto_74

    .line 273
    :cond_be
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 275
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 276
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    iput-boolean v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 277
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v1, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    goto :goto_b3

    .line 279
    :cond_db
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Task"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 281
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 282
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    iput-boolean v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 283
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v1, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    goto :goto_b3

    .line 285
    :cond_f8
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 287
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 288
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    iput-boolean v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 289
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v1, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    goto :goto_b3

    .line 291
    :cond_115
    iget-object v2, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    const-string v3, "./Profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 293
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 294
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->sync:Z

    iput-boolean v3, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 295
    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v1, v1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v1, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    goto :goto_b3

    .line 308
    :cond_132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authState Fail Reason : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_96

    .line 316
    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed in smlpar_parse res : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_96
.end method

.method public zero_initSync(Ljava/lang/Object;)I
    .registers 4
    .parameter "userInfo"

    .prologue
    .line 1100
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlAgent;->sync_initialize(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1101
    const/4 v0, -0x1

    .line 1105
    :goto_7
    return v0

    .line 1103
    :cond_8
    iget-object v0, p0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplReceiveData(Lcom/syncmldstmo/base/smlByteBuffer;)I

    .line 1105
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlAgent;->zero_init()I

    move-result v0

    goto :goto_7
.end method
