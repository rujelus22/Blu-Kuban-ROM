.class LaM/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/bS;


# instance fields
.field final synthetic a:LaM/bK;


# direct methods
.method constructor <init>(LaM/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, LaM/bQ;->a:LaM/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 738
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->g()V

    .line 739
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->i()V

    .line 740
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->b(LaM/bK;)V

    .line 741
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->c(LaM/bK;)V

    .line 744
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->j()V

    .line 745
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->e()V

    .line 746
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 750
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->e(LaM/bK;)Lcom/google/googlenav/ui/view/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->d()V

    .line 751
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->e(LaM/bK;)Lcom/google/googlenav/ui/view/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->f()V

    .line 752
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->f(LaM/bK;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 753
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->f(LaM/bK;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 755
    :cond_23
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->g(LaM/bK;)V

    .line 756
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->g()V

    .line 759
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    iget-object v0, v0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->v()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 760
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->h()V

    .line 771
    :goto_40
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->i()V

    .line 772
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v2}, LaM/bK;->e(LaM/bK;)Lcom/google/googlenav/ui/view/H;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/H;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/e;->a(II)V

    .line 773
    return-void

    .line 762
    :cond_5a
    const/4 v0, 0x1

    .line 763
    new-instance v1, LaM/bR;

    iget-object v2, p0, LaM/bQ;->a:LaM/bK;

    iget-object v2, v2, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v2

    iget-object v3, p0, LaM/bQ;->a:LaM/bK;

    iget-object v3, v3, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, LaM/bR;-><init>(LaM/bQ;LY/c;Lcom/google/googlenav/android/Y;Z)V

    invoke-virtual {v1}, LaM/bR;->g()V

    goto :goto_40
.end method

.method public c()V
    .registers 2

    .prologue
    .line 777
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->f()V

    .line 778
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 782
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->e()V

    .line 783
    iget-object v0, p0, LaM/bQ;->a:LaM/bK;

    iget-object v1, p0, LaM/bQ;->a:LaM/bK;

    invoke-static {v1}, LaM/bK;->h(LaM/bK;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, LaM/bK;->a(LaM/bK;Landroid/content/res/Configuration;)V

    .line 784
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 788
    const/4 v0, 0x1

    return v0
.end method
