.class public Lcom/android/exchange/ExchangeService;
.super Landroid/app/Service;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ExchangeService$ConnectivityReceiver;,
        Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;,
        Lcom/android/exchange/ExchangeService$SyncError;,
        Lcom/android/exchange/ExchangeService$SyncStatus;,
        Lcom/android/exchange/ExchangeService$SyncedMessageObserver;,
        Lcom/android/exchange/ExchangeService$MailboxObserver;,
        Lcom/android/exchange/ExchangeService$CalendarObserver;,
        Lcom/android/exchange/ExchangeService$AccountObserver;,
        Lcom/android/exchange/ExchangeService$AccountList;,
        Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;
    }
.end annotation


# static fields
.field private static final EMPTY_ACCOUNT_LIST:Lcom/android/exchange/ExchangeService$AccountList;

.field protected static INSTANCE:Lcom/android/exchange/ExchangeService;

.field public static MAILBOX_DUMMY_GALSEARCH:J

.field public static MAILBOX_DUMMY_MAX:J

.field public static MAILBOX_DUMMY_MIN:J

.field public static MAILBOX_DUMMY_OoO:J

.field private static THREAD_MAP_LOCK:Ljava/lang/Object;

.field public static elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

.field public static lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field public static final mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

.field public static mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field public static mPingFoldersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mPingHeartBeatIntervalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mThreadIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private static sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static volatile sClientConnectionManagerShutdownCount:I

.field public static sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field private static sDeviceId:Ljava/lang/String;

.field private static sLicenseKey:Ljava/lang/String;

.field private static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;

.field public static smClientConnectionManager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/conn/ClientConnectionManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

.field private volatile mBackgroundData:Z

.field private mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsNetworkRoaming:Z

.field private mKicked:Z

.field private mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkState:I

.field private mNextWaitReason:Ljava/lang/String;

.field private mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProvisionErrorExist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChangeListener:Ljava/lang/Object;

.field mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

.field private mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    .line 372
    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->mThreadIdMap:Ljava/util/HashMap;

    .line 383
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_MIN:J

    .line 385
    const-wide/32 v0, 0xf4241

    sput-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_OoO:J

    .line 387
    const-wide/32 v0, 0xf4242

    sput-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_GALSEARCH:J

    .line 389
    const-wide/32 v0, 0xf4243

    sput-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_MAX:J

    .line 407
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 430
    sput-object v2, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 433
    sput-object v2, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 436
    sput-object v2, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 439
    sput-object v2, Lcom/android/exchange/ExchangeService;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 442
    sput v3, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 445
    sput-object v2, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    .line 455
    sput-object v2, Lcom/android/exchange/ExchangeService;->sLicenseKey:Ljava/lang/String;

    .line 457
    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 458
    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    .line 488
    sput-object v2, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 493
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/ExchangeService$AccountList;

    .line 508
    new-instance v0, Lcom/android/exchange/ExchangeService$1;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$1;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 2826
    new-instance v0, Lcom/android/exchange/ExchangeService$4;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$4;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 2835
    new-instance v0, Lcom/android/exchange/ExchangeService$5;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$5;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 2841
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->THREAD_MAP_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 359
    iput-boolean v2, p0, Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    .line 395
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    .line 404
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 410
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 464
    iput-boolean v2, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 467
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 469
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 474
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    .line 738
    new-instance v0, Lcom/android/exchange/ExchangeService$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$2;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 3587
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->THREAD_MAP_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/ExchangeService;JZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exchange/ExchangeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p7}, Lcom/android/exchange/ExchangeService;->buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exchange/ExchangeService;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/exchange/ExchangeService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkPIMSyncSettings()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/exchange/ExchangeService;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/exchange/ExchangeService;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/exchange/ExchangeService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/exchange/ExchangeService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->mThreadIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/exchange/ExchangeService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/exchange/ExchangeService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/exchange/ExchangeService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/exchange/ExchangeService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/exchange/ExchangeService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput p1, p0, Lcom/android/exchange/ExchangeService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/exchange/ExchangeService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->updateAccountDb()V

    return-void
.end method

.method static synthetic access$2300()Z
    .registers 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 168
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return p0
.end method

