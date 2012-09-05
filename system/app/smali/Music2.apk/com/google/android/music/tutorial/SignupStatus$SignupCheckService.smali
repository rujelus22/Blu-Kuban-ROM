.class public Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;
.super Landroid/app/IntentService;
.source "SignupStatus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

.field private mMarketCatalogServiceBinded:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 214
    const-string v0, "SignupCheckService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBinded:Z

    .line 215
    return-void
.end method

.method private checkStoreAvailable()V
    .registers 14

    .prologue
    .line 377
    iget-object v9, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailableLastChecked()J

    move-result-wide v5

    .line 378
    .local v5, lastChecked:J
    const-wide/32 v9, 0xf731400

    add-long/2addr v9, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_13

    .line 405
    :goto_12
    return-void

    .line 383
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->connectToMarketService()Z

    move-result v9

    if-nez v9, :cond_21

    .line 384
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->markStoreAvailability(Z)V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_51

    .line 403
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disconnectFromMarketService()V

    goto :goto_12

    .line 388
    :cond_21
    :try_start_21
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$400(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 389
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v8, 0x0

    .line 390
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

    .line 391
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-interface {v9, v10, v11}, Lcom/google/android/finsky/services/IMarketCatalogService;->isBackendEnabled(Ljava/lang/String;I)Z

    move-result v8

    .line 393
    if-eqz v8, :cond_3f

    .line 397
    .end local v0           #account:Landroid/accounts/Account;
    :cond_38
    invoke-direct {p0, v8}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->markStoreAvailability(Z)V
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3b} :catch_42

    .line 403
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #storeAvailable:Z
    :goto_3b
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disconnectFromMarketService()V

    goto :goto_12

    .line 390
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #storeAvailable:Z
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 398
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #storeAvailable:Z
    :catch_42
    move-exception v3

    .line 399
    .local v3, e:Landroid/os/RemoteException;
    :try_start_43
    const-string v9, "CheckMusicStoreAvail"

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->markStoreAvailability(Z)V
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_51

    goto :goto_3b

    .line 403
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_51
    move-exception v9

    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->disconnectFromMarketService()V

    throw v9
.end method

.method private connectToMarketService()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 416
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.finsky.services.IMarketCatalogService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p0, v2}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 417
    const-string v2, "CheckMusicStoreAvail"

    const-string v3, "Could not find market service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_16
    return v1

    .line 420
    :cond_17
    iput-boolean v2, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBinded:Z

    .line 421
    monitor-enter p0

    .line 422
    :try_start_1a
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_3b

    if-nez v3, :cond_23

    .line 424
    const-wide/16 v3, 0x2710

    :try_start_20
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_30

    .line 429
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_3b

    .line 430
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    if-nez v3, :cond_3e

    .line 431
    const-string v2, "CheckMusicStoreAvail"

    const-string v3, "Could not connect to market service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 425
    :catch_30
    move-exception v0

    .line 426
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_31
    const-string v3, "CheckMusicStoreAvail"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 429
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3b
    move-exception v1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw v1

    :cond_3e
    move v1, v2

    .line 435
    goto :goto_16
.end method

