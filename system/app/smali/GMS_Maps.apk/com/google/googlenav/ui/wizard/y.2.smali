.class Lcom/google/googlenav/ui/wizard/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;)V
    .registers 2
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/friend/aF;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/friend/aF;->j()Lcom/google/googlenav/friend/aF;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    .line 600
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/U;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/U;->b(Lcom/google/googlenav/ui/wizard/U;)V

    .line 601
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(Z)V

    .line 590
    return-void
.end method

.method public c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Y;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(Z)V

    .line 595
    return-void
.end method