.method static synthetic access$2400()Z
    .registers 1

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 168
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return p0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 168
    sput-object p0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/exchange/ExchangeService;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->sLicenseKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 168
    sput-object p0, Lcom/android/exchange/ExchangeService;->sLicenseKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exchange/ExchangeService;Landroid/content/Context;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldMailbox(Landroid/content/Context;IJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exchange/ExchangeService;J)Ljava/lang/Long;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->getMailBoxIdRIC(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exchange/ExchangeService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    return-void
.end method

.method private acquireWakeLock(J)V
    .registers 7
    .parameter

    .prologue
    .line 3297
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 3298
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3299
    if-nez v0, :cond_39

    .line 3300
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2b

    .line 3301
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3302
    const/4 v2, 0x1

    const-string v3, "MAIL_SERVICE"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3303
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3306
    :cond_2b
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3308
    :cond_39
    monitor-exit v1

    .line 3309
    return-void

    .line 3308
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public static alert(Landroid/content/Context;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 3421
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3422
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 3423
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_16

    .line 3424
    const-string v0, "ExchangeService alert"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3425
    const-string v0, "ping ExchangeService"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 3500
    :cond_15
    :goto_15
    return-void

    .line 3426
    :cond_16
    if-nez v2, :cond_23

    .line 3427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_15

    .line 3430
    :cond_23
    sget-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_MIN:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_3f

    sget-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_MAX:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_3f

    .line 3431
    const-string v0, "ExchangeService Alert: Out of Band"

    .line 3432
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/exchange/ExchangeService$6;

    invoke-direct {v3, p1, p2, v2}, Lcom/android/exchange/ExchangeService$6;-><init>(JLcom/android/exchange/ExchangeService;)V

    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_15

    .line 3444
    :cond_3f
    iget-object v0, v2, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3445
    if-eqz v0, :cond_15

    .line 3450
    const-string v1, "ExchangeService Alert: "

    .line 3451
    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v3, :cond_68

    .line 3452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3454
    :cond_68
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/exchange/ExchangeService$7;

    invoke-direct {v4, v2, p1, p2, v0}, Lcom/android/exchange/ExchangeService$7;-><init>(Lcom/android/exchange/ExchangeService;JLcom/android/exchange/AbstractSyncService;)V

    invoke-direct {v3, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_15
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 2574
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-nez v0, :cond_a

    .line 2575
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :goto_9
    return-void

    .line 2577
    :cond_a
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static blockDevice(JI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3085
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3086
    if-eqz v0, :cond_23

    .line 3087
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3088
    if-eqz v0, :cond_23

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mdeviceBlockedType:I

    if-eq v1, p2, :cond_23

    .line 3089
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3090
    const-string v2, "deviceBlockedType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3091
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3094
    :cond_23
    return-void
.end method

.method private buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;
    .registers 23
    .parameter "accountIdString"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "mailboxIdString"
    .parameter "optionsDeepTraversalStr"
    .parameter "conversationIdStr"

    .prologue
    .line 1445
    new-instance v4, Lcom/android/exchange/SearchRequest$Builder;

    invoke-direct {v4}, Lcom/android/exchange/SearchRequest$Builder;-><init>()V

    .line 1446
    .local v4, builder:Lcom/android/exchange/SearchRequest$Builder;
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MailboxString ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v1, 0x0

    .line 1450
    .local v1, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-wide/16 v2, -0x1

    .line 1451
    .local v2, accId:J
    const/4 v10, 0x0

    .line 1452
    .local v10, truncation_size:I
    :try_start_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1453
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1454
    if-eqz v1, :cond_1b4

    .line 1455
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v11

    sget-object v12, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    if-eq v11, v12, :cond_1b1

    .line 1456
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Value()I

    move-result v10

    .line 1457
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Jane: Email Size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v13

    invoke-static {v13}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :goto_71
    const/16 v10, 0x34

    .line 1466
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->accountId(J)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->storeName(Lcom/android/exchange/SearchRequest$StoreName;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$QueryClass;->EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->queryClass(Lcom/android/exchange/SearchRequest$QueryClass;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/exchange/SearchRequest$Builder;->queryFreeText(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/SearchRequest$Builder;->optionsRebuildResults()Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x3e7

    invoke-virtual {v11, v12, v13}, Lcom/android/exchange/SearchRequest$Builder;->optionsRange(II)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->optionsBodyPreferenceType(Lcom/android/exchange/SearchRequest$BodyPreferenceType;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/exchange/SearchRequest$Builder;->optionsBodyPreferenceTruncationSize(I)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->SEND_DATA_FOR_ALL_MSGS:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->optionsMIMESupport(Lcom/android/exchange/SearchRequest$OptionsMIMESupport;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Lcom/android/exchange/SearchRequest$Builder;->queryConvId(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;

    .line 1482
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "True"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c0

    .line 1483
    invoke-virtual {v4}, Lcom/android/exchange/SearchRequest$Builder;->optionsDeepTraversal()Lcom/android/exchange/SearchRequest$Builder;

    .line 1485
    :cond_c0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneDate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_f9

    .line 1486
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_d3} :catch_1c1

    .line 1487
    .local v8, formatter:Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 1489
    .local v6, date:Ljava/util/Date;
    :try_start_d4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 1490
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reaterThanDate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f6} :catch_1b8
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_f6} :catch_1c1

    .line 1494
    :try_start_f6
    invoke-virtual {v4, v6}, Lcom/android/exchange/SearchRequest$Builder;->queryGreaterThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;

    .line 1496
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :cond_f9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneDate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_175

    .line 1497
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_f6 .. :try_end_10c} :catch_1c1

    .line 1498
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 1500
    .restart local v6       #date:Ljava/util/Date;
    :try_start_10d
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 1503
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1504
    .local v5, cal:Ljava/util/Calendar;
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1505
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " LESS Hours "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xb

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1506
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " LESS mIN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1507
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lessThanDate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_172} :catch_1ca
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_172} :catch_1c1

    .line 1511
    :try_start_172
    invoke-virtual {v4, v6}, Lcom/android/exchange/SearchRequest$Builder;->queryLessThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;

    .line 1513
    .end local v5           #cal:Ljava/util/Calendar;
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :cond_175
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneId"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1ac

    .line 1514
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MailboxString ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v11, 0x1

    new-array v11, v11, [J

    const/4 v12, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    aput-wide v13, v11, v12

    invoke-virtual {v4, v11}, Lcom/android/exchange/SearchRequest$Builder;->queryCollectionIds([J)Lcom/android/exchange/SearchRequest$Builder;
    :try_end_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_172 .. :try_end_1ac} :catch_1c1

    .line 1522
    :cond_1ac
    invoke-virtual {v4}, Lcom/android/exchange/SearchRequest$Builder;->build()Lcom/android/exchange/SearchRequest;

    move-result-object v9

    .line 1523
    .local v9, searchRequest:Lcom/android/exchange/SearchRequest;
    return-object v9

    .line 1461
    .end local v9           #searchRequest:Lcom/android/exchange/SearchRequest;
    :cond_1b1
    const/4 v10, -0x1

    goto/16 :goto_71

    .line 1463
    :cond_1b4
    const/16 v10, 0x400

    goto/16 :goto_71

    .line 1491
    .restart local v6       #date:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    :catch_1b8
    move-exception v7

    .line 1492
    .local v7, e:Ljava/lang/Exception;
    :try_start_1b9
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in Uri Date"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1b9 .. :try_end_1c1} :catch_1c1

    .line 1519
    .end local v6           #date:Ljava/util/Date;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :catch_1c1
    move-exception v7

    .line 1520
    .local v7, e:Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in URI"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1508
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #date:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    :catch_1ca
    move-exception v7

    .line 1509
    .local v7, e:Ljava/lang/Exception;
    :try_start_1cb
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in Uri Date"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1d3
    .catch Ljava/lang/NumberFormatException; {:try_start_1cb .. :try_end_1d3} :catch_1c1
.end method

.method public static callback()Lcom/android/emailcommon/service/IEmailServiceCallback;
    .registers 1

    .prologue
    .line 2226
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static canAutoSync(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 6
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 4259
    if-nez p0, :cond_4

    .line 4275
    :cond_3
    :goto_3
    return v2

    .line 4262
    :cond_4
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4263
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_3

    .line 4266
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 4268
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-nez v3, :cond_16

    .line 4269
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 4271
    :cond_16
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v3, v3, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    if-eqz v3, :cond_28

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4275
    :cond_28
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private canSyncEmail(Landroid/accounts/Account;)Z
    .registers 3
    .parameter

    .prologue
    .line 4287
    const-string v0, "com.android.email.provider"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static checkExchangeServiceServiceRunning()V
    .registers 3

    .prologue
    .line 4024
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4025
    if-nez v0, :cond_5

    .line 4031
    :cond_4
    :goto_4
    return-void

    .line 4027
    :cond_5
    sget-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_4

    .line 4028
    const-string v1, "!!! checkExchangeServiceServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4029
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4
.end method

.method private checkMailboxes()J
    .registers 26

    .prologue
    .line 4349
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4350
    sget-object v6, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4351
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 4352
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 4353
    if-nez v4, :cond_14

    .line 4354
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 4374
    :catchall_34
    move-exception v4

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw v4

    .line 4358
    :cond_37
    :try_start_37
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 4359
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 4360
    if-eqz v5, :cond_57

    iget-object v8, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-nez v8, :cond_61

    .line 4361
    :cond_57
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_3b

    .line 4364
    :cond_61
    iget-object v8, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    .line 4365
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleted mailbox: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, v5, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4366
    if-eqz v8, :cond_89

    .line 4367
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    goto :goto_3b

    .line 4369
    :cond_89
    const-string v5, "Removing from serviceMap"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4370
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_3b

    .line 4374
    :cond_98
    monitor-exit v6
    :try_end_99
    .catchall {:try_start_37 .. :try_end_99} :catchall_34

    .line 4375
    const-wide/32 v10, 0xdbba0

    .line 4376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-nez v4, :cond_ad

    .line 4382
    const-string v4, "mAccountObserver null; service died??"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    move-wide v6, v10

    .line 4665
    :cond_ac
    :goto_ac
    return-wide v6

    .line 4385
    :cond_ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v7}, Lcom/android/exchange/ExchangeService$AccountObserver;->getSyncableEasMailboxWhere()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4389
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    move v5, v8

    move-wide v6, v10

    .line 4391
    :cond_c9
    :goto_c9
    if-eqz v14, :cond_530

    :try_start_cb
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_530

    .line 4392
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4394
    const/4 v4, 0x4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v15, v4

    .line 4395
    const/16 v4, 0x9

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v17, v0

    .line 4396
    const/4 v4, 0x5

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 4397
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4399
    sget-object v8, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_f2
    .catchall {:try_start_cb .. :try_end_f2} :catchall_1d5

    .line 4400
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 4401
    monitor-exit v8
    :try_end_103
    .catchall {:try_start_f2 .. :try_end_103} :catchall_1d2

    .line 4406
    const/16 v8, 0x44

    if-ne v11, v8, :cond_11d

    const-wide/16 v20, -0x1

    cmp-long v8, v17, v20

    if-nez v8, :cond_11d

    :try_start_10d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 4411
    :cond_11d
    if-nez v4, :cond_49a

    .line 4412
    const/4 v4, 0x4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    .line 4413
    if-eqz v20, :cond_c9

    .line 4421
    sget-object v8, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_130
    .catchall {:try_start_10d .. :try_end_130} :catchall_1d5

    .line 4426
    :try_start_130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 4427
    const/16 v21, 0x44

    move/from16 v0, v21

    if-eq v11, v0, :cond_18d

    if-eqz v4, :cond_18d

    .line 4428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "syncErrorExist for account:"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, ". Put hold on mailbox:"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v22, Lcom/android/exchange/ExchangeService$SyncError;

    const/16 v23, 0x4

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4433
    :cond_18d
    monitor-exit v8
    :try_end_18e
    .catchall {:try_start_130 .. :try_end_18e} :catchall_1e2

    .line 4438
    :try_start_18e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    if-nez v4, :cond_197

    const/4 v4, 0x4

    if-ne v11, v4, :cond_c9

    .line 4444
    :cond_197
    const/4 v4, 0x5

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 4447
    const/4 v4, 0x0

    .line 4449
    const/16 v8, 0x42

    if-eq v11, v8, :cond_1ad

    const/16 v8, 0x41

    if-eq v11, v8, :cond_1ad

    const/16 v8, 0x43

    if-eq v11, v8, :cond_1ad

    const/16 v8, 0x45

    if-ne v11, v8, :cond_56f

    .line 4451
    :cond_1ad
    const/4 v8, 0x7

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4453
    if-eqz v8, :cond_1be

    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56f

    .line 4454
    :cond_1be
    const/4 v4, 0x1

    .line 4455
    const/4 v5, 0x1

    move v8, v5

    .line 4459
    :goto_1c1
    if-nez v4, :cond_1e5

    .line 4460
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->isMailboxSyncable(Lcom/android/emailcommon/provider/EmailContent$Account;I)Z
    :try_end_1cc
    .catchall {:try_start_18e .. :try_end_1cc} :catchall_1d5

    move-result v4

    if-nez v4, :cond_1e5

    move v5, v8

    .line 4461
    goto/16 :goto_c9

    .line 4401
    :catchall_1d2
    move-exception v4

    :try_start_1d3
    monitor-exit v8
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_1d2

    :try_start_1d4
    throw v4
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d5

    .line 4662
    :catchall_1d5
    move-exception v4

    if-eqz v14, :cond_1e1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1e1

    .line 4663
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4662
    :cond_1e1
    throw v4

    .line 4433
    :catchall_1e2
    move-exception v4

    :try_start_1e3
    monitor-exit v8
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    :try_start_1e4
    throw v4

    .line 4468
    :cond_1e5
    new-instance v5, Landroid/accounts/Account;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v21, "com.android.exchange"

    move-object/from16 v0, v21

    invoke-direct {v5, v4, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    const/16 v4, 0x42

    if-eq v11, v4, :cond_202

    const/16 v4, 0x41

    if-eq v11, v4, :cond_202

    const/16 v4, 0x43

    if-eq v11, v4, :cond_202

    const/16 v4, 0x45

    if-ne v11, v4, :cond_257

    .line 4474
    :cond_202
    if-nez v8, :cond_207

    move v5, v8

    .line 4475
    goto/16 :goto_c9

    .line 4479
    :cond_207
    const/16 v4, 0x42

    if-ne v11, v4, :cond_216

    .line 4480
    const-string v4, "com.android.contacts"

    .line 4497
    :cond_20d
    :goto_20d
    invoke-static {v5, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_244

    move v5, v8

    .line 4498
    goto/16 :goto_c9

    .line 4481
    :cond_216
    const/16 v4, 0x43

    if-ne v11, v4, :cond_21d

    .line 4482
    const-string v4, "tasks"

    goto :goto_20d

    .line 4483
    :cond_21d
    const/16 v4, 0x45

    if-ne v11, v4, :cond_224

    .line 4484
    const-string v4, "com.android.notes"

    goto :goto_20d

    .line 4487
    :cond_224
    const-string v4, "com.android.calendar"

    .line 4488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_20d

    .line 4493
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/exchange/ExchangeService;->registerCalendarObserver(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_20d

    .line 4500
    :cond_244
    const/16 v4, 0x41

    if-ne v11, v4, :cond_27a

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/ExchangeService;->isCalendarEnabled(J)Z

    move-result v4

    if-nez v4, :cond_27a

    move v5, v8

    .line 4502
    goto/16 :goto_c9

    .line 4504
    :cond_257
    const/4 v4, 0x6

    if-ne v11, v4, :cond_25d

    move v5, v8

    .line 4506
    goto/16 :goto_c9

    .line 4508
    :cond_25d
    const/16 v4, 0x8

    if-ne v11, v4, :cond_264

    move v5, v8

    .line 4509
    goto/16 :goto_c9

    .line 4510
    :cond_264
    const/16 v4, 0x40

    if-ge v11, v4, :cond_273

    const-string v4, "com.android.email.provider"

    invoke-static {v5, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_273

    move v5, v8

    .line 4515
    goto/16 :goto_c9

    .line 4518
    :cond_273
    const/16 v4, 0x62

    if-ne v11, v4, :cond_27a

    move v5, v8

    .line 4519
    goto/16 :goto_c9

    .line 4524
    :cond_27a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/ExchangeService$SyncError;

    .line 4525
    if-eqz v4, :cond_305

    .line 4527
    iget-boolean v5, v4, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-eqz v5, :cond_2e2

    .line 4529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "account: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " Mailbox: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ") in fatal error: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Nothing we can do about fatal errors"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4533
    if-eqz v20, :cond_56c

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_56c

    .line 4534
    const-string v4, "if mSyncErrorMap of __eas exists, remove it"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4535
    invoke-static/range {v15 .. v16}, Lcom/android/exchange/ExchangeService;->releaseSecurityHoldForEasMailbox(J)V

    move v5, v8

    goto/16 :goto_c9

    .line 4540
    :cond_2e2
    iget-wide v0, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    move-wide/from16 v21, v0

    cmp-long v5, v12, v21

    if-gez v5, :cond_2ff

    .line 4543
    iget-wide v9, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    add-long v15, v12, v6

    cmp-long v5, v9, v15

    if-gez v5, :cond_56c

    .line 4544
    iget-wide v4, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long v6, v4, v12

    .line 4545
    const-string v4, "Release hold"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    move v5, v8

    goto/16 :goto_c9

    .line 4550
    :cond_2ff
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 4554
    :cond_305
    const-wide/16 v4, -0x2

    cmp-long v4, v17, v4

    if-nez v4, :cond_381

    .line 4557
    if-eqz v20, :cond_36b

    const/4 v4, 0x4

    if-ne v11, v4, :cond_36b

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_36b

    .line 4560
    const-string v4, "Outbox sync interval is PUSH and sms sync is OFF...this is wrong, so, set Outbox sync interval to never"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 4562
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4563
    const-string v5, "syncInterval"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4564
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v11, v4, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4566
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exchange/ExchangeService;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_365

    .line 4567
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v14, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 4568
    new-instance v5, Lcom/android/exchange/EasOutboxService;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :cond_365
    move-wide v4, v6

    :goto_366
    move-wide v6, v4

    move v4, v8

    :goto_368
    move v5, v4

    .line 4647
    goto/16 :goto_c9

    .line 4571
    :cond_36b
    const-string v4, "requestSync for Outbox"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 4573
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v14, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 4574
    const/4 v5, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    move-wide v4, v6

    .line 4575
    goto :goto_366

    .line 4581
    :cond_381
    const/16 v4, 0x44

    if-ne v11, v4, :cond_3a5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a5

    .line 4583
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v14, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 4584
    const/16 v5, 0xa

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    move-wide v4, v6

    .line 4585
    goto :goto_366

    .line 4587
    :cond_3a5
    const/4 v4, 0x4

    if-ne v11, v4, :cond_3c6

    .line 4588
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exchange/ExchangeService;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_497

    .line 4589
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v14, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 4590
    new-instance v5, Lcom/android/exchange/EasOutboxService;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-wide v4, v6

    .line 4591
    goto :goto_366

    .line 4592
    :cond_3c6
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_497

    const-wide/16 v4, 0x5a0

    cmp-long v4, v17, v4

    if-gtz v4, :cond_497

    .line 4593
    const/16 v4, 0xa

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 4594
    sub-long v4, v12, v4

    .line 4595
    const-wide/16 v15, 0x0

    cmp-long v11, v4, v15

    if-gez v11, :cond_3fb

    .line 4596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHOA! lastSync in the future for mailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4597
    const-wide/32 v4, 0xea60

    mul-long v4, v4, v17

    .line 4599
    :cond_3fb
    const-wide/32 v9, 0xea60

    mul-long v9, v9, v17

    sub-long v4, v9, v4

    .line 4600
    const/4 v9, 0x1

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4601
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_41f

    .line 4602
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v14, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 4603
    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    move-wide v4, v6

    .line 4604
    goto/16 :goto_366

    :cond_41f
    cmp-long v10, v4, v6

    if-gez v10, :cond_46a

    .line 4606
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v6, :cond_451

    .line 4607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next sync for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4609
    :cond_451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduled sync, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_366

    .line 4610
    :cond_46a
    sget-boolean v10, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v10, :cond_497

    .line 4611
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Next sync for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    :cond_497
    move-wide v4, v6

    goto/16 :goto_366

    .line 4615
    :cond_49a
    iget-object v8, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 4618
    if-eqz v8, :cond_4d9

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-nez v8, :cond_4d9

    .line 4619
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_4c3

    .line 4620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dead thread, mailbox released: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4623
    :cond_4c3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 4625
    const-wide/16 v8, 0xbb8

    cmp-long v4, v6, v8

    if-lez v4, :cond_52d

    .line 4626
    const-wide/16 v6, 0xbb8

    .line 4627
    const-string v4, "Clean up dead thread(s)"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    move v4, v5

    goto/16 :goto_368

    .line 4630
    :cond_4d9
    iget-wide v10, v4, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 4631
    const-wide/16 v8, 0x0

    cmp-long v8, v10, v8

    if-lez v8, :cond_52d

    .line 4632
    sub-long v8, v10, v12

    .line 4633
    const-wide/16 v15, 0x0

    cmp-long v15, v8, v15

    if-gtz v15, :cond_4f3

    .line 4634
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 4635
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    move v4, v5

    goto/16 :goto_368

    .line 4636
    :cond_4f3
    const-wide/16 v15, 0x0

    cmp-long v4, v10, v15

    if-lez v4, :cond_52d

    cmp-long v4, v8, v6

    if-gez v4, :cond_52d

    .line 4637
    const-wide/32 v10, 0xa1220

    cmp-long v4, v8, v10

    if-gez v4, :cond_517

    .line 4638
    const-wide/16 v6, 0xfa

    cmp-long v4, v8, v6

    if-gez v4, :cond_515

    const-wide/16 v6, 0xfa

    .line 4639
    :goto_50c
    const-string v4, "Sync data change"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    move v4, v5

    goto/16 :goto_368

    :cond_515
    move-wide v6, v8

    .line 4638
    goto :goto_50c

    .line 4641
    :cond_517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal timeToRequest: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    :cond_52d
    move v4, v5

    goto/16 :goto_368

    .line 4649
    :cond_530
    invoke-interface {v14}, Landroid/database/Cursor;->requery()Z

    .line 4650
    :goto_533
    if-eqz v14, :cond_55d

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_55d

    .line 4651
    const/4 v4, 0x4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 4652
    if-eqz v4, :cond_56a

    .line 4653
    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_556
    .catchall {:try_start_1e4 .. :try_end_556} :catchall_1d5

    move-result-wide v4

    .line 4655
    cmp-long v8, v4, v6

    if-gez v8, :cond_56a

    :goto_55b
    move-wide v6, v4

    .line 4659
    goto :goto_533

    .line 4662
    :cond_55d
    if-eqz v14, :cond_ac

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_ac

    .line 4663
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_ac

    :cond_56a
    move-wide v4, v6

    goto :goto_55b

    :cond_56c
    move v5, v8

    goto/16 :goto_c9

    :cond_56f
    move v8, v5

    goto/16 :goto_1c1
.end method

.method private checkPIMSyncSettings()V
    .registers 6

    .prologue
    .line 3575
    sget-object v1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v1

    .line 3576
    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3577
    const/16 v3, 0x42

    const-string v4, "com.android.contacts"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 3580
    const/16 v3, 0x41

    const-string v4, "com.android.calendar"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 3582
    const/4 v3, 0x0

    const-string v4, "com.android.email.provider"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V

    goto :goto_9

    .line 3584
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 3585
    return-void
.end method

.method public static checkServiceExist(J)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4908
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4909
    if-nez v1, :cond_6

    .line 4917
    :goto_5
    return v0

    .line 4911
    :cond_6
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4912
    :try_start_9
    iget-object v1, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 4913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkServiceExist: Service for mailboxID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4914
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_5

    .line 4916
    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    goto :goto_5
.end method

.method private clearAlarm(J)V
    .registers 6
    .parameter

    .prologue
    .line 3351
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 3352
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 3353
    if-eqz v0, :cond_25

    .line 3354
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 3355
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3357
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    :cond_25
    monitor-exit v2

    .line 3360
    return-void

    .line 3359
    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private clearAlarms()V
    .registers 5

    .prologue
    .line 3381
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3382
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 3383
    :try_start_b
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 3384
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_15

    .line 3387
    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v0

    .line 3386
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3387
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_25

    .line 3388
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 3407
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3408
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_7

    .line 3409
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 3411
    :cond_7
    return-void
.end method

.method private static collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .registers 15
    .parameter "context"
    .parameter "accounts"

    .prologue
    const/4 v12, 0x0

    .line 1545
    const/4 v7, 0x0

    .line 1547
    .local v7, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_10} :catch_1f

    move-result-object v7

    .line 1552
    :goto_11
    const-string v0, "collect eas accounts"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1556
    if-nez v7, :cond_28

    .line 1557
    const-string v0, "DB returned null cursor! Return null accounts list to prevent deleteing accounts from AccountManager by mistake."

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    move-object p1, v12

    .line 1584
    .end local p1
    :cond_1e
    :goto_1e
    return-object p1

    .line 1549
    .restart local p1
    :catch_1f
    move-exception v8

    .line 1550
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v0, "ExchangeService"

    const-string v1, "RuntimeException in collectEasAccounts"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 1563
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_28
    :goto_28
    if-eqz v7, :cond_66

    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1564
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1565
    .local v10, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_28

    .line 1566
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v9

    .line 1567
    .local v9, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v9, :cond_28

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1568
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 1569
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)V

    .line 1571
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 1572
    invoke-virtual {p1, v6}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_59

    goto :goto_28

    .line 1580
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v10           #hostAuthId:J
    :catchall_59
    move-exception v0

    if-eqz v7, :cond_65

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_65

    .line 1581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1580
    :cond_65
    throw v0

    :cond_66
    if-eqz v7, :cond_1e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1e
.end method

.method public static deleteAccountPIMData(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 1636
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1637
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_5

    .line 1652
    :cond_4
    :goto_4
    return-void

    .line 1639
    :cond_5
    const/16 v4, 0x42

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1641
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_1a

    .line 1642
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1643
    .local v3, service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 1644
    .local v0, adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->wipe()V

    .line 1646
    .end local v0           #adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    .end local v3           #service:Lcom/android/exchange/EasSyncService;
    :cond_1a
    const/16 v4, 0x41

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1647
    if-eqz v2, :cond_4

    .line 1648
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1649
    .restart local v3       #service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 1650
    .local v0, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->wipe()V

    goto :goto_4
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .registers 15
    .parameter

    .prologue
    const/16 v13, 0x44

    const/4 v12, -0x1

    const/4 v8, 0x2

    .line 5115
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 5116
    if-nez v1, :cond_9

    .line 5265
    :goto_8
    return-void

    .line 5119
    :cond_9
    if-nez p0, :cond_11

    .line 5120
    const-string v0, "done : svc param is null"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 5124
    :cond_11
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5125
    :try_start_14
    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 5126
    iget-object v5, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5127
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 5128
    invoke-direct {v1, v3, v4}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 5129
    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 5130
    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 5131
    if-nez v7, :cond_32

    .line 5132
    monitor-exit v2

    goto :goto_8

    .line 5264
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v0

    .line 5134
    :cond_32
    if-eq v6, v8, :cond_4d

    .line 5135
    :try_start_34
    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 5136
    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 5137
    if-nez v10, :cond_3e

    .line 5138
    monitor-exit v2

    goto :goto_8

    .line 5139
    :cond_3e
    const/4 v11, 0x2

    invoke-virtual {v1, v1, v11, v10}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_2f

    move-result v10

    if-eqz v10, :cond_4d

    .line 5142
    :try_start_45
    new-instance v10, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v10, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8, v9}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginSucceeded(J)V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4d} :catch_2c7

    .line 5149
    :cond_4d
    :goto_4d
    packed-switch v6, :pswitch_data_2ca

    .line 5263
    :cond_50
    :goto_50
    :pswitch_50
    :try_start_50
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 5264
    monitor-exit v2

    goto :goto_8

    .line 5151
    :pswitch_57
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 5154
    :cond_5d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5156
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1
    :try_end_67
    .catchall {:try_start_50 .. :try_end_67} :catchall_2f

    .line 5157
    const/4 v0, 0x0

    :try_start_68
    sput v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 5158
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_11f

    .line 5159
    if-eqz p0, :cond_50

    :try_start_6d
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isPrivateSyncOptionTypeByType(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 5165
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v0, v12, :cond_50

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v13, :cond_9f

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_9f
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_50

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v13, :cond_50

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    :cond_c1
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-eq v0, v1, :cond_50

    .line 5177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSyncInterval mismatch mailbox.syncInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " account.syncInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 5180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5181
    const-string v1, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5182
    sget-object v1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_6d .. :try_end_11d} :catchall_2f

    goto/16 :goto_50

    .line 5158
    :catchall_11f
    move-exception v0

    :try_start_120
    monitor-exit v1
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    :try_start_121
    throw v0

    .line 5194
    :pswitch_122
    if-eqz v0, :cond_154

    .line 5196
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 5197
    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    iput-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 5198
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 5199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_50

    .line 5201
    :cond_154
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V
    :try_end_17c
    .catchall {:try_start_121 .. :try_end_17c} :catchall_2f

    goto/16 :goto_50

    .line 5214
    :pswitch_17e
    :try_start_17e
    new-instance v8, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v8, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v9, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v8, v9, v10}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(J)V
    :try_end_188
    .catchall {:try_start_17e .. :try_end_188} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_17e .. :try_end_188} :catch_2c4

    .line 5220
    :goto_188
    if-eqz v0, :cond_1ca

    .line 5221
    :try_start_18a
    iget-boolean v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    if-nez v1, :cond_196

    .line 5222
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 5223
    const-wide/32 v3, 0xa4cb80

    iput-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 5225
    :cond_196
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 5226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "due to exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_50

    .line 5229
    :cond_1ca
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-direct {v3, v1, v6, v4, v8}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xa4cb80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_50

    .line 5234
    :pswitch_1fc
    if-eqz v0, :cond_22d

    .line 5235
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 5239
    :goto_201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x1b7740

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "due to exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_50

    .line 5237
    :cond_22d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x1b7740

    const/4 v8, 0x0

    invoke-direct {v3, v1, v6, v4, v8}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IIZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_201

    .line 5245
    :pswitch_241
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_270

    .line 5246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "done(): setting the provisioning error for mAccount: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 5247
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5250
    :cond_270
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    .line 5255
    :pswitch_282
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x75300

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v4, v7}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IIZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account is blocked account Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sync is put on hold for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x75300

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_2c2
    .catchall {:try_start_18a .. :try_end_2c2} :catchall_2f

    goto/16 :goto_50

    .line 5215
    :catch_2c4
    move-exception v8

    goto/16 :goto_188

    .line 5143
    :catch_2c7
    move-exception v8

    goto/16 :goto_4d

    .line 5149
    :pswitch_data_2ca
    .packed-switch 0x0
        :pswitch_57
        :pswitch_122
        :pswitch_17e
        :pswitch_1fc
        :pswitch_241
        :pswitch_50
        :pswitch_282
        :pswitch_282
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_122
    .end packed-switch
.end method

.method public static doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V
    .registers 12
    .parameter

    .prologue
    .line 4980
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4981
    if-nez v1, :cond_5

    .line 5104
    :goto_4
    return-void

    .line 4983
    :cond_5
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4984
    :try_start_8
    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 4985
    iget-object v5, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4986
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 4991
    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 4992
    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 4993
    if-nez v7, :cond_23

    .line 4994
    monitor-exit v2

    goto :goto_4

    .line 5103
    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v0

    .line 4996
    :cond_23
    :try_start_23
    sget-wide v8, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_GALSEARCH:J

    cmp-long v8, v3, v8

    if-eqz v8, :cond_210

    .line 4997
    packed-switch v6, :pswitch_data_228

    .line 5094
    :cond_2c
    :goto_2c
    :pswitch_2c
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 5103
    :cond_31
    :goto_31
    monitor-exit v2

    goto :goto_4

    .line 5001
    :pswitch_33
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_20

    .line 5002
    const/4 v0, 0x0

    :try_start_37
    sput v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 5003
    monitor-exit v1

    goto :goto_2c

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0

    .line 5007
    :pswitch_3e
    if-eqz v0, :cond_6f

    .line 5009
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 5010
    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->DEFAULT_HOLD_DELAY:J

    iput-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 5011
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 5012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto :goto_2c

    .line 5014
    :cond_6f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto :goto_2c

    .line 5023
    :pswitch_98
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2c

    .line 5024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting the provisioning error for mAccount: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 5025
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5026
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_2c

    .line 5029
    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 5030
    if-eqz v0, :cond_2c

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x44

    if-eq v0, v7, :cond_2c

    .line 5031
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v7, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v6, v8}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailbox: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " put to hold due to security failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_3d .. :try_end_105} :catchall_20

    goto/16 :goto_2c

    .line 5052
    :pswitch_107
    :try_start_107
    new-instance v8, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v8, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v9, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v8, v9, v10}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(J)V
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_111} :catch_224

    .line 5058
    :goto_111
    if-eqz v0, :cond_153

    .line 5059
    :try_start_113
    iget-boolean v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    if-nez v1, :cond_11f

    .line 5060
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->autoRecover:Z

    .line 5061
    const-wide/32 v3, 0xa4cb80

    iput-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    .line 5063
    :cond_11f
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 5064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "due to exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 5067
    :cond_153
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-direct {v3, v1, v6, v4, v8}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xa4cb80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 5072
    :pswitch_185
    if-eqz v0, :cond_1b6

    .line 5073
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 5077
    :goto_18a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x1b7740

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "due to exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 5075
    :cond_1b6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x1b7740

    const/4 v8, 0x0

    invoke-direct {v3, v1, v6, v4, v8}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IIZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18a

    .line 5083
    :pswitch_1ca
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x75300

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v4, v7}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IIZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5086
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2c

    .line 5087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account is blocked account Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sync is put on hold for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x75300

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 5095
    :cond_210
    sget-wide v0, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_GALSEARCH:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_31

    if-nez v6, :cond_31

    .line 5098
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1
    :try_end_21b
    .catchall {:try_start_113 .. :try_end_21b} :catchall_20

    .line 5099
    const/4 v0, 0x0

    :try_start_21c
    sput v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 5100
    monitor-exit v1

    goto/16 :goto_31

    :catchall_221
    move-exception v0

    monitor-exit v1
    :try_end_223
    .catchall {:try_start_21c .. :try_end_223} :catchall_221

    :try_start_223
    throw v0
    :try_end_224
    .catchall {:try_start_223 .. :try_end_224} :catchall_20

    .line 5053
    :catch_224
    move-exception v8

    goto/16 :goto_111

    .line 4997
    nop

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3e
        :pswitch_107
        :pswitch_185
        :pswitch_98
        :pswitch_2c
        :pswitch_1ca
        :pswitch_1ca
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_3e
    .end packed-switch
