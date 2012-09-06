.class public Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;
.super Landroid/app/Service;
.source "PushNotificationRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$1;,
        Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;
    }
.end annotation


# static fields
.field private static final ACTION_INBOX_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "com.google.android.apps.googlevoice.INBOX_NOTIFICATION_REGISTRATION"

.field private static final ID_AUTH_TOKEN_INVALIDATED:I = 0x3eb

.field private static final ID_CREDENTIALS_FAILED:I = 0x3f4

.field private static final ID_CREDENTIALS_OK:I = 0x3f3

.field private static final ID_REGISTRATION_FAILED:I = 0x3ea

.field private static final ID_REGISTRATION_OK:I = 0x3e9

.field public static final REGISTRATION_ATTEMPT_INTERVAL_MILLIS:J = 0x36ee80L

.field public static final REGISTRATION_INTERVAL_MILLIS:J = 0x3dcc500L

.field public static final REGISTRATION_TIMEOUT_MILLIS:J = 0x14997000L

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x4e20L

.field static lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;


# instance fields
.field private checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

.field private componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

.field private connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private handler:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

.field private lastRegistrationTimestamp:Ljava/lang/Long;

.field private notifier:Lcom/google/android/apps/googlevoice/Notifier;

.field private onDone:Ljava/lang/Runnable;

.field private registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->WAKE_LOCK_TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lastRegistrationTimestamp:Ljava/lang/Long;

    .line 62
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->onDone:Ljava/lang/Runnable;

    .line 162
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lastRegistrationTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->done()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/Notifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)Lcom/google/android/apps/googlevoice/ConnectionInformation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->setConnectivityReceiverEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->attemptRegistration()V

    return-void
.end method

.method static declared-synchronized acquireWakeLock()V
    .registers 4

    .prologue
    .line 293
    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 294
    const-string v0, "PushNotificationRegistrationService: Acquiring wake lock"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 302
    :cond_c
    invoke-static {}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->WAKE_LOCK_TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/system/LockManager;->getSharedPartialWakeLock(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;->acquire(J)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    .line 303
    monitor-exit v1

    return-void

    .line 293
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private attemptRegistration()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v1, "PNRS: attempting registration."

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ConnectionInformation;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 125
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_18

    .line 126
    const-string v0, "PushNotificationRegistrationService.attemptRegistration(): have network connection, registering"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 129
    :cond_18
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->register()V

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->setConnectivityReceiverEnabled(Z)V

    .line 144
    :goto_1f
    return-void

    .line 135
    :cond_20
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_29

    .line 136
    const-string v0, "PushNotificationRegistrationService.attemptRegistration(): no network connection, waiting for network connectivity"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 139
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v1, "PNRS: No network connection."

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->setConnectivityReceiverEnabled(Z)V

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->done()V

    goto :goto_1f
.end method

.method public static createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.googlevoice.INBOX_NOTIFICATION_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_21

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushNotificationRegistrationService.createPendingIntent(), creating broadcastIntent for intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 319
    :cond_21
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized done()V
    .registers 3

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v1, "PNRS: done!"

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->releaseWakeLock()V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->stopSelf()V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 276
    :cond_17
    monitor-exit p0

    return-void

    .line 270
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;
    .registers 2

    .prologue
    .line 284
    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    if-nez v0, :cond_11

    .line 285
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    .line 287
    :cond_11
    sget-object v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 284
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private register()V
    .registers 5

    .prologue
    .line 152
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 153
    const-string v0, "PushNotificationRegistrationService.register(): registering for inbox notifications"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v1, "PNRS: requesting registration."

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->lastRegistrationTimestamp:Ljava/lang/Long;

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->handler:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->handler:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;->registerForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method private static declared-synchronized releaseWakeLock()V
    .registers 3

    .prologue
    .line 307
    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 308
    const-string v0, "PushNotificationRegistrationService: Releasing wake lock"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 310
    :cond_c
    invoke-static {}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->WAKE_LOCK_TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/system/LockManager;->getSharedPartialWakeLock(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;->release()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 311
    monitor-exit v1

    return-void

    .line 307
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestRegistration(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 326
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 327
    const-string v0, "PushNotificationRegistrationService: requesting registration."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 329
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->startThisService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method private setConnectivityReceiverEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    const-class v1, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationServiceConnectivityReceiver;

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 149
    return-void
.end method

.method private static startThisService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 334
    invoke-static {}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->acquireWakeLock()V

    .line 335
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 336
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 77
    const-string v0, "PushNotificationRegistrationService.onCreate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 79
    :cond_c
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    .line 86
    new-instance v0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;-><init>(Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->handler:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

    .line 87
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 118
    invoke-static {}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->releaseWakeLock()V

    .line 119
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v2, "PNRS: service started."

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getCredentials()Lcom/google/android/apps/googlevoice/net/Credentials;

    move-result-object v0

    .line 96
    .local v0, credentials:Lcom/google/android/apps/googlevoice/net/Credentials;
    if-nez v0, :cond_3d

    .line 97
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1f

    .line 98
    const-string v1, "PushNotificationRegistrationService.onStart(): no credentials"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 100
    :cond_1f
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    const-string v2, "PNRS: loading credentials."

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->handler:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

    const/16 v3, 0x3f3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->handler:Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;

    const/16 v4, 0x3f4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 113
    :goto_3c
    return-void

    .line 109
    :cond_3d
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_46

    .line 110
    const-string v1, "PushNotificationRegistrationService.onStart(): attempting registration"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 112
    :cond_46
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->attemptRegistration()V

    goto :goto_3c
.end method

.method protected declared-synchronized setOnDoneForTest(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PushNotificationRegistrationService;->onDone:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
