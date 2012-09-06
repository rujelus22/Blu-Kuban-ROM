.class Landroid/support/place/connector/BrokerConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/BrokerConnection;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$2;->this$0:Landroid/support/place/connector/BrokerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 366
    const-string v0, "aah.BrokerConnection"

    const-string v1, "Broker service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$2;->this$0:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/BrokerConnection$2$1;

    invoke-direct {v1, p0}, Landroid/support/place/connector/BrokerConnection$2$1;-><init>(Landroid/support/place/connector/BrokerConnection$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method
