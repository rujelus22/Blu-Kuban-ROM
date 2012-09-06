.class Landroid/support/place/api/broker/BrokerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/place/api/broker/BrokerManager;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager;)V
    .registers 2
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$3;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$3;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$3;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$500(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {}, Landroid/support/place/api/broker/BrokerManager;->access$600()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$3;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$800(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    .line 481
    return-void
.end method
