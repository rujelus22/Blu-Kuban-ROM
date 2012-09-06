.class Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$3;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$3;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    const/4 v1, 0x1

    #setter for: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->mState:I
    invoke-static {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1502(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;I)I

    .line 716
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$3;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    iget-object v0, v0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #calls: Landroid/support/place/api/broker/BrokerManager;->disconnect()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$1200(Landroid/support/place/api/broker/BrokerManager;)V

    .line 717
    return-void
.end method
