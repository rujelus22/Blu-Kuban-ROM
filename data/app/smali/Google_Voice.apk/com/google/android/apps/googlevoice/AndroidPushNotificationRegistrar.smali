.class public Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;
.super Ljava/lang/Object;
.source "AndroidPushNotificationRegistrar.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$1;,
        Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;,
        Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;
    }
.end annotation


# static fields
.field private static final ANDROID_TICKLER_TYPE:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type; = null

.field private static final ID_CALL_CHECKIN:I = 0x407

.field private static final ID_CALL_REGISTER:I = 0x3e9

.field private static final ID_CALL_UNREGISTER:I = 0x3f3

.field private static final ID_DEVICE_PRIMARY_ACCOUNT_FAILED:I = 0x7d2

.field private static final ID_DEVICE_PRIMARY_ACCOUNT_OK:I = 0x7d1

.field private static final ID_DID_CHECKIN:I = 0x408

.field private static final ID_DID_REGISTER:I = 0x3ea

.field private static final ID_DID_UNREGISTER:I = 0x3f4

.field private static final ID_PROCESS_REQUESTS:I = 0x7d3


# instance fields
.field private androidId:Ljava/lang/String;

.field private androidPrimaryId:Ljava/lang/String;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private devicePrimaryAccount:Ljava/lang/String;

.field private handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private requests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;",
            ">;"
        }
    .end annotation
.end field

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/apps/googlevoice/AppProperties;->ANDROID_TICKLER_V2:Lcom/google/android/apps/googlevoice/AppProperties;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AppProperties;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER_V2:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    :goto_e
    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->ANDROID_TICKLER_TYPE:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    return-void

    :cond_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    goto :goto_e
.end method

.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 4
    .parameter "dependencyResolver"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->devicePrimaryAccount:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;

    .line 67
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 68
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 69
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;-><init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/common/log/GLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->ANDROID_TICKLER_TYPE:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->devicePrimaryAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;

    return-object v0
.end method

.method private requestAndroidPrimaryId()V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAccountHelper()Lcom/google/android/apps/googlevoice/system/AccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/system/AccountHelper;->getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V

    .line 117
    :goto_25
    return-void

    .line 114
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidPrimaryId:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->handler:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_25
.end method


# virtual methods
.method public declared-synchronized checkin(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V
    .registers 12
    .parameter "reason"
    .parameter "token"
    .parameter "onSuccessMessage"
    .parameter "onFailureMessage"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "AndroidPushNotificationRegistrar.checkin"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    sget-object v1, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->CHECKIN:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;-><init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requestAndroidPrimaryId()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 99
    monitor-exit p0

    return-void

    .line 94
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoutingInfo()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 124
    const-string v1, "gtalk://%s#android-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->devicePrimaryAccount:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, result:Ljava/lang/String;
    :goto_27
    return-object v0

    .line 126
    .end local v0           #result:Ljava/lang/String;
    :cond_28
    const-string v1, "android://%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_27
.end method

.method public declared-synchronized registerForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .parameter "onSuccessMessage"
    .parameter "onFailureMessage"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "registerForInboxNotifications"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;

    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->REGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;-><init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;Landroid/os/Message;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requestAndroidPrimaryId()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 80
    monitor-exit p0

    return-void

    .line 76
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldReregister()Z
    .registers 10

    .prologue
    .line 133
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 135
    .local v2, now:J
    const/4 v4, 0x0

    .line 138
    .local v4, shouldReregister:Z
    if-nez v4, :cond_24

    .line 139
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationTimestamp()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x3dcc500

    cmp-long v5, v5, v7

    if-lez v5, :cond_24

    .line 141
    const/4 v4, 0x1

    .line 142
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "shouldRegister(): inbox notification registration is out of date"

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 147
    :cond_24
    if-nez v4, :cond_36

    .line 148
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getInboxNotificationRoutingInfo()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, currentRoutingInfo:Ljava/lang/String;
    if-nez v0, :cond_37

    .line 150
    const/4 v4, 0x1

    .line 151
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "shouldRegister(): inbox notification registration routing info is empty"

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 161
    .end local v0           #currentRoutingInfo:Ljava/lang/String;
    :cond_36
    :goto_36
    return v4

    .line 153
    .restart local v0       #currentRoutingInfo:Ljava/lang/String;
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->getRoutingInfo()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, expectedRoutingInfo:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 155
    const/4 v4, 0x1

    .line 156
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "shouldRegister(): inbox notification registration routing info is out of date"

    invoke-interface {v5, v6}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public declared-synchronized unregisterForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .parameter "onSuccessMessage"
    .parameter "onFailureMessage"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "unregisterForInboxNotifications"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requests:Ljava/util/Queue;

    new-instance v1, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;

    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->UNREGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;-><init>(Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;Landroid/os/Message;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->androidId:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar;->requestAndroidPrimaryId()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 89
    monitor-exit p0

    return-void

    .line 85
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
