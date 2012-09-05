.class public Lcom/sprint/dsa/dss/DsaClient;
.super Landroid/app/Activity;
.source "DsaClient.java"


# static fields
.field public static final CDIC:I = 0x1

.field public static final CIFUMO:I = 0x2

.field public static final CIPRL:I = 0x3

.field public static final CIQ:I = 0x4

.field public static final IP_PROXY_SPCSDNS:Ljava/lang/String; = "144.226.247.31"

.field public static final IP_PROXY_STIC:Ljava/lang/String; = "10.31.172.173"

.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"

.field public static final USE_HTTP_CLIENT:Z = true

.field public static final WAKE_TAG:Ljava/lang/String; = "SprintZone"


# instance fields
.field DEVICE:Z

.field private FormData:Ljava/lang/String;

.field SLOT0:Z

.field SWITCH_TO_HTTP:Z

.field WIFI:Z

.field private allowBack:Z

.field back:Z

.field backMessage:Ljava/lang/String;

.field baseURL:Ljava/lang/String;

.field btnLeft:Landroid/widget/Button;

.field btnRight:Landroid/widget/Button;

.field private clientVersion:Ljava/lang/String;

.field private destroying:Z

.field dsaDebug:Z

.field dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

.field dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

.field dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

.field dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

.field dsaWebChromeClient:Lcom/sprint/dsa/dss/DsaWebChromeClient;

.field dsaWebView:Landroid/webkit/WebView;

.field dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

.field private esn:Ljava/lang/String;

.field exitAction:Z

.field exitMessage:Ljava/lang/String;

.field htmlPage:Ljava/lang/String;

.field private initLoad:Z

.field private isUIActive:Z

.field private keyGuard:Z

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private keyguardLockDisabled:Z

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private lang:Ljava/lang/String;

.field leftSoftKeyText:Ljava/lang/String;

.field loading:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private make:Ljava/lang/String;

.field mdn:Ljava/lang/String;

.field private meid:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field needsPowerRecycle:Z

.field nextURL:Ljava/lang/String;

.field option:Ljava/lang/String;

.field private powerManager:Landroid/os/PowerManager;

.field query:Ljava/lang/String;

.field rightSoftKeyText:Ljava/lang/String;

.field titleText:Ljava/lang/String;

.field titleView:Landroid/widget/TextView;

.field useLocalPages:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardManager:Landroid/app/KeyguardManager;

    .line 66
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 67
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLockDisabled:Z

    .line 79
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->backMessage:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->exitMessage:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->destroying:Z

    .line 85
    iput-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->initLoad:Z

    .line 100
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    .line 101
    sget-boolean v0, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v0, :cond_2f

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->SLOT0:Z

    .line 102
    sget-boolean v0, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v0, :cond_31

    move v0, v1

    :goto_22
    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->DEVICE:Z

    .line 104
    iput-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->keyGuard:Z

    .line 105
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->WIFI:Z

    .line 107
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->SWITCH_TO_HTTP:Z

    .line 108
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->useLocalPages:Z

    .line 110
    iput-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->loading:Z

    .line 38
    return-void

    :cond_2f
    move v0, v2

    .line 101
    goto :goto_1b

    :cond_31
    move v0, v2

    .line 102
    goto :goto_22
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/DsaClient;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/dss/DsaClient;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z

    return-void
.end method


# virtual methods
.method protected acquireLocks()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 319
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 321
    :cond_d
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyGuard:Z

    if-eqz v0, :cond_1d

    .line 322
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLockDisabled:Z

    if-nez v0, :cond_1d

    .line 323
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLockDisabled:Z

    .line 327
    :cond_1d
    return-void
.end method

