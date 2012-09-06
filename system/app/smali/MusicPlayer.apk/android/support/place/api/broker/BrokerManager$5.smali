.class Landroid/support/place/api/broker/BrokerManager$5;
.super Landroid/content/BroadcastReceiver;
.source "BrokerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/api/broker/BrokerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 571
    .local v1, packageUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/support/place/api/broker/BrokerManager;->access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/place/connector/BrokerConnection;->getBrokerAPK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 586
    :cond_18
    :goto_18
    return-void

    .line 576
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 579
    :cond_2d
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
    invoke-static {v2}, Landroid/support/place/api/broker/BrokerManager;->access$800(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    .line 582
    :cond_38
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 584
    :cond_48
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$5;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
    invoke-static {v2}, Landroid/support/place/api/broker/BrokerManager;->access$800(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    goto :goto_18
.end method
