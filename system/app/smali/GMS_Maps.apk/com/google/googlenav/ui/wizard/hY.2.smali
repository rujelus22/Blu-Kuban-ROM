.class public Lcom/google/googlenav/ui/wizard/hY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/g;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/ju;

.field private final b:Lcom/google/googlenav/ui/wizard/hG;

.field private c:LaG/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/wizard/hG;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    .line 644
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hY;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 645
    return-void
.end method


# virtual methods
.method public B_()V
    .registers 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->a:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x45a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    .line 676
    return-void
.end method

.method public D_()V
    .registers 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->c:LaG/a;

    if-eqz v0, :cond_10

    .line 694
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 695
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hY;->c:LaG/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hG;->a(Lac/g;)V

    .line 697
    :cond_10
    return-void
.end method

.method public E_()V
    .registers 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->c:LaG/a;

    if-eqz v0, :cond_12

    .line 705
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->c:LaG/a;

    .line 707
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hG;->a(I)V

    .line 709
    :cond_12
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 716
    return-void
.end method

.method public L_()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    if-eqz v0, :cond_18

    .line 684
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hP;->k:Lcom/google/googlenav/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/e;->a(Z)V

    .line 686
    :cond_18
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 723
    return-void
.end method

.method public a(LaG/a;)V
    .registers 4
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hY;->c:LaG/a;

    .line 732
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 733
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hY;->b:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hY;->c:LaG/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hG;->a(Lac/g;)V

    .line 737
    :goto_13
    return-void

    .line 735
    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hY;->B_()V

    goto :goto_13
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method
