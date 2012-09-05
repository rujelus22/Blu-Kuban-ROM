.class final Lcom/sdgtl/mediahub/spr/screen/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;ZLandroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iput-boolean p2, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->b:Z

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->b:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00bd

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->E(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_28

    :cond_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->F(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->G(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    goto :goto_28
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    const/16 v1, 0x8

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->b:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->C(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ey;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->D(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    return-void
.end method