.method public close(I)V
    .registers 15
    .parameter "lastAction"

    .prologue
    const/4 v9, 0x0

    .line 518
    iget-boolean v10, p0, Lcom/sprint/dsa/dss/DsaClient;->destroying:Z

    if-eqz v10, :cond_6

    .line 619
    :goto_5
    return-void

    .line 520
    :cond_6
    iget-object v10, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v11, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 522
    const-string v10, "SprintZone_DSA"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Close: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const v10, 0x7f080039

    :try_start_24
    invoke-virtual {p0, v10}, Lcom/sprint/dsa/dss/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, message:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v4}, Lcom/sprint/dsa/dss/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 527
    iget-object v10, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    if-eqz v10, :cond_3d

    .line 528
    iget-object v10, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    iget-object v10, v10, Lcom/sprint/dsa/dss/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v10, :cond_3d

    .line 529
    iget-object v10, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    iget-object v10, v10, Lcom/sprint/dsa/dss/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 533
    :cond_3d
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v6, resultIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 535
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v6}, Lcom/sprint/dsa/dss/DsaClient;->setResult(ILandroid/content/Intent;)V

    .line 568
    const-string v10, "images"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/sprint/dsa/dss/DsaClient;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 569
    .local v2, imgDir:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v10, "images"

    invoke-direct {v7, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 570
    .local v7, subDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 571
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_63} :catch_9d

    :goto_63
    if-lt v9, v11, :cond_93

    .line 578
    .end local v2           #imgDir:Ljava/io/File;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #subDir:Ljava/io/File;
    :cond_65
    :goto_65
    iget-boolean v9, p0, Lcom/sprint/dsa/dss/DsaClient;->DEVICE:Z

    if-eqz v9, :cond_6e

    .line 580
    :try_start_69
    iget-object v9, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    invoke-virtual {v9}, Lcom/sprint/dsa/dss/DsaSystem;->done()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_b7

    .line 586
    :cond_6e
    :goto_6e
    iget-object v9, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v9}, Lcom/sprint/dsa/dss/StateManager;->done()V

    .line 588
    iget-boolean v9, p0, Lcom/sprint/dsa/dss/DsaClient;->needsPowerRecycle:Z

    if-eqz v9, :cond_86

    .line 591
    :try_start_77
    new-instance v5, Lcom/sprint/internal/Platform;

    invoke-direct {v5, p0}, Lcom/sprint/internal/Platform;-><init>(Landroid/content/Context;)V

    .line 592
    .local v5, p:Lcom/sprint/internal/Platform;
    invoke-virtual {v5}, Lcom/sprint/internal/Platform;->reboot()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7f} :catch_c0

    .line 605
    .end local v5           #p:Lcom/sprint/internal/Platform;
    :goto_7f
    :try_start_7f
    const-string v9, "SprintZone_DSA"

    const-string v10, "ACTION_REBOOT!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_86} :catch_f5

    .line 611
    :cond_86
    :goto_86
    new-instance v9, Lcom/sprint/dsa/dss/DsaClient$3;

    invoke-direct {v9, p0}, Lcom/sprint/dsa/dss/DsaClient$3;-><init>(Lcom/sprint/dsa/dss/DsaClient;)V

    invoke-virtual {p0, v9}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 618
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->finish()V

    goto/16 :goto_5

    .line 571
    .restart local v2       #imgDir:Ljava/io/File;
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #resultIntent:Landroid/content/Intent;
    .restart local v7       #subDir:Ljava/io/File;
    :cond_93
    :try_start_93
    aget-object v1, v10, v9

    .line 572
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9a} :catch_9d

    .line 571
    :cond_9a
    add-int/lit8 v9, v9, 0x1

    goto :goto_63

    .line 575
    .end local v1           #f:Ljava/io/File;
    .end local v2           #imgDir:Ljava/io/File;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #subDir:Ljava/io/File;
    :catch_9d
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "SprintZone_DSA"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "close:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 581
    .end local v0           #e:Ljava/lang/Exception;
    :catch_b7
    move-exception v0

    .line 582
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "SprintZone_DSA"

    const-string v10, "close:doneSystem"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 593
    .end local v0           #e:Ljava/lang/Exception;
    :catch_c0
    move-exception v0

    .line 594
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_c1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 595
    .local v3, intent:Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 596
    .local v8, value:Landroid/os/Bundle;
    const-string v9, "com.android.service.Watchdog.REBOOT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const-string v9, "SprintZone_DSA"

    const-string v10, "REBOOT_ACTION!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v9, "nowait"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    const-string v9, "window"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const-string v9, "interval"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    const-string v9, "android.intent.action.REBOOT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/dss/DsaClient;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f4} :catch_f5

    goto :goto_7f

    .line 606
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #value:Landroid/os/Bundle;
    :catch_f5
    move-exception v0

    .line 607
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "SprintZone_DSA"

    const-string v10, "Power Cycling"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_86
.end method