.end method

.method public static errorlog(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 2583
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_12

    .line 2584
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v0, :cond_12

    .line 2586
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    :cond_12
    return-void
.end method

.method public static getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 5
    .parameter "accountId"

    .prologue
    .line 2244
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2245
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v1, :cond_10

    .line 2246
    sget-object v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 2247
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    monitor-enter v0

    .line 2248
    :try_start_7
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/ExchangeService$AccountList;->getById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    monitor-exit v0

    .line 2251
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :goto_c
    return-object v2

    .line 2249
    .restart local v0       #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :catchall_d
    move-exception v2

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v2

    .line 2251
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :cond_10
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static getAccountList()Lcom/android/exchange/ExchangeService$AccountList;
    .registers 2

    .prologue
    .line 2230
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_10

    .line 2233
    sget-object v1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v1

    .line 2234
    :try_start_7
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    sget-object v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-exit v1

    .line 2239
    :goto_c
    return-object v0

    .line 2236
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v0

    .line 2239
    :cond_10
    sget-object v0, Lcom/android/exchange/ExchangeService;->EMPTY_ACCOUNT_LIST:Lcom/android/exchange/ExchangeService$AccountList;

    goto :goto_c
.end method

.method public static getAliasFromMap(J)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 5638
    .line 5639
    sget-object v1, Lcom/android/exchange/ExchangeService;->THREAD_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5641
    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->mThreadIdMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_2a

    .line 5645
    :goto_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_2d

    .line 5646
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning Alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    return-object v0

    .line 5642
    :catch_2a
    move-exception v0

    .line 5643
    const/4 v0, 0x0

    goto :goto_10

    .line 5645
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public static declared-synchronized getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 2876
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_78

    .line 2880
    sget v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    if-le v0, v2, :cond_18

    .line 2881
    const-string v0, "Shutting down process to unblock threads"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2882
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2886
    :cond_18
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2887
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2889
    new-instance v2, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2890
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2893
    new-instance v2, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2894
    sget-object v3, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 2896
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "httpts"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2898
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2899
    const-string v3, "http.conn-manager.max-total"

    const/16 v4, 0x19

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2900
    const-string v3, "http.conn-manager.max-per-route"

    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2901
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v3, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 2904
    :cond_78
    sget-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_7a
    .catchall {:try_start_4 .. :try_end_7a} :catchall_7c

    monitor-exit v1

    return-object v0

    .line 2876
    :catchall_7c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    .prologue
    .line 2909
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_6e

    .line 2929
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2930
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2932
    new-instance v2, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2933
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2936
    new-instance v2, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2937
    sget-object v3, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 2939
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "httpts"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2941
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2942
    const-string v3, "http.conn-manager.max-total"

    const/16 v4, 0x19

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2943
    const-string v3, "http.conn-manager.max-per-route"

    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2945
    const-string v3, "http.conn-manager.timeout"

    const/16 v4, 0x4e20

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2946
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v3, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 2949
    :cond_6e
    sget-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_72

    monitor-exit v1

    return-object v0

    .line 2909
    :catchall_72
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getClientConnectionManagerForSendMessage(J)Lorg/apache/http/conn/ClientConnectionManager;
    .registers 8
    .parameter

    .prologue
    .line 2955
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1

    const/4 v0, 0x0

    .line 2956
    :try_start_4
    sget-object v2, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    if-nez v2, :cond_f

    .line 2957
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    .line 2960
    :cond_f
    sget-object v2, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    if-eqz v2, :cond_8d

    .line 2961
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 2981
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2982
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2984
    new-instance v0, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2985
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2988
    new-instance v0, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2989
    sget-object v3, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 2991
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "httpts"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2993
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2994
    const-string v0, "http.conn-manager.max-total"

    const/16 v4, 0x19

    invoke-interface {v3, v0, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2995
    const-string v0, "http.conn-manager.max-per-route"

    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v3, v0, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2997
    const-string v0, "http.conn-manager.timeout"

    const/16 v4, 0x4e20

    invoke-interface {v3, v0, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2998
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 2999
    sget-object v2, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_4 .. :try_end_8d} :catchall_9c

    .line 3005
    :cond_8d
    :goto_8d
    monitor-exit v1

    return-object v0

    .line 3001
    :cond_8f
    :try_start_8f
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_9c

    goto :goto_8d

    .line 2955
    :catchall_9c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 5300
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    return-object v0
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2608
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1

    if-nez p0, :cond_7

    .line 2609
    :try_start_5
    sget-object p0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2610
    :cond_7
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_32

    if-nez v0, :cond_2e

    .line 2630
    :try_start_b
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive deviceId from Email app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2e} :catch_35

    .line 2639
    :cond_2e
    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_32

    monitor-exit v1

    return-object v0

    .line 2608
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2635
    :catch_35
    move-exception v0

    goto :goto_2e
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2266
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2267
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v1, :cond_f

    .line 2268
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 2270
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;
    .registers 1

    .prologue
    .line 5628
    sget-object v0, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    return-object v0
.end method

.method public static getElmSvcMsg()J
    .registers 2

    .prologue
    .line 5632
    sget-object v0, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    iget-object v0, v0, Lcom/android/exchange/EasLoadMoreSvc;->mMsg:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    return-wide v0
.end method

.method private getMailBoxIdRIC(J)Ljava/lang/Long;
    .registers 15
    .parameter "mAccountKey"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 703
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 704
    .local v7, RicBoxId:Ljava/lang/Long;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "accountKey"

    aput-object v0, v2, v10

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "type"

    aput-object v0, v2, v11

    .line 708
    .local v2, MAILBOX_PROJECTION:[Ljava/lang/String;
    const-string v3, "accountKey=? AND type=?"

    .line 709
    .local v3, selection:Ljava/lang/String;
    const/16 v6, 0x61

    .line 710
    .local v6, RiCBoxtype:I
    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 714
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 717
    .local v9, ric:Landroid/database/Cursor;
    :try_start_2b
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 719
    if-eqz v9, :cond_45

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 720
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_44} :catch_4b

    move-result-object v7

    .line 727
    :cond_45
    if-eqz v9, :cond_4a

    .line 728
    :goto_47
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_4a
    return-object v7

    .line 723
    :catch_4b
    move-exception v8

    .line 724
    .local v8, e:Ljava/lang/Exception;
    :try_start_4c
    const-string v0, "MailboxIdRIC"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_5b

    .line 727
    if-eqz v9, :cond_4a

    goto :goto_47

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_5b
    move-exception v0

    if-eqz v9, :cond_61

    .line 728
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 727
    :cond_61
    throw v0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .registers 4
    .parameter "status"

    .prologue
    .line 5292
    const/4 v2, 0x5

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5293
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v2

    .line 5295
    .end local v1           #s:Ljava/lang/String;
    :goto_9
    return v2

    .line 5294
    :catch_a
    move-exception v0

    .line 5295
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_9
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .registers 2
    .parameter "status"

    .prologue
    .line 5275
    if-nez p0, :cond_4

    .line 5276
    const/4 v0, -0x1

    .line 5278
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_3
.end method

.method private hasSendableMessages(Landroid/database/Cursor;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4233
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or (syncServerId!=-2 and syncServerId!=-5 and syncServerId!=-3))"

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4238
    :cond_1b
    if-eqz v1, :cond_3c

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4239
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_35

    move-result v0

    if-nez v0, :cond_1b

    .line 4244
    if-eqz v1, :cond_33

    .line 4245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_33
    move v0, v6

    .line 4247
    :goto_34
    return v0

    .line 4244
    :catchall_35
    move-exception v0

    if-eqz v1, :cond_3b

    .line 4245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4244
    :cond_3b
    throw v0

    :cond_3c
    if-eqz v1, :cond_41

    .line 4245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    move v0, v7

    .line 4247
    goto :goto_34
.end method

.method private isCalendarEnabled(J)Z
    .registers 9
    .parameter "accountId"

    .prologue
    const/4 v1, 0x1

    .line 2060
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 2061
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    if-eqz v0, :cond_17

    .line 2062
    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    .line 2067
    :cond_17
    :goto_17
    return v1

    .line 2062
    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isMailboxSyncable(Lcom/android/emailcommon/provider/EmailContent$Account;I)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x42

    const/16 v5, 0x41

    const/4 v1, 0x0

    .line 4305
    if-eq p2, v2, :cond_9

    if-ne p2, v5, :cond_3f

    .line 4307
    :cond_9
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 4343
    :goto_10
    return v0

    .line 4312
    :cond_11
    if-ne p2, v2, :cond_1f

    .line 4313
    const-string v0, "com.android.contacts"

    .line 4323
    :cond_15
    :goto_15
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAmAccount:Landroid/accounts/Account;

    invoke-static {v2, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v1

    .line 4324
    goto :goto_10

    .line 4315
    :cond_1f
    const-string v0, "com.android.calendar"

    .line 4316
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4319
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->registerCalendarObserver(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_15

    .line 4327
    :cond_33
    if-ne p2, v5, :cond_5b

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/ExchangeService;->isCalendarEnabled(J)Z

    move-result v0

    if-nez v0, :cond_5b

    move v0, v1

    .line 4328
    goto :goto_10

    .line 4331
    :cond_3f
    const/4 v0, 0x6

    if-ne p2, v0, :cond_44

    move v0, v1

    .line 4332
    goto :goto_10

    .line 4339
    :cond_44
    const/4 v0, 0x4

    if-eq p2, v0, :cond_5b

    invoke-static {p1}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAmAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService;->canSyncEmail(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    if-nez v0, :cond_5b

    :cond_59
    move v0, v1

    .line 4341
    goto :goto_10

    .line 4343
    :cond_5b
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static kick(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 4926
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4927
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_c

    .line 4928
    monitor-enter v0

    .line 4930
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 4931
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 4932
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_1a

    .line 4934
    :cond_c
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 4935
    sget-object v2, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4936
    :try_start_13
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4937
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 4939
    :cond_19
    return-void

    .line 4932
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    .line 4937
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 2561
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 2565
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_e

    .line 2566
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v0, :cond_e

    .line 2568
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    :cond_e
    return-void
.end method

.method private logSyncHolds()V
    .registers 13

    .prologue
    .line 2328
    sget-boolean v7, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v7, :cond_b4

    .line 2329
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2331
    .local v5, time:J
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2332
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2333
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v2, :cond_4a

    .line 2334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no longer exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_17

    .line 2336
    :cond_4a
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2337
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_17

    .line 2338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fatal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2340
    iget-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_17

    .line 2341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hold ends in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2347
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    .end local v5           #time:J
    :cond_b4
    return-void
.end method

.method public static declared-synchronized newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 6

    .prologue
    .line 2846
    const-class v1, Lcom/android/exchange/ExchangeService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_6e

    .line 2849
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2850
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2852
    new-instance v2, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2853
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2856
    new-instance v2, Lcom/android/emailcommon/utility/SSLSocketFactory;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/exchange/cba/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 2857
    sget-object v3, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 2859
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "httpts"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2861
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2862
    const-string v3, "http.conn-manager.max-total"

    const/16 v4, 0x19

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2863
    const-string v3, "http.conn-manager.max-per-route"

    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnPerPing:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2864
    const-string v3, "http.conn-manager.timeout"

    const/16 v4, 0x4e20

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 2865
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v3, Lcom/android/exchange/ExchangeService;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 2869
    :cond_6e
    sget-object v0, Lcom/android/exchange/ExchangeService;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_72

    monitor-exit v1

    return-object v0

    .line 2846
    :catchall_72
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static pingStatus(J)I
    .registers 9
    .parameter "mailboxId"

    .prologue
    const/4 v2, 0x0

    .line 4804
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4805
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_6

    .line 4820
    :cond_5
    :goto_5
    return v2

    .line 4808
    :cond_6
    iget-object v3, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 4809
    const/4 v2, 0x1

    goto :goto_5

    .line 4812
    :cond_14
    iget-object v3, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 4813
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_5

    .line 4814
    iget-boolean v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-eqz v3, :cond_28

    .line 4815
    const/4 v2, 0x3

    goto :goto_5

    .line 4816
    :cond_28
    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 4817
    const/4 v2, 0x2

    goto :goto_5
.end method

.method public static reconcileAccounts(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 2498
    new-instance v0, Lcom/android/exchange/ExchangeService$3;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 2507
    return-void
.end method

.method private registerCalendarObserver(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 2026
    new-instance v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/ExchangeService$CalendarObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2027
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    .line 2030
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2035
    :cond_28
    return-void
.end method

.method private releaseMailbox(J)V
    .registers 5
    .parameter "mailboxId"

    .prologue
    .line 4221
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 4223
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 2420
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2421
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_a

    .line 2422
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 2425
    :cond_a
    return-void
.end method

.method public static releaseSecurityHoldForEasMailbox(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 2351
    const-string v1, "releaseSecurityHoldForEasMailbox(): Entry"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2352
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2353
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_f

    .line 2354
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldsForEasMailbox(Landroid/content/Context;IJ)Z

    .line 2357
    :cond_f
    return-void
.end method

.method private releaseSyncHoldMailbox(Landroid/content/Context;IJ)V
    .registers 9
    .parameter "context"
    .parameter "reason"
    .parameter "mailboxId"

    .prologue
    .line 2472
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2473
    :try_start_3
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2474
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_1e

    iget v1, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    if-ne v1, p2, :cond_1e

    .line 2475
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    :cond_1e
    monitor-exit v2

    .line 2478
    return-void

    .line 2477
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 14
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 2444
    const/4 v1, 0x0

    .line 2445
    .local v1, holdWasReleased:Z
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2446
    .local v4, mailboxId:J
    if-eqz p3, :cond_2c

    .line 2447
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 2448
    .local v3, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v3, :cond_49

    .line 2449
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    .end local v3           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2c
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2455
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_b

    iget v6, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    if-ne v6, p2, :cond_b

    .line 2456
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    const/4 v1, 0x1

    goto :goto_b

    .line 2450
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .restart local v3       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_49
    iget-wide v6, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v8, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2c

    goto :goto_b

    .line 2462
    .end local v3           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #mailboxId:J
    :cond_52
    if-eqz p3, :cond_63

    .line 2463
    sget-object v7, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2464
    :try_start_57
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v8, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    monitor-exit v7

    .line 2466
    :cond_63
    return v1

    .line 2465
    :catchall_64
    move-exception v6

    monitor-exit v7
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_64

    throw v6
.end method

.method private releaseSyncHoldsImplForEasMailbox(Landroid/content/Context;IJ)Z
    .registers 27
    .parameter "context"
    .parameter "reason"
    .parameter "accountId"

    .prologue
    .line 2366
    const-string v3, "releaseSyncHoldsImplForEasMailbox(): Entry"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2367
    const/4 v13, 0x0

    .line 2368
    .local v13, holdWasReleased:Z
    const-wide/16 v10, -0x1

    .line 2370
    .local v10, easMailboxId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND type=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v8

    const/4 v8, 0x1

    const-wide/16 v20, 0x44

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2375
    .local v9, c:Landroid/database/Cursor;
    :try_start_2a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2376
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_b0

    move-result-wide v10

    .line 2379
    :cond_35
    if-eqz v9, :cond_3a

    .line 2380
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2383
    :cond_3a
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2384
    :try_start_3d
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2385
    .local v19, mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 2386
    .local v17, mailboxId:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v16

    .line 2387
    .local v16, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v16, :cond_b7

    .line 2388
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2394
    :cond_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2395
    .local v12, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v12, :cond_4e

    iget v3, v12, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_4e

    .line 2396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseSyncHoldsImplForEasMailbox(): mSyncErrorMap: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is removed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2397
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catchall {:try_start_3d .. :try_end_ae} :catchall_da

    .line 2399
    const/4 v13, 0x1

    goto :goto_4e

    .line 2379
    .end local v12           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v17           #mailboxId:J
    .end local v19           #mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_b0
    move-exception v3

    if-eqz v9, :cond_b6

    .line 2380
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2379
    :cond_b6
    throw v3

    .line 2390
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v17       #mailboxId:J
    .restart local v19       #mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_b7
    :try_start_b7
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v3, v5, p3

    if-nez v3, :cond_4e

    cmp-long v3, v17, v10

    if-eqz v3, :cond_71

    goto :goto_4e

    .line 2402
    .end local v16           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v17           #mailboxId:J
    :cond_c4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2403
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_c8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 2404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 2406
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v19           #mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_da
    move-exception v3

    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_b7 .. :try_end_dc} :catchall_da

    throw v3

    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v19       #mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_dd
    :try_start_dd
    monitor-exit v4
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_da

    .line 2408
    return v13
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3201
    sget-object v6, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3202
    if-nez v6, :cond_8

    .line 3279
    :goto_7
    return-void

    .line 3204
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    const-wide/16 v7, 0x44

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3210
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3211
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_5c

    .line 3212
    :try_start_30
    new-instance v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 3213
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)V

    .line 3214
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 3215
    if-nez v4, :cond_46

    .line 3216
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 3217
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_59

    .line 3277
    :cond_42
    :goto_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 3219
    :cond_46
    :try_start_46
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 3221
    if-nez p3, :cond_61

    if-eqz v0, :cond_54

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3222
    :cond_54
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 3223
    monitor-exit v2

    goto :goto_42

    .line 3274
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 3277
    :catchall_5c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3227
    :cond_61
    :try_start_61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3228
    const-string v5, "syncInterval"

    const/4 v7, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3233
    const-string v0, "Set push/ping boxes to push/hold"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3235
    iget-wide v7, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3236
    iget-object v0, v6, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3238
    if-eqz v0, :cond_d8

    iget v5, v0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    const/16 v9, 0xa

    if-eq v5, v9, :cond_d8

    .line 3239
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a5
    .catchall {:try_start_61 .. :try_end_a5} :catchall_59

    .line 3240
    :try_start_a5
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3243
    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 3244
    if-eqz v0, :cond_c9

    .line 3245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Stopped)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3248
    :cond_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_a5 .. :try_end_ca} :catchall_d5

    .line 3250
    :try_start_ca
    invoke-direct {v6, v7, v8}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 3252
    const-string v0, "reload folder list"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 3274
    :cond_d2
    :goto_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_ca .. :try_end_d3} :catchall_59

    goto/16 :goto_42

    .line 3248
    :catchall_d5
    move-exception v0

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    :try_start_d7
    throw v0

    .line 3264
    :cond_d8
    if-nez v0, :cond_d2

    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_d2

    iget-object v0, v6, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    iget-object v0, v6, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 3267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account in Manual mode. Starting Sync forcefully.. for mailbox:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3269
    const/4 v0, 0x5

    const/4 v4, 0x0

    invoke-direct {v6, v3, v0, v4}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    :try_end_118
    .catchall {:try_start_d7 .. :try_end_118} :catchall_59

    goto :goto_d2
.end method

.method private static reloadFolderListFailed(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 3193
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 3198
    :goto_a
    return-void

    .line 3195
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static removeAliasFromMap()V
    .registers 4

    .prologue
    .line 5657
    sget-object v1, Lcom/android/exchange/ExchangeService;->THREAD_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5658
    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->mThreadIdMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5659
    monitor-exit v1

    .line 5660
    return-void

    .line 5659
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static removeFromSyncErrorMap(J)V
    .registers 5
    .parameter "mailboxId"

    .prologue
    .line 4961
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4962
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_d

    .line 4963
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4965
    :cond_d
    return-void
.end method

.method private requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3706
    sget-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-nez v1, :cond_a

    if-eqz p1, :cond_a

    sget-boolean v1, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-eqz v1, :cond_b

    .line 3733
    :cond_a
    :goto_a
    return-void

    .line 3708
    :cond_b
    sget-object v3, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3709
    :try_start_e
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 3710
    if-eqz v4, :cond_5d

    .line 3713
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3714
    if-nez v1, :cond_5d

    .line 3715
    new-instance v2, Lcom/android/exchange/EasSyncService;

    invoke-direct {v2, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 3716
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v1, :cond_38

    .line 3717
    monitor-exit v3

    goto :goto_a

    .line 3732
    :catchall_35
    move-exception v1

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v1

    .line 3719
    :cond_38
    :try_start_38
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x44

    if-ne v1, v5, :cond_5f

    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 3721
    const-string v1, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3722
    const/16 v1, 0xa

    iput v1, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 3726
    :goto_55
    if-eqz p3, :cond_5a

    .line 3727
    invoke-virtual {v2, p3}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 3729
    :cond_5a
    invoke-direct {p0, v2, p1}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 3732
    :cond_5d
    monitor-exit v3

    goto :goto_a

    .line 3724
    :cond_5f
    iput p2, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I
    :try_end_61
    .catchall {:try_start_38 .. :try_end_61} :catchall_35

    goto :goto_55
.end method

.method private runAccountReconcilerSync(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 2518
    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v3, :cond_a

    .line 2519
    const-string v3, "!!! EAS ExchangeService  -----------  Quit thread : null INSTANCE(1)"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2558
    :cond_9
    :goto_9
    return-void

    .line 2523
    :cond_a
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 2530
    .local v1, accountMgrList:[Landroid/accounts/Account;
    new-instance v3, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v3}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    invoke-static {p1, v3}, Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v0

    .line 2534
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    if-nez v0, :cond_25

    .line 2535
    const-string v3, "onAccountChanged(): empty accounts list was returned from collectEasAccounts()! Exit immediately."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto :goto_9

    .line 2543
    :cond_25
    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v3, :cond_2f

    .line 2544
    const-string v3, "!!! EAS EAS ExchangeService  -----------  Quit thread : null INSTANCE(2)"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    goto :goto_9

    .line 2548
    :cond_2f
    const-string v3, "Reconciling accounts..."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/android/emailcommon/utility/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z

    move-result v2

    .line 2551
    .local v2, accountsDeleted:Z
    if-eqz v2, :cond_9

    .line 2553
    :try_start_3e
    new-instance v3, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v3, p1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/service/AccountServiceProxy;->accountDeleted()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_9

    .line 2554
    :catch_47
    move-exception v3

    goto :goto_9
.end method

.method public static runAsleep(JJ)V
    .registers 5
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 3399
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3400
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_a

    .line 3401
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 3402
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 3404
    :cond_a
    return-void
.end method

.method public static runAwake(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 3391
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3392
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_a

    .line 3393
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->acquireWakeLock(J)V

    .line 3394
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 3396
    :cond_a
    return-void
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .registers 5
    .parameter

    .prologue
    .line 4777
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4778
    if-nez v0, :cond_5

    .line 4793
    :cond_4
    :goto_4
    return-void

    .line 4780
    :cond_5
    iget-wide v1, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 4781
    if-eqz v1, :cond_4

    .line 4784
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 4785
    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 4787
    if-nez v0, :cond_27

    .line 4788
    const/4 v0, 0x7

    invoke-static {v1, v2, v0, p0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    .line 4789
    const-string v0, "part request"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_4

    .line 4791
    :cond_27
    invoke-virtual {v0, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_4
.end method

.method public static serviceRequest(JI)V
    .registers 5
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 4669
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/ExchangeService;->serviceRequest(JJI)V

    .line 4670
    return-void
.end method

.method public static serviceRequest(JJI)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    .line 4687
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4688
    if-nez v0, :cond_6

    .line 4758
    :cond_5
    :goto_5
    return-void

    .line 4690
    :cond_6
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 4694
    if-nez v1, :cond_12

    .line 4695
    const-string v0, "Ignoring serviceRequest for null mailbox"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4701
    :cond_12
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 4703
    if-eqz v2, :cond_57

    .line 4711
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 4713
    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4028333333333333L

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_3b

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v7, :cond_3b

    .line 4715
    const-string v0, "Ignoring serviceRequest for outbox mailbox"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4717
    :cond_3b
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, v7, :cond_5d

    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x402c

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_5d

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_5d

    .line 4720
    const-string v0, "Ignoring serviceRequest for outbox mailbox as SMS Sync is not enabled"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4724
    :cond_57
    const-string v0, "Ignoring serviceRequest for null account"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4730
    :cond_5d
    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6b

    .line 4732
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const-string v0, "Ignoring serviceRequest for search"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4736
    :cond_6b
    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_79

    .line 4737
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const-string v0, "Ignoring serviceRequest for document search"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4743
    :cond_79
    :try_start_79
    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 4744
    if-eqz v0, :cond_be

    .line 4745
    instance-of v1, v0, Lcom/android/exchange/EasOutboxService;

    if-nez v1, :cond_9f

    .line 4746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 4751
    :goto_92
    const-string v0, "service request"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_97} :catch_99

    goto/16 :goto_5

    .line 4755
    :catch_99
    move-exception v0

    .line 4756
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 4748
    :cond_9f
    :try_start_9f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceRequest() : service.mRequestTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "service.mRequestTime should not be set for EasOutboxService."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_92

    .line 4753
    :cond_be
    const/4 v0, 0x0

    invoke-static {p0, p1, p4, v0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c2} :catch_99

    goto/16 :goto_5
.end method

.method private setAlarm(JJ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 3363
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v1

    .line 3364
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 3365
    if-nez v0, :cond_57

    .line 3366
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3367
    const-string v2, "mailbox"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Box"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3369
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3370
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3372
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3373
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3377
    :cond_57
    monitor-exit v1

    .line 3378
    return-void

    .line 3377
    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public static setAliasInMap(Ljava/lang/String;)V
    .registers 6
    .parameter "alias"

    .prologue
    .line 5651
    sget-object v1, Lcom/android/exchange/ExchangeService;->THREAD_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5652
    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->mThreadIdMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5653
    monitor-exit v1

    .line 5654
    return-void

    .line 5653
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5306
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.android.exchange"

    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5308
    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 5312
    const-string v3, "com.android.calendar"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 5317
    const-string v3, "tasks"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 5322
    const-string v3, "com.android.notes"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 5324
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 5325
    if-eqz p5, :cond_87

    .line 5327
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 5328
    const/4 v2, 0x1

    .line 5329
    if-eqz v3, :cond_67

    .line 5334
    :try_start_2f
    iget-object v9, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x402c

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_67

    .line 5336
    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_108

    .line 5337
    const-string v3, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "accountKey=? and type in (0,4,97,68)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v3, v9, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5350
    :goto_5f
    const-string v3, "ExchangeService"

    const-string v9, "exchange service - seteassync intervals,inbox,outbox,RIC"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_66} :catch_128

    .line 5352
    const/4 v2, 0x0

    .line 5360
    :cond_67
    :goto_67
    if-eqz v2, :cond_87

    .line 5361
    const-string v2, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type in (0,68)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v3, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5370
    :cond_87
    if-eqz v4, :cond_12e

    .line 5371
    const-string v2, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (66)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v3, v8, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5384
    :goto_a7
    if-eqz v5, :cond_14f

    .line 5385
    const-string v2, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (65)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5399
    :goto_c7
    if-eqz v7, :cond_170

    .line 5401
    const-string v2, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (69)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5416
    :goto_e7
    if-eqz v6, :cond_191

    .line 5418
    const-string v2, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (67)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5431
    :goto_107
    return-void

    .line 5343
    :cond_108
    :try_start_108
    const-string v3, "syncInterval"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "accountKey=? and type in (0,97,68)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v3, v9, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/NullPointerException; {:try_start_108 .. :try_end_126} :catch_128

    goto/16 :goto_5f

    .line 5355
    :catch_128
    move-exception v3

    .line 5356
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_67

    .line 5377
    :cond_12e
    const-string v2, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5378
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (66)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v3, v8, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_a7

    .line 5391
    :cond_14f
    const-string v2, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (65)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_c7

    .line 5407
    :cond_170
    const-string v2, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (69)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 5424
    :cond_191
    const-string v2, "syncInterval"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type in (67)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_107
.end method

.method public static setWatchdogAlarm(JJ)V
    .registers 5
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 3414
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3415
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_7

    .line 3416
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 3418
    :cond_7
    return-void
.end method

.method private shutdown()V
    .registers 5

    .prologue
    .line 4147
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4149
    :try_start_3
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_9d

    .line 4150
    const-string v0, "ExchangeService shutting down..."

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4152
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_a1

    .line 4155
    :try_start_f
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v0, :cond_18

    .line 4156
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_9f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_18} :catch_ac

    .line 4163
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v0, :cond_21

    .line 4164
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_a4
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_21} :catch_a9

    .line 4171
    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4172
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    if-eqz v2, :cond_31

    .line 4173
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 4176
    :cond_31
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v2, :cond_3d

    .line 4177
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 4180
    :cond_3d
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    if-eqz v2, :cond_49

    .line 4181
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 4184
    :cond_49
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 4188
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    if-eqz v0, :cond_5b

    .line 4189
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 4190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    .line 4191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    .line 4194
    :cond_5b
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 4196
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_7c

    .line 4197
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4202
    :cond_7c
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->clearAlarms()V

    .line 4205
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_82
    .catchall {:try_start_21 .. :try_end_82} :catchall_a1

    .line 4206
    :try_start_82
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8e

    .line 4207
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4210
    :cond_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_a6

    .line 4212
    const/4 v0, 0x0

    :try_start_90
    sput-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4213
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 4214
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 4215
    const-string v0, "Goodbye"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4217
    :cond_9d
    monitor-exit v1

    .line 4218
    return-void

    .line 4160
    :catchall_9f
    move-exception v0

    throw v0

    .line 4217
    :catchall_a1
    move-exception v0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_a1

    throw v0

    .line 4168
    :catchall_a4
    move-exception v0

    :try_start_a5
    throw v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a1

    .line 4210
    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a1

    .line 4166
    :catch_a9
    move-exception v0

    goto/16 :goto_21

    .line 4158
    :catch_ac
    move-exception v0

    goto/16 :goto_18
.end method

.method public static declared-synchronized shutdownConnectionManager()V
    .registers 4

    .prologue
    .line 3029
    const-class v2, Lcom/android/exchange/ExchangeService;

    monitor-enter v2

    const/4 v0, 0x0

    .line 3030
    :try_start_4
    sget-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_8b

    .line 3031
    const-string v0, "Shutting down ClientConnectionManager"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3032
    sget-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 3034
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 3035
    const/4 v0, 0x1

    move v1, v0

    .line 3038
    :goto_17
    sget-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_28

    .line 3039
    const-string v0, "Shutting down ClientConnectionManager for loadMore"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3041
    sget-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 3044
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 3052
    :cond_28
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    if-eqz v0, :cond_61

    .line 3053
    const-string v0, "Shutting down smClientConnectionManager"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_88

    .line 3055
    :try_start_31
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3057
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4d} :catch_58

    .line 3058
    if-eqz v0, :cond_3b

    .line 3060
    :try_start_4f
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_3b

    .line 3061
    :catch_53
    move-exception v0

    .line 3062
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_3b

    .line 3066
    :catch_58
    move-exception v0

    .line 3067
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3069
    :cond_5c
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3073
    :cond_61
    if-eqz v1, :cond_86

    .line 3075
    sget v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 3077
    const-string v0, "shutdownConnectionManager(): sClientConnectionManagerShutdownCount is increased"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdownConnectionManager(): sClientConnectionManagerShutdownCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_59 .. :try_end_86} :catchall_88

    .line 3082
    :cond_86
    monitor-exit v2

    return-void

    .line 3029
    :catchall_88
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8b
    move v1, v0

    goto :goto_17
.end method

.method public static shutdownSendMessageConnection(J)V
    .registers 5
    .parameter

    .prologue
    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdownSendMessageConnection() called. accountId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3010
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    if-nez v0, :cond_21

    .line 3011
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    .line 3013
    :cond_21
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    if-eqz v0, :cond_61

    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3014
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ClientConnectionManager;

    .line 3015
    if-eqz v0, :cond_58

    .line 3017
    :try_start_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdownSendMessageConnection() manager clear OK. accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3018
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_62

    .line 3024
    :cond_58
    :goto_58
    sget-object v0, Lcom/android/exchange/ExchangeService;->smClientConnectionManager:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    :cond_61
    return-void

    .line 3019
    :catch_62
    move-exception v0

    .line 3020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdownSendMessageConnection() exception caughted while manager clear. accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58
.end method

.method public static startManualSync(JILcom/android/exchange/Request;)V
    .registers 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4824
    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4825
    if-nez v4, :cond_5

    .line 4888
    :goto_4
    return-void

    .line 4827
    :cond_5
    sget-object v5, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4828
    :try_start_8
    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 4829
    move-wide v0, p0

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 4830
    if-nez v6, :cond_20

    .line 4831
    monitor-exit v5

    goto :goto_4

    .line 4887
    :catchall_1d
    move-exception v2

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v2

    .line 4832
    :cond_20
    :try_start_20
    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 4833
    if-nez v2, :cond_a0

    .line 4834
    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4835
    if-eqz v6, :cond_52

    .line 4836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting sync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4837
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v6, v0, v1}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 4862
    :cond_52
    :goto_52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4863
    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_61
    :goto_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 4864
    if-eqz v7, :cond_80

    .line 4865
    invoke-static {v4, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 4867
    if-nez v2, :cond_e5

    .line 4868
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4873
    :cond_80
    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/ExchangeService$SyncError;

    .line 4874
    if-eqz v2, :cond_61

    iget v11, v2, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_98

    iget v2, v2, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    const/4 v11, 0x3

    if-ne v2, v11, :cond_61

    .line 4876
    :cond_98
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 4842
    :cond_a0
    if-eqz v7, :cond_52

    .line 4843
    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v8, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 4844
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v4, v6}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 4845
    move-object v0, v3

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v2, :cond_c0

    .line 4846
    monitor-exit v5

    goto/16 :goto_4

    .line 4847
    :cond_c0
    iget v2, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x44

    if-ne v2, v8, :cond_df

    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mProvisionErrorExist:Ljava/util/HashMap;

    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_df

    .line 4849
    const-string v2, "Provision Error exist. Setting syncReason = SYNC_PROVISION for account sync"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4850
    const/16 v2, 0xa

    iput v2, v3, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    goto/16 :goto_52

    .line 4852
    :cond_df
    move/from16 v0, p2

    iput v0, v3, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    goto/16 :goto_52

    .line 4869
    :cond_e5
    iget-wide v11, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v13, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v2, v11, v13

    if-eqz v2, :cond_80

    goto/16 :goto_61

    .line 4879
    :cond_ef
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_129

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4880
    iget-object v2, v4, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete mailboxId "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " from mSyncErrorMap"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_f3

    .line 4887
    :cond_129
    monitor-exit v5
    :try_end_12a
    .catchall {:try_start_20 .. :try_end_12a} :catchall_1d

    goto/16 :goto_4
.end method

.method private startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 3651
    if-nez p2, :cond_3

    .line 3678
    :goto_2
    return-void

    .line 3653
    :cond_3
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3654
    :try_start_6
    iget-object v2, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 3656
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4b

    .line 3657
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3658
    if-eqz v0, :cond_4b

    .line 3659
    const-string v0, "ExchangeService"

    const-string v3, "startServiceThread: warning. mServiceMap for Outbox is already running."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    iget-object v0, p1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 3662
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3663
    const-string v0, "ExchangeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startServiceThread: outboxthread should not be duplicated. return  mailboxName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    monitor-exit v1

    goto :goto_2

    .line 3677
    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw v0

    .line 3669
    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting thread for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3672
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 3674
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_8c

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    const-string v2, "__eas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 3675
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    .line 3677
    :cond_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_4b .. :try_end_8d} :catchall_48

    goto/16 :goto_2
.end method

.method public static stopAccountSyncs(J)V
    .registers 4
    .parameter "acctId"

    .prologue
    .line 3097
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3098
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_8

    .line 3099
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    .line 3101
    :cond_8
    return-void
.end method

.method private stopAccountSyncs(JZ)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 3142
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3143
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3144
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3145
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3146
    if-eqz v2, :cond_12

    .line 3147
    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v3, v7, p1

    if-nez v3, :cond_12

    .line 3148
    if-nez p3, :cond_47

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v3, 0x44

    if-ne v2, v3, :cond_47

    .line 3149
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 3150
    if-eqz v1, :cond_12

    .line 3151
    invoke-virtual {v1}, Lcom/android/exchange/AbstractSyncService;->stop()V

    goto :goto_12

    .line 3188
    :catchall_44
    move-exception v1

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1

    .line 3155
    :cond_47
    :try_start_47
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 3156
    if-eqz v2, :cond_9b

    .line 3158
    instance-of v3, v2, Lcom/android/exchange/EasSyncService;

    if-eqz v3, :cond_91

    .line 3159
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    .line 3160
    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x41

    if-eq v7, v8, :cond_79

    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x42

    if-eq v7, v8, :cond_79

    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x43

    if-eq v7, v8, :cond_79

    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x45

    if-ne v7, v8, :cond_91

    :cond_79
    iget-object v7, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v7, :cond_8b

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 3165
    :cond_8b
    const-string v1, "stopAccountSyncs(): Calendar/Contacts doing initial sync. Continuing without stopping..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_12

    .line 3170
    :cond_91
    invoke-virtual {v2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3171
    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 3172
    if-eqz v2, :cond_9b

    .line 3173
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3176
    :cond_9b
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 3180
    :cond_a0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3181
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_a4

    .line 3185
    :cond_b8
    sget-object v1, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3186
    sget-object v1, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    monitor-exit v4
    :try_end_cb
    .catchall {:try_start_47 .. :try_end_cb} :catchall_44

    .line 3189
    return-void
.end method

.method public static stopManualSync(J)V
    .registers 7
    .parameter

    .prologue
    .line 4892
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4893
    if-nez v1, :cond_5

    .line 4904
    :goto_4
    return-void

    .line 4895
    :cond_5
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4896
    :try_start_8
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 4897
    if-eqz v0, :cond_39

    .line 4898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4899
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 4900
    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4901
    invoke-virtual {v1, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 4903
    :cond_39
    monitor-exit v2

    goto :goto_4

    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .registers 4
    .parameter

    .prologue
    .line 3289
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 3290
    if-eqz v0, :cond_d

    .line 3291
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    .line 3292
    const-string v0, "reload folder list"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 3294
    :cond_d
    return-void
.end method

.method private stopPing(J)V
    .registers 11
    .parameter

    .prologue
    .line 3687
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3688
    :try_start_3
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3689
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3690
    if-eqz v0, :cond_d

    .line 3691
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 3692
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v6, p1

    if-nez v0, :cond_d

    if-eqz v5, :cond_d

    const-string v0, "__eas"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3696
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 3697
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_d

    .line 3701
    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 3702
    return-void
.end method

.method private stopServiceThreads()V
    .registers 9

    .prologue
    .line 3736
    sget-object v5, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3737
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3739
    .local v3, toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3740
    .local v1, mailboxId:Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 3757
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v3           #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v4

    .line 3743
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #toStop:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_25
    :try_start_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3744
    .restart local v1       #mailboxId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 3745
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v2, :cond_53

    .line 3746
    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v4, :cond_4a

    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v4, :cond_4a

    .line 3750
    invoke-virtual {v2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 3751
    :cond_4a
    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_53

    .line 3752
    iget-object v4, v2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 3755
    :cond_53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    goto :goto_29

    .line 3757
    .end local v1           #mailboxId:Ljava/lang/Long;
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_22

    .line 3758
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .registers 5

    .prologue
    .line 2041
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2042
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_5

    .line 2049
    :goto_4
    return-void

    .line 2044
    :cond_5
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 2045
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 2046
    .local v2, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_11

    .line 2048
    .end local v2           #observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    :cond_21
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_4
.end method

.method private updateAccountDb()V
    .registers 26

    .prologue
    .line 5439
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 5440
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    .line 5442
    const-string v2, "ExchangeService"

    const-string v3, "updateAccountDb start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5443
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getAccountList()Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v12

    .line 5445
    monitor-enter v12

    .line 5447
    :try_start_1a
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 5448
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_22
    :goto_22
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_298

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v7, v0

    .line 5450
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v15

    .line 5452
    invoke-static {v15}, Lcom/android/exchange/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 5457
    const/4 v2, 0x1

    .line 5458
    if-eqz v11, :cond_2a5

    if-eqz v13, :cond_2a5

    .line 5460
    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v3

    .line 5463
    if-eqz v3, :cond_2a5

    .line 5464
    iget-boolean v2, v3, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    move v10, v2

    .line 5469
    :goto_50
    if-eqz v11, :cond_1ec

    invoke-virtual {v15}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz v10, :cond_1ec

    .line 5476
    :cond_5a
    const/4 v9, -0x1

    .line 5480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": in roaming manual=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " db interval=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 5509
    :goto_8f
    iget v2, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    if-eq v2, v9, :cond_10a

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_10a

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    .line 5515
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5517
    const-string v3, "syncInterval"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5519
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 5521
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 5523
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "peak-offpeak/roaming switching - update db at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] old=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 5539
    :cond_10a
    const/16 v17, 0x0

    .line 5540
    const/16 v18, 0x1

    .line 5541
    const/16 v19, 0x2

    .line 5542
    const/16 v20, 0x3

    .line 5544
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "SyncIntervalReference"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "peakSyncSchedule"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "offpeakSyncSchedule"

    aput-object v3, v4, v2

    .line 5549
    const-string v2, "accountKey=? and (type=6 or type=12 or type=5 or type=3)"

    .line 5555
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_130
    .catchall {:try_start_1a .. :try_end_130} :catchall_1e9

    .line 5556
    const/4 v8, 0x0

    .line 5558
    :try_start_131
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=? and (type=6 or type=12 or type=5 or type=3)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/16 v22, 0x0

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v22

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14c
    .catchall {:try_start_131 .. :try_end_14c} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_14c} :catch_27e

    move-result-object v3

    .line 5561
    :try_start_14d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1cb

    .line 5563
    :cond_153
    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 5564
    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 5566
    if-eqz v11, :cond_266

    invoke-virtual {v15}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    if-eqz v2, :cond_169

    if-eqz v10, :cond_266

    .line 5567
    :cond_169
    const/4 v2, -0x1

    .line 5579
    :cond_16a
    :goto_16a
    if-eq v6, v2, :cond_1c5

    .line 5580
    const-string v7, "ExchangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mailbox id "

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v22, ", interval "

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v22, "from "

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "SyncIntervalReference"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "syncInterval"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5593
    :cond_1c5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c8
    .catchall {:try_start_14d .. :try_end_1c8} :catchall_2a1
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_1c8} :catch_2a3

    move-result v2

    if-nez v2, :cond_153

    .line 5598
    :cond_1cb
    if-eqz v3, :cond_1d0

    .line 5599
    :try_start_1cd
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5603
    :cond_1d0
    :goto_1d0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
    :try_end_1d3
    .catchall {:try_start_1cd .. :try_end_1d3} :catchall_1e9

    move-result v2

    if-lez v2, :cond_22

    .line 5605
    :try_start_1d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.email.provider"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1e1
    .catchall {:try_start_1d6 .. :try_end_1e1} :catchall_1e9
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1e1} :catch_1e3
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1e1} :catch_292

    goto/16 :goto_22

    .line 5608
    :catch_1e3
    move-exception v2

    .line 5610
    :try_start_1e4
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_22

    .line 5617
    :catchall_1e9
    move-exception v2

    monitor-exit v12
    :try_end_1eb
    .catchall {:try_start_1e4 .. :try_end_1eb} :catchall_1e9

    throw v2

    .line 5484
    :cond_1ec
    if-eqz v16, :cond_22a

    .line 5488
    :try_start_1ee
    invoke-virtual {v15}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    .line 5490
    const-string v2, "ExchangeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": in peak=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " db interval=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f

    .line 5498
    :cond_22a
    invoke-virtual {v15}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    .line 5500
    const-string v2, "ExchangeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": in offpeak=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " db interval=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_264
    .catchall {:try_start_1ee .. :try_end_264} :catchall_1e9

    goto/16 :goto_8f

    .line 5568
    :cond_266
    if-eqz v16, :cond_273

    .line 5569
    :try_start_268
    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5570
    if-nez v2, :cond_16a

    move v2, v9

    .line 5571
    goto/16 :goto_16a

    .line 5574
    :cond_273
    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_278
    .catchall {:try_start_268 .. :try_end_278} :catchall_2a1
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_278} :catch_2a3

    move-result v2

    .line 5575
    if-nez v2, :cond_16a

    move v2, v9

    .line 5576
    goto/16 :goto_16a

    .line 5595
    :catch_27e
    move-exception v2

    move-object v3, v8

    .line 5596
    :goto_280
    :try_start_280
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_283
    .catchall {:try_start_280 .. :try_end_283} :catchall_2a1

    .line 5598
    if-eqz v3, :cond_1d0

    .line 5599
    :try_start_285
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1d0

    .line 5598
    :catchall_28a
    move-exception v2

    move-object v3, v8

    :goto_28c
    if-eqz v3, :cond_291

    .line 5599
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5598
    :cond_291
    throw v2

    .line 5611
    :catch_292
    move-exception v2

    .line 5613
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_22

    .line 5617
    :cond_298
    monitor-exit v12
    :try_end_299
    .catchall {:try_start_285 .. :try_end_299} :catchall_1e9

    .line 5620
    const-string v2, "ExchangeService"

    const-string v3, "updateAccountDb end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5621
    return-void

    .line 5598
    :catchall_2a1
    move-exception v2

    goto :goto_28c

    .line 5595
    :catch_2a3
    move-exception v2

    goto :goto_280

    :cond_2a5
    move v10, v2

    goto/16 :goto_50
