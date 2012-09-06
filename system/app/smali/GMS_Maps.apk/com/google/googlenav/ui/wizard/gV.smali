.class Lcom/google/googlenav/ui/wizard/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R_()Z
    .registers 2

    .prologue
    .line 916
    const/4 v0, 0x1

    return v0
.end method

.method public S_()V
    .registers 1

    .prologue
    .line 922
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 897
    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 898
    invoke-virtual {p1}, Lad/y;->q()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 899
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->e(Lcom/google/googlenav/ui/wizard/gj;)V

    .line 900
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/gj;->f(Lcom/google/googlenav/ui/wizard/gj;)Lan/h;

    move-result-object v2

    invoke-interface {v2}, Lan/h;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, LaC/g;->a(Ljava/lang/String;ZZ)V

    .line 901
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->g(Lcom/google/googlenav/ui/wizard/gj;)V

    .line 911
    :cond_30
    :goto_30
    return-void

    .line 902
    :cond_31
    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 903
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->e(Lcom/google/googlenav/ui/wizard/gj;)V

    .line 904
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;

    move-result-object v0

    invoke-virtual {p1}, Lad/y;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, LaC/g;->a(Ljava/lang/String;ZZ)V

    .line 905
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->h(Lcom/google/googlenav/ui/wizard/gj;)Lat/u;

    move-result-object v0

    invoke-virtual {p1}, Lad/y;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lad/y;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lat/u;->a(IIII)Lat/Y;

    move-result-object v0

    .line 907
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-virtual {p1}, Lad/y;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lat/H;

    invoke-virtual {p1}, Lad/y;->f()Lat/B;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/gv;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/gj;->h(Lcom/google/googlenav/ui/wizard/gj;)Lat/u;

    move-result-object v5

    invoke-virtual {v5}, Lat/u;->f()Lat/H;

    move-result-object v5

    invoke-virtual {v5}, Lat/H;->c()I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lat/H;-><init>(Lat/B;Lat/Y;I)V

    invoke-static {v1, v2, v3, p4}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gj;Ljava/lang/String;Lat/H;Lcom/google/googlenav/aW;)V

    goto :goto_30
.end method
