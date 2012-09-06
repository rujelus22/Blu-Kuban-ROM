.class Landroid/support/place/connector/EventListener$Registration$3$1;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/place/connector/EventListener$Registration$3;->onError(Landroid/support/place/rpc/RpcError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/place/connector/EventListener$Registration$3;


# direct methods
.method constructor <init>(Landroid/support/place/connector/EventListener$Registration$3;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/support/place/connector/EventListener$Registration$3$1;->this$2:Landroid/support/place/connector/EventListener$Registration$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$3$1;->this$2:Landroid/support/place/connector/EventListener$Registration$3;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration$3;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #calls: Landroid/support/place/connector/EventListener$Registration;->handleError()V
    invoke-static {v0}, Landroid/support/place/connector/EventListener$Registration;->access$700(Landroid/support/place/connector/EventListener$Registration;)V

    .line 187
    return-void
.end method
