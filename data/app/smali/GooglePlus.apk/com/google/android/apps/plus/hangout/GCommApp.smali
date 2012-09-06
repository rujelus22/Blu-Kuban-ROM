.class public Lcom/google/android/apps/plus/hangout/GCommApp;
.super Ljava/lang/Object;
.source "GCommApp.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/google/android/apps/plus/service/Hangout$ApplicationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/GCommApp$5;,
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

.field private final appEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

.field private audioFocus:Z

.field private audioManager:Landroid/media/AudioManager;

.field private final connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private cpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private currentNetworkSubtype:I

.field private currentNetworkType:I

.field private currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

.field private eventHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/hangout/GCommEventHandler;",
            ">;"
        }
    .end annotation
.end field

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

.field private handler:Landroid/os/Handler;

.field private hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private hangoutSigninRefCount:I

.field private hangoutStartTime:J

.field private headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

.field private incomingAudioLevelBeforeAudioFocusLoss:I

.field private isBound:Z

.field private isExitingHangout:Z

.field private lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field private mSavedAudioMode:I

.field private muteMicOnAudioFocusGain:Z

.field private outgoingVideoMute:Z

.field private final plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

.field private screenWakeLock:Landroid/os/PowerManager$WakeLock;

.field screenoffBroadcastListener:Landroid/content/BroadcastReceiver;

.field private selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

