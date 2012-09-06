.class public Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;
.super Landroid/app/IntentService;
.source "SignupStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/SignupStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignupCheckService"
.end annotation


# instance fields
.field private mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

.field private mMarketCatalogServiceBound:Z

.field private mMarketServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 240
    const-string v0, "SignupCheckService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBound:Z

    .line 227
    new-instance v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService$1;-><init>(Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;)V

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->onServiceConnectedImp(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;Landroid/content/ComponentName;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->onServiceDisconnectedImp(Landroid/content/ComponentName;)V

    return-void
.end method

.method private autoSelectAccount(Landroid/content/SharedPreferences;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "sharedPreferences"
    .parameter "preferences"

    .prologue
    const/4 v3, 0x1

    .line 406
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$600(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 407
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_a

    array-length v2, v1

    if-eq v2, v3, :cond_b

    .line 417
    :cond_a
    :goto_a
    return-void

    .line 411
    :cond_b
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 412
    .local v0, account:Landroid/accounts/Account;
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->isAccountVerified(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z
    invoke-static {p0, p1, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$700(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 414
    invoke-virtual {p2, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 415
    invoke-virtual {p2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    goto :goto_a
.end method

.method private checkStoreAvailable()V
    .registers 14

    .prologue
    .line 437
    iget-object v9, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailableLastChecked()J

    move-result-wide v5

    .line 438
    .local v5, lastChecked:J
    const-wide/32 v9, 0xf731400

    add-long/2addr v9, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_13

    .line 465
    :goto_12
    return-void

    .line 443
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->connectToMarketService()Z

    move-result v9

    if-nez v9, :cond_21

    .line 444
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->markStoreAvailability(Z)V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_51

    .line 463
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disconnectFromMarketService()V

    goto :goto_12

    .line 448
    :cond_21
    :try_start_21
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$600(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 449
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v8, 0x0

    .line 450
    .local v8, storeAvailable:Z
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_29
    if-ge v4, v7, :cond_38

    aget-object v0, v2, v4

    .line 451
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-interface {v9, v10, v11}, Lcom/google/android/finsky/services/IMarketCatalogService;->isBackendEnabled(Ljava/lang/String;I)Z

    move-result v8

    .line 453
    if-eqz v8, :cond_3f

    .line 457
    .end local v0           #account:Landroid/accounts/Account;
    :cond_38
    invoke-direct {p0, v8}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->markStoreAvailability(Z)V
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3b} :catch_42

    .line 463
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #storeAvailable:Z
    :goto_3b
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disconnectFromMarketService()V

    goto :goto_12

    .line 450
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #storeAvailable:Z
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 458
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #storeAvailable:Z
    :catch_42
    move-exception v3

    .line 459
    .local v3, e:Landroid/os/RemoteException;
    :try_start_43
    const-string v9, "SignupStatus"

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->markStoreAvailability(Z)V
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_51

    goto :goto_3b

    .line 463
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_51
    move-exception v9

    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disconnectFromMarketService()V

    throw v9
.end method

.method private connectToMarketService()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 476
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.finsky.services.IMarketCatalogService.BIND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v4, v2}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-nez v3, :cond_19

    .line 478
    const-string v2, "SignupStatus"

    const-string v3, "Could not find market service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_18
    return v1

    .line 481
    :cond_19
    iput-boolean v2, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBound:Z

    .line 482
    monitor-enter p0

    .line 483
    :try_start_1c
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_3d

    if-nez v3, :cond_25

    .line 485
    const-wide/16 v3, 0x2710

    :try_start_22
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3d
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_32

    .line 490
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_3d

    .line 491
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    if-nez v3, :cond_40

    .line 492
    const-string v2, "SignupStatus"

    const-string v3, "Could not connect to market service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 486
    :catch_32
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_33
    const-string v3, "SignupStatus"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 490
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3d
    move-exception v1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_3d

    throw v1

    :cond_40
    move v1, v2

    .line 496
    goto :goto_18
.end method

.method private disableNetworkRecevier()V
    .registers 5

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/music/tutorial/SignupStatus$NetworkChangedReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 403
    return-void
.end method

.method private disconnectFromMarketService()V
    .registers 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBound:Z

    if-eqz v0, :cond_c

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBound:Z

    .line 502
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 504
    :cond_c
    return-void
.end method

.method private enableNetworkReceiver()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/music/tutorial/SignupStatus$NetworkChangedReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 397
    return-void
.end method

.method private launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabled()V

    .line 423
    const-string v0, "com.google.android.music.tutorial.LAUNCH_TUTORIAL"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->wasTutorialViewed()Z

    move-result v1

    .line 425
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;
    invoke-static {p1, p2}, Lcom/google/android/music/tutorial/SignupStatus;->access$900(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;

    move-result-object v2

    .line 426
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v3

    .line 427
    if-eqz v0, :cond_36

    if-eqz v2, :cond_36

    array-length v0, v2

    if-eqz v0, :cond_36

    if-nez v1, :cond_36

    if-nez v3, :cond_36

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->startActivity(Landroid/content/Intent;)V

    .line 434
    :cond_36
    return-void
.end method

.method private markStoreAvailability(Z)V
    .registers 5
    .parameter "available"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->setStoreAvailable(Z)V

    .line 469
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setStoreAvailableLastChecked(J)V

    .line 470
    sget-boolean v0, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    if-eqz v0, :cond_2a

    .line 471
    const-string v0, "SignupStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2a
    return-void
.end method

.method private onServiceConnectedImp(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 507
    monitor-enter p0

    .line 508
    :try_start_1
    invoke-static {p2}, Lcom/google/android/finsky/services/IMarketCatalogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/services/IMarketCatalogService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 510
    monitor-exit p0

    .line 511
    return-void

    .line 510
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private onServiceDisconnectedImp(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    .line 515
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 246
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 247
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 248
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 254
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 29
    .parameter "intent"

    .prologue
    .line 260
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 262
    .local v19, sharedPreferences:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()Z

    move-result v23

    if-nez v23, :cond_18

    .line 263
    const-string v23, "SignupStatus"

    const-string v24, "MusicPreferences never loaded."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_17
    :goto_17
    return-void

    .line 268
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/jumper/MusicPreferences;->validateStreamingAccount()V

    .line 270
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->isBackgroundDataEnabled(Landroid/content/Context;)Z
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$300(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_2b

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->enableNetworkReceiver()V

    goto :goto_17

    .line 274
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x2710

    invoke-virtual/range {v23 .. v25}, Lcom/google/android/music/NetworkMonitorServiceConnection;->waitForServiceConnection(J)Z

    move-result v23

    if-nez v23, :cond_41

    .line 275
    const-string v23, "SignupStatus"

    const-string v24, "NetworkMonitor service connection never came up"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 281
    :cond_41
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z

    move-result v23

    if-nez v23, :cond_6b

    .line 282
    const-string v23, "SignupStatus"

    const-string v24, "No connection available, not continuing signup check"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->enableNetworkReceiver()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_5b} :catch_5c

    goto :goto_17

    .line 286
    :catch_5c
    move-exception v9

    .line 287
    .local v9, e:Landroid/os/RemoteException;
    const-string v23, "SignupStatus"

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 291
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_6b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disableNetworkRecevier()V

    .line 293
    const-string v23, "com.google.android.music.tutorial.CLEAR_HOLDOFF"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 294
    .local v11, holdOff:Z
    if-eqz v11, :cond_8c

    .line 295
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 296
    .local v8, clearHoldoffEditor:Landroid/content/SharedPreferences$Editor;
    const-string v23, "holdoffUntil"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    .end local v8           #clearHoldoffEditor:Landroid/content/SharedPreferences$Editor;
    :cond_8c
    const-string v23, "holdoffUntil"

    const-wide/16 v24, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 301
    .local v14, holdoffUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    cmp-long v23, v14, v23

    if-lez v23, :cond_af

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 306
    :cond_af
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 309
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->checkStoreAvailable()V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v17

    .line 311
    .local v17, isStoreAvailable:Z
    if-eqz v17, :cond_f3

    .line 312
    const-string v23, "status"

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_cd
    :goto_cd
    if-eqz v17, :cond_107

    .line 318
    move-object/from16 v0, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$500(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 319
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->autoSelectAccount(Landroid/content/SharedPreferences;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 313
    :cond_f3
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus(Landroid/content/SharedPreferences;)I
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/tutorial/SignupStatus;->access$400(Landroid/content/SharedPreferences;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_cd

    .line 314
    const-string v23, "status"

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_cd

    .line 325
    :cond_107
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$600(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v5

    .line 326
    .local v5, accounts:[Landroid/accounts/Account;
    if-eqz v5, :cond_17

    .line 330
    const-string v23, "com.google.android.music.tutorial.CLEAR_EXISTING_ACCOUNTS"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 331
    .local v7, clear:Z
    if-eqz v7, :cond_122

    .line 333
    move-object/from16 v0, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$500(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 336
    :cond_122
    new-instance v22, Ljava/util/ArrayList;

    array-length v0, v5

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v22, verifiedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    new-instance v20, Lcom/google/android/music/sync/api/SignupClient;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/SignupClient;-><init>(Landroid/content/Context;)V

    .line 340
    .local v20, signupClient:Lcom/google/android/music/sync/api/SignupClient;
    move-object v6, v5

    .local v6, arr$:[Landroid/accounts/Account;
    :try_start_134
    array-length v0, v6

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_139
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_181

    aget-object v4, v6, v16

    .line 341
    .local v4, account:Landroid/accounts/Account;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/android/music/sync/api/SignupClient;->checkInviteStatus(Landroid/accounts/Account;)I
    :try_end_146
    .catchall {:try_start_134 .. :try_end_146} :catchall_17c

    move-result v21

    .line 342
    .local v21, status:I
    const/16 v23, -0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_154

    .line 358
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    goto/16 :goto_17

    .line 345
    :cond_154
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_164

    .line 346
    :try_start_15c
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_161
    :goto_161
    add-int/lit8 v16, v16, 0x1

    goto :goto_139

    .line 347
    :cond_164
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_161

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->isAccountVerified(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z
    invoke-static {v0, v1, v4}, Lcom/google/android/music/tutorial/SignupStatus;->access$700(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z

    move-result v23

    if-eqz v23, :cond_161

    .line 352
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17b
    .catchall {:try_start_15c .. :try_end_17b} :catchall_17c

    goto :goto_161

    .line 358
    .end local v4           #account:Landroid/accounts/Account;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v21           #status:I
    :catchall_17c
    move-exception v23

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    throw v23

    .restart local v16       #i$:I
    .restart local v18       #len$:I
    :cond_181
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    .line 361
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->getHoldoffDurationSecs()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v12, v23, v25

    .line 362
    .local v12, holdoffDurationMs:J
    const-wide/16 v23, 0x0

    cmp-long v23, v12, v23

    if-gez v23, :cond_195

    .line 365
    const-wide/32 v12, 0x1499700

    .line 367
    :cond_195
    const-string v23, "holdoffUntil"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    add-long v24, v24, v12

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_1f8

    .line 371
    const-string v23, "SignupStatus"

    const-string v24, "No verified accounts found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v23, "status"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 373
    move-object/from16 v0, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$500(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 383
    :goto_1c1
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v23

    if-nez v23, :cond_1ce

    .line 384
    const-string v23, "SignupStatus"

    const-string v24, "Could not commit changes to preferences"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->autoSelectAccount(Landroid/content/SharedPreferences;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    .line 390
    new-instance v23, Landroid/content/Intent;

    const-string v24, "com.google.android.music.VERIFIED_ACCOUNTS_CHANGED"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 375
    :cond_1f8
    const-string v23, "SignupStatus"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Verified accounts: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v23, "status"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 377
    move-object/from16 v0, v22

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->putVerifiedAccountIntoPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$800(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    goto :goto_1c1
.end method
