.class public Lcom/sec/android/app/dlna/service/DmsLocalService;
.super Landroid/app/Service;
.source "DmsLocalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;,
        Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;
    }
.end annotation


# instance fields
.field private final AUDIO_UPDATING_DONE:I

.field private final CLASS_NAME:Ljava/lang/String;

.field private final DB_UPDATE_DELAY:I

.field private final IMAGE_UPDATING_DONE:I

.field private final TAG:Ljava/lang/String;

.field private final VIDEO_UPDATING_DONE:I

.field contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

.field private isAudioUpdating:Z

.field public isChangedLocale:Z

.field private isImageUpdating:Z

.field public isReceiveEject:Z

.field private isVideoUpdating:Z

.field private localAudioObserver:Landroid/database/ContentObserver;

.field private localImageObserver:Landroid/database/ContentObserver;

.field private localVideoObserver:Landroid/database/ContentObserver;

.field private final mBinder:Landroid/os/IBinder;

.field private mCr:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field private final mHandler1:Landroid/os/Handler;

.field private final mHandler2:Landroid/os/Handler;

.field private final mHandler3:Landroid/os/Handler;

.field mLocaleChanged:Landroid/content/BroadcastReceiver;

.field oldLocale:Ljava/util/Locale;

.field public restartPreset:Z

.field private server:Lcom/samsung/api/DigitalMediaServerAPI;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->TAG:Ljava/lang/String;

    .line 60
    const-string v0, "DmsLocalService."

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->CLASS_NAME:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    .line 83
    new-instance v0, Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mBinder:Landroid/os/IBinder;

    .line 85
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->oldLocale:Ljava/util/Locale;

    .line 240
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->restartPreset:Z

    .line 458
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler1:Landroid/os/Handler;

    .line 460
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler2:Landroid/os/Handler;

    .line 462
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler3:Landroid/os/Handler;

    .line 464
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    .line 466
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localVideoObserver:Landroid/database/ContentObserver;

    .line 468
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localAudioObserver:Landroid/database/ContentObserver;

    .line 470
    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localImageObserver:Landroid/database/ContentObserver;

    .line 616
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    .line 618
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isChangedLocale:Z

    .line 663
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->AUDIO_UPDATING_DONE:I

    .line 664
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->IMAGE_UPDATING_DONE:I

    .line 665
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->VIDEO_UPDATING_DONE:I

    .line 667
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->DB_UPDATE_DELAY:I

    .line 669
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioUpdating:Z

    .line 670
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageUpdating:Z

    .line 671
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoUpdating:Z

    .line 673
    new-instance v0, Lcom/sec/android/app/dlna/service/DmsLocalService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/service/DmsLocalService$5;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/service/DmsLocalService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->unRegisterContentObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/service/DmsLocalService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerContentObserver()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/service/DmsLocalService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioUpdating:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/dlna/service/DmsLocalService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageUpdating:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/dlna/service/DmsLocalService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoUpdating:Z

    return p1
.end method