.end method

.method private updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 3510
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3511
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 3513
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_21

    .line 3516
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 3521
    if-nez v4, :cond_22

    .line 3569
    :cond_21
    :goto_21
    return-void

    .line 3523
    :cond_22
    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 3525
    invoke-static {v3, p3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_c6

    .line 3528
    invoke-static {v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 3534
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v6

    if-eq v6, v5, :cond_7c

    .line 3535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": syncInterval ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3537
    const-string v3, "syncInterval"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3538
    const-string v3, "Saritha"

    const-string v4, "-exchange service update PIM sync settings - putting sync interval as push//schedule "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    :cond_7c
    :goto_7c
    const-string v3, "syncInterval"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3559
    :try_start_84
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_84 .. :try_end_91} :catch_142

    .line 3565
    :goto_91
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    .line 3566
    const-string v0, "sync settings change"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_21

    .line 3541
    :cond_9c
    if-eq v5, v8, :cond_7c

    .line 3542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3543
    const-string v3, "syncInterval"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_7c

    .line 3546
    :cond_c6
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v6, :cond_d0

    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x61

    if-ne v6, v7, :cond_117

    :cond_d0
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v6

    if-eq v6, v5, :cond_117

    .line 3548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3550
    const-string v3, "syncInterval"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_7c

    .line 3551
    :cond_117
    if-eq v5, v8, :cond_7c

    .line 3552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3553
    const-string v3, "syncInterval"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_7c

    .line 3561
    :catch_142
    move-exception v0

    .line 3562
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->errorlog(Ljava/lang/String;)V

    goto/16 :goto_91
.end method

.method private waitForConnectivity()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3761
    .line 3762
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3764
    :goto_a
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v3, :cond_7d

    .line 3765
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 3767
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_5c

    .line 3768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveNetworkInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DetailedState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3772
    :cond_5c
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_7e

    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_7e

    .line 3776
    if-eqz v1, :cond_7d

    .line 3778
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v2, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 3780
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->logSyncHolds()V

    .line 3810
    :cond_7d
    return-void

    .line 3786
    :cond_7e
    if-nez v1, :cond_84

    .line 3788
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    move v1, v2

    .line 3794
    :cond_84
    sget-object v3, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3795
    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x93b48

    :try_start_8c
    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_af

    .line 3797
    :try_start_8f
    const-string v4, "Connectivity lock..."

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3798
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 3799
    sget-object v4, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 3800
    const-string v4, "Connectivity lock released..."

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_8f .. :try_end_a4} :catchall_b2
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_a4} :catch_b7

    .line 3804
    const/4 v4, 0x0

    :try_start_a5
    sput-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 3806
    :goto_a7
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 3807
    monitor-exit v3

    goto/16 :goto_a

    :catchall_af
    move-exception v0

    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_af

    throw v0

    .line 3804
    :catchall_b2
    move-exception v0

    const/4 v1, 0x0

    :try_start_b4
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    throw v0

    .line 3801
    :catch_b7
    move-exception v4

    .line 3804
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_af

    goto :goto_a7
