.class final Lcom/sdgtl/mediahub/spr/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/w;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/w;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->W(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
