.class Lcom/google/googlenav/ui/A;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->h(Lcom/google/googlenav/ui/v;)Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1470
    iget-object v0, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->h(Lcom/google/googlenav/ui/v;)Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 1471
    if-eqz v0, :cond_42

    .line 1472
    iget-object v1, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v3}, Lcom/google/googlenav/ui/v;->h(Lcom/google/googlenav/ui/v;)Lan/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/v;->a(Lat/B;Lan/h;)V

    .line 1473
    iget-object v1, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v1}, Lcom/google/googlenav/ui/v;->i(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/friend/J;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 1474
    iget-object v1, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v1}, Lcom/google/googlenav/ui/v;->i(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/friend/J;

    move-result-object v1

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/A;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v2}, Lcom/google/googlenav/ui/v;->h(Lcom/google/googlenav/ui/v;)Lan/h;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/friend/J;->a(Lat/B;Lan/h;)V

    .line 1478
    :cond_42
    return-void
.end method
