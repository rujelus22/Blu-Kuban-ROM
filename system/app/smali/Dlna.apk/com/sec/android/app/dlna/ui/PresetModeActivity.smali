.class public Lcom/sec/android/app/dlna/ui/PresetModeActivity;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "PresetModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/PresetModeActivity$AnimationThread;
    }
.end annotation


# instance fields
.field private final ANIMATION_SHOW:I

.field private final ANIMATION_STOP:I

.field private final BACK_KEY:I

.field private final CLASS_NAME:Ljava/lang/String;

.field private final FINISH_ALLSHARE:I

.field private final INIT_COMPLETE:I

.field private final PRESET_DESTROY:I

.field private final PRESET_RESUME:I

.field private final SHOW_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private device:Lcom/samsung/api/DeviceItem;

.field private mAudio:Landroid/widget/ImageView;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

.field private mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mIsAllShareDestroyed:Z

.field private mIsAnimationRunning:Z

.field private mMyAudioButton:Landroid/widget/ImageButton;

.field private mMyImageButton:Landroid/widget/ImageButton;

.field private mMyVideoButton:Landroid/widget/ImageButton;

.field private mPrepareAllshare:Z

.field private mPresetIsResume:Z

.field private mProgress0:Landroid/widget/ProgressBar;

.field private mProgress1:Landroid/widget/ProgressBar;

.field private mProgress2:Landroid/widget/ProgressBar;

.field private mVideo:Landroid/widget/ImageView;

.field private myAudioMode:Landroid/widget/RelativeLayout;

.field private myImageMode:Landroid/widget/RelativeLayout;

