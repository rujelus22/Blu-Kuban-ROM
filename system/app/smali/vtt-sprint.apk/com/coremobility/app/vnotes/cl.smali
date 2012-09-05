.class final Lcom/coremobility/app/vnotes/cl;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/cf;


# direct methods
.method public constructor <init>(Lcom/coremobility/app/vnotes/cf;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cl;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->e()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->f()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cl;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;)Lcom/coremobility/app/vnotes/hp;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cl;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;)Lcom/coremobility/app/vnotes/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hp;->d()V

    :cond_18
    const/4 v0, 0x1

    invoke-static {v1, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    return-void
.end method