.method private declared-synchronized addBroadcastAction()V
    .registers 9

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    const-string v5, "DLNA"

    const-string v6, "DmsLocalService.addBroadcastAction()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    if-nez v5, :cond_12

    .line 550
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    .line 553
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_9f

    if-eqz v5, :cond_18

    .line 595
    :goto_16
    monitor-exit p0

    return-void

    .line 556
    :cond_18
    :try_start_18
    new-instance v5, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V

    iput-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    .line 557
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 558
    .local v0, fil:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v5, "file"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 561
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 562
    .local v1, fil2:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 565
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 566
    .local v2, fil3:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 569
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v3, fil4:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v5, "file"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 573
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 574
    .local v4, fil5:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v5, "file"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 577
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 579
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 581
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_8e

    .line 584
    new-instance v5, Lcom/sec/android/app/dlna/service/DmsLocalService$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/service/DmsLocalService$4;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V

    iput-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;

    .line 592
    :cond_8e
    iget-object v5, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->registerContentObserver()V
    :try_end_9d
    .catchall {:try_start_18 .. :try_end_9d} :catchall_9f

    goto/16 :goto_16

    .line 547
    .end local v0           #fil:Landroid/content/IntentFilter;
    .end local v1           #fil2:Landroid/content/IntentFilter;
    .end local v2           #fil3:Landroid/content/IntentFilter;
    .end local v3           #fil4:Landroid/content/IntentFilter;
    .end local v4           #fil5:Landroid/content/IntentFilter;
    :catchall_9f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getIpFromInt(I)Ljava/lang/String;
    .registers 5
    .parameter "input"

    .prologue
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private getUUIDFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "macAddr"

    .prologue
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private prepareMediaServer(Ljava/lang/String;)Z
    .registers 16
    .parameter "friendlyName"

    .prologue
    .line 389
    const-string v0, "DLNA"

    const-string v1, "DmsLocalService.prepareMediaServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 392
    .local v13, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 393
    .local v8, connectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, ipAddr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getUUIDFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, uuid:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 397
    .local v12, rs:Landroid/content/res/Resources;
    const/high16 v0, 0x7f05

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 398
    .local v3, cds:Ljava/io/InputStream;
    const v0, 0x7f050001

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 399
    .local v4, cms:Ljava/io/InputStream;
    const v0, 0x7f050002

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 402
    .local v2, desc:Ljava/io/InputStream;
    :try_start_50
    invoke-static {p0}, Lcom/samsung/api/DigitalMediaServerAPI;->getInstance(Landroid/content/Context;)Lcom/samsung/api/DigitalMediaServerAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 404
    .local v10, icon1:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 405
    .local v11, icon2:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0, v10, v11}, Lcom/samsung/api/DigitalMediaServerAPI;->setIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 406
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->setDefaultDirectoryName()V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/api/DigitalMediaServerAPI;->startMediaServer(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7b
    .catchall {:try_start_50 .. :try_end_7b} :catchall_86

    .line 410
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 411
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 412
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_84} :catch_97

    .line 418
    const/4 v0, 0x1

    .end local v10           #icon1:Landroid/graphics/Bitmap;
    .end local v11           #icon2:Landroid/graphics/Bitmap;
    :goto_85
    return v0

    .line 409
    :catchall_86
    move-exception v0

    .line 410
    :try_start_87
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 411
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 412
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_90} :catch_91

    .line 409
    throw v0

    .line 413
    :catch_91
    move-exception v9

    .line 414
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 415
    :goto_95
    const/4 v0, 0x0

    goto :goto_85

    .line 413
    .end local v9           #e:Ljava/io/IOException;
    .restart local v10       #icon1:Landroid/graphics/Bitmap;
    .restart local v11       #icon2:Landroid/graphics/Bitmap;
    :catch_97
    move-exception v9

    .line 414
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95
.end method

