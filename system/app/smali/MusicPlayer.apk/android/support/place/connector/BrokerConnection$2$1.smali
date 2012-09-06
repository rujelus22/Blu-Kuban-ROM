.class Landroid/support/place/connector/BrokerConnection$2$1;
.super Ljava/lang/Object;
.source "BrokerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/place/connector/BrokerConnection$2;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/BrokerConnection$2;


# direct methods
.method constructor <init>(Landroid/support/place/connector/BrokerConnection$2;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection$2$1;->this$1:Landroid/support/place/connector/BrokerConnection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection$2$1;->this$1:Landroid/support/place/connector/BrokerConnection$2;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$2;->this$0:Landroid/support/place/connector/BrokerConnection;

    #calls: Landroid/support/place/connector/BrokerConnection;->handleBrokerServiceDisconnected()V
    invoke-static {v0}, Landroid/support/place/connector/BrokerConnection;->access$100(Landroid/support/place/connector/BrokerConnection;)V

    .line 371
    return-void
.end method
