.class public Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;
.super Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;
.source "MainActivityTablet.java"

# interfaces
.implements Lcom/samsung/api/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;
    }
.end annotation


# static fields
.field public static appStart:Z


# instance fields
.field private apName:Landroid/widget/TextView;

.field private deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListView:Landroid/widget/ListView;

.field private device_list_layout:Landroid/view/View;

.field private mCancelButton:Landroid/widget/Button;

.field mGuiHandler:Landroid/os/Handler;

.field private mMainIsResume:Z

.field private mRefreshButton:Landroid/widget/ImageButton;

.field private mStopAnimation:Z

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public mainPause:Z

.field private no_device:Landroid/widget/TextView;

.field private no_device_layout:Landroid/view/View;

.field private searchProgress:Landroid/widget/ProgressBar;

.field private selectedServer:Lcom/samsung/api/DeviceItem;

.field public uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

.field wifiApEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->appStart:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 59
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceListView:Landroid/widget/ListView;

    .line 60
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->searchProgress:Landroid/widget/ProgressBar;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->apName:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mCancelButton:Landroid/widget/Button;

    .line 66
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->wifiApEnabled:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mMainIsResume:Z

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 76
    new-instance v0, Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-direct {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mainPause:Z

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/DeviceItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->destroyKiesWifi()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->apName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->searchProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;

    return-object v0
.end method

.method private destroyKiesWifi()V
    .registers 3

    .prologue
    .line 345
    const/4 v0, 0x1

    const-string v1, "destroyKiesWifi"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->terminateDmc()Z

    .line 349
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->terminate()V

    .line 350
    return-void
.end method

.method private fillDeviceList()V
    .registers 5

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 433
    :cond_d
    return-void
.end method

.method private startDmc()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 267
    const-string v3, "startDmc"

    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    .line 270
    .local v0, dmc:Lcom/samsung/api/SyncControllerAPI;
    :try_start_a
    invoke-virtual {v0}, Lcom/samsung/api/SyncControllerAPI;->startDMC()V
    :try_end_d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_a .. :try_end_d} :catch_e

    .line 276
    :goto_d
    return v2

    .line 271
    :catch_e
    move-exception v1

    .line 272
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 273
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private terminateDmc()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 280
    const-string v3, "terminateDmc"

    invoke-static {v2, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    .line 283
    .local v0, dmc:Lcom/samsung/api/SyncControllerAPI;
    :try_start_a
    invoke-virtual {v0}, Lcom/samsung/api/SyncControllerAPI;->terminateDMC()V
    :try_end_d
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_a .. :try_end_d} :catch_e

    .line 289
    :goto_d
    return v2

    .line 284
    :catch_e
    move-exception v1

    .line 285
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 286
    const/4 v2, 0x0

    goto :goto_d
.end method


# virtual methods
.method public deviceAdded(Lcom/samsung/api/DeviceItem;)V
    .registers 4
    .parameter "dev"

    .prologue
    .line 331
    const/4 v0, 0x1

    const-string v1, "deviceAdded"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->fillDeviceList()V

    .line 333
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/api/DeviceItem;)V
    .registers 5
    .parameter "dev"

    .prologue
    .line 337
    const/4 v1, 0x1

    const-string v2, "deviceRemoved"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->fillDeviceList()V

    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 341
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity notifyActivityEvent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 354
    const/16 v0, 0x2f3

    if-ne p1, v0, :cond_22

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->refreshList()V

    .line 403
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->notifyActivityEvent(I)V

    .line 404
    :cond_21
    return-void

    .line 358
    :cond_22
    const/16 v0, 0x2f1

    if-ne p1, v0, :cond_38

    .line 360
    const-string v0, "ALL_ACTIVITY_KILL_CODE"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 363
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->destroyKiesWifi()V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->finish()V

    goto :goto_1e

    .line 367
    :cond_38
    const/16 v0, 0x2f2

    if-ne p1, v0, :cond_1e

    .line 369
    const/4 v0, 0x0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 372
    :goto_57
    if-nez v0, :cond_21

    .line 374
    const-string v2, "START_WARNING_ACTIVITY : !showThePopup"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 375
    iget-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mainPause:Z

    if-nez v2, :cond_21

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START_WARNING_ACTIVITY :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 384
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 385
    goto :goto_57

    .line 386
    :cond_96
    iget-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mMainIsResume:Z

    if-nez v2, :cond_9c

    move v0, v1

    .line 388
    goto :goto_57

    .line 392
    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_WARNING_ACTIVITY :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->hasWindowFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 395
    const-wide/16 v2, 0x1f4

    :try_start_b8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_57

    .line 396
    :catch_bc
    move-exception v2

    .line 397
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_57
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 422
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - Result Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 424
    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    .line 425
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->destroyKiesWifi()V

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->finish()V

    .line 428
    :cond_20
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onBackPressed()V

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->finish()V

    .line 419
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->setContentView(I)V

    .line 86
    sput-boolean v3, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->appStart:Z

    .line 87
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceListView:Landroid/widget/ListView;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceAdapter:Lcom/sec/android/app/kieswifi/view/UPNPContentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->apName:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->searchProgress:Landroid/widget/ProgressBar;

    .line 93
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;

    .line 94
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mCancelButton:Landroid/widget/Button;

    .line 95
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device_layout:Landroid/view/View;

    .line 96
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->device_list_layout:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;->getDeviceType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_91

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->no_device:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    :cond_91
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->wifiApEnabled:Z

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$1;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$3;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$4;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    .line 223
    iput-boolean v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z

    .line 224
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 407
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onDestroy()V

    .line 408
    const/4 v0, 0x1

    const-string v1, "KiesWifi Main onDertroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->appStart:Z

    .line 411
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->removeActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 412
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->notifyToActivity(I)V

    .line 413
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->destroyKiesWifi()V

    .line 414
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onLowMemory()V

    .line 307
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->destroyKiesWifi()V

    .line 308
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 297
    const-string v0, "onPause_mainactivity"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 299
    iput-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mainPause:Z

    .line 301
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->removeActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 302
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onPause()V

    .line 303
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onResume()V

    .line 312
    const-string v0, "onResume"

    invoke-static {v3, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 320
    iput-boolean v2, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mainPause:Z

    .line 322
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->init(Landroid/content/Context;)V

    .line 323
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->addActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 325
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/SyncControllerAPI;->addDeviceChangeListener(Lcom/samsung/api/DeviceChangeListener;)V

    .line 327
    iput-boolean v3, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mMainIsResume:Z

    .line 328
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onStop()V

    .line 294
    return-void
.end method

.method public refreshList()V
    .registers 4

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->terminateDmc()Z

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z

    .line 231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    const/4 v1, 0x1

    const-string v2, "refreshList"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->startDmc()Z

    .line 236
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->fillDeviceList()V

    .line 237
    return-void
.end method
