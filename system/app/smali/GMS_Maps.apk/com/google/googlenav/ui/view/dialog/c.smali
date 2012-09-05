.class public abstract Lcom/google/googlenav/ui/view/dialog/c;
.super Lcom/google/googlenav/ui/view/android/ap;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7f0d001c

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 3

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method


# virtual methods
.method public L_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected N_()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_e
    return-void
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/c;->setTitle(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->h:Landroid/view/View;

    const v1, 0x7f0f02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method
