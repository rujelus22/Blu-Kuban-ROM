.class Lcom/google/googlenav/ui/view/dialog/I;
.super Lcom/google/googlenav/ui/view/dialog/Q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/F;)V
    .registers 3
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/I;->a:Lcom/google/googlenav/ui/view/dialog/F;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;-><init>(Lcom/google/googlenav/ui/view/dialog/G;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/I;->a:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/F;->c()V

    .line 368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/I;->a:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/F;->a(Lcom/google/googlenav/ui/view/dialog/F;)Lcom/google/googlenav/ui/view/dialog/V;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    return-void
.end method
