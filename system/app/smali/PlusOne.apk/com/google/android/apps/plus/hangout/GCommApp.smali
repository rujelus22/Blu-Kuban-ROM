.class public Lcom/google/android/apps/plus/hangout/GCommApp;
.super Ljava/lang/Object;
.source "GCommApp.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/google/android/apps/plus/service/Hangout$ApplicationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/GCommApp$3;,
        Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;,
        Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;,
        Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;,
        Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;,
        Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static crashReported:Z

.field private static gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;


# instance fields
.field private account:Lcom/google/android/apps/plus/content/EsAccount;

.field private appMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

.field private audioFocus:Z

.field private audioManager:Landroid/media/AudioManager;

.field private final connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private cpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private currentNetworkSubtype:I

.field private currentNetworkType:I

.field private currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

.field private exitMeetingCleanupDone:Z

.field private gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

.field private volatile gcommService:Lcom/google/android/apps/plus/hangout/GCommService;

.field private final gcommServiceConnection:Landroid/content/ServiceConnection;

.field private greenRoomParticipantIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private hangoutStartTime:J

.field private hangoutTileCount:I

.field private headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

.field private incomingAudioLevelBeforeAudioFocusLoss:I

.field private isBound:Z

.field private isExitingHangout:Z

.field private isHermes:Z

.field private lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field private messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/plus/hangout/GCommEventHandler;",
            "Lcom/google/android/apps/plus/hangout/GCommMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private muteMicOnAudioFocusGain:Z

.field private outgoingVideoMute:Z

.field private final plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

.field private savedAudioMode:I

.field private screenWakeLock:Landroid/os/PowerManager$WakeLock;

.field screenoffBroadcastListener:Landroid/content/BroadcastReceiver;

.field private selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private serviceMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

