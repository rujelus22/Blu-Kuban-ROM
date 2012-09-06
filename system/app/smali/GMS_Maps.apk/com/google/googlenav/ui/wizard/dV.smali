.class Lcom/google/googlenav/ui/wizard/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dt;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dt;)V
    .registers 2
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/ui/wizard/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/ui/wizard/dt;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dt;->b:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dp;->b(Lcom/google/googlenav/ui/wizard/dp;)V

    .line 447
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/ui/wizard/dt;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dt;->b:Lcom/google/googlenav/ui/wizard/dp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 448
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dv;->a:Lcom/google/googlenav/ui/wizard/dt;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dt;->a:Lcom/google/googlenav/ui/wizard/dQ;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/dQ;->a(Z)V

    .line 449
    return-void
.end method
