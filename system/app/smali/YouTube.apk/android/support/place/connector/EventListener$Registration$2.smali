.class Landroid/support/place/connector/EventListener$Registration$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/EventListener$Registration;


# direct methods
.method constructor <init>(Landroid/support/place/connector/EventListener$Registration;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Landroid/support/place/connector/EventListener$Registration$2;->this$1:Landroid/support/place/connector/EventListener$Registration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([B)V
    .registers 6
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$2;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mRegisterErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroid/support/place/connector/EventListener$Registration;->access$800(Landroid/support/place/connector/EventListener$Registration;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 160
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$2;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$2;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/place/connector/EventListener$Registration;->access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v0, p0, Landroid/support/place/connector/EventListener$Registration$2;->this$1:Landroid/support/place/connector/EventListener$Registration;

    iget-object v0, v0, Landroid/support/place/connector/EventListener$Registration;->this$0:Landroid/support/place/connector/EventListener;

    #getter for: Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/EventListener;->access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener$Registration$2;->this$1:Landroid/support/place/connector/EventListener$Registration;

    #getter for: Landroid/support/place/connector/EventListener$Registration;->mTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/place/connector/EventListener$Registration;->access$900(Landroid/support/place/connector/EventListener$Registration;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method
