.class final Lcom/sdgtl/mediahub/spr/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/v;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/v;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/v;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->U(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/v;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->V(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/v;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->V(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
