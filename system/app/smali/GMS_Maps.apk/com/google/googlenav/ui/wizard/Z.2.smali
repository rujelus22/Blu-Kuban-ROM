.class Lcom/google/googlenav/ui/wizard/Z;
.super Lcom/google/googlenav/friend/bf;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/bn;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/Z;->c:Lcom/google/googlenav/ui/wizard/U;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/Z;->b:Lcom/google/googlenav/ui/wizard/bn;

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/bf;-><init>(Lcom/google/googlenav/friend/bk;)V

    return-void
.end method


# virtual methods
.method public D_()V
    .registers 3

    .prologue
    .line 609
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->D_()V

    .line 610
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Z;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/Z;->b:Lcom/google/googlenav/ui/wizard/bn;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/U;->a(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 611
    return-void
.end method

.method public E_()V
    .registers 3

    .prologue
    .line 621
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->E_()V

    .line 622
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Z;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(Z)V

    .line 623
    return-void
.end method

.method public L_()V
    .registers 3

    .prologue
    .line 615
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->L_()V

    .line 616
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Z;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(Z)V

    .line 617
    return-void
.end method
