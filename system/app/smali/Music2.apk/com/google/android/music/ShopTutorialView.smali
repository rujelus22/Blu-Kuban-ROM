.class public Lcom/google/android/music/ShopTutorialView;
.super Landroid/widget/RelativeLayout;
.source "ShopTutorialView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClingView:Lcom/google/android/music/ClingView;

.field private mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

.field private mShopIcon:Landroid/view/View;

.field private mShopIconPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialView;->mShopIconPressed:Z

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/ShopTutorialView;->setClickable(Z)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ShopTutorialView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/music/ShopTutorialView;->superSetVisibility(I)V

    return-void
.end method

.method private dismiss()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialView;->mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

    if-eqz v0, :cond_a

    .line 152
    iget-object v0, p0, Lcom/google/android/music/ShopTutorialView;->mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

    invoke-interface {v0}, Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;->onShopTutorialDismissed()V

    .line 156
    :goto_9
    return-void

    .line 154
    :cond_a
    const-string v0, "ShopTutorialView"

    const-string v1, "dismiss() called, but no dimiss listener available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private processShopIconTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 118
    :goto_7
    :pswitch_7
    return-void

    .line 107
    :pswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialView;->mShopIconPressed:Z

    goto :goto_7

    .line 115
    :pswitch_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ShopTutorialView;->mShopIconPressed:Z

    goto :goto_7

    .line 105
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method private superSetVisibility(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    .line 167
    :goto_7
    return-void

    .line 160
    :sswitch_8
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialView;->dismiss()V

    goto :goto_7

    .line 163
    :sswitch_c
    invoke-virtual {p0}, Lcom/google/android/music/ShopTutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/music/dl/IntentConstants;->getMusicStoreIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialView;->dismiss()V

    goto :goto_7

    .line 158
    nop

    :sswitch_data_1c
    .sparse-switch
        0x7f10004f -> :sswitch_8
        0x7f1000db -> :sswitch_c
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 69
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialView;->mShopIconPressed:Z

    if-eqz v0, :cond_a

    .line 70
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialView;->dismiss()V

    .line 72
    :cond_a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f10004f

    invoke-virtual {p0, v0}, Lcom/google/android/music/ShopTutorialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/google/android/music/ShopTutorialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ClingView;

    iput-object v0, p0, Lcom/google/android/music/ShopTutorialView;->mClingView:Lcom/google/android/music/ClingView;

    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v3, p0, Lcom/google/android/music/ShopTutorialView;->mClingView:Lcom/google/android/music/ClingView;

    invoke-virtual {v3}, Lcom/google/android/music/ClingView;->getClingingViewLocationRelativeToParent()[I

    move-result-object v1

    .line 84
    .local v1, shopIconLocation:[I
    if-eqz v1, :cond_3b

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    aget v3, v1, v2

    aget v4, v1, v7

    aget v5, v1, v2

    iget-object v6, p0, Lcom/google/android/music/ShopTutorialView;->mShopIcon:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v1, v7

    iget-object v7, p0, Lcom/google/android/music/ShopTutorialView;->mShopIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .local v0, shopIconBounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/ShopTutorialView;->processShopIconTouchEvent(Landroid/view/MotionEvent;)V

    .line 98
    .end local v0           #shopIconBounds:Landroid/graphics/Rect;
    :goto_38
    return v2

    .line 92
    .restart local v0       #shopIconBounds:Landroid/graphics/Rect;
    :cond_39
    iput-boolean v2, p0, Lcom/google/android/music/ShopTutorialView;->mShopIconPressed:Z

    .line 98
    .end local v0           #shopIconBounds:Landroid/graphics/Rect;
    :cond_3b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_38
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 58
    iget-boolean v0, p0, Lcom/google/android/music/ShopTutorialView;->mShopIconPressed:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 59
    invoke-direct {p0}, Lcom/google/android/music/ShopTutorialView;->dismiss()V

    .line 61
    :cond_c
    return-void
.end method

.method public setShopIcon(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/music/ShopTutorialView;->mClingView:Lcom/google/android/music/ClingView;

    invoke-virtual {p0}, Lcom/google/android/music/ShopTutorialView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/music/ClingView;->setViewToCling(Landroid/view/View;Landroid/view/View;)V

    .line 48
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialView;->mShopIcon:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/google/android/music/ShopTutorialView;->postInvalidate()V

    .line 50
    return-void
.end method

.method public setShopTutorialDismissListener(Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialView;->mDismissListener:Lcom/google/android/music/ShopTutorialController$ShopTutorialDismissListener;

    .line 76
    return-void
.end method

.method public setVisibility(I)V
    .registers 8
    .parameter "visibility"

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/music/ShopTutorialView;->getVisibility()I

    move-result v5

    if-ne p1, v5, :cond_b

    .line 142
    :goto_a
    return-void

    .line 125
    :cond_b
    if-nez p1, :cond_3c

    const/4 v1, 0x1

    .line 127
    .local v1, makeVis:Z
    :goto_e
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_3e

    move v5, v4

    :goto_13
    if-eqz v1, :cond_40

    :goto_15
    invoke-direct {v0, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 128
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/music/ShopTutorialView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    new-instance v3, Lcom/google/android/music/ShopTutorialView$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/music/ShopTutorialView$1;-><init>(Lcom/google/android/music/ShopTutorialView;I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 138
    if-eqz v1, :cond_38

    .line 139
    invoke-direct {p0, v2}, Lcom/google/android/music/ShopTutorialView;->superSetVisibility(I)V

    .line 141
    :cond_38
    invoke-virtual {p0, v0}, Lcom/google/android/music/ShopTutorialView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #makeVis:Z
    :cond_3c
    move v1, v2

    .line 125
    goto :goto_e

    .restart local v1       #makeVis:Z
    :cond_3e
    move v5, v3

    .line 127
    goto :goto_13

    :cond_40
    move v3, v4

    goto :goto_15
.end method
