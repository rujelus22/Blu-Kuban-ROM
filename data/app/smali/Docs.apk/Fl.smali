.class LFl;
.super Ljava/util/TimerTask;
.source "JSVMTimer.java"


# instance fields
.field final synthetic a:LFk;


# direct methods
.method constructor <init>(LFk;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, LFl;->a:LFk;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, LFl;->a:LFk;

    invoke-static {v0}, LFk;->a(LFk;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 141
    iget-object v0, p0, LFl;->a:LFk;

    invoke-static {v0}, LFk;->a(LFk;)Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, LFm;

    invoke-direct {v1, p0}, LFm;-><init>(LFl;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 156
    :goto_16
    return-void

    .line 149
    :cond_17
    iget-object v0, p0, LFl;->a:LFk;

    invoke-static {v0}, LFk;->a(LFk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LFn;

    invoke-direct {v1, p0}, LFn;-><init>(LFl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16
.end method
