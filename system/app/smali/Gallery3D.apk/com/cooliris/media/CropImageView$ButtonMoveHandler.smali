.class Lcom/cooliris/media/CropImageView$ButtonMoveHandler;
.super Landroid/os/Handler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonMoveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImageView;


# direct methods
.method private constructor <init>(Lcom/cooliris/media/CropImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cooliris/media/CropImageView;Lcom/cooliris/media/CropImageView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1719
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;-><init>(Lcom/cooliris/media/CropImageView;)V

    return-void
.end method

.method private getButtonsAni(Z)Landroid/view/animation/Animation;
    .registers 7
    .parameter "isForHide"

    .prologue
    const/4 v4, 0x0

    .line 1749
    iget-object v2, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/cooliris/media/CropImageView;->access$200(Lcom/cooliris/media/CropImageView;)[Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1750
    iget-object v2, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/Animation;

    #setter for: Lcom/cooliris/media/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;
    invoke-static {v2, v3}, Lcom/cooliris/media/CropImageView;->access$202(Lcom/cooliris/media/CropImageView;[Landroid/view/animation/Animation;)[Landroid/view/animation/Animation;

    .line 1752
    :cond_11
    if-eqz p1, :cond_20

    iget-object v2, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/cooliris/media/CropImageView;->access$200(Lcom/cooliris/media/CropImageView;)[Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1754
    .local v0, ani:Landroid/view/animation/Animation;
    :goto_1c
    if-eqz v0, :cond_2a

    move-object v1, v0

    .line 1765
    .end local v0           #ani:Landroid/view/animation/Animation;
    .local v1, ani:Landroid/view/animation/Animation;
    :goto_1f
    return-object v1

    .line 1752
    .end local v1           #ani:Landroid/view/animation/Animation;
    :cond_20
    iget-object v2, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsAni:[Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/cooliris/media/CropImageView;->access$200(Lcom/cooliris/media/CropImageView;)[Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    goto :goto_1c

    .line 1757
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_2a
    if-eqz p1, :cond_4d

    .line 1758
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #ani:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1762
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :goto_3c
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1763
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v1, v0

    .line 1765
    .end local v0           #ani:Landroid/view/animation/Animation;
    .restart local v1       #ani:Landroid/view/animation/Animation;
    goto :goto_1f

    .line 1760
    .end local v1           #ani:Landroid/view/animation/Animation;
    .restart local v0       #ani:Landroid/view/animation/Animation;
    :cond_4d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #ani:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0       #ani:Landroid/view/animation/Animation;
    goto :goto_3c
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1730
    iget-object v0, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1746
    :goto_9
    return-void

    .line 1733
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    goto :goto_9

    .line 1735
    :pswitch_10
    iget-object v0, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->getButtonsAni(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1736
    iget-object v0, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1739
    :pswitch_29
    iget-object v0, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->getButtonsAni(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1740
    iget-object v0, p0, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->this$0:Lcom/cooliris/media/CropImageView;

    #getter for: Lcom/cooliris/media/CropImageView;->mButtonsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/cooliris/media/CropImageView;->access$100(Lcom/cooliris/media/CropImageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1733
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_10
        :pswitch_29
    .end packed-switch
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 1725
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->sendEmptyMessage(I)Z

    .line 1726
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 1721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImageView$ButtonMoveHandler;->sendEmptyMessage(I)Z

    .line 1722
    return-void
.end method