.end method


# virtual methods
.method maybeStartExchangeServiceThread()V
    .registers 4

    .prologue
    .line 4007
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4008
    :cond_c
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_30

    .line 4009
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_31

    const-string v0, "Starting thread..."

    :goto_1d
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4010
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ExchangeService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 4011
    sput-object p0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 4012
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4015
    :cond_30
    return-void

    .line 4009
    :cond_31
    const-string v0, "Restarting thread..."

    goto :goto_1d
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 3846
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3847
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mIsNetworkRoaming:Z

    .line 3849
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3851
    :try_start_11
    new-instance v0, Lcom/android/exchange/ExchangeService$8;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$8;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3871
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_22

    .line 3873
    new-instance v0, Lcom/android/exchange/ExchangeService$9;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$9;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 3891
    return-void

    .line 3871
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 3985
    const-string v0, "!!! EAS ExchangeService, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3987
    new-instance v0, Lcom/android/exchange/ExchangeService$12;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$12;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 4002
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! EAS ExchangeService, onStartCommand, startingUp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", running = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3897
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v0, :cond_3d

    .line 3898
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 3899
    new-instance v0, Lcom/android/exchange/ExchangeService$10;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$10;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 3980
    :goto_3a
    return v1

    .line 3895
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1d

    .line 3967
    :cond_3d
    new-instance v0, Lcom/android/exchange/ExchangeService$11;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$11;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_3a
