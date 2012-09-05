.class final Lcom/sdgtl/mediahub/spr/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/t;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startFlipping(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/t;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->Q(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    move-result-object v0

    if-eqz v0, :cond_16

    move v1, v2

    :goto_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/t;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->Q(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_17

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/t;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->Q(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    if-eqz p1, :cond_2f

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->setPressed(Z)V

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->startFlipping()V

    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_2f
    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->stopFlipping()V

    goto :goto_2b
.end method
