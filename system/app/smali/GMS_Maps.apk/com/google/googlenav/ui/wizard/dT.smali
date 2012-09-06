.class Lcom/google/googlenav/ui/wizard/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dQ;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dQ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dt;->b:Lcom/google/googlenav/ui/wizard/dp;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dt;->a:Lcom/google/googlenav/ui/wizard/dQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dt;->b:Lcom/google/googlenav/ui/wizard/dp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dv;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dv;-><init>(Lcom/google/googlenav/ui/wizard/dt;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 451
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dt;->b:Lcom/google/googlenav/ui/wizard/dp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/du;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/du;-><init>(Lcom/google/googlenav/ui/wizard/dt;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 438
    return-void
.end method
