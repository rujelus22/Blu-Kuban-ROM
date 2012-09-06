.class public abstract Lcom/google/googlenav/ui/view/android/ah;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/googlenav/ui/view/p;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/g;ILcom/google/googlenav/ui/view/p;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 33
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/p;

    .line 37
    iget-object v0, p3, Lcom/google/googlenav/ui/view/p;->e:Lcom/google/googlenav/ui/view/w;

    if-eqz v0, :cond_11

    .line 38
    new-instance v0, Lcom/google/googlenav/ui/view/android/ai;

    invoke-direct {v0, p0, p3}, Lcom/google/googlenav/ui/view/android/ai;-><init>(Lcom/google/googlenav/ui/view/android/ah;Lcom/google/googlenav/ui/view/p;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ah;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 45
    :cond_11
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aQ;)Z
    .registers 6
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/google/googlenav/ui/aQ;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 81
    const/4 v0, 0x0

    .line 82
    instance-of v1, p1, Lcom/google/googlenav/ui/bd;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/google/googlenav/ui/bd;

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    .line 85
    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->g:Lcom/google/googlenav/ui/g;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aQ;->f()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aQ;->j()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    .line 87
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected b(Lcom/google/googlenav/ui/aQ;)Z
    .registers 6
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/googlenav/ui/aQ;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->g:Lcom/google/googlenav/ui/g;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aQ;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aQ;->j()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    .line 102
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public i()Lcom/google/googlenav/ui/view/p;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/p;

    return-object v0
.end method

.method public final l()V
    .registers 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ah;->m()V

    .line 64
    return-void
.end method

.method protected m()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/p;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    goto :goto_6
.end method
