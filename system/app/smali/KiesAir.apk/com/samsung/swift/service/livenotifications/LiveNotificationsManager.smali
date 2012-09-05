.class public Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;
.super Ljava/lang/Object;
.source "LiveNotificationsManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field private liveNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/swift/service/livenotifications/LiveNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private notifier:Lcom/samsung/swift/service/msgq/MessageNotifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const-class v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v1, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "constructor. Performing long maintenance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->longMaintenance()V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->liveNotifiers:Ljava/util/ArrayList;

    .line 124
    sget-object v1, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "Creating notifier"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    .line 126
    .local v0, service:Lcom/samsung/swift/service/SwiftService;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->handler:Landroid/os/Handler;

    .line 127
    new-instance v1, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;-><init>(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;)V

    iput-object v1, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->notifier:Lcom/samsung/swift/service/msgq/MessageNotifier;

    .line 141
    sget-object v1, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "Registering notifier"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->notifier:Lcom/samsung/swift/service/msgq/MessageNotifier;

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->registerNotifier(Lcom/samsung/swift/service/msgq/MessageNotifier;)Z

    .line 144
    iget-object v1, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->liveNotifiers:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;->instance()Lcom/samsung/swift/service/livenotifications/SmsLiveNotifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->liveNotifiers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->instance:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    if-nez v0, :cond_b

    .line 112
    new-instance v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    invoke-direct {v0}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->instance:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    .line 114
    :cond_b
    sget-object v0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->instance:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    return-object v0
.end method
