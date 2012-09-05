.class public Lcom/google/googlenav/ui/view/android/S;
.super Lcom/google/googlenav/ui/view/android/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/S;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->g(I)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/g;->b()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/S;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->g(I)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/g;->c()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->g(I)V

    return-void
.end method

.method public f()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/S;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
