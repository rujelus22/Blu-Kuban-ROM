.class Lcom/google/googlenav/ui/view/dialog/H;
.super Lcom/google/googlenav/ui/view/dialog/Q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/F;)V
    .registers 3
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/H;->a:Lcom/google/googlenav/ui/view/dialog/F;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;-><init>(Lcom/google/googlenav/ui/view/dialog/G;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/H;->a:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/F;->a(Lcom/google/googlenav/ui/view/dialog/F;)Lcom/google/googlenav/ui/view/dialog/V;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/V;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    return-void
.end method
