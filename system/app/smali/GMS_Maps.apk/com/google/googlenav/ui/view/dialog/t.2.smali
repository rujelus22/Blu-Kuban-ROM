.class Lcom/google/googlenav/ui/view/dialog/t;
.super Lcom/google/googlenav/ui/view/dialog/B;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/q;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/t;->a:Lcom/google/googlenav/ui/view/dialog/q;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/B;-><init>(Lcom/google/googlenav/ui/view/dialog/r;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/t;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/q;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/t;->a:Lcom/google/googlenav/ui/view/dialog/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/q;->a(Lcom/google/googlenav/ui/view/dialog/q;)Lcom/google/googlenav/ui/view/dialog/G;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/G;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