.method public enableUI(ZLjava/lang/String;)V
    .registers 5
    .parameter "uiActiveFlag"
    .parameter "message"

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/sprint/dsa/dss/DsaClient;->isUIActive:Z

    .line 468
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    iget-object v0, v0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-ne v0, v1, :cond_b

    .line 513
    :goto_a
    return-void

    .line 473
    :cond_b
    new-instance v0, Lcom/sprint/dsa/dss/DsaClient$2;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/dss/DsaClient$2;-><init>(Lcom/sprint/dsa/dss/DsaClient;Z)V

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public getSZResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 626
    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected initDsa()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 371
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->needsPowerRecycle:Z

    .line 372
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 373
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z

    .line 374
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    .line 375
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->isUIActive:Z

    .line 376
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->FormData:Ljava/lang/String;

    .line 377
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    .line 378
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->baseURL:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->titleText:Ljava/lang/String;

    .line 380
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    .line 381
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->requestWindowFeature(I)Z

    .line 127
    const v2, 0x7f03000d

    :try_start_c
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->setContentView(I)V

    .line 128
    const/4 v2, 0x3

    const v3, 0x7f020014

    invoke-virtual {p0, v2, v3}, Lcom/sprint/dsa/dss/DsaClient;->setFeatureDrawableResource(II)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_12c

    .line 136
    :goto_16
    :try_start_16
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 137
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->clientVersion:Ljava/lang/String;

    .line 138
    const-string v2, "SprintZone_DSA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version Name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaClient;->clientVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_3d} :catch_13d

    .line 145
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_3d
    :try_start_3d
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-nez v2, :cond_48

    .line 146
    new-instance v2, Lcom/sprint/dsa/dss/DsaSystem;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/DsaSystem;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    .line 148
    :cond_48
    const v2, 0x7f0b003c

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->btnLeft:Landroid/widget/Button;

    .line 149
    const v2, 0x7f0b003d

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->btnRight:Landroid/widget/Button;

    .line 150
    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->titleView:Landroid/widget/TextView;

    .line 151
    const v2, 0x7f0b003a

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    .line 152
    new-instance v2, Lcom/sprint/dsa/dss/DsaWebChromeClient;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/DsaWebChromeClient;-><init>(Lcom/sprint/dsa/dss/DsaClient;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebChromeClient:Lcom/sprint/dsa/dss/DsaWebChromeClient;

    .line 153
    new-instance v2, Lcom/sprint/dsa/dss/DsaWebViewClient;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/DsaWebViewClient;-><init>(Lcom/sprint/dsa/dss/DsaClient;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    .line 154
    new-instance v2, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;-><init>(Lcom/sprint/dsa/dss/DsaClient;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    .line 155
    new-instance v2, Lcom/sprint/dsa/dss/StateManager;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/StateManager;-><init>(Lcom/sprint/dsa/dss/DsaClient;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    .line 156
    new-instance v2, Lcom/sprint/dsa/dss/DsaHttpClient;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/DsaHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    .line 157
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_9e} :catch_147

    .line 163
    :goto_9e
    if-nez p1, :cond_154

    .line 164
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->initDsa()V

    .line 173
    :goto_a3
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v3, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_CREATE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 174
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 175
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 176
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebChromeClient:Lcom/sprint/dsa/dss/DsaWebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 177
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    const-string v4, "dsa"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 179
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 180
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 181
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 182
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 184
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_16a

    .line 185
    sget-object v2, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->model:Ljava/lang/String;

    .line 186
    sget-object v2, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->make:Ljava/lang/String;

    .line 193
    :goto_fc
    :try_start_fc
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->powerManager:Landroid/os/PowerManager;

    .line 194
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->powerManager:Landroid/os/PowerManager;

    const v3, 0x3000000a

    .line 195
    const-string v4, "SprintZone"

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    iget-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->keyGuard:Z

    if-eqz v2, :cond_12b

    .line 197
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/dss/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardManager:Landroid/app/KeyguardManager;

    .line 198
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardManager:Landroid/app/KeyguardManager;

    const-string v3, "SDSA_KEYGUARDLOCK"

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_12b} :catch_173

    .line 203
    :cond_12b
    :goto_12b
    return-void

    .line 129
    :catch_12c
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v2, :cond_138

    const-string v2, "SprintZone_DSA"

    const-string v3, "DsaClient.onCreate(): failed to setContentView"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_138
    invoke-virtual {p0, v5}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto/16 :goto_16

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :catch_13d
    move-exception v0

    .line 140
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SprintZone_DSA"

    const-string v3, "PM error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 158
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_147
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_DSA"

    const-string v3, "Failed to init DSA"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-virtual {p0, v5}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto/16 :goto_9e

    .line 166
    .end local v0           #e:Ljava/lang/Exception;
    :cond_154
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v2}, Lcom/sprint/dsa/dss/StateManager;->getUIState()Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    move-result-object v2

    sget-object v3, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-eq v2, v3, :cond_12b

    .line 169
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/dss/DsaClient;->restoreDsa(Landroid/os/Bundle;)V

    .line 170
    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v3, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_RESTART:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    goto/16 :goto_a3

    .line 188
    :cond_16a
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->model:Ljava/lang/String;

    .line 189
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/dsa/dss/DsaClient;->make:Ljava/lang/String;

    goto :goto_fc

    .line 200
    :catch_173
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "SprintZone_DSA"

    const-string v3, "DsaClient.onCreate(): failed Power manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->destroying:Z

    .line 310
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 312
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 425
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2b

    .line 426
    iget-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z

    if-nez v2, :cond_a

    .line 447
    :cond_9
    :goto_9
    return v0

    .line 429
    :cond_a
    iget-boolean v2, p0, Lcom/sprint/dsa/dss/DsaClient;->back:Z

    if-eqz v2, :cond_25

    .line 430
    iput-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z

    .line 431
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->backMessage:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 432
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->backMessage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sprint/dsa/dss/DsaDialogs;->yesBackDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V

    goto :goto_9

    .line 434
    :cond_1a
    const-string v1, "option=back"

    iput-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_9

    .line 439
    :cond_25
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->backMessage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sprint/dsa/dss/DsaDialogs;->noBackDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V

    goto :goto_9

    .line 441
    :cond_2b
    if-eqz p1, :cond_43

    if-eq p1, v0, :cond_43

    .line 442
    const/16 v2, 0x14

    if-eq p1, v2, :cond_43

    const/16 v2, 0x17

    if-eq p1, v2, :cond_43

    .line 443
    const/16 v2, 0x15

    if-eq p1, v2, :cond_43

    const/16 v2, 0x16

    if-eq p1, v2, :cond_43

    .line 444
    const/16 v2, 0x13

    if-ne p1, v2, :cond_9

    :cond_43
    move v0, v1

    .line 445
    goto :goto_9
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 452
    const-string v0, "SprintZone_DSA"

    const-string v1, "DsaClient.onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 454
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 291
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->releaseLocks()V

    .line 293
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/StateManager;->getUIState()Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-eq v0, v1, :cond_17

    .line 294
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 304
    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->acquireLocks()V

    .line 279
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/StateManager;->getUIState()Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-eq v0, v1, :cond_1d

    .line 280
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_RESUMED:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 281
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->isUIActive:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 283
    :cond_1d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 348
    const-string v0, "LeftSoftKeyText"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "RightSoftKeyText"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 350
    const-string v0, "TitleText"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->titleText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 351
    const-string v0, "baseURL"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->baseURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 352
    const-string v0, "NextURL"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 353
    const-string v0, "FormData"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->FormData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 354
    const-string v0, "option"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 355
    const-string v0, "allowBack"

    iget-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    const-string v0, "exitAction"

    iget-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    const-string v0, "htmlPage"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 358
    const-string v0, "esn"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->esn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 359
    const-string v0, "meid"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->meid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 360
    const-string v0, "isUIActive"

    iget-boolean v1, p0, Lcom/sprint/dsa/dss/DsaClient;->isUIActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->saveFormData()V

    .line 362
    const-string v0, "formData"

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 365
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/dss/DsaClient;->printDebugData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method protected onStart()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 217
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f080037

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/dss/DsaClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->titleView:Landroid/widget/TextView;

    const v6, 0x7f08006b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 221
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v6, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_START:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    invoke-virtual {v5, v6}, Lcom/sprint/dsa/dss/StateManager;->setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V

    .line 223
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->getSZResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 224
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->lang:Ljava/lang/String;

    .line 225
    iget-boolean v5, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_5c

    const-string v5, "SprintZone_DSA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current lanaguage: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprint/dsa/dss/DsaClient;->lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5c
    invoke-virtual {p0}, Lcom/sprint/dsa/dss/DsaClient;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 228
    .local v1, intent:Landroid/os/Bundle;
    if-eqz v1, :cond_83

    .line 229
    const-string v5, "com.sprint.dsa.query"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_83

    .line 231
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, pos:I
    const/4 v5, -0x1

    if-le v3, v5, :cond_83

    .line 233
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->query:Ljava/lang/String;

    .line 234
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    .line 242
    .end local v3           #pos:I
    .end local v4           #url:Ljava/lang/String;
    :cond_83
    iget-boolean v5, p0, Lcom/sprint/dsa/dss/DsaClient;->DEVICE:Z

    if-eqz v5, :cond_ab

    .line 243
    iget-boolean v5, p0, Lcom/sprint/dsa/dss/DsaClient;->initLoad:Z

    if-eqz v5, :cond_9f

    .line 245
    :try_start_8b
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaSystem:Lcom/sprint/dsa/dss/DsaSystem;

    invoke-virtual {v5}, Lcom/sprint/dsa/dss/DsaSystem;->initSystem()V

    .line 246
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sprint/dsa/dss/DsaClient;->initLoad:Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_93} :catch_94

    .line 265
    :cond_93
    :goto_93
    return-void

    .line 247
    :catch_94
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SprintZone_DSA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_93

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9f
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;

    if-eqz v5, :cond_93

    .line 251
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sprint/dsa/dss/DsaWebViewClient;->loadData(Ljava/lang/String;)V

    goto :goto_93

    .line 255
    :cond_ab
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "?esn=8008711F&meid=A1000005432ABC&nai=emulater@sprint.com&mdn=0000006580&msid=0000003232&lang="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaClient;->lang:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&make="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaClient;->make:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&model="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaClient;->model:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&clientver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/dsa/dss/DsaClient;->clientVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    iput-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->query:Ljava/lang/String;

    .line 258
    iget-object v5, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/dss/DsaHttpClient;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sprint/dsa/dss/DsaClient;->query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/dsa/dss/DsaHttpClient;->execute(Ljava/lang/String;)V

    goto :goto_93
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "SprintZone_DSA"

    const-string v1, "DsaClient.onUserleaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 412
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/StateManager;->startPauseWatch()V

    .line 413
    return-void
