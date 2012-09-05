.class Lcom/vlingo/client/car/tts/CarTTSManager$1$4;
.super Ljava/lang/Object;
.source "CarTTSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSManager$1;->onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/tts/CarTTSManager$1;

.field final synthetic val$request:Lcom/vlingo/client/core/tts/TTSDemand;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSManager$1;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;->this$1:Lcom/vlingo/client/car/tts/CarTTSManager$1;

    iput-object p2, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;->val$request:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 147
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;->this$1:Lcom/vlingo/client/car/tts/CarTTSManager$1;

    iget-object v3, v2, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    monitor-enter v3

    .line 148
    :try_start_5
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;->this$1:Lcom/vlingo/client/car/tts/CarTTSManager$1;

    iget-object v2, v2, Lcom/vlingo/client/car/tts/CarTTSManager$1;->this$0:Lcom/vlingo/client/car/tts/CarTTSManager;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;
    invoke-static {v2}, Lcom/vlingo/client/car/tts/CarTTSManager;->access$000(Lcom/vlingo/client/car/tts/CarTTSManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;

    .line 149
    .local v1, listener:Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;
    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSManager$1$4;->val$request:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;->onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_11

    .line 151
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 152
    return-void
.end method
