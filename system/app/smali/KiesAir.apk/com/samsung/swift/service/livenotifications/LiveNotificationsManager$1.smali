.class Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;
.super Lcom/samsung/swift/service/msgq/MessageNotifier;
.source "LiveNotificationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;->this$0:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    invoke-direct {p0}, Lcom/samsung/swift/service/msgq/MessageNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Ljava/lang/String;)V
    .registers 5
    .parameter "senderId"

    .prologue
    .line 131
    invoke-static {}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify fired, senderId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;->this$0:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    #getter for: Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->access$200(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1$1;-><init>(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method
