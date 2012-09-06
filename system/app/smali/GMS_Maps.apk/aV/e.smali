.class LaV/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:LaV/d;


# direct methods
.method constructor <init>(LaV/d;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, LaV/e;->a:LaV/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, LaV/e;->a:LaV/d;

    invoke-static {v0}, LaV/d;->a(LaV/d;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 86
    iget-object v0, p0, LaV/e;->a:LaV/d;

    invoke-static {v0}, LaV/d;->b(LaV/d;)LaV/f;

    move-result-object v0

    invoke-interface {v0}, LaV/f;->a()V

    .line 92
    :goto_11
    return-void

    .line 90
    :cond_12
    const/4 v0, 0x0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, LaV/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_11
.end method
