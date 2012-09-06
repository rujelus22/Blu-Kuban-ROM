.class Landroid/support/place/api/broker/BrokerManager$4;
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
    .line 513
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$4;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$4;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$4;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$500(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    return-void
.end method