.field private myVideoMode:Landroid/widget/RelativeLayout;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 50
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "PresetModeActivity."

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->CLASS_NAME:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 78
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->INIT_COMPLETE:I

    .line 80
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->FINISH_ALLSHARE:I

    .line 82
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->PRESET_RESUME:I

    .line 84
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->PRESET_DESTROY:I

    .line 86
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->SHOW_ANIMATION:I

    .line 88
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->ANIMATION_SHOW:I

    .line 90
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->ANIMATION_STOP:I

    .line 92
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->BACK_KEY:I

    .line 94
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPresetIsResume:Z

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAllShareDestroyed:Z

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->device:Lcom/samsung/api/DeviceItem;

    .line 99
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress0:Landroid/widget/ProgressBar;

    .line 101
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress1:Landroid/widget/ProgressBar;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress2:Landroid/widget/ProgressBar;

    .line 111
    new-instance v0, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    .line 628
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress2:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyVideoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyAudioButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->device:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->device:Lcom/samsung/api/DeviceItem;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mVideo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mAudio:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->destroyAllShare()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress0:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress1:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private destroyAllShare()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 588
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PresetModeActivity.destroyAllShare() in : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAllShareDestroyed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iput-boolean v5, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAllShareDestroyed:Z

    .line 591
    invoke-static {}, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->cancelNotify()V

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.finishAllShare"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, intent:Landroid/content/Intent;
    :try_start_27
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_8e

    .line 600
    :goto_2a
    :try_start_2a
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->terminateDMC()V
    :try_end_31
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_2a .. :try_end_31} :catch_97

    .line 605
    :goto_31
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->terminate()V

    .line 608
    :try_start_38
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 609
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v2

    if-ne v2, v5, :cond_6d

    .line 612
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 613
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->unbindDMSService(Landroid/content/Context;)V

    .line 614
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMSService(Landroid/content/Context;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_6d} :catch_9c

    .line 622
    :cond_6d
    :goto_6d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 624
    invoke-virtual {p0, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->requestKillProcess(Landroid/content/Context;)V

    .line 625
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PresetModeActivity.destroyAllShare() out : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAllShareDestroyed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 596
    :catch_8e
    move-exception v0

    .line 597
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "Fail to broadcast \'finishAllShare\'"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 601
    .end local v0           #e:Ljava/lang/Exception;
    :catch_97
    move-exception v0

    .line 602
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_31

    .line 618
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :catch_9c
    move-exception v0

    .line 619
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6d
.end method


# virtual methods
.method public LandscapeView()V
    .registers 2

    .prologue
    .line 319
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->setContentView(I)V

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->setView()V

    .line 321
    return-void
.end method

.method public PortraitView()V
    .registers 2

    .prologue
    .line 324
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->setContentView(I)V

    .line 325
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->setView()V

    .line 326
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x3e9

    .line 631
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/16 v0, 0x2f3

    if-ne p1, v0, :cond_52

    .line 633
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_48

    .line 634
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z

    if-nez v0, :cond_33

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 658
    :cond_44
    :goto_44
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->notifyActivityEvent(I)V

    .line 659
    :goto_47
    return-void

    .line 638
    :cond_48
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAnimationRunning:Z

    if-nez v0, :cond_33

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33

    .line 643
    :cond_52
    const/16 v0, 0x2f1

    if-ne p1, v0, :cond_6a

    .line 644
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_44

    .line 646
    const-string v0, "DLNA"

    const-string v1, "PresetModeActivity.IActivityListener.ALL_ACTIVITY_KILL_CODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->destroyAllShare()V

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->finish()V

    goto :goto_44

    .line 650
    :cond_6a
    const/16 v0, 0x2f2

    if-ne p1, v0, :cond_44

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_47
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 698
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 699
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->destroyAllShare()V

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->finish()V

    .line 703
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 704
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->PortraitView()V

    .line 315
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    return-void

    .line 312
    :cond_13
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->LandscapeView()V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->requestWindowFeature(I)Z

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z

    .line 336
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 676
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_36

    .line 678
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPrepareAllshare:Z

    .line 680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09003f

    new-instance v3, Lcom/sec/android/app/dlna/ui/PresetModeActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$9;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000a

    new-instance v3, Lcom/sec/android/app/dlna/ui/PresetModeActivity$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$8;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 694
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :goto_35
    return-object v1

    :cond_36
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_35
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 662
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresetModeActivity.onDestroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAllShareDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 665
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mIsAllShareDestroyed:Z

    if-nez v0, :cond_24

    .line 666
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->destroyAllShare()V

    .line 668
    :cond_24
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 576
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onLowMemory()V

    .line 577
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->destroyAllShare()V

    .line 578
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 568
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPresetIsResume:Z

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 581
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mPresetIsResume:Z

    .line 585
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onStop()V

    .line 565
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    .line 552
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onWindowFocusChanged(Z)V

    .line 554
    if-ne p1, v2, :cond_1f

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 557
    .local v0, netInfo:Landroid/net/NetworkInfo;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :cond_1f
    return-void
.end method

.method requestKillProcess(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 707
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 708
    .local v1, notifier:Landroid/app/NotificationManager;
    const/16 v3, 0x1001

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 709
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 710
    .local v2, sdkVersion:I
    const/16 v3, 0x8

    if-ge v2, v3, :cond_27

    .line 711
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 713
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 738
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_26
    return-void

    .line 715
    :cond_27
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/dlna/ui/PresetModeActivity$10;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$10;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;Landroid/content/Context;)V

    const-string v5, "Process Killer"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_26
.end method

.method public setView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyVideoButton:Landroid/widget/ImageButton;

    .line 340
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyImageButton:Landroid/widget/ImageButton;

    .line 341
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyAudioButton:Landroid/widget/ImageButton;

    .line 343
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mVideo:Landroid/widget/ImageView;

    .line 344
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mImage:Landroid/widget/ImageView;

    .line 345
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mAudio:Landroid/widget/ImageView;

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 352
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$3;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 409
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$4;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$5;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$6;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity$7;-><init>(Lcom/sec/android/app/dlna/ui/PresetModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 536
    :goto_d7
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    if-nez v0, :cond_ea

    .line 537
    new-instance v0, Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    invoke-static {v0}, Lcom/samsung/util/Debugs;->addDebugOutputHandler(Lcom/samsung/util/DebugOutputHandler;)V

    .line 539
    invoke-static {}, Lcom/samsung/util/Debugs;->on()V

    .line 545
    :cond_ea
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress0:Landroid/widget/ProgressBar;

    .line 546
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress1:Landroid/widget/ProgressBar;

    .line 547
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mProgress2:Landroid/widget/ProgressBar;

    .line 548
    return-void

    .line 528
    :cond_10c
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myVideoMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myImageMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->myAudioMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PresetModeActivity;->mMyAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_d7
.end method