.end method

.method releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 6
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 2438
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    .line 2439
    .local v0, holdWasReleased:Z
    const-string v1, "security release"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2440
    return v0
.end method

.method releaseSyncHoldsForEasMailbox(Landroid/content/Context;IJ)Z
    .registers 7
    .parameter "context"
    .parameter "reason"
    .parameter "accountId"

    .prologue
    .line 2360
    const-string v1, "releaseSyncHoldsForEasMailbox(): Entry"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2361
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldsImplForEasMailbox(Landroid/content/Context;IJ)Z

    move-result v0

    .line 2362
    .local v0, holdWasReleased:Z
    return v0
.end method

.method public releaseWakeLock(J)V
    .registers 7
    .parameter "id"

    .prologue
    .line 3313
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2

    .line 3314
    :try_start_3
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3315
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_2e

    .line 3316
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3317
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3318
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2b

    .line 3319
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3321
    :cond_2b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3326
    :cond_2e
    monitor-exit v2

    .line 3327
    return-void

    .line 3326
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public run()V
    .registers 9

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4034
    sput-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 4035
    const-string v0, "ExchangeService thread running"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 4037
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 4038
    sput-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    .line 4039
    sput-boolean v1, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    .line 4040
    sput-boolean v1, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    .line 4043
    :cond_15
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 4045
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->WAIT_DEBUG:Z

    if-eqz v0, :cond_1f

    .line 4046
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 4052
    :cond_1f
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4053
    :try_start_22
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_cd

    .line 4054
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 4060
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/exchange/ExchangeService$AccountObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 4061
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4062
    new-instance v0, Lcom/android/exchange/ExchangeService$MailboxObserver;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/exchange/ExchangeService$MailboxObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 4063
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4064
    new-instance v0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 4065
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4067
    new-instance v0, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    .line 4068
    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    .line 4071
    new-instance v0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 4072
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/exchange/ExchangeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4075
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 4077
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_a2

    .line 4078
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4081
    :cond_a2
    new-instance v0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 4082
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/android/exchange/ExchangeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4087
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4088
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 4090
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkPIMSyncSettings()V

    .line 4095
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getEasAccountSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 4097
    :cond_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_22 .. :try_end_ce} :catchall_14d

    .line 4100
    :goto_ce
    :try_start_ce
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v0, :cond_172

    .line 4101
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 4102
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->waitForConnectivity()V

    .line 4103
    const-string v0, "Heartbeat"

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    .line 4106
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->updateAccountDb()V

    .line 4108
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkMailboxes()J
    :try_end_e4
    .catchall {:try_start_ce .. :try_end_e4} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_e4} :catch_13f

    move-result-wide v0

    .line 4110
    :try_start_e5
    monitor-enter p0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_167
    .catch Ljava/lang/InterruptedException; {:try_start_e5 .. :try_end_e6} :catch_153

    .line 4111
    :try_start_e6
    iget-boolean v4, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-nez v4, :cond_131

    .line 4112
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_f6

    .line 4113
    const-string v0, "Negative wait? Setting to 1s"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    move-wide v0, v2

    .line 4116
    :cond_f6
    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-lez v4, :cond_12e

    .line 4117
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    if-eqz v4, :cond_126

    .line 4118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next awake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 4120
    :cond_126
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0xbb8

    add-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 4122
    :cond_12e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 4124
    :cond_131
    monitor-exit p0
    :try_end_132
    .catchall {:try_start_e6 .. :try_end_132} :catchall_150

    .line 4129
    :try_start_132
    monitor-enter p0
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_132 .. :try_end_133} :catch_13f

    .line 4130
    :try_start_133
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v0, :cond_13a

    .line 4132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 4134
    :cond_13a
    monitor-exit p0

    goto :goto_ce

    :catchall_13c
    move-exception v0

    monitor-exit p0
    :try_end_13e
    .catchall {:try_start_133 .. :try_end_13e} :catchall_13c

    :try_start_13e
    throw v0
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_13e .. :try_end_13f} :catch_13f

    .line 4138
    :catch_13f
    move-exception v0

    .line 4139
    :try_start_140
    const-string v1, "ExchangeService"

    const-string v2, "RuntimeException in ExchangeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4140
    throw v0
    :try_end_148
    .catchall {:try_start_140 .. :try_end_148} :catchall_148

    .line 4142
    :catchall_148
    move-exception v0

    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    throw v0

    .line 4097
    :catchall_14d
    move-exception v0

    :try_start_14e
    monitor-exit v1
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    throw v0

    .line 4124
    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit p0
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    :try_start_152
    throw v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_167
    .catch Ljava/lang/InterruptedException; {:try_start_152 .. :try_end_153} :catch_153

    .line 4125
    :catch_153
    move-exception v0

    .line 4127
    :try_start_154
    const-string v0, "ExchangeService interrupted"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_154 .. :try_end_159} :catchall_167

    .line 4129
    :try_start_159
    monitor-enter p0
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_159 .. :try_end_15a} :catch_13f

    .line 4130
    :try_start_15a
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v0, :cond_161

    .line 4132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 4134
    :cond_161
    monitor-exit p0

    goto/16 :goto_ce

    :catchall_164
    move-exception v0

    monitor-exit p0
    :try_end_166
    .catchall {:try_start_15a .. :try_end_166} :catchall_164

    :try_start_166
    throw v0

    .line 4129
    :catchall_167
    move-exception v0

    monitor-enter p0
    :try_end_169
    .catchall {:try_start_166 .. :try_end_169} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_166 .. :try_end_169} :catch_13f

    .line 4130
    :try_start_169
    iget-boolean v1, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v1, :cond_170

    .line 4132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 4134
    :cond_170
    monitor-exit p0
    :try_end_171
    .catchall {:try_start_169 .. :try_end_171} :catchall_17b

    .line 4129
    :try_start_171
    throw v0

    .line 4137
    :cond_172
    const-string v0, "Shutdown requested"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_171 .. :try_end_177} :catch_13f

    .line 4142
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    .line 4144
    return-void

    .line 4134
    :catchall_17b
    move-exception v0

    :try_start_17c
    monitor-exit p0
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    :try_start_17d
    throw v0
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_148
    .catch Ljava/lang/RuntimeException; {:try_start_17d .. :try_end_17e} :catch_13f
.end method
