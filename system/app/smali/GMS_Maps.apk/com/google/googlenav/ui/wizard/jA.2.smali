.class final Lcom/google/googlenav/ui/wizard/jA;
.super Lcom/google/googlenav/friend/bf;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/ju;

.field private final c:Lcom/google/googlenav/ui/wizard/Q;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/ui/wizard/Q;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jA;->b:Lcom/google/googlenav/ui/wizard/ju;

    .line 1667
    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/bf;-><init>(Lcom/google/googlenav/friend/bk;)V

    .line 1668
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/jA;->c:Lcom/google/googlenav/ui/wizard/Q;

    .line 1669
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/ui/wizard/Q;Lcom/google/googlenav/ui/wizard/jv;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1658
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/jA;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/ui/wizard/Q;)V

    return-void
.end method


# virtual methods
.method public D_()V
    .registers 3

    .prologue
    .line 1673
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->D_()V

    .line 1674
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jA;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ju;->d:Lcom/google/googlenav/ui/wizard/jB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->o()Lcom/google/googlenav/ui/wizard/M;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jA;->c:Lcom/google/googlenav/ui/wizard/Q;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/M;->a(Lcom/google/googlenav/ui/wizard/Q;)V

    .line 1675
    return-void
.end method

.method public E_()V
    .registers 3

    .prologue
    .line 1691
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->E_()V

    .line 1692
    const/16 v0, 0xad

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 1693
    return-void
.end method

.method public L_()V
    .registers 1

    .prologue
    .line 1683
    invoke-super {p0}, Lcom/google/googlenav/friend/bf;->L_()V

    .line 1684
    return-void
.end method