.end method

.method protected printDebugData(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "bundle"
    .parameter "label"

    .prologue
    .line 419
    return-void
.end method

.method protected releaseLocks()V
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 333
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 335
    :cond_d
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyGuard:Z

    if-eqz v0, :cond_1d

    .line 336
    iget-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLockDisabled:Z

    if-eqz v0, :cond_1d

    .line 337
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->keyguardLockDisabled:Z

    .line 341
    :cond_1d
    return-void
.end method

.method protected restoreDsa(Landroid/os/Bundle;)V
    .registers 4
    .parameter "inState"

    .prologue
    .line 389
    const-string v0, "LeftSoftKeyText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    .line 390
    const-string v0, "RightSoftKeyText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    .line 391
    const-string v0, "TitleText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->titleText:Ljava/lang/String;

    .line 392
    const-string v0, "baseURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->baseURL:Ljava/lang/String;

    .line 393
    const-string v0, "NextURL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    .line 394
    const-string v0, "FormData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->FormData:Ljava/lang/String;

    .line 395
    const-string v0, "option"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 396
    const-string v0, "allowBack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->allowBack:Z

    .line 397
    const-string v0, "exitAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    .line 398
    const-string v0, "htmlPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->htmlPage:Ljava/lang/String;

    .line 399
    const-string v0, "esn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->esn:Ljava/lang/String;

    .line 400
    const-string v0, "meid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/dss/DsaClient;->meid:Ljava/lang/String;

    .line 401
    const-string v0, "isUIActive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->isUIActive:Z

    .line 402
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaClient;->dsaJavascript:Lcom/sprint/dsa/dss/DsaJavaScriptInterface;

    const-string v0, "formData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/dss/DsaClient;->initLoad:Z

    .line 405
    const-string v0, "restoreDsa"

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/dss/DsaClient;->printDebugData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public setBusyText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 457
    new-instance v0, Lcom/sprint/dsa/dss/DsaClient$1;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/dss/DsaClient$1;-><init>(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method
