.class public Lcom/samsung/swift/notification/SecurityChallengeNotification;
.super Lcom/samsung/swift/notification/SwiftNotification;
.source "SecurityChallengeNotification.java"


# static fields
.field private static final ACCESS_STATE:I = 0x1

.field private static final REQUEST_ACCESS_STATE:I = 0x2

.field public static final REQUEST_STATE:I = 0x3

.field private static final RUNNING_STATE:I

.field private static final TAGNAME:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/notification/SecurityChallengeNotification;


# instance fields
.field private final localeChangeReciever:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/swift/notification/SwiftNotification;-><init>()V

    .line 40
    new-instance v1, Lcom/samsung/swift/notification/SecurityChallengeNotification$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/notification/SecurityChallengeNotification$1;-><init>(Lcom/samsung/swift/notification/SecurityChallengeNotification;)V

    iput-object v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->localeChangeReciever:Landroid/content/BroadcastReceiver;

    .line 51
    sget-object v1, Lcom/samsung/swift/notification/SecurityChallengeNotification;->TAGNAME:Ljava/lang/String;

    const-string v2, "SecurityChallengeNotification()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->localeChangeReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/swift/service/SwiftService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    sget v1, Lcom/samsung/swift/R$drawable;->level_list:I

    iput v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->icon:I

    .line 58
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->iconLevel:I

    .line 59
    const-string v1, "securityManagerChallange_notification"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->tickerText:Ljava/lang/CharSequence;

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_5e

    iput-object v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->vibrate:[J

    .line 62
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appName"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-class v4, Lcom/samsung/swift/applet/AppletActivity;

    invoke-static {v4}, Lcom/samsung/swift/notification/SwiftNotification;->getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/swift/notification/SecurityChallengeNotification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 69
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 72
    iget v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->defaults:I

    .line 74
    :cond_5c
    return-void

    .line 60
    nop

    :array_5e
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->TAGNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/swift/notification/SecurityChallengeNotification;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->instance:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    return-object v0
.end method

.method private delayedCancel()V
    .registers 7

    .prologue
    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/swift/notification/SecurityChallengeNotification$2;

    invoke-direct {v1, p0}, Lcom/samsung/swift/notification/SecurityChallengeNotification$2;-><init>(Lcom/samsung/swift/notification/SecurityChallengeNotification;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/notification/SecurityChallengeNotification;
    .registers 2

    .prologue
    .line 33
    const-class v1, Lcom/samsung/swift/notification/SecurityChallengeNotification;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->instance:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;

    invoke-direct {v0}, Lcom/samsung/swift/notification/SecurityChallengeNotification;-><init>()V

    sput-object v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->instance:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    .line 37
    :cond_e
    sget-object v0, Lcom/samsung/swift/notification/SecurityChallengeNotification;->instance:Lcom/samsung/swift/notification/SecurityChallengeNotification;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized showChallenge()V
    .registers 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance()Lcom/samsung/swift/notification/SwiftNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/notification/SecurityChallengeNotification;->instance:Lcom/samsung/swift/notification/SecurityChallengeNotification;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/notification/SwiftNotificationManager;->show(Lcom/samsung/swift/notification/SwiftNotification;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/swift/notification/SecurityChallengeNotification;->delayedCancel()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
