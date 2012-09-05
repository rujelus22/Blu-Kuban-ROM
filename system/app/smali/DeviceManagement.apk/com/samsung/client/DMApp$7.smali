.class Lcom/samsung/client/DMApp$7;
.super Landroid/os/CountDownTimer;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method constructor <init>(Lcom/samsung/client/DMApp;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2417
    const-string v3, "DMApp"

    const-string v4, "delayStart: onFinish"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStartCntrRunning - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mStartCntrRunning:Z
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$4100(Lcom/samsung/client/DMApp;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->mStartCntrRunning:Z
    invoke-static {v3, v7}, Lcom/samsung/client/DMApp;->access$4102(Lcom/samsung/client/DMApp;Z)Z

    .line 2422
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v3

    if-ne v3, v8, :cond_4b

    .line 2424
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    const-string v4, "DMAPP_STATE"

    invoke-virtual {v3, v4, v7}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2425
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "UpgradePending"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2426
    const-string v3, "DMApp"

    const-string v4, "Upgrade Pending"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_4a
    :goto_4a
    return-void

    .line 2431
    :cond_4b
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->fumoUserStart:Z
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$1700(Lcom/samsung/client/DMApp;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v3

    if-ne v3, v8, :cond_6d

    .line 2433
    const-string v3, "DMApp"

    const-string v4, "mSessionType == FUMO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    iget-object v3, v3, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2435
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #setter for: Lcom/samsung/client/DMApp;->replace:Z
    invoke-static {v3, v6}, Lcom/samsung/client/DMApp;->access$1302(Lcom/samsung/client/DMApp;Z)Z

    goto :goto_4a

    .line 2454
    :cond_6d
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delayStart:onFinish: NIA Start mNIAProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delayStart:onFinish: NIA Start  mAirModeState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/client/DMApp;->mAirModeState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    sget-boolean v3, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v3, :cond_e9

    .line 2461
    sget-boolean v3, Lcom/samsung/client/DMApp;->mAirModeState:Z

    if-nez v3, :cond_e0

    .line 2463
    const-string v3, "DMApp"

    const-string v4, "delayStart:onFinish: NIA Start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :try_start_b0
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v4}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/samsung/client/ISyncmlService;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    .line 2467
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    invoke-static {v4}, Lcom/samsung/client/DMApp;->access$4200(Lcom/samsung/client/DMApp;)Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/client/TslcmnSan$TslSanMsg;->msg:[B

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->sendNIAmessage([B)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_cd} :catch_cf

    goto/16 :goto_4a

    .line 2468
    :catch_cf
    move-exception v0

    .line 2469
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2470
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$4300(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_4a

    .line 2476
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_e0
    const-string v3, "DMApp"

    const-string v4, "delayStart:onFinish: NIA Start is in AIRPLANEMODE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 2481
    :cond_e9
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v3

    if-ne v3, v6, :cond_14c

    .line 2482
    const-string v3, "DMApp"

    const-string v4, "mSessionType == HFA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :try_start_f6
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 2485
    new-instance v1, Lcom/samsung/client/Tsldm_ses_opt_binder;

    invoke-direct {v1}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>()V

    .line 2486
    .local v1, opt:Lcom/samsung/client/Tsldm_ses_opt_binder;
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    .line 2487
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    .line 2489
    const/16 v3, 0x1800

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    .line 2490
    const v3, 0x8c00

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    .line 2491
    const/4 v3, 0x0

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    .line 2492
    const-string v3, "Device"

    iput-object v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    .line 2493
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/samsung/client/ISyncmlService;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    move-result v4

    #setter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v3, v4}, Lcom/samsung/client/DMApp;->access$1402(Lcom/samsung/client/DMApp;I)I

    .line 2494
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$1400(Lcom/samsung/client/DMApp;)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/client/ISyncmlService;->startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_139} :catch_13b

    goto/16 :goto_4a

    .line 2496
    .end local v1           #opt:Lcom/samsung/client/Tsldm_ses_opt_binder;
    :catch_13b
    move-exception v0

    .line 2497
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$4300(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_4a

    .line 2500
    .end local v0           #e:Ljava/lang/Exception;
    :cond_14c
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b0

    .line 2501
    const-string v3, "DMApp"

    const-string v4, "mSessionType == PRL"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :try_start_15a
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 2504
    new-instance v1, Lcom/samsung/client/Tsldm_ses_opt_binder;

    invoke-direct {v1}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>()V

    .line 2505
    .restart local v1       #opt:Lcom/samsung/client/Tsldm_ses_opt_binder;
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    .line 2506
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    .line 2508
    const/16 v3, 0x1800

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    .line 2509
    const v3, 0x8c00

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    .line 2510
    const/4 v3, 0x0

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    .line 2511
    const-string v3, "Device"

    iput-object v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    .line 2512
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/samsung/client/ISyncmlService;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    move-result v4

    #setter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v3, v4}, Lcom/samsung/client/DMApp;->access$1402(Lcom/samsung/client/DMApp;I)I

    .line 2513
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$1400(Lcom/samsung/client/DMApp;)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/client/ISyncmlService;->startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_19d} :catch_19f

    goto/16 :goto_4a

    .line 2515
    .end local v1           #opt:Lcom/samsung/client/Tsldm_ses_opt_binder;
    :catch_19f
    move-exception v0

    .line 2516
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2517
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$4300(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_4a

    .line 2519
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1b0
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v3

    if-ne v3, v8, :cond_1e4

    .line 2520
    const-string v3, "DMApp"

    const-string v4, "mSessionType == FUMO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :try_start_1bd
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v4}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 2523
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/client/ISyncmlService;->fumo_pending_check()V
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_1bd .. :try_end_1d1} :catch_1d3

    goto/16 :goto_4a

    .line 2524
    :catch_1d3
    move-exception v0

    .line 2525
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2526
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$4300(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_4a

    .line 2528
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1e4
    invoke-static {}, Lcom/samsung/client/DMApp;->access$2100()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4a

    .line 2529
    const-string v3, "DMApp"

    const-string v4, "mSessionType == DC"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :try_start_1f2
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 2533
    new-instance v1, Lcom/samsung/client/Tsldm_ses_opt_binder;

    invoke-direct {v1}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>()V

    .line 2534
    .restart local v1       #opt:Lcom/samsung/client/Tsldm_ses_opt_binder;
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    .line 2535
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    .line 2537
    const/16 v3, 0x1800

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    .line 2538
    const v3, 0x8c00

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    .line 2539
    const/4 v3, 0x0

    iput v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    .line 2540
    const-string v3, "Device"

    iput-object v3, v1, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    .line 2541
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/samsung/client/ISyncmlService;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    move-result v4

    #setter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v3, v4}, Lcom/samsung/client/DMApp;->access$1402(Lcom/samsung/client/DMApp;I)I

    .line 2542
    invoke-static {}, Lcom/samsung/client/DMApp;->access$500()Lcom/samsung/client/ISyncmlService;

    move-result-object v3

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->instId:I
    invoke-static {v5}, Lcom/samsung/client/DMApp;->access$1400(Lcom/samsung/client/DMApp;)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/client/ISyncmlService;->startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_235} :catch_237

    goto/16 :goto_4a

    .line 2544
    .end local v1           #opt:Lcom/samsung/client/Tsldm_ses_opt_binder;
    :catch_237
    move-exception v0

    .line 2545
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2546
    iget-object v3, p0, Lcom/samsung/client/DMApp$7;->this$0:Lcom/samsung/client/DMApp;

    #calls: Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    invoke-static {v3}, Lcom/samsung/client/DMApp;->access$4300(Lcom/samsung/client/DMApp;)V

    goto/16 :goto_4a
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 2412
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayStart:onTick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    return-void
.end method
