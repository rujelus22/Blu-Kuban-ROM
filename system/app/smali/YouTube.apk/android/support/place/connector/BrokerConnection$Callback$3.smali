.class Landroid/support/place/connector/BrokerConnection$Callback$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/BrokerConnection$Callback;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection$Callback;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$Callback$3;->this$1:Landroid/support/place/connector/BrokerConnection$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$Callback$3;->this$1:Landroid/support/place/connector/BrokerConnection$Callback;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$Callback;->this$0:Landroid/support/place/connector/BrokerConnection;

    #calls: Landroid/support/place/connector/BrokerConnection;->handlePlaceDisconnected()V
    invoke-static {v0}, Landroid/support/place/connector/BrokerConnection;->access$400(Landroid/support/place/connector/BrokerConnection;)V

    .line 279
    return-void
.end method
