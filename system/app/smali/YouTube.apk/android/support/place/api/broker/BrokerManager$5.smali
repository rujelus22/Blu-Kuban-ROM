.class Landroid/support/place/api/broker/BrokerManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/place/api/broker/BrokerManager;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager;)V
    .registers 2
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/place/connector/BrokerConnection;->getBrokerAPK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 586
    :cond_18
    :goto_18
    return-void

    .line 576
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 577
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 579
    :cond_2d
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$800(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    .line 582
    :cond_38
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 584
    :cond_48
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$800(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    goto :goto_18
.end method
