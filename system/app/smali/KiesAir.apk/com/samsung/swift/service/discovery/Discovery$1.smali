.class Lcom/samsung/swift/service/discovery/Discovery$1;
.super Landroid/content/BroadcastReceiver;
.source "Discovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/discovery/Discovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/service/discovery/Discovery;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/discovery/Discovery;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/swift/service/discovery/Discovery$1;->this$0:Lcom/samsung/swift/service/discovery/Discovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 201
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Discovery update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/samsung/swift/service/discovery/Discovery$1;->this$0:Lcom/samsung/swift/service/discovery/Discovery;

    #calls: Lcom/samsung/swift/service/discovery/Discovery;->getState()I
    invoke-static {v0}, Lcom/samsung/swift/service/discovery/Discovery;->access$100(Lcom/samsung/swift/service/discovery/Discovery;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 204
    iget-object v0, p0, Lcom/samsung/swift/service/discovery/Discovery$1;->this$0:Lcom/samsung/swift/service/discovery/Discovery;

    #calls: Lcom/samsung/swift/service/discovery/Discovery;->update()Z
    invoke-static {v0}, Lcom/samsung/swift/service/discovery/Discovery;->access$200(Lcom/samsung/swift/service/discovery/Discovery;)Z

    .line 206
    :cond_17
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Discovery update -- Done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method