.field private signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/phone/EsApplication;)V
    .registers 10
    .parameter "plusOneApplication"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommApp$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/hangout/GCommApp$1;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenoffBroadcastListener:Landroid/content/BroadcastReceiver;

    .line 296
    iput v5, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    .line 297
    iput v5, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    .line 301
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    .line 387
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommApp$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/hangout/GCommApp$2;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommServiceConnection:Landroid/content/ServiceConnection;

    .line 307
    const-string v4, "Constructing GCommApp"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    .line 311
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 312
    sget-object v4, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 317
    :cond_2d
    :goto_2d
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    invoke-direct {v4, p0, v7}, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    .line 319
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Utils;->initialize(Landroid/content/Context;)V

    .line 322
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsApplication;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, privateStoragePath:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 326
    .local v0, canLogPII:Z
    const-string v4, "Google_Plus_Android"

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Utils;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v2, v4, v5, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStaticInitialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 328
    const-string v4, "GCommNativeWrapper.nativeStaticInitialize failed"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 360
    :goto_60
    return-void

    .line 313
    .end local v0           #canLogPII:Z
    .end local v2           #privateStoragePath:Ljava/lang/String;
    :cond_61
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 314
    sget-object v4, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    goto :goto_2d

    .line 331
    .restart local v0       #canLogPII:Z
    .restart local v2       #privateStoragePath:Ljava/lang/String;
    :cond_6c
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->bindGCommService()Z

    move-result v4

    if-nez v4, :cond_78

    .line 332
    const-string v4, "Unable to bind to GCommService"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    goto :goto_60

    .line 336
    :cond_78
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    .line 337
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 340
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 342
    const-string v4, "power"

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 344
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v4, "gcomm"

    invoke-virtual {v1, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    const/16 v4, 0xa

    const-string v5, "gcomm"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 347
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 349
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v4, "gcomm"

    invoke-virtual {v3, v6, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 351
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    .line 352
    sput-object p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    .line 354
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    new-instance v5, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;

    invoke-direct {v5, p0, v7}, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V

    invoke-direct {v4, v5, p1}, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommEventHandler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->appMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    .line 355
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->messageHandlers:Ljava/util/Map;

    .line 358
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenoffBroadcastListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Lcom/google/android/apps/plus/phone/EsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_60
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/GCommApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/GCommApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/phone/EsApplication;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/hangout/GCommApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isWakeLockHeld()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;)Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->adjustAudioSettingsForMeetingEntry()V

    return-void
.end method

.method static synthetic access$1702(Lcom/google/android/apps/plus/hangout/GCommApp;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/google/android/apps/plus/hangout/GCommApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/NetworkInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isNetworkAvailable(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommService;)Lcom/google/android/apps/plus/hangout/GCommService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommService:Lcom/google/android/apps/plus/hangout/GCommService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/GCommApp;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;)Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method private adjustAudioSettingsForMeetingEntry()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 878
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 880
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, p0, v3, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 882
    .local v0, audioFocusRequestResult:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAudioFocus returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 883
    if-ne v0, v2, :cond_53

    :goto_27
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 884
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->savedAudioMode:I

    .line 885
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    .line 888
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/apps/plus/phone/EsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 890
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "INCOMING_AUDIO_VOLUME"

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    .line 897
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setupAudio()V

    .line 898
    return-void

    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_53
    move v2, v3

    .line 883
    goto :goto_27
.end method

.method private adjustAudioSettingsForMeetingExit()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 901
    sget-boolean v2, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 903
    :cond_f
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v0

    .line 905
    .local v0, incomingAudioLevel:I
    :goto_19
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 907
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v2, "INCOMING_AUDIO_VOLUME"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 908
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->onAudioFocusChange(I)V

    .line 911
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_4f

    .line 912
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->savedAudioMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 916
    :goto_44
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 917
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 918
    return-void

    .line 903
    .end local v0           #incomingAudioLevel:I
    .end local v1           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_4c
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    goto :goto_19

    .line 914
    .restart local v0       #incomingAudioLevel:I
    .restart local v1       #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_4f
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_44
.end method

.method private bindGCommService()Z
    .registers 5

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    if-nez v0, :cond_18

    .line 430
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    const-class v2, Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/plus/phone/EsApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    .line 434
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    return v0
.end method

.method public static deletedAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 779
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 780
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V

    .line 781
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendMessageWithDelayToHandlers(IILjava/lang/Object;)V

    .line 783
    :cond_1a
    return-void
.end method

.method private exitMeetingAndDisconnect()V
    .registers 2

    .prologue
    .line 758
    const-string v0, "GCommApp.exitMeetingAndDisconnect"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 761
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 762
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 763
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;
    .registers 3
    .parameter "context"

    .prologue
    .line 363
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-nez v0, :cond_11

    .line 366
    new-instance v1, Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;-><init>(Lcom/google/android/apps/plus/phone/EsApplication;)V

    sput-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    .line 368
    :cond_11
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    return-object v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isNetworkAvailable(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter "info"

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isWakeLockHeld()Z
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method private static reportCrash(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1027
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1030
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->crashReported:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-nez v0, :cond_e

    .line 1062
    :cond_d
    :goto_d
    return-void

    .line 1033
    :cond_e
    sput-boolean v3, Lcom/google/android/apps/plus/hangout/GCommApp;->crashReported:Z

    .line 1037
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    const-class v2, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    if-eqz p0, :cond_27

    .line 1040
    const-string v1, "com.google.android.apps.plus.hangout.java_crash_signature"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    :cond_27
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/EsApplication;->startActivity(Landroid/content/Intent;)V

    .line 1047
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    if-eqz v0, :cond_3b

    .line 1048
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->finish()V

    .line 1053
    :cond_3b
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->unbindGCommService()V

    .line 1055
    if-eqz p1, :cond_d

    .line 1059
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V

    .line 1060
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_d
.end method

.method static reportJavaCrashFromNativeCode(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 999
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 1000
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->computeJavaCrashSignature(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportCrash(Ljava/lang/String;Z)V

    .line 1001
    return-void
.end method

.method static reportNativeCrash()V
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportCrash(Ljava/lang/String;Z)V

    .line 1005
    return-void
.end method

.method public static sendEmptyMessage(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 671
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendMessageWithDelayToHandlers(IILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method private sendMessageWithDelayToHandler(Landroid/os/Handler;IILjava/lang/Object;)V
    .registers 8
    .parameter "handler"
    .parameter "messageId"
    .parameter "delay"
    .parameter "obj"

    .prologue
    .line 650
    if-nez p1, :cond_3

    .line 656
    :goto_2
    return-void

    .line 653
    :cond_3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, message:Landroid/os/Message;
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    int-to-long v1, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method

.method private sendMessageWithDelayToHandlers(IILjava/lang/Object;)V
    .registers 8
    .parameter "messageId"
    .parameter "delay"
    .parameter "obj"

    .prologue
    .line 659
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->appMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendMessageWithDelayToHandler(Landroid/os/Handler;IILjava/lang/Object;)V

    .line 660
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendMessageWithDelayToHandler(Landroid/os/Handler;IILjava/lang/Object;)V

    .line 661
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->messageHandlers:Ljava/util/Map;

    monitor-enter v3

    .line 664
    :try_start_d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->messageHandlers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    .line 665
    .local v1, messageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendMessageWithDelayToHandler(Landroid/os/Handler;IILjava/lang/Object;)V

    goto :goto_17

    .line 667
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #messageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_27

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 668
    return-void
.end method

.method public static sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "messageId"
    .parameter "obj"

    .prologue
    .line 675
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendMessageWithDelayToHandlers(IILjava/lang/Object;)V

    .line 676
    return-void
.end method

.method private setupAudio()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 969
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 971
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 972
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingAudioVolume(I)V

    .line 973
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->isHeadsetPluggedIn()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z

    if-nez v0, :cond_24

    .line 975
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 977
    :cond_24
    return-void
.end method

.method private startUsingNetwork()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 546
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 547
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_13

    .line 548
    const-string v2, "startUsingNetwork: info is null"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->raiseNetworkError()V

    .line 563
    :goto_12
    return v1

    .line 552
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    .line 553
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    .line 554
    const-string v3, "Current network type: %d subtype: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    if-ne v1, v2, :cond_5b

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 560
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 561
    const-string v1, "Acquired wifi lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    :cond_5b
    move v1, v2

    .line 563
    goto :goto_12
.end method

.method private stopUsingNetwork()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 567
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 569
    const-string v0, "Released wifi lock"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 572
    :cond_13
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    if-eq v0, v1, :cond_22

    .line 573
    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    .line 574
    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    :cond_22
    return-void
.end method

.method private unbindGCommService()V
    .registers 3

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    if-eqz v0, :cond_e

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    .line 442
    :cond_e
    return-void
.end method

.method private updateWakeLockState(Z)V
    .registers 5
    .parameter "startingOrInMeeting"

    .prologue
    .line 499
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    .line 500
    .local v0, neededLockType:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;
    if-eqz p1, :cond_12

    .line 501
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->SCREEN:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    .line 511
    :goto_6
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp$3;->$SwitchMap$com$google$android$apps$plus$hangout$GCommApp$WakeLockType:[I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_84

    .line 543
    :cond_11
    :goto_11
    return-void

    .line 503
    :cond_12
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    goto :goto_6

    .line 513
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 514
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 515
    const-string v1, "Released CPU wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 517
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 518
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 519
    const-string v1, "Released screen wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 523
    :pswitch_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 524
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 525
    const-string v1, "Acquired CPU wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 527
    :cond_4c
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 528
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 529
    const-string v1, "Released screen wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 533
    :pswitch_5f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_71

    .line 534
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 535
    const-string v1, "Acquired screen wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 537
    :cond_71
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 538
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 539
    const-string v1, "Released CPU wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 511
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_15
        :pswitch_3a
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public disconnect()V
    .registers 3

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GCommApp.disconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 701
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->stopUsingNetwork()V

    .line 703
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->signoutAndDisconnect()V

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->outgoingVideoMute:Z

    .line 709
    return-void
.end method

.method public enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V
    .registers 12
    .parameter "hangoutInfo"
    .parameter "startMediaOnJoin"
    .parameter
    .parameter "isHermes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/service/Hangout$Info;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, participantList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 713
    const-string v2, "GCommApp.enterHangout: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->updateWakeLockState(Z)V

    .line 716
    iput-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 717
    iput-boolean p4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z

    .line 718
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->enterMeeting(Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    .line 720
    if-nez p3, :cond_21

    .line 721
    iput-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    .line 736
    :cond_1c
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    .line 737
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 738
    return-void

    .line 723
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    if-nez v2, :cond_46

    .line 724
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    .line 729
    :goto_2c
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 730
    .local v1, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 726
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_46
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_2c
.end method

.method public exitMeeting()V
    .registers 2

    .prologue
    .line 766
    const-string v0, "GCommApp.exitMeeting"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanup()V

    .line 768
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 769
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->exitMeeting()V

    .line 770
    return-void
.end method

.method public exitMeetingCleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 786
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->updateWakeLockState(Z)V

    .line 790
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->adjustAudioSettingsForMeetingExit()V

    .line 791
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    if-eqz v0, :cond_18

    .line 792
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    .line 795
    :cond_18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    .line 797
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z

    .line 798
    return-void
.end method

.method public filterToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z
    .registers 9
    .parameter "meetingMember"

    .prologue
    const/4 v2, 0x1

    .line 812
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 818
    :cond_7
    :goto_7
    return v2

    .line 816
    :cond_8
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 818
    .local v0, now:J
    iget-wide v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_23

    iget-wide v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_33

    :cond_23
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_33
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method public getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommService:Lcom/google/android/apps/plus/hangout/GCommService;

    return-object v0
.end method

.method public getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method

.method public getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public hasAudioFocus()Z
    .registers 2

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    return v0
.end method

.method public isAudioMute()Z
    .registers 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isAudioMute()Z

    move-result v0

    return v0
.end method

.method public isExitingHangout()Z
    .registers 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    return v0
.end method

.method public isHermes()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z

    return v0
.end method

.method public isInAHangout()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-nez v2, :cond_6

    .line 477
    :cond_5
    :goto_5
    return v1

    .line 476
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 477
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITHOUT_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-eq v0, v2, :cond_14

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v2, :cond_5

    :cond_14
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public isInAHangoutWithMedia()Z
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z
    .registers 3
    .parameter "hangoutInfo"

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v0

    if-nez v0, :cond_8

    .line 458
    const/4 v0, 0x0

    .line 461
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v0

    goto :goto_7
.end method

.method public isOutgoingVideoMute()Z
    .registers 2

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->outgoingVideoMute:Z

    return v0
.end method

.method public onAudioFocusChange(I)V
    .registers 9
    .parameter "focusChange"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 922
    const-string v1, "onAudioFocusChange: %d (meeting=%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-nez v1, :cond_21

    .line 966
    :goto_20
    return-void

    .line 927
    :cond_21
    packed-switch p1, :pswitch_data_a0

    :pswitch_24
    goto :goto_20

    .line 955
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    .line 957
    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    add-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v1, 0x0

    .line 960
    .local v0, duckLevel:I
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingAudioVolume(I)V

    .line 961
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    .line 962
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    goto :goto_20

    .line 929
    .end local v0           #duckLevel:I
    :pswitch_44
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setupAudio()V

    .line 930
    const-string v1, "AUDIOFOCUS_GAIN: speakerphone=%s volume=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    .line 938
    :pswitch_67
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 939
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    if-nez v1, :cond_83

    .line 940
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    .line 942
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingAudioVolume(I)V

    .line 944
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    .line 945
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 947
    :cond_83
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z

    if-nez v1, :cond_8c

    .line 948
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 950
    :cond_8c
    const-string v1, "AUDIOFOCUS_LOSS: speakerphone=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    .line 927
    :pswitch_data_a0
    .packed-switch -0x3
        :pswitch_25
        :pswitch_67
        :pswitch_67
        :pswitch_24
        :pswitch_44
    .end packed-switch
.end method

.method raiseNetworkError()V
    .registers 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    const/4 v1, -0x1

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 581
    return-void
.end method

.method public registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V
    .registers 9
    .parameter "context"
    .parameter "eventHandler"
    .parameter "isService"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 623
    const-string v3, "Registering for events: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Utils;->isOnMainThread(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Preconditions;->checkState(Z)V

    .line 627
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    invoke-direct {v0, p2, p1}, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommEventHandler;Landroid/content/Context;)V

    .line 628
    .local v0, gcommMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;
    if-eqz p3, :cond_25

    .line 629
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    if-nez v3, :cond_23

    :goto_1d
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Preconditions;->checkState(Z)V

    .line 630
    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    .line 634
    :goto_22
    return-void

    :cond_23
    move v1, v2

    .line 629
    goto :goto_1d

    .line 632
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->messageHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method public setAudioMute(Z)V
    .registers 3
    .parameter "mute"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setAudioMute(Z)V

    .line 834
    return-void
.end method

.method public setIsHermes(Z)V
    .registers 2
    .parameter "isHermes"

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z

    .line 422
    return-void
.end method

.method public setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 850
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 851
    :cond_c
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 852
    return-void
.end method

.method public setOutgoingVideoMute(Z)V
    .registers 2
    .parameter "mute"

    .prologue
    .line 859
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->outgoingVideoMute:Z

    .line 860
    return-void
.end method

.method public setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "member"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 871
    return-void
.end method

.method public setSpeakerPhone(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    .line 841
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 843
    :cond_9
    return-void
.end method

.method public signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GCommApp.signinUser: signinTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    if-nez v0, :cond_39

    .line 691
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->startUsingNetwork()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 692
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    .line 693
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    .line 694
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 697
    :cond_39
    return-void
.end method

.method public startMeetingMedia()V
    .registers 2

    .prologue
    .line 752
    const-string v0, "GCommApp.startMeetingMedia"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->updateWakeLockState(Z)V

    .line 754
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startMeetingMedia()V

    .line 755
    return-void
.end method

.method public startingHangoutTile(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V
    .registers 4
    .parameter "hangoutActivity"

    .prologue
    .line 584
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    .line 585
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting HangoutTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public stoppingHangoutTile()V
    .registers 3

    .prologue
    .line 591
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 592
    :cond_e
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping HangoutTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-nez v0, :cond_34

    .line 618
    :cond_33
    :goto_33
    return-void

    .line 600
    :cond_34
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutTileCount:I

    if-nez v0, :cond_33

    .line 602
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 603
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    goto :goto_33

    .line 615
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    goto :goto_33
.end method

.method public unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V
    .registers 7
    .parameter "context"
    .parameter "eventHandler"
    .parameter "isService"

    .prologue
    .line 638
    const-string v0, "Unregistering for events: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Utils;->isOnMainThread(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Preconditions;->checkState(Z)V

    .line 641
    if-eqz p3, :cond_2a

    .line 642
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommMessageHandler;->getEventHandler()Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    move-result-object v0

    if-eq p2, v0, :cond_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 643
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceMessageHandler:Lcom/google/android/apps/plus/hangout/GCommMessageHandler;

    .line 647
    :goto_29
    return-void

    .line 645
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method
