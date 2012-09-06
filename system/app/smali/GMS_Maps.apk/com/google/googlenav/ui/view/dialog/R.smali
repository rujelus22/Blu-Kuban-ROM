.class public abstract Lcom/google/googlenav/ui/view/dialog/r;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const v0, 0x7f0f001b

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_10

    .line 42
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/r;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 46
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/r;->w_()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 48
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 49
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/r;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/r;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_27
    :goto_27
    return-void

    .line 51
    :cond_28
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/r;->i:Landroid/view/View;

    const v1, 0x7f100354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    if-eqz v0, :cond_27

    .line 53
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/r;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method protected N_()V
    .registers 3

    .prologue
    .line 61
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_e

    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/r;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    :cond_e
    return-void
.end method

.method public O_()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
