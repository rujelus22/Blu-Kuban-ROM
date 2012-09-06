.class Lcom/google/googlenav/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/v;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 744
    if-eqz p3, :cond_d

    .line 745
    iget-object v0, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/v;Z)Z

    .line 748
    iget-object v0, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->q()V

    .line 750
    :cond_d
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/v;Z)Z

    .line 754
    iget-object v0, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->U()V

    .line 755
    iget-object v0, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/v;)V

    .line 760
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 761
    iget-object v0, p0, Lcom/google/googlenav/ui/w;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->b(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/bJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bJ;->c()V

    .line 763
    :cond_23
    return-void
.end method
