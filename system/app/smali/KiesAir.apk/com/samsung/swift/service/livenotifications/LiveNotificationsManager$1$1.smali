.class Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1$1;
.super Ljava/lang/Object;
.source "LiveNotificationsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;->notify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1$1;->this$1:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 135
    iget-object v2, p0, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1$1;->this$1:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;

    iget-object v2, v2, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager$1;->this$0:Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    #getter for: Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->liveNotifiers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->access$100(Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/service/livenotifications/LiveNotifier;

    .line 136
    .local v1, ln:Lcom/samsung/swift/service/livenotifications/LiveNotifier;
    invoke-virtual {v1}, Lcom/samsung/swift/service/livenotifications/LiveNotifier;->poll()V

    goto :goto_c

    .line 137
    .end local v1           #ln:Lcom/samsung/swift/service/livenotifications/LiveNotifier;
    :cond_1c
    return-void
.end method
