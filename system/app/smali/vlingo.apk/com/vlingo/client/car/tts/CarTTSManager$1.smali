.class Lcom/vlingo/client/car/tts/CarTTSManager$1;
.super Lcom/vlingo/client/core/tts/ITTSListener$Stub;
.source "CarTTSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/tts/CarTTSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/tts/CarTTSManager;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSManager;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ITTSListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 154
    :cond_a
    :goto_a
    return-void

    .line 145
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->access$100(Lcom/vlingo/client/car/tts/CarTTSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;-><init>(Lcom/vlingo/client/car/tts/CarTTSManager$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 140
    :cond_a
    :goto_a
    return-void

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->access$100(Lcom/vlingo/client/car/tts/CarTTSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSManager$1$3;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSManager$1$3;-><init>(Lcom/vlingo/client/car/tts/CarTTSManager$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 112
    :cond_a
    :goto_a
    return-void

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->access$100(Lcom/vlingo/client/car/tts/CarTTSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSManager$1$1;-><init>(Lcom/vlingo/client/car/tts/CarTTSManager$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method public onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 126
    :cond_a
    :goto_a
    return-void

    .line 117
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->access$100(Lcom/vlingo/client/car/tts/CarTTSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSManager$1$2;-><init>(Lcom/vlingo/client/car/tts/CarTTSManager$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method
