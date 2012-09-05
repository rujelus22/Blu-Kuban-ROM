.class public Lcom/google/googlenav/ui/wizard/gH;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gK;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gB;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gH;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gH;->b:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/gH;->a(J)V

    return-void
.end method

.method public a(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaN/b;->b(Z)V

    :goto_b
    return-void

    :cond_c
    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaN/b;->b(Z)V

    goto :goto_b
.end method

.method public a(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gH;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/gH;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0, v1}, LaN/b;->b(Z)V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/gH;->b:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gH;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gB;->b(Lcom/google/googlenav/ui/wizard/gB;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gH;->b:Z

    if-eqz v0, :cond_e

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/gH;->a(J)V

    :cond_e
    return-void
.end method
