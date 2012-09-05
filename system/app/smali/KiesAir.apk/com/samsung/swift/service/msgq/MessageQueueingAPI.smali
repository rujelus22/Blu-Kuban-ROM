.class public Lcom/samsung/swift/service/msgq/MessageQueueingAPI;
.super Ljava/lang/Object;
.source "MessageQueueingAPI.java"


# static fields
.field public static final ALREADY_SUBSCRIBED:I = 0x1

.field private static LOGTAG:Ljava/lang/String; = null

.field public static final NOT_AUTHORISED:I = 0x3

.field public static final OK:I = 0x0

.field public static final QUEUE_DOES_NOT_EXIT:I = 0x2

.field private static instance:Lcom/samsung/swift/service/msgq/MessageQueueingAPI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance:Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    .line 100
    const-class v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/samsung/swift/service/msgq/MessageQueueingAPI;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance:Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    if-nez v0, :cond_12

    .line 111
    sget-object v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->LOGTAG:Ljava/lang/String;

    const-string v1, "instance, creating MessageQueueingAPI instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    invoke-direct {v0}, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance:Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    .line 114
    :cond_12
    sget-object v0, Lcom/samsung/swift/service/msgq/MessageQueueingAPI;->instance:Lcom/samsung/swift/service/msgq/MessageQueueingAPI;

    return-object v0
.end method


# virtual methods
.method public native clear()Z
.end method

.method public native countSubscribers(Ljava/lang/String;)I
.end method

.method public native createQueue(Lcom/samsung/swift/service/msgq/Queue;)Z
.end method

.method public native deleteQueue(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native isSubscribed(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native longMaintenance()V
.end method

.method public native postMessage(Lcom/samsung/swift/service/msgq/Message;Ljava/lang/String;)I
.end method

.method public native queueExists(Ljava/lang/String;)Z
.end method

.method public native registerNotifier(Lcom/samsung/swift/service/msgq/MessageNotifier;)Z
.end method

.method public native selectUnreadMessages(Ljava/lang/String;II)[Lcom/samsung/swift/service/msgq/Message;
.end method

.method public native shortMaintenance()V
.end method

.method public native submitAckMessages(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public native subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native unregisterNotifier(Lcom/samsung/swift/service/msgq/MessageNotifier;)Z
.end method

.method public native unsubscribe(Ljava/lang/String;Ljava/lang/String;)Z
.end method
