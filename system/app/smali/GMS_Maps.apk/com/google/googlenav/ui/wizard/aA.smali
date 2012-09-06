.class Lcom/google/googlenav/ui/wizard/aa;
.super Lcom/google/googlenav/friend/bf;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/cu;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/cu;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/aa;->b:Lcom/google/googlenav/cu;

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/bf;-><init>(Lcom/google/googlenav/friend/bk;)V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->d(Z)V

    .line 669
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->b:Lcom/google/googlenav/cu;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 670
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aa;->b:Lcom/google/googlenav/cu;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 671
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 4

    .prologue
    .line 648
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->D_()V

    .line 649
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->b:Lcom/google/googlenav/cu;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 650
    const/16 v0, 0xa6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 652
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->c:Lcom/google/googlenav/ui/wizard/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aa;->b:Lcom/google/googlenav/cu;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 653
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 663
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->E_()V

    .line 664
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/aa;->d()V

    .line 665
    return-void
.end method

.method public L_()V
    .registers 1

    .prologue
    .line 657
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->L_()V

    .line 658
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/aa;->d()V

    .line 659
    return-void
.end method
