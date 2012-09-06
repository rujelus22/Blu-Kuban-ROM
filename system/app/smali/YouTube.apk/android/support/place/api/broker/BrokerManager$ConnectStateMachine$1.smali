.class Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5e

    .line 640
    :goto_7
    return-void

    .line 622
    :pswitch_8
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    iget-object v2, v2, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v2}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 623
    :try_start_11
    iget-object v3, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    iget-object v4, v4, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b

    :goto_21
    #setter for: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mHasListeners:Z
    invoke-static {v3, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$902(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z

    .line 624
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_2d

    .line 625
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #calls: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->update()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1000(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    goto :goto_7

    :cond_2b
    move v0, v1

    .line 623
    goto :goto_21

    .line 624
    :catchall_2d
    move-exception v0

    monitor-exit v2

    throw v0

    .line 628
    :pswitch_30
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #setter for: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z
    invoke-static {v1, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1102(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z

    .line 629
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #calls: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->update()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1000(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    goto :goto_7

    .line 632
    :pswitch_3b
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #setter for: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z
    invoke-static {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1102(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z

    .line 633
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #calls: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->update()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1000(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    goto :goto_7

    .line 636
    :pswitch_46
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    iget-object v1, v1, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/place/connector/BrokerConnection;->isBrokerInstalled(Landroid/content/Context;)Z

    move-result v1

    #setter for: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mPackageInstalled:Z
    invoke-static {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1102(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;Z)Z

    .line 637
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$1;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #calls: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->update()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1000(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    goto :goto_7

    .line 620
    nop

    :pswitch_data_5e
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_30
        :pswitch_3b
        :pswitch_46
    .end packed-switch
.end method
