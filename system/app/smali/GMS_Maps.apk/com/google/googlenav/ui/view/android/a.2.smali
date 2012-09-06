.class public Lcom/google/googlenav/ui/view/android/A;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/ui/view/G;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/G;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    const v0, 0x7f0f001b

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 32
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/A;->a:Lcom/google/googlenav/ui/view/G;

    .line 33
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->h:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ak;->a()V

    .line 48
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_15

    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 53
    :cond_15
    return-void
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->requestWindowFeature(I)Z

    .line 42
    :goto_a
    return-void

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->a:Lcom/google/googlenav/ui/view/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/G;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/A;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method public O_()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/A;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/A;->a:Lcom/google/googlenav/ui/view/G;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/view/android/V;Landroid/view/View;Lcom/google/googlenav/ui/view/G;)V

    .line 60
    return-object v0
.end method

.method public i()Lcom/google/googlenav/ui/view/G;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->a:Lcom/google/googlenav/ui/view/G;

    return-object v0
.end method
