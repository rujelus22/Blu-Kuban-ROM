.class Lcom/google/googlenav/ui/view/dialog/z;
.super Lcom/google/googlenav/ui/view/dialog/B;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/q;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/B;-><init>(Lcom/google/googlenav/ui/view/dialog/r;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/q;->a(Lcom/google/googlenav/ui/view/dialog/q;)Lcom/google/googlenav/ui/view/dialog/G;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/q;->a(Lcom/google/googlenav/ui/view/dialog/q;)Lcom/google/googlenav/ui/view/dialog/G;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/q;->c(Lcom/google/googlenav/ui/view/dialog/q;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/q;->a(Lcom/google/googlenav/ui/view/dialog/q;)Lcom/google/googlenav/ui/view/dialog/G;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/q;->d(Lcom/google/googlenav/ui/view/dialog/q;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/z;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/q;->a(Lcom/google/googlenav/ui/view/dialog/q;)Lcom/google/googlenav/ui/view/dialog/G;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
