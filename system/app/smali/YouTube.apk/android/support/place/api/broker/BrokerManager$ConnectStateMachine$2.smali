.class Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$2;
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
    .line 705
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$2;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine$2;->this$1:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    #calls: Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->tryConnect()V
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->access$1400(Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;)V

    .line 709
    return-void
.end method
