.class Lcom/google/googlenav/ui/view/dialog/P;
.super Lcom/google/googlenav/ui/view/dialog/Q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/F;)V
    .registers 3
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/P;->a:Lcom/google/googlenav/ui/view/dialog/F;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;-><init>(Lcom/google/googlenav/ui/view/dialog/G;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->a:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/F;->b(Lcom/google/googlenav/ui/view/dialog/F;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->a:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/F;->a(Lcom/google/googlenav/ui/view/dialog/F;)Lcom/google/googlenav/ui/view/dialog/V;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->a:Lcom/google/googlenav/ui/view/dialog/F;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/ui/view/dialog/F;->i:Z

    .line 652
    return-void
.end method