.method private registerContentObserver()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 473
    const-string v3, "DLNA"

    const-string v4, "DmsLocalService.registerContentObserver()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localVideoObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_15

    .line 476
    new-instance v3, Lcom/sec/android/app/dlna/service/DmsLocalService$1;

    iget-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler1:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dlna/service/DmsLocalService$1;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localVideoObserver:Landroid/database/ContentObserver;

    .line 488
    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localAudioObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_22

    .line 489
    new-instance v3, Lcom/sec/android/app/dlna/service/DmsLocalService$2;

    iget-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler2:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dlna/service/DmsLocalService$2;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localAudioObserver:Landroid/database/ContentObserver;

    .line 501
    :cond_22
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localImageObserver:Landroid/database/ContentObserver;

    if-nez v3, :cond_2f

    .line 502
    new-instance v3, Lcom/sec/android/app/dlna/service/DmsLocalService$3;

    iget-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler3:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dlna/service/DmsLocalService$3;-><init>(Lcom/sec/android/app/dlna/service/DmsLocalService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localImageObserver:Landroid/database/ContentObserver;

    .line 515
    :cond_2f
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 516
    .local v1, uriImages:Landroid/net/Uri;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 517
    .local v2, uriVideos:Landroid/net/Uri;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 519
    .local v0, uriAudios:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 521
    iget-object v3, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localAudioObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 522
    return-void
.end method

.method private declared-synchronized removeBroadcastAction()V
    .registers 4

    .prologue
    .line 598
    monitor-enter p0

    :try_start_1
    const-string v1, "DLNA"

    const-string v2, "DmsLocalService.removeBroadcastAction()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->unRegisterContentObserver()V

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2a

    if-eqz v1, :cond_17

    .line 604
    :try_start_f
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->contentsReceiver:Lcom/sec/android/app/dlna/service/DmsLocalService$DoaContentsReceiver;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_25

    .line 610
    :cond_17
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_23

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 612
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mLocaleChanged:Landroid/content/BroadcastReceiver;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_2a

    .line 614
    :cond_23
    monitor-exit p0

    return-void

    .line 606
    :catch_25
    move-exception v0

    .line 607
    .local v0, e:Ljava/lang/Exception;
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_17

    .line 598
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setDefaultDirectoryName()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x1

    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaServerAPI;->setDirectoryName(ILjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x0

    const v2, 0x7f090041

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaServerAPI;->setDirectoryName(ILjava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x2

    const v2, 0x7f090073

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaServerAPI;->setDirectoryName(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method private startMediaServer()Z
    .registers 3

    .prologue
    .line 422
    const-string v0, "DLNA"

    const-string v1, "DmsLocalService.startMediaServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addBroadcastAction()V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0}, Lcom/samsung/api/DigitalMediaServerAPI;->resumeMediaServer()Z

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method private stopMediaServer()Z
    .registers 3

    .prologue
    .line 430
    const-string v0, "DLNA"

    const-string v1, "DmsLocalService.stopMediaServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeBroadcastAction()V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0}, Lcom/samsung/api/DigitalMediaServerAPI;->stopMediaServer()Z

    move-result v0

    if-nez v0, :cond_19

    .line 435
    const-string v0, "Error in Stopping Media Server"

    invoke-static {v0}, Lcom/samsung/util/Debugs;->error(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    .line 440
    :goto_18
    return v0

    .line 439
    :cond_19
    const-string v0, "DLNA"

    const-string v1, "DMS is stopped!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x1

    goto :goto_18
.end method

.method private unRegisterContentObserver()V
    .registers 3

    .prologue
    .line 525
    const-string v0, "DLNA"

    const-string v1, "DmsLocalService.unRegisterContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localVideoObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1c

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_15

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    .line 530
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 533
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localImageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_31

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_2a

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    .line 536
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localAudioObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_46

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_3f

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    .line 542
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->localAudioObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 544
    :cond_46
    return-void
.end method


# virtual methods
.method public addAudioDirectory()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaServerAPI;->addDirectory(I)Z

    move-result v0

    .line 153
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public addImageDirectory()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v1, :cond_b

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v1, v0}, Lcom/samsung/api/DigitalMediaServerAPI;->addDirectory(I)Z

    move-result v0

    .line 161
    :cond_b
    return v0
.end method

.method public addVideoDirectory()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaServerAPI;->addDirectory(I)Z

    move-result v0

    .line 169
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getUploadPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_b

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0}, Lcom/samsung/api/DigitalMediaServerAPI;->getUploadPath()Ljava/lang/String;

    move-result-object v0

    .line 375
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    goto :goto_a
.end method

.method public isAudioShared()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_c

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaServerAPI;->isDirectoryShared(I)Z

    move-result v0

    .line 223
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isImageShared()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v1, :cond_b

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v1, v0}, Lcom/samsung/api/DigitalMediaServerAPI;->isDirectoryShared(I)Z

    move-result v0

    .line 230
    :cond_b
    return v0
.end method

.method public isServerStarted()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0}, Lcom/samsung/api/DigitalMediaServerAPI;->isServerStarted()Z

    move-result v0

    goto :goto_5
.end method

.method public isVideoShared()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_c

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaServerAPI;->isDirectoryShared(I)Z

    move-result v0

    .line 237
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 88
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmsLocalService.onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->oldLocale:Ljava/util/Locale;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->oldLocale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 91
    :cond_30
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->oldLocale:Ljava/util/Locale;

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->setDefaultDirectoryName()V

    .line 95
    :cond_37
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    return-void
.end method

.method public removeAudioDirectory()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaServerAPI;->removeDirectory(I)Z

    move-result v0

    .line 177
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public removeImageDirectory()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v1, :cond_b

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v1, v0}, Lcom/samsung/api/DigitalMediaServerAPI;->removeDirectory(I)Z

    move-result v0

    .line 185
    :cond_b
    return v0
.end method

.method public removeVideoDirectory()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_c

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaServerAPI;->removeDirectory(I)Z

    move-result v0

    .line 193
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v1, :cond_9

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v1, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 341
    :cond_9
    :goto_9
    return-void

    .line 338
    :catch_a
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V

    .line 349
    :cond_9
    return-void
.end method

