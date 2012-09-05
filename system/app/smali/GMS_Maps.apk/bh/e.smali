.class Lbh/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbh/d;


# direct methods
.method constructor <init>(Lbh/d;)V
    .registers 2

    iput-object p1, p0, Lbh/e;->a:Lbh/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lbh/e;->a:Lbh/d;

    invoke-static {v0}, Lbh/d;->a(Lbh/d;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbh/e;->a:Lbh/d;

    invoke-static {v0}, Lbh/d;->b(Lbh/d;)Lbh/f;

    move-result-object v0

    invoke-interface {v0}, Lbh/f;->a()V

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lbh/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_11
.end method
