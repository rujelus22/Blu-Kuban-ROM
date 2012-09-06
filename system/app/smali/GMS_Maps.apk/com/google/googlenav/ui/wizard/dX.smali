.class Lcom/google/googlenav/ui/wizard/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dw;)V
    .registers 2
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dw;->b:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dp;->c(Lcom/google/googlenav/ui/wizard/dp;)Lan/y;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 481
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dx;->a:Lcom/google/googlenav/ui/wizard/dw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dw;->b:Lcom/google/googlenav/ui/wizard/dp;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dp;->c(Lcom/google/googlenav/ui/wizard/dp;)Lan/y;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lan/y;->a(ILan/h;)V

    .line 483
    :cond_17
    return-void
.end method
