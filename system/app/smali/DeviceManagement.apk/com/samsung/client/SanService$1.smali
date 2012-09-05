.class Lcom/samsung/client/SanService$1;
.super Ljava/lang/Object;
.source "SanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/SanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/SanService;


# direct methods
.method constructor <init>(Lcom/samsung/client/SanService;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    #calls: Lcom/samsung/client/SanService;->san_empty()Z
    invoke-static {v14}, Lcom/samsung/client/SanService;->access$000(Lcom/samsung/client/SanService;)Z

    move-result v14

    if-eqz v14, :cond_43

    .line 70
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    if-eqz v14, :cond_1b

    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 71
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    invoke-virtual {v14}, Lcom/samsung/client/SanService;->stopSelf()V

    .line 74
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/samsung/client/SanService;->access$102(Z)Z

    .line 75
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Background Thread has stopped san_empty "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/samsung/client/SanService;->access$100()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_42
    return-void

    .line 81
    :cond_43
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    if-nez v14, :cond_1ea

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    const-string v15, "power"

    invoke-virtual {v14, v15}, Lcom/samsung/client/SanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 83
    .local v10, pm:Landroid/os/PowerManager;
    const/4 v14, 0x1

    const-string v15, "SANPowerLock"

    invoke-virtual {v10, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    sput-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    .line 85
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 93
    .end local v10           #pm:Landroid/os/PowerManager;
    :cond_61
    :goto_61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    #calls: Lcom/samsung/client/SanService;->san_empty()Z
    invoke-static {v14}, Lcom/samsung/client/SanService;->access$000(Lcom/samsung/client/SanService;)Z

    move-result v14

    if-nez v14, :cond_1c8

    .line 94
    const-string v14, "SAN_SERVICE"

    const-string v15, "List NOT EMPTY"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_72
    const-string v14, "SAN_SERVICE"

    const-string v15, "Checking Conditions"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v1

    .line 101
    .local v1, DMSessionNotActive:Z
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDMSessionActive = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Lcom/samsung/client/SanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 105
    .local v13, tm:Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    .line 106
    .local v5, dataNotActive:Z
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v2

    .line 107
    .local v2, dataActivity:I
    if-eqz v2, :cond_af

    const/4 v14, 0x4

    if-ne v2, v14, :cond_b0

    .line 109
    :cond_af
    const/4 v5, 0x1

    .line 111
    :cond_b0
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataActivity = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataNotActive = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, dataConnected:Z
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    .line 115
    .local v4, dataConnectivity:I
    const/4 v14, 0x2

    if-ne v4, v14, :cond_e9

    .line 116
    const/4 v3, 0x1

    .line 118
    :cond_e9
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataConnectivity = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataConnected = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v14

    if-nez v14, :cond_1f9

    const/4 v9, 0x1

    .line 122
    .local v9, notRoaming:Z
    :goto_120
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "notRoaming = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v11, 0x1

    .line 125
    .local v11, radioState:Z
    const/4 v14, 0x3

    sget v15, Lcom/samsung/client/DMApp;->mPhoneState:I

    if-eq v14, v15, :cond_143

    const/4 v14, 0x1

    sget v15, Lcom/samsung/client/DMApp;->mPhoneState:I

    if-ne v14, v15, :cond_144

    .line 127
    :cond_143
    const/4 v11, 0x0

    .line 129
    :cond_144
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Radio State = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v8, 0x1

    .line 132
    .local v8, noRetryState:Z
    sget v14, Lcom/samsung/client/DMApp;->niaRetries:I

    if-eqz v14, :cond_162

    .line 133
    const/4 v8, 0x0

    .line 135
    :cond_162
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "noRetry State = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v7, 0x1

    .line 139
    .local v7, noCall:Z
    sget v14, Lcom/samsung/client/DMApp;->mCallState:I

    if-eqz v14, :cond_186

    .line 140
    const/4 v7, 0x0

    .line 142
    :cond_186
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "noCall State = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    #calls: Lcom/samsung/client/SanService;->checkHomeScreen()Z
    invoke-static {v14}, Lcom/samsung/client/SanService;->access$200(Lcom/samsung/client/SanService;)Z

    move-result v14

    if-eqz v14, :cond_1fc

    if-eqz v1, :cond_1fc

    if-eqz v5, :cond_1fc

    if-eqz v11, :cond_1fc

    if-eqz v8, :cond_1fc

    if-eqz v7, :cond_1fc

    .line 156
    const-string v14, "SAN_SERVICE"

    const-string v15, "Loading SAS message"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-wide/16 v14, 0x3e8

    :try_start_1bb
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1be} :catch_20f

    .line 165
    :goto_1be
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/client/SanService$1;->this$0:Lcom/samsung/client/SanService;

    #calls: Lcom/samsung/client/SanService;->next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;
    invoke-static {v14}, Lcom/samsung/client/SanService;->access$300(Lcom/samsung/client/SanService;)Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v12

    .line 166
    .local v12, san_msg:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    if-nez v12, :cond_21a

    .line 177
    .end local v1           #DMSessionNotActive:Z
    .end local v2           #dataActivity:I
    .end local v3           #dataConnected:Z
    .end local v4           #dataConnectivity:I
    .end local v5           #dataNotActive:Z
    .end local v7           #noCall:Z
    .end local v8           #noRetryState:Z
    .end local v9           #notRoaming:Z
    .end local v11           #radioState:Z
    .end local v12           #san_msg:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .end local v13           #tm:Landroid/telephony/TelephonyManager;
    :cond_1c8
    :goto_1c8
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/samsung/client/SanService;->access$102(Z)Z

    .line 178
    const-string v14, "SAN_SERVICE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Background Thread has stopped "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/samsung/client/SanService;->access$100()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 87
    :cond_1ea
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-nez v14, :cond_61

    .line 88
    sget-object v14, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_61

    .line 121
    .restart local v1       #DMSessionNotActive:Z
    .restart local v2       #dataActivity:I
    .restart local v3       #dataConnected:Z
    .restart local v4       #dataConnectivity:I
    .restart local v5       #dataNotActive:Z
    .restart local v13       #tm:Landroid/telephony/TelephonyManager;
    :cond_1f9
    const/4 v9, 0x0

    goto/16 :goto_120

    .line 150
    .restart local v7       #noCall:Z
    .restart local v8       #noRetryState:Z
    .restart local v9       #notRoaming:Z
    .restart local v11       #radioState:Z
    :cond_1fc
    const-wide/16 v14, 0x7d0

    :try_start_1fe
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_201} :catch_203

    goto/16 :goto_72

    .line 151
    :catch_203
    move-exception v6

    .line 152
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "SleepException"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_72

    .line 161
    .end local v6           #e:Ljava/lang/Exception;
    :catch_20f
    move-exception v6

    .line 162
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "SleepException 1s"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1be

    .line 170
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v12       #san_msg:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :cond_21a
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/samsung/client/DMApp;->postNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V

    goto :goto_1c8
.end method