.method private disconnectFromMarketService()V
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBinded:Z

    if-eqz v0, :cond_a

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogServiceBinded:Z

    .line 441
    invoke-virtual {p0, p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 443
    :cond_a
    return-void
.end method

.method private launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabled()V

    .line 363
    const-string v0, "com.google.android.music.tutorial.LAUNCH_TUTORIAL"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->wasTutorialViewed()Z

    move-result v1

    .line 365
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;
    invoke-static {p1, p2}, Lcom/google/android/music/tutorial/SignupStatus;->access$700(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v3

    .line 367
    if-eqz v0, :cond_36

    if-eqz v2, :cond_36

    array-length v0, v2

    if-eqz v0, :cond_36

    if-nez v1, :cond_36

    if-nez v3, :cond_36

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/tutorial/TutorialWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->startActivity(Landroid/content/Intent;)V

    .line 374
    :cond_36
    return-void
.end method

.method private markStoreAvailability(Z)V
    .registers 5
    .parameter "available"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->setStoreAvailable(Z)V

    .line 409
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setStoreAvailableLastChecked(J)V

    .line 410
    sget-boolean v0, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    if-eqz v0, :cond_2a

    .line 411
    const-string v0, "CheckMusicStoreAvail"

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

    .line 413
    :cond_2a
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 220
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 221
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 222
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 228
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 29
    .parameter "intent"

    .prologue
    .line 234
    const-string v23, "CheckMusicStoreAvail"

    const-string v24, "Starting account signup check"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 237
    .local v19, sharedPreferences:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/jumper/MusicPreferences;->validateStreamingAccount()V

    .line 241
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->isBackgroundDataEnabled(Landroid/content/Context;)Z
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$100(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_24

    .line 357
    :cond_23
    :goto_23
    return-void

    .line 244
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x2710

    invoke-virtual/range {v23 .. v25}, Lcom/google/android/music/NetworkMonitorServiceConnection;->waitForServiceConnection(J)Z

    move-result v23

    if-nez v23, :cond_3a

    .line 245
    const-string v23, "CheckMusicStoreAvail"

    const-string v24, "NetworkMonitor service connection never came up"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 251
    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z

    move-result v23

    if-nez v23, :cond_61

    .line 252
    const-string v23, "CheckMusicStoreAvail"

    const-string v24, "No connection available, not continuing signup check"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_51} :catch_52

    goto :goto_23

    .line 255
    :catch_52
    move-exception v9

    .line 256
    .local v9, e:Landroid/os/RemoteException;
    const-string v23, "CheckMusicStoreAvail"

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 260
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_61
    const-string v23, "com.google.android.music.tutorial.CLEAR_HOLDOFF"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 261
    .local v11, holdOff:Z
    if-eqz v11, :cond_7f

    .line 262
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 263
    .local v8, clearHoldoffEditor:Landroid/content/SharedPreferences$Editor;
    const-string v23, "holdoffUntil"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    .end local v8           #clearHoldoffEditor:Landroid/content/SharedPreferences$Editor;
    :cond_7f
    const-string v23, "holdoffUntil"

    const-wide/16 v24, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 268
    .local v14, holdoffUntil:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    cmp-long v23, v14, v23

    if-lez v23, :cond_a1

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    goto :goto_23

    .line 273
    :cond_a1
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 276
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->checkStoreAvailable()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v17

    .line 279
    .local v17, isStoreAvailable:Z
    if-eqz v17, :cond_d6

    .line 280
    const-string v23, "status"

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 285
    :cond_bf
    :goto_bf
    if-eqz v17, :cond_ea

    .line 286
    move-object/from16 v0, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$300(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 287
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 281
    :cond_d6
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus(Landroid/content/SharedPreferences;)I
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/tutorial/SignupStatus;->access$200(Landroid/content/SharedPreferences;)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_bf

    .line 282
    const-string v23, "status"

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_bf

    .line 292
    :cond_ea
    #calls: Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/tutorial/SignupStatus;->access$400(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v5

    .line 293
    .local v5, accounts:[Landroid/accounts/Account;
    if-eqz v5, :cond_23

    .line 297
    const-string v23, "com.google.android.music.tutorial.CLEAR_EXISTING_ACCOUNTS"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 298
    .local v7, clear:Z
    if-eqz v7, :cond_105

    .line 300
    move-object/from16 v0, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$300(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 303
    :cond_105
    new-instance v22, Ljava/util/ArrayList;

    array-length v0, v5

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .local v22, verifiedAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    new-instance v20, Lcom/google/android/music/sync/api/SignupClient;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/SignupClient;-><init>(Landroid/content/Context;)V

    .line 307
    .local v20, signupClient:Lcom/google/android/music/sync/api/SignupClient;
    move-object v6, v5

    .local v6, arr$:[Landroid/accounts/Account;
    :try_start_117
    array-length v0, v6

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_11c
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_164

    aget-object v4, v6, v16

    .line 308
    .local v4, account:Landroid/accounts/Account;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/android/music/sync/api/SignupClient;->checkInviteStatus(Landroid/accounts/Account;)I
    :try_end_129
    .catchall {:try_start_117 .. :try_end_129} :catchall_15f

    move-result v21

    .line 309
    .local v21, status:I
    const/16 v23, -0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_137

    .line 325
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    goto/16 :goto_23

    .line 312
    :cond_137
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_147

    .line 313
    :try_start_13f
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_144
    :goto_144
    add-int/lit8 v16, v16, 0x1

    goto :goto_11c

    .line 314
    :cond_147
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_144

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->isAccountVerified(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z
    invoke-static {v0, v1, v4}, Lcom/google/android/music/tutorial/SignupStatus;->access$500(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z

    move-result v23

    if-eqz v23, :cond_144

    .line 319
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15e
    .catchall {:try_start_13f .. :try_end_15e} :catchall_15f

    goto :goto_144

    .line 325
    .end local v4           #account:Landroid/accounts/Account;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v21           #status:I
    :catchall_15f
    move-exception v23

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    throw v23

    .restart local v16       #i$:I
    .restart local v18       #len$:I
    :cond_164
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->close()V

    .line 328
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/sync/api/SignupClient;->getHoldoffDurationSecs()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v12, v23, v25

    .line 329
    .local v12, holdoffDurationMs:J
    const-wide/16 v23, 0x0

    cmp-long v23, v12, v23

    if-gez v23, :cond_178

    .line 332
    const-wide/32 v12, 0x1499700

    .line 334
    :cond_178
    const-string v23, "holdoffUntil"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    add-long v24, v24, v12

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_1cc

    .line 338
    const-string v23, "CheckMusicStoreAvail"

    const-string v24, "No verified accounts found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v23, "status"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    move-object/from16 v0, v19

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$300(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    .line 350
    :goto_1a4
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v23

    if-nez v23, :cond_1b1

    .line 351
    const-string v23, "CheckMusicStoreAvail"

    const-string v24, "Could not commit changes to preferences"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1b1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->launchTutorialIfNecessary(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/Intent;)V

    .line 356
    new-instance v23, Landroid/content/Intent;

    const-string v24, "com.google.android.music.VERIFIED_ACCOUNTS_CHANGED"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 342
    :cond_1cc
    const-string v23, "CheckMusicStoreAvail"

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

    .line 343
    const-string v23, "status"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    move-object/from16 v0, v22

    #calls: Lcom/google/android/music/tutorial/SignupStatus;->putVerifiedAccountIntoPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    invoke-static {v10, v0}, Lcom/google/android/music/tutorial/SignupStatus;->access$600(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    goto :goto_1a4
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_1
    invoke-static {p2}, Lcom/google/android/finsky/services/IMarketCatalogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/services/IMarketCatalogService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 449
    monitor-exit p0

    .line 450
    return-void

    .line 449
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->mMarketCatalogService:Lcom/google/android/finsky/services/IMarketCatalogService;

    .line 454
    return-void
.end method