.field private signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
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
    .registers 13
    .parameter "plusOneApplication"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, -0x1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/GCommApp$1;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenoffBroadcastListener:Landroid/content/BroadcastReceiver;

    .line 318
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->mSavedAudioMode:I

    .line 334
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;

    invoke-direct {v0, p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->appEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->eventHandlers:Ljava/util/ArrayList;

    .line 338
    iput v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    .line 339
    iput v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    .line 343
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->handler:Landroid/os/Handler;

    .line 440
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/GCommApp$3;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommServiceConnection:Landroid/content/ServiceConnection;

    .line 351
    const-string v0, "Constructing GCommApp"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 352
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    .line 354
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->resetSelfMediaState()V

    .line 356
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    invoke-direct {v0, p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    .line 358
    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Utils;->initialize(Landroid/content/Context;)V

    .line 361
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, privateStoragePath:Ljava/lang/String;
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v4

    .line 365
    .local v4, canLogPII:Z
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->NATIVE_WRAPPER_HANGOUT_LOG_LEVEL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, logLevel:Ljava/lang/String;
    const-string v2, "Google_Plus_Android"

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Utils;->getVersion()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/network/ClientVersion;->from(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/GCommApp$2;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    new-array v2, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/GCommApp$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->bindGCommService()Z

    move-result v0

    if-nez v0, :cond_94

    .line 386
    const-string v0, "Unable to bind to GCommService"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 410
    :goto_93
    return-void

    .line 390
    :cond_94
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    .line 391
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 394
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 396
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 398
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v0, "gcomm"

    invoke-virtual {v7, v10, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 399
    const/16 v0, 0xa

    const-string v2, "gcomm"

    invoke-virtual {v7, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 401
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/EsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 403
    .local v8, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v0, "gcomm"

    invoke-virtual {v8, v10, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 405
    iput v9, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    .line 406
    sput-object p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenoffBroadcastListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/google/android/apps/plus/phone/EsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_93
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/GCommApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/GCommApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/phone/EsApplication;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/plus/hangout/GCommApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isWakeLockHeld()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;)Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->adjustAudioSettingsForMeetingEntry()V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/android/apps/plus/hangout/GCommApp;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/google/android/apps/plus/hangout/GCommApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/NetworkInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isNetworkAvailable(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getCaptureSessionType()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommService;)Lcom/google/android/apps/plus/hangout/GCommService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommService:Lcom/google/android/apps/plus/hangout/GCommService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/GCommApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/GCommApp;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;)Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object p1
.end method

.method private adjustAudioSettingsForMeetingEntry()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1121
    iget v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->mSavedAudioMode:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_f

    .line 1122
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->mSavedAudioMode:I

    .line 1124
    :cond_f
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 1126
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, p0, v3, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1128
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

    .line 1129
    if-ne v0, v2, :cond_58

    :goto_34
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    .line 1133
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/apps/plus/phone/EsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1135
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "INCOMING_AUDIO_VOLUME"

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    .line 1142
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setupAudio()V

    .line 1143
    return-void

    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_58
    move v2, v3

    .line 1129
    goto :goto_34
.end method

.method private adjustAudioSettingsForMeetingExit()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1146
    sget-boolean v2, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1148
    :cond_10
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v0

    .line 1150
    .local v0, incomingAudioLevel:I
    :goto_1a
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1152
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v2, "INCOMING_AUDIO_VOLUME"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1153
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1155
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->onAudioFocusChange(I)V

    .line 1156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_56

    iget v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->mSavedAudioMode:I

    if-eq v2, v5, :cond_56

    .line 1158
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->mSavedAudioMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 1162
    :goto_49
    iput v5, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->mSavedAudioMode:I

    .line 1163
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1164
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 1165
    return-void

    .line 1148
    .end local v0           #incomingAudioLevel:I
    .end local v1           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_53
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    goto :goto_1a

    .line 1160
    .restart local v0       #incomingAudioLevel:I
    .restart local v1       #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_56
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_49
.end method

.method private bindGCommService()Z
    .registers 5

    .prologue
    .line 474
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    if-nez v1, :cond_18

    .line 475
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    const-class v2, Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, localBindIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/plus/phone/EsApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    .line 479
    .end local v0           #localBindIntent:Landroid/content/Intent;
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    return v1
.end method

.method public static deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1020
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1021
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V

    .line 1022
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/16 v1, 0x36

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->dispatchMessage(ILjava/lang/Object;)V

    .line 1024
    :cond_19
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1025
    return-void
.end method

.method private exitMeetingAndDisconnect()V
    .registers 2

    .prologue
    .line 999
    const-string v0, "GCommApp.exitMeetingAndDisconnect"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    .line 1002
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 1004
    return-void
.end method

.method private getAllEventHandlers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/hangout/GCommEventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->eventHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v0, handlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/hangout/GCommEventHandler;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->appEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    if-eqz v1, :cond_16

    .line 702
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->appEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    if-eqz v1, :cond_1f

    .line 705
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->eventHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 710
    return-object v0
.end method

.method private getCaptureSessionType()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;
    .registers 16

    .prologue
    .line 228
    const-string v12, ""

    .line 231
    .local v12, result:Ljava/lang/String;
    const/4 v13, 0x2

    :try_start_3
    new-array v0, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/system/bin/cat"

    aput-object v14, v0, v13

    const/4 v13, 0x1

    const-string v14, "/proc/cpuinfo"

    aput-object v14, v0, v13

    .line 232
    .local v0, args:[Ljava/lang/String;
    new-instance v3, Ljava/lang/ProcessBuilder;

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 233
    .local v3, cmd:Ljava/lang/ProcessBuilder;
    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v10

    .line 234
    .local v10, process:Ljava/lang/Process;
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 235
    .local v6, in:Ljava/io/InputStream;
    const/16 v13, 0x400

    new-array v11, v13, [B

    .line 236
    .local v11, re:[B
    :goto_20
    invoke-virtual {v6, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3e

    .line 237
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_20

    .line 239
    :cond_3e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_41} :catch_69

    .line 244
    .end local v0           #args:[Ljava/lang/String;
    .end local v3           #cmd:Ljava/lang/ProcessBuilder;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v10           #process:Ljava/lang/Process;
    .end local v11           #re:[B
    :goto_41
    const/4 v2, 0x0

    .line 245
    .local v2, bogoMips:F
    const/4 v9, 0x0

    .line 246
    .local v9, numProcessors:I
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4b
    if-ge v5, v7, :cond_72

    aget-object v8, v1, v5

    .line 247
    .local v8, line:Ljava/lang/String;
    const-string v13, "BogoMIPS.*"

    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_66

    .line 248
    const-string v13, "[^.0-9]"

    const-string v14, ""

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    add-float/2addr v2, v13

    .line 249
    add-int/lit8 v9, v9, 0x1

    .line 246
    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 240
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bogoMips:F
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #numProcessors:I
    :catch_69
    move-exception v4

    .line 241
    .local v4, ex:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_41

    .line 255
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #bogoMips:F
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #numProcessors:I
    :cond_72
    const/high16 v13, 0x4120

    cmpl-float v13, v2, v13

    if-lez v13, :cond_7e

    const/high16 v13, 0x4348

    cmpg-float v13, v2, v13

    if-ltz v13, :cond_87

    :cond_7e
    const/high16 v13, 0x447a

    cmpl-float v13, v2, v13

    if-gtz v13, :cond_87

    const/4 v13, 0x1

    if-le v9, v13, :cond_8a

    :cond_87
    sget-object v13, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;->MEDIUM_RESOLUTION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;

    :goto_89
    return-object v13

    :cond_8a
    sget-object v13, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;->LOW_RESOLUTION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;

    goto :goto_89
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;
    .registers 3
    .parameter "context"

    .prologue
    .line 418
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-nez v0, :cond_11

    .line 419
    new-instance v1, Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;-><init>(Lcom/google/android/apps/plus/phone/EsApplication;)V

    sput-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    .line 421
    :cond_11
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    return-object v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 437
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

.method public static isInstantiated()Z
    .registers 1

    .prologue
    .line 414
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isNetworkAvailable(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter "info"

    .prologue
    .line 1225
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
    .line 540
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method private static reportCrash(Ljava/lang/String;Z)V
    .registers 6
    .parameter "javaCrashSignature"
    .parameter "exitProcess"

    .prologue
    const/4 v3, 0x1

    .line 1272
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1275
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/GCommApp;->crashReported:Z

    if-nez v1, :cond_d

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    if-nez v1, :cond_e

    .line 1307
    :cond_d
    :goto_d
    return-void

    .line 1278
    :cond_e
    sput-boolean v3, Lcom/google/android/apps/plus/hangout/GCommApp;->crashReported:Z

    .line 1282
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    const-class v2, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1283
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1284
    if-eqz p0, :cond_27

    .line 1285
    const-string v1, "com.google.android.apps.plus.hangout.java_crash_signature"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    :cond_27
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/EsApplication;->startActivity(Landroid/content/Intent;)V

    .line 1292
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    if-eqz v1, :cond_3b

    .line 1293
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->finish()V

    .line 1298
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->unbindGCommService()V

    .line 1300
    if-eqz p1, :cond_d

    .line 1304
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V

    .line 1305
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_d
.end method

.method static reportJavaCrashFromNativeCode(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 1244
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 1245
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->computeJavaCrashSignature(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportCrash(Ljava/lang/String;Z)V

    .line 1246
    return-void
.end method

.method static reportNativeCrash()V
    .registers 2

    .prologue
    .line 1249
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportCrash(Ljava/lang/String;Z)V

    .line 1250
    return-void
.end method

.method private resetSelfMediaState()V
    .registers 2

    .prologue
    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->outgoingVideoMute:Z

    .line 956
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 957
    sget-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 961
    :cond_d
    :goto_d
    return-void

    .line 958
    :cond_e
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 959
    sget-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    goto :goto_d
.end method

.method public static sendEmptyMessage(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 915
    return-void
.end method

.method public static sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V
    .registers 6
    .parameter "context"
    .parameter "messageId"
    .parameter "obj"

    .prologue
    .line 918
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 919
    .local v0, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    iget-object v1, v0, Lcom/google/android/apps/plus/hangout/GCommApp;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/plus/hangout/GCommApp$4;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommApp$4;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 925
    return-void
.end method

.method private setupAudio()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1214
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 1216
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 1217
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingAudioVolume(I)V

    .line 1218
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->isHeadsetPluggedIn()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1220
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1222
    :cond_20
    return-void
.end method

.method private startUsingNetwork()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 591
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 592
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_13

    .line 593
    const-string v2, "startUsingNetwork: info is null"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->raiseNetworkError()V

    .line 608
    :goto_12
    return v1

    .line 597
    :cond_13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    .line 598
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    .line 599
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

    .line 601
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/phone/EsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    if-ne v1, v2, :cond_5b

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 605
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 606
    const-string v1, "Acquired wifi lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    :cond_5b
    move v1, v2

    .line 608
    goto :goto_12
.end method

.method private stopUsingNetwork()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 612
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 613
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 614
    const-string v0, "Released wifi lock"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 617
    :cond_13
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    if-eq v0, v1, :cond_22

    .line 618
    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkType:I

    .line 619
    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentNetworkSubtype:I

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->connectivityChangeListener:Lcom/google/android/apps/plus/hangout/GCommApp$ConnectivityChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    :cond_22
    return-void
.end method

.method private unbindGCommService()V
    .registers 3

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    if-eqz v0, :cond_e

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isBound:Z

    .line 487
    :cond_e
    return-void
.end method

.method private updateWakeLockState(Z)V
    .registers 5
    .parameter "startingOrInMeeting"

    .prologue
    .line 544
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    .line 545
    .local v0, neededLockType:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;
    if-eqz p1, :cond_12

    .line 546
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->SCREEN:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    .line 556
    :goto_6
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp$5;->$SwitchMap$com$google$android$apps$plus$hangout$GCommApp$WakeLockType:[I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_84

    .line 588
    :cond_11
    :goto_11
    return-void

    .line 548
    :cond_12
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    goto :goto_6

    .line 558
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 559
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 560
    const-string v1, "Released CPU wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 562
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 563
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 564
    const-string v1, "Released screen wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 568
    :pswitch_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 569
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 570
    const-string v1, "Acquired CPU wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 572
    :cond_4c
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 573
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 574
    const-string v1, "Released screen wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 578
    :pswitch_5f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_71

    .line 579
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 580
    const-string v1, "Acquired screen wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 582
    :cond_71
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 583
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->cpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 584
    const-string v1, "Released CPU wake lock"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    goto :goto_11

    .line 556
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_15
        :pswitch_3a
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public createHangout(Z)V
    .registers 3
    .parameter "ringInvitees"

    .prologue
    .line 964
    const-string v0, "GCommApp.createHangout"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->updateWakeLockState(Z)V

    .line 967
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->createHangout(Z)V

    .line 968
    return-void
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 941
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

    .line 942
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->stopUsingNetwork()V

    .line 944
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->signoutAndDisconnect()V

    .line 947
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->resetSelfMediaState()V

    .line 948
    return-void
.end method

.method public dispatchMessage(ILjava/lang/Object;)V
    .registers 15
    .parameter "messageId"
    .parameter "obj"

    .prologue
    const/4 v10, 0x1

    .line 715
    sparse-switch p1, :sswitch_data_3ca

    .line 909
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 717
    :sswitch_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .local v6, handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 718
    check-cast v9, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    goto :goto_12

    .line 722
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_25
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 723
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSigninTimeOutError()V

    goto :goto_2d

    .line 727
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_3d
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 728
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    goto :goto_45

    .line 732
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_58
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_60
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 733
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedOut()V

    goto :goto_60

    .line 737
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_70
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 738
    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVCardResponse(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_78

    .line 742
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_8b
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 743
    check-cast v9, Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onReceivedRoomHistory(Ljava/util/List;)V

    goto :goto_93

    .line 747
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_a6
    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/hangout/GCommApp;->createHangout(Z)V

    .line 911
    :cond_a9
    return-void

    .line 750
    :sswitch_aa
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_b2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 751
    check-cast v9, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    goto :goto_b2

    .line 756
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_c5
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_cd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 757
    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_cd

    .line 761
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_e0
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_e8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 762
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    goto :goto_e8

    .line 766
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_f8
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_100
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 767
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    if-eqz p2, :cond_113

    move v9, v10

    :goto_10f
    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited(Z)V

    goto :goto_100

    :cond_113
    const/4 v9, 0x0

    goto :goto_10f

    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_115
    move-object v3, p2

    .line 771
    check-cast v3, Landroid/util/Pair;

    .line 772
    .local v3, arg:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_120
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 773
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCallgrokLogUploadCompleted(ILjava/lang/String;)V

    goto :goto_120

    .line 778
    .end local v3           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_13c
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_144
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 779
    check-cast v9, Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onHangoutCreated(Lcom/google/android/apps/plus/service/Hangout$Info;)V

    goto :goto_144

    .line 783
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_157
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_15f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 784
    check-cast v9, Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onHangoutWaitTimeout(Lcom/google/android/apps/plus/service/Hangout$Info;)V

    goto :goto_15f

    .line 788
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_172
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_17a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 789
    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_17a

    .line 793
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_18d
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_195
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 794
    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberPresenceConnectionStatusChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_195

    .line 799
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_1a8
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_1b0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 800
    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_1b0

    .line 804
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_1c3
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_1cb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 805
    check-cast v9, Lcom/google/android/apps/plus/hangout/InstantMessage;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onInstantMessageReceived(Lcom/google/android/apps/plus/hangout/InstantMessage;)V

    goto :goto_1cb

    .line 809
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_1de
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_1e6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 810
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameReceived(I)V

    goto :goto_1e6

    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_1fd
    move-object v5, p2

    .line 814
    check-cast v5, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;

    .line 816
    .local v5, frameDimensionsChangedParams:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_208
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 817
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->getRequestID()I

    move-result v9

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->getDimensions()Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v10

    iget v10, v10, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;->getDimensions()Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v11

    iget v11, v11, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-virtual {v6, v9, v10, v11}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoFrameDimensionsChanged(III)V

    goto :goto_208

    .end local v5           #frameDimensionsChangedParams:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_228
    move-object v1, p2

    .line 825
    check-cast v1, Landroid/util/Pair;

    .line 826
    .local v1, arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_233
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 827
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto :goto_233

    .end local v1           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Boolean;>;"
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_24f
    move-object v1, p2

    .line 832
    check-cast v1, Landroid/util/Pair;

    .line 833
    .restart local v1       #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_25a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 834
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto :goto_25a

    .end local v1           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Boolean;>;"
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_276
    move-object v2, p2

    .line 839
    check-cast v2, Landroid/util/Pair;

    .line 840
    .local v2, arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_281
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 841
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVolumeChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V

    goto :goto_281

    .line 846
    .end local v2           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/Integer;>;"
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_29d
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2a5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 847
    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCurrentSpeakerChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_2a5

    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_2b8
    move-object v8, p2

    .line 851
    check-cast v8, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;

    .line 853
    .local v8, params:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2c3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 854
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->getRequestID()I

    move-result v9

    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->getSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;->isVideoAvailable()Z

    move-result v11

    invoke-virtual {v6, v9, v10, v11}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoSourceChanged(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    goto :goto_2c3

    .line 860
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #params:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
    :sswitch_2df
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2e7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 861
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onIncomingVideoStarted(I)V

    goto :goto_2e7

    .line 865
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_2fe
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_306
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 866
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onOutgoingVideoStarted()V

    goto :goto_306

    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_316
    move-object v0, p2

    .line 870
    check-cast v0, Landroid/util/Pair;

    .line 872
    .local v0, arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_321
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 873
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_321

    .end local v0           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_339
    move-object v0, p2

    .line 878
    check-cast v0, Landroid/util/Pair;

    .line 880
    .restart local v0       #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_344
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 881
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_344

    .line 886
    .end local v0           #arg:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_35c
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_364
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 887
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCameraSwitchRequested()V

    goto :goto_364

    .line 891
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_374
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_37c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 892
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoMuteToggleRequested()V

    goto :goto_37c

    .line 896
    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_38c
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_394
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    move-object v9, p2

    .line 897
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoMuteChanged(Z)V

    goto :goto_394

    .end local v6           #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    .end local v7           #i$:Ljava/util/Iterator;
    :sswitch_3ab
    move-object v4, p2

    .line 901
    check-cast v4, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    .line 902
    .local v4, dimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAllEventHandlers()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_3b6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 903
    .restart local v6       #handler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;
    iget v9, v4, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    iget v10, v4, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-virtual {v6, v9, v10}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onCameraPreviewFrameDimensionsChanged(II)V

    goto :goto_3b6

    .line 715
    :sswitch_data_3ca
    .sparse-switch
        -0x3 -> :sswitch_aa
        -0x2 -> :sswitch_25
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_58
        0x3 -> :sswitch_70
        0x5 -> :sswitch_8b
        0x6 -> :sswitch_a6
        0x32 -> :sswitch_13c
        0x33 -> :sswitch_157
        0x34 -> :sswitch_c5
        0x35 -> :sswitch_e0
        0x36 -> :sswitch_f8
        0x37 -> :sswitch_172
        0x38 -> :sswitch_18d
        0x39 -> :sswitch_1a8
        0x3b -> :sswitch_1c3
        0x3c -> :sswitch_115
        0x65 -> :sswitch_228
        0x66 -> :sswitch_29d
        0x67 -> :sswitch_2b8
        0x68 -> :sswitch_2df
        0x69 -> :sswitch_2fe
        0x6a -> :sswitch_1de
        0x6b -> :sswitch_1fd
        0x6d -> :sswitch_316
        0x6e -> :sswitch_339
        0x6f -> :sswitch_24f
        0x70 -> :sswitch_276
        0xc9 -> :sswitch_35c
        0xca -> :sswitch_374
        0xcb -> :sswitch_38c
        0xcc -> :sswitch_3ab
    .end sparse-switch
.end method

.method public enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V
    .registers 12
    .parameter "hangoutInfo"
    .parameter "forceConfig"
    .parameter
    .parameter "hoaConsented"
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

    .line 972
    const-string v2, "GCommApp.enterHangout: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->updateWakeLockState(Z)V

    .line 975
    iput-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 976
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v2, p1, p2, p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->enterMeeting(Lcom/google/android/apps/plus/service/Hangout$Info;ZZ)V

    .line 978
    if-nez p3, :cond_1f

    .line 979
    iput-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    .line 994
    :cond_1a
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    .line 995
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 996
    return-void

    .line 981
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    if-nez v2, :cond_44

    .line 982
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    .line 987
    :goto_2a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 988
    .local v1, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 984
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_44
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_2a
.end method

.method public exitMeeting()V
    .registers 2

    .prologue
    .line 1007
    const-string v0, "GCommApp.exitMeeting"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanup()V

    .line 1009
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1010
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->exitMeeting()V

    .line 1011
    return-void
.end method

.method public exitMeetingCleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1028
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    .line 1031
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->updateWakeLockState(Z)V

    .line 1032
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->adjustAudioSettingsForMeetingExit()V

    .line 1033
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    if-eqz v0, :cond_18

    .line 1034
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    .line 1037
    :cond_18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    .line 1039
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z

    .line 1040
    return-void
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getApp()Lcom/google/android/apps/plus/phone/EsApplication;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    return-object v0
.end method

.method public getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method public getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommService:Lcom/google/android/apps/plus/hangout/GCommService;

    return-object v0
.end method

.method public getLastUsedCameraType()Lcom/google/android/apps/plus/hangout/Cameras$CameraType;
    .registers 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    return-object v0
.end method

.method public getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public hasAudioFocus()Z
    .registers 2

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    return v0
.end method

.method public isAudioMute()Z
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isAudioMute()Z

    move-result v0

    return v0
.end method

.method public isExitingHangout()Z
    .registers 2

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    return v0
.end method

.method public isInAHangout()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-nez v2, :cond_6

    .line 522
    :cond_5
    :goto_5
    return v1

    .line 521
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 522
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
    .line 527
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
    .line 502
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v0

    if-nez v0, :cond_8

    .line 503
    const/4 v0, 0x0

    .line 506
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
    .line 1098
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

    .line 1169
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

    .line 1170
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1211
    :goto_20
    return-void

    .line 1174
    :cond_21
    packed-switch p1, :pswitch_data_9c

    :pswitch_24
    goto :goto_20

    .line 1200
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    .line 1202
    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    add-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v1, 0x0

    .line 1205
    .local v0, duckLevel:I
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingAudioVolume(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    .line 1207
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    goto :goto_20

    .line 1176
    .end local v0           #duckLevel:I
    :pswitch_44
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->setupAudio()V

    .line 1177
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

    .line 1185
    :pswitch_67
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z

    .line 1186
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z

    if-nez v1, :cond_83

    .line 1187
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIncomingAudioVolume()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->incomingAudioLevelBeforeAudioFocusLoss:I

    .line 1189
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingAudioVolume(I)V

    .line 1191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->muteMicOnAudioFocusGain:Z

    .line 1192
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 1194
    :cond_83
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1195
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

    .line 1174
    :pswitch_data_9c
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
    .line 625
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    const/4 v1, -0x1

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->NETWORK:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 626
    return-void
.end method

.method public registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V
    .registers 7
    .parameter "context"
    .parameter "eventHandler"
    .parameter "isService"

    .prologue
    .line 668
    const-string v0, "Registering for events: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Utils;->isOnMainThread(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 671
    :cond_1b
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_27

    if-nez p2, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 672
    :cond_27
    if-eqz p3, :cond_3a

    .line 673
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 674
    :cond_37
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 678
    :goto_39
    return-void

    .line 676
    :cond_3a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->eventHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method

.method public setAudioMute(Z)V
    .registers 3
    .parameter "mute"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setAudioMute(Z)V

    .line 1077
    return-void
.end method

.method public setLastUsedCameraType(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 1093
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1094
    :cond_c
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->lastUsedCameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 1095
    return-void
.end method

.method public setOutgoingVideoMute(Z)V
    .registers 2
    .parameter "mute"

    .prologue
    .line 1102
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->outgoingVideoMute:Z

    .line 1103
    return-void
.end method

.method public setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "member"

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1114
    return-void
.end method

.method public shouldShowToastForMember(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z
    .registers 12
    .parameter "meetingMember"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1050
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1062
    :cond_8
    :goto_8
    return v5

    .line 1054
    :cond_9
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1057
    .local v2, now:J
    iget-wide v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3c

    iget-wide v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_3c

    move v0, v4

    .line 1059
    .local v0, isDefinitelyAfterStartupFilterTime:Z
    :goto_25
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    if-eqz v6, :cond_3e

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->greenRoomParticipantIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    move v1, v4

    .line 1062
    .local v1, isDefinitelyNewParticipant:Z
    :goto_36
    if-nez v1, :cond_3a

    if-eqz v0, :cond_8

    :cond_3a
    move v5, v4

    goto :goto_8

    .end local v0           #isDefinitelyAfterStartupFilterTime:Z
    .end local v1           #isDefinitelyNewParticipant:Z
    :cond_3c
    move v0, v5

    .line 1057
    goto :goto_25

    .restart local v0       #isDefinitelyAfterStartupFilterTime:Z
    :cond_3e
    move v1, v5

    .line 1059
    goto :goto_36
.end method

.method public signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 928
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

    .line 931
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    if-nez v0, :cond_39

    .line 932
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->startUsingNetwork()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 933
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;

    .line 934
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    .line 935
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 938
    :cond_39
    return-void
.end method

.method public startingHangoutActivity(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V
    .registers 4
    .parameter "hangoutActivity"

    .prologue
    .line 629
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    .line 630
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting HangoutActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public stoppingHangoutActivity()V
    .registers 3

    .prologue
    .line 636
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 637
    :cond_e
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->currentStartedHangoutActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping HangoutActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    if-nez v0, :cond_34

    .line 663
    :cond_33
    :goto_33
    return-void

    .line 645
    :cond_34
    iget v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutSigninRefCount:I

    if-nez v0, :cond_33

    .line 647
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isOutgoingVideoStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 653
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopOutgoingVideo()V

    goto :goto_33

    .line 660
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
    .line 682
    const-string v0, "Unregistering for events: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/google/android/apps/plus/hangout/Utils;->isOnMainThread(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 685
    :cond_1b
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_27

    if-nez p2, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 686
    :cond_27
    if-eqz p3, :cond_3b

    .line 687
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    if-eq p2, v0, :cond_37

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 688
    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->serviceEventHandler:Lcom/google/android/apps/plus/hangout/GCommEventHandler;

    .line 693
    :goto_3a
    return-void

    .line 690
    :cond_3b
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp;->$assertionsDisabled:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->eventHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 691
    :cond_4d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp;->eventHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3a
.end method
