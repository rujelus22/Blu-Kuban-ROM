.class Lcom/vlingo/client/car/test/CarTTSTesterItem$1;
.super Lcom/vlingo/client/core/tts/ITTSListener$Stub;
.source "CarTTSTesterItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/test/CarTTSTesterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/test/CarTTSTesterItem;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

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
    .line 139
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$4;-><init>(Lcom/vlingo/client/car/test/CarTTSTesterItem$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
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
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$3;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$3;-><init>(Lcom/vlingo/client/car/test/CarTTSTesterItem$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
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
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$1;-><init>(Lcom/vlingo/client/car/test/CarTTSTesterItem$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
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
    .line 119
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;->this$0:Lcom/vlingo/client/car/test/CarTTSTesterItem;

    #getter for: Lcom/vlingo/client/car/test/CarTTSTesterItem;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$2;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/test/CarTTSTesterItem$1$2;-><init>(Lcom/vlingo/client/car/test/CarTTSTesterItem$1;Lcom/vlingo/client/core/tts/TTSDemand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
