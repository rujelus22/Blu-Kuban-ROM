.class public Lcom/google/googlenav/ui/wizard/it;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iw;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/in;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/in;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/it;->a:Lcom/google/googlenav/ui/wizard/in;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/it;->b:Z

    .line 329
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/it;->a(J)V

    .line 330
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 343
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lay/a;->b(Z)V

    .line 347
    :goto_b
    return-void

    .line 345
    :cond_c
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lay/a;->b(Z)V

    goto :goto_b
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/it;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/it;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lay/a;->b(Z)V

    .line 335
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/it;->b:Z

    .line 336
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/it;->a:Lcom/google/googlenav/ui/wizard/in;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/in;->a(Lcom/google/googlenav/ui/wizard/in;)V

    .line 317
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/it;->b:Z

    if-eqz v0, :cond_e

    .line 318
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/it;->a(J)V

    .line 320
    :cond_e
    return-void
.end method
