.class public Lcom/samsung/swift/notification/ServiceOnGoingNotification;
.super Lcom/samsung/swift/notification/SwiftNotification;
.source "ServiceOnGoingNotification.java"


# static fields
.field private static final ACCESS_STATE:I = 0x1

.field private static final REQUEST_ACCESS_STATE:I = 0x2

.field public static final REQUEST_STATE:I = 0x3

.field private static final RUNNING_STATE:I

.field private static final TAGNAME:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/notification/ServiceOnGoingNotification;


# instance fields
.field private final localeChangeReciever:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-class v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/samsung/swift/notification/SwiftNotification;-><init>()V

    .line 131
    new-instance v1, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;-><init>(Lcom/samsung/swift/notification/ServiceOnGoingNotification;)V

    iput-object v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->localeChangeReciever:Landroid/content/BroadcastReceiver;

    .line 157
    sget-object v1, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->TAGNAME:Ljava/lang/String;

    const-string v2, "**************** ServiceOnGoingNotification()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->localeChangeReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/swift/service/SwiftService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    sget v1, Lcom/samsung/swift/R$drawable;->level_list:I

    iput v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->icon:I

    .line 164
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->iconLevel:I

    .line 165
    iget v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->defaults:I

    .line 166
    const-string v1, "notification_ongoing_tickertext"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->tickerText:Ljava/lang/CharSequence;

    .line 167
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appName"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification_ongoing_contextText"

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/samsung/swift/applet/AppletActivity;

    invoke-static {v4}, Lcom/samsung/swift/notification/SwiftNotification;->getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    const/16 v1, 0x22

    iput v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->flags:I

    .line 175
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->TAGNAME:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/notification/ServiceOnGoingNotification;
    .registers 2

    .prologue
    .line 124
    const-class v1, Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    if-nez v0, :cond_e

    .line 126
    new-instance v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-direct {v0}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;-><init>()V

    sput-object v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    .line 128
    :cond_e
    sget-object v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance:Lcom/samsung/swift/notification/ServiceOnGoingNotification;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized hide()V
    .registers 3

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->TAGNAME:Ljava/lang/String;

    const-string v1, "Stop ongoing notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance()Lcom/samsung/swift/notification/SwiftNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/notification/SwiftNotificationManager;->cancel(Lcom/samsung/swift/notification/SwiftNotification;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 186
    monitor-exit p0

    return-void

    .line 184
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ZZ)V
    .registers 4
    .parameter "access"
    .parameter "challange"

    .prologue
    .line 190
    monitor-enter p0

    if-eqz p2, :cond_11

    .line 192
    if-eqz p1, :cond_a

    .line 194
    const/4 v0, 0x2

    :try_start_6
    iput v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->iconLevel:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_e

    .line 214
    :goto_8
    monitor-exit p0

    return-void

    .line 198
    :cond_a
    const/4 v0, 0x3

    :try_start_b
    iput v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->iconLevel:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_8

    .line 190
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_11
    if-eqz p1, :cond_17

    .line 205
    const/4 v0, 0x1

    :try_start_14
    iput v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->iconLevel:I

    goto :goto_8

    .line 209
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->iconLevel:I

    .line 210
    iget v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->defaults:I

    .line 211
    const-string v0, "notification_ongoing_tickertext"

    invoke-static {v0}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->tickerText:Ljava/lang/CharSequence;
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_e

    goto :goto_8
.end method

.method public declared-synchronized show()V
    .registers 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/samsung/swift/notification/SwiftNotificationManager;->instance()Lcom/samsung/swift/notification/SwiftNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->instance:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/notification/SwiftNotificationManager;->show(Lcom/samsung/swift/notification/SwiftNotification;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