.method public setUploadPath(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v0, :cond_b

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v0, p1}, Lcom/samsung/api/DigitalMediaServerAPI;->setUploadPath(Ljava/lang/String;)Z

    move-result v0

    .line 362
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startServerWithFriendlyName(Ljava/lang/String;)Z
    .registers 7
    .parameter "friendlyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    const-string v2, "DLNA"

    const-string v3, "DmsLocalService.startServerWithFriendlyName()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 140
    :cond_10
    :goto_10
    return v0

    .line 130
    :cond_11
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->prepareMediaServer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 131
    iput-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    move v0, v1

    .line 132
    goto :goto_10

    .line 135
    :cond_1b
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->startMediaServer()Z

    move-result v2

    if-nez v2, :cond_10

    .line 136
    iput-object v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    move v0, v1

    .line 137
    goto :goto_10
.end method

.method public stopServer()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 108
    const-string v1, "DLNA"

    const-string v2, "DmsLocalService.stopServer()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    if-eqz v1, :cond_13

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->stopMediaServer()Z

    move-result v1

    if-ne v1, v0, :cond_13

    .line 116
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public updateAudioDirectory()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x7d0

    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioShared()Z

    move-result v2

    if-ne v2, v4, :cond_49

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioUpdating:Z

    if-nez v2, :cond_49

    .line 244
    const-string v2, "DLNA"

    const-string v3, "update Audio database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioUpdating:Z

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    invoke-virtual {v2, v4}, Lcom/samsung/api/DigitalMediaServerAPI;->updateDirectory(I)V

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DBupdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v2, 0x1f4

    :try_start_2b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_34

    .line 258
    :goto_2e
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->restartPreset:Z

    .line 260
    :try_start_30
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_40

    .line 269
    .end local v1           #intent:Landroid/content/Intent;
    :goto_33
    return-void

    .line 253
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_34
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "DLNA"

    const-string v3, "InterruptedException while updateAudioDirectory()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2e

    .line 261
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_40
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "Fail to broadcast \'DBupdate\' while updateAudioDirectory()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 265
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_49
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not update Audio database : isAudioShared() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioShared()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAudioUpdating is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioUpdating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_33
.end method

.method public updateImageDirectory()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x7d0

    const/16 v5, 0xc8

    const/4 v4, 0x1

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageShared()Z

    move-result v2

    if-ne v2, v4, :cond_4a

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageUpdating:Z

    if-nez v2, :cond_4a

    .line 273
    const-string v2, "DLNA"

    const-string v3, "update Image database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageUpdating:Z

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/api/DigitalMediaServerAPI;->updateDirectory(I)V

    .line 279
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DBupdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v2, 0x1f4

    :try_start_2c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_35

    .line 287
    :goto_2f
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->restartPreset:Z

    .line 289
    :try_start_31
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_41

    .line 298
    .end local v1           #intent:Landroid/content/Intent;
    :goto_34
    return-void

    .line 282
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_35
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "DLNA"

    const-string v3, "InterruptedException while updateImageDirectory()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2f

    .line 290
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_41
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "Fail to broadcast \'DBupdate\' while updateImageDirectory()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not update Image database : isImageShared() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageShared()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isImageUpdating is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageUpdating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_34
.end method

.method public updateVideoDirectory()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x7d0

    const/16 v5, 0x12c

    const/4 v4, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoShared()Z

    move-result v2

    if-ne v2, v4, :cond_4a

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoUpdating:Z

    if-nez v2, :cond_4a

    .line 302
    const-string v2, "DLNA"

    const-string v3, "update Video database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoUpdating:Z

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->server:Lcom/samsung/api/DigitalMediaServerAPI;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/api/DigitalMediaServerAPI;->updateDirectory(I)V

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DBupdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v2, 0x1f4

    :try_start_2c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_35

    .line 316
    :goto_2f
    iput-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->restartPreset:Z

    .line 318
    :try_start_31
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_41

    .line 327
    .end local v1           #intent:Landroid/content/Intent;
    :goto_34
    return-void

    .line 311
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_35
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "DLNA"

    const-string v3, "InterruptedException while updateVideoDirectory()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2f

    .line 319
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_41
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "Fail to broadcast \'DBupdate\' while updateVideoDirectory()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 323
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not update Video database : isVideoShared() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoShared()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isVideoUpdating is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoUpdating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/dlna/service/DmsLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_34
.end method
