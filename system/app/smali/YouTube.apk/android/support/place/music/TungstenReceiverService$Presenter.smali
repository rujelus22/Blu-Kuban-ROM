.class Landroid/support/place/music/TungstenReceiverService$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/music/TungstenReceiverService$Listener;

.field final synthetic this$0:Landroid/support/place/music/TungstenReceiverService;


# direct methods
.method public constructor <init>(Landroid/support/place/music/TungstenReceiverService;Landroid/support/place/connector/Broker;Landroid/support/place/music/TungstenReceiverService$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->this$0:Landroid/support/place/music/TungstenReceiverService;

    .line 578
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 579
    iput-object p3, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->_listener:Landroid/support/place/music/TungstenReceiverService$Listener;

    .line 580
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 584
    const-string v1, "onMasterVolumeChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 587
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 589
    const-string v2, "mute"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 590
    iget-object v2, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->_listener:Landroid/support/place/music/TungstenReceiverService$Listener;

    invoke-virtual {v2, v1, v0, p3}, Landroid/support/place/music/TungstenReceiverService$Listener;->onMasterVolumeChanged(FZLandroid/support/place/rpc/RpcContext;)V

    .line 623
    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    return-object v0

    .line 592
    :cond_20
    const-string v1, "onFixedVolumeOutChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 594
    const-string v1, "fixed_vout"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 596
    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v2, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->_listener:Landroid/support/place/music/TungstenReceiverService$Listener;

    invoke-virtual {v2, v1, v0, p3}, Landroid/support/place/music/TungstenReceiverService$Listener;->onFixedVolumeOutChanged(ZLjava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1e

    .line 599
    :cond_3a
    const-string v1, "onSyncDelayChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 601
    const-string v1, "sync_delay"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 603
    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    iget-object v2, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->_listener:Landroid/support/place/music/TungstenReceiverService$Listener;

    invoke-virtual {v2, v1, v0, p3}, Landroid/support/place/music/TungstenReceiverService$Listener;->onSyncDelayChanged(FLjava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1e

    .line 606
    :cond_54
    const-string v1, "onOutputEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 608
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 610
    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v2, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->_listener:Landroid/support/place/music/TungstenReceiverService$Listener;

    invoke-virtual {v2, v1, v0, p3}, Landroid/support/place/music/TungstenReceiverService$Listener;->onOutputEnabled(ZLjava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1e

    .line 613
    :cond_6e
    const-string v1, "onFixedVolumeLevelChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 615
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 617
    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    iget-object v2, p0, Landroid/support/place/music/TungstenReceiverService$Presenter;->_listener:Landroid/support/place/music/TungstenReceiverService$Listener;

    invoke-virtual {v2, v1, v0, p3}, Landroid/support/place/music/TungstenReceiverService$Listener;->onFixedVolumeLevelChanged(FLjava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1e

    .line 621
    :cond_88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_1f
.end method
