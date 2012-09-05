.class Lcom/google/googlenav/ui/wizard/fr;
.super Lcom/google/googlenav/ui/wizard/fM;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fM;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fj;->a()V

    return-void
.end method

.method a(Lcom/google/googlenav/ah;Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/fj;->a(Lcom/google/googlenav/ui/wizard/fj;Lcom/google/googlenav/ah;Z)V

    return-void
.end method

.method a(Lcom/google/googlenav/bC;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fj;->f(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ui/view/dialog/aK;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fj;->f(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ui/view/dialog/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/t;

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->a()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fj;->a()V

    move v0, v2

    goto :goto_b

    :cond_2c
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fj;->d(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ah;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lbb/t;->a(Lcom/google/googlenav/bC;Lcom/google/googlenav/ah;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bC;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_51

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fj;->f(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ui/view/dialog/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->show()V

    move v0, v1

    goto :goto_b

    :cond_51
    invoke-virtual {p1}, Lcom/google/googlenav/bC;->d()Z

    move-result v3

    if-nez v3, :cond_68

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fj;->B()Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fj;->a()V

    move v0, v2

    goto :goto_b

    :cond_66
    move v0, v1

    goto :goto_b

    :cond_68
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget v3, v3, Lcom/google/googlenav/ui/wizard/fj;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_85

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/fj;->g(Lcom/google/googlenav/ui/wizard/fj;)LaY/Y;

    move-result-object v4

    invoke-virtual {v4}, LaY/Y;->I()LaY/i;

    move-result-object v4

    invoke-virtual {v4}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/E;->c()I

    move-result v4

    iput v4, v3, Lcom/google/googlenav/ui/wizard/fj;->a:I

    :cond_85
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-virtual {v0}, Lbb/t;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/fj;->a(Ljava/util/List;)LaY/aG;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fj;->f(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ui/view/dialog/aK;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fj;->h(Lcom/google/googlenav/ui/wizard/fj;)LaY/aG;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/dialog/aK;->a(LaY/aG;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fj;->f(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ui/view/dialog/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/fj;->a(Lcom/google/googlenav/ui/wizard/fj;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/fj;->d(Lcom/google/googlenav/ui/wizard/fj;)Lcom/google/googlenav/ah;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/fj;->b(Lcom/google/googlenav/ui/wizard/fj;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ah;

    move v0, v1

    goto/16 :goto_b
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fj;->c(Lcom/google/googlenav/ui/wizard/fj;)V

    return-void
.end method
