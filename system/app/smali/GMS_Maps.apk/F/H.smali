.class public LF/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF/i;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LF/h;->a:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, LF/h;->a:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/os/Message;
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LF/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
