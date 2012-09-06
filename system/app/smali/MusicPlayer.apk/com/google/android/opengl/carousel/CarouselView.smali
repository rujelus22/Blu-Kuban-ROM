.class public Lcom/google/android/opengl/carousel/CarouselView;
.super Lcom/google/android/opengl/common/GLSurfaceView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;,
        Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;
    }
.end annotation


# static fields
.field private static INVALID_INDEX:I


# instance fields
.field private mAccessibilityEnabled:Z

.field private mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

.field private mCoverView:Landroid/view/View;

.field private mDebugKeyMode:Z

.field private mHandleHover:Z

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mScene:Lcom/google/android/opengl/carousel/CarouselScene;

.field private mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1439
    const/4 v0, -0x2

    sput v0, Lcom/google/android/opengl/carousel/CarouselView;->INVALID_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "surfacePixelFormat"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "surfacePixelFormat"

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/common/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    .line 97
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mDebugKeyMode:Z

    .line 100
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mHandleHover:Z

    .line 212
    invoke-static {}, Lcom/google/android/opengl/common/PostFroyoUtils;->runningOnIcsOrLater()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mHandleHover:Z

    .line 213
    invoke-direct {p0, p3}, Lcom/google/android/opengl/carousel/CarouselView;->setSurfacePixelFormat(I)V

    .line 214
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselSetting;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 215
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 216
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 218
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRenderer(Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V

    .line 221
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setRenderMode(I)V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setFocusableInTouchMode(Z)V

    .line 227
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$1;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselView$1;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/opengl/carousel/CarouselView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselView;->sendHoverEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    return-object v0
.end method

.method private static desiredKey(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 410
    sparse-switch p0, :sswitch_data_8

    .line 419
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 417
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 410
    nop

    :sswitch_data_8
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method private focusOnFirstVisibleCard(I)V
    .registers 7
    .parameter "direction"

    .prologue
    .line 1646
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getRealtimeCarouselRotationAngle()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1648
    .local v1, firstColumnLocation:I
    const/4 v2, 0x0

    .line 1649
    .local v2, offset:I
    const/16 v3, 0x21

    if-ne p1, v3, :cond_15

    .line 1651
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/lit8 v2, v3, -0x1

    .line 1653
    :cond_15
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    mul-int/2addr v3, v1

    add-int v0, v3, v2

    .line 1654
    .local v0, firstCardLocation:I
    new-instance v3, Lcom/google/android/opengl/carousel/CarouselView$26;

    invoke-direct {v3, p0, v0}, Lcom/google/android/opengl/carousel/CarouselView$26;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1660
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->sendFocusedEvent(I)V

    .line 1661
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1662
    return-void
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 1682
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 1684
    .local v1, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 1685
    .local v0, accessibilityEnabled:Z
    return v0
.end method

.method private keyDownForMultiRow(II)Z
    .registers 11
    .parameter "keyCode"
    .parameter "focusCard"

    .prologue
    const/4 v5, 0x0

    .line 500
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 501
    .local v4, rowCount:I
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v0

    .line 502
    .local v0, cardCount:I
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v6}, Lcom/google/android/opengl/carousel/CarouselScene;->getCarouselRotationPosition()I

    move-result v1

    .line 503
    .local v1, firstColumn:I
    const/4 v3, 0x0

    .line 504
    .local v3, nextFocus:I
    const/4 v2, 0x0

    .line 506
    .local v2, nextColumn:I
    packed-switch p1, :pswitch_data_62

    .line 548
    :cond_14
    :goto_14
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v5, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 549
    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->sendFocusedEvent(I)V

    .line 551
    const/4 v5, 0x1

    :cond_1d
    return v5

    .line 508
    :pswitch_1e
    add-int/lit8 v6, v0, -0x1

    if-eq p2, v6, :cond_1d

    .line 511
    add-int v3, p2, v4

    .line 512
    add-int/lit8 v5, v0, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 513
    div-int v2, v3, v4

    .line 514
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/2addr v5, v1

    if-lt v2, v5, :cond_14

    .line 516
    invoke-direct {p0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->rotateCarouselForVisibleCards(I)V

    goto :goto_14

    .line 520
    :pswitch_37
    if-eqz p2, :cond_1d

    .line 523
    sub-int v3, p2, v4

    .line 524
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 525
    div-int v2, v3, v4

    .line 526
    if-ge v2, v1, :cond_14

    .line 527
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->rotateCarousel(I)V

    goto :goto_14

    .line 531
    :pswitch_47
    rem-int v6, p2, v4

    add-int/lit8 v7, v4, -0x1

    if-eq v6, v7, :cond_1d

    .line 535
    add-int/lit8 v3, p2, 0x1

    .line 536
    add-int/lit8 v5, v0, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 537
    goto :goto_14

    .line 539
    :pswitch_56
    rem-int v6, p2, v4

    if-eqz v6, :cond_1d

    .line 543
    add-int/lit8 v3, p2, -0x1

    .line 544
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_14

    .line 506
    nop

    :pswitch_data_62
    .packed-switch 0x13
        :pswitch_56
        :pswitch_47
        :pswitch_37
        :pswitch_1e
    .end packed-switch
.end method

.method private keyDownForSingleRow(II)Z
    .registers 7
    .parameter "keyCode"
    .parameter "focusCard"

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadHorizontal:Z

    if-eqz v3, :cond_10

    .line 452
    const/16 v3, 0x13

    if-eq p1, v3, :cond_f

    const/16 v3, 0x14

    if-ne p1, v3, :cond_18

    .line 494
    :cond_f
    :goto_f
    return v2

    .line 456
    :cond_10
    const/16 v3, 0x15

    if-eq p1, v3, :cond_f

    const/16 v3, 0x16

    if-eq p1, v3, :cond_f

    .line 461
    :cond_18
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getCarouselRotationPosition()I

    move-result v0

    .line 462
    .local v0, firstCard:I
    const/4 v1, 0x0

    .line 463
    .local v1, nextFocus:I
    packed-switch p1, :pswitch_data_5a

    .line 492
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v2, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 493
    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->sendFocusedEvent(I)V

    .line 494
    const/4 v2, 0x1

    goto :goto_f

    .line 466
    :pswitch_2c
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p2, v3, :cond_f

    .line 471
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 472
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_22

    .line 474
    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->rotateCarouselForVisibleCards(I)V

    goto :goto_22

    .line 479
    :pswitch_4b
    if-eqz p2, :cond_f

    .line 484
    add-int/lit8 v3, p2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 485
    if-ge v1, v0, :cond_22

    .line 486
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->rotateCarousel(I)V

    goto :goto_22

    .line 463
    nop

    :pswitch_data_5a
    .packed-switch 0x13
        :pswitch_2c
        :pswitch_4b
        :pswitch_4b
        :pswitch_2c
    .end packed-switch
.end method

.method private onKeyDownInDebugMode(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 590
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v1

    .line 591
    .local v1, keyChar:C
    const/4 v2, 0x1

    .line 593
    .local v2, validKey:Z
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    .line 595
    .local v0, camera:Lcom/google/android/opengl/carousel/GLCamera;
    sparse-switch v1, :sswitch_data_80

    .line 654
    const/4 v2, 0x0

    .line 658
    :goto_d
    if-eqz v2, :cond_12

    .line 660
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 664
    :cond_12
    return v2

    .line 597
    :sswitch_13
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->forward()V

    goto :goto_d

    .line 600
    :sswitch_17
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->backward()V

    goto :goto_d

    .line 603
    :sswitch_1b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->left()V

    goto :goto_d

    .line 606
    :sswitch_1f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->right()V

    goto :goto_d

    .line 609
    :sswitch_23
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->up()V

    goto :goto_d

    .line 612
    :sswitch_27
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->down()V

    goto :goto_d

    .line 615
    :sswitch_2b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookLeft()V

    goto :goto_d

    .line 618
    :sswitch_2f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookRight()V

    goto :goto_d

    .line 621
    :sswitch_33
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookForward()V

    goto :goto_d

    .line 624
    :sswitch_37
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookBackward()V

    goto :goto_d

    .line 627
    :sswitch_3b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookUp()V

    goto :goto_d

    .line 630
    :sswitch_3f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookDown()V

    goto :goto_d

    .line 633
    :sswitch_43
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->worldRotateLeft()V

    goto :goto_d

    .line 636
    :sswitch_47
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->worldRotateRight()V

    goto :goto_d

    .line 639
    :sswitch_4b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->reset()V

    goto :goto_d

    .line 642
    :sswitch_4f
    const-string v3, "CarouselView"

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->printParameters()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 645
    :sswitch_59
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    goto :goto_d

    .line 648
    :sswitch_67
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    goto :goto_d

    .line 651
    :sswitch_75
    const/4 v3, 0x0

    const/16 v4, 0x2ee

    const/4 v5, 0x1

    const/high16 v6, 0x4130

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(FIIF)V

    goto :goto_d

    .line 595
    nop

    :sswitch_data_80
    .sparse-switch
        0x2c -> :sswitch_59
        0x2e -> :sswitch_67
        0x41 -> :sswitch_1b
        0x44 -> :sswitch_1f
        0x48 -> :sswitch_75
        0x49 -> :sswitch_33
        0x4a -> :sswitch_2b
        0x4b -> :sswitch_37
        0x4c -> :sswitch_2f
        0x4d -> :sswitch_3f
        0x50 -> :sswitch_4f
        0x51 -> :sswitch_23
        0x52 -> :sswitch_4b
        0x53 -> :sswitch_17
        0x54 -> :sswitch_43
        0x55 -> :sswitch_3b
        0x57 -> :sswitch_13
        0x59 -> :sswitch_47
        0x5a -> :sswitch_27
    .end sparse-switch
.end method

.method private rotateCarouselForVisibleCards(I)V
    .registers 3
    .parameter "lastVisibleColumn"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->rotateCarousel(I)V

    .line 576
    return-void
.end method

.method private sendAccessibilityEventForItem(II)V
    .registers 6
    .parameter "type"
    .parameter "itemId"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mAccessibilityEnabled:Z

    if-eqz v2, :cond_b

    const/4 v2, -0x1

    if-ne p2, v2, :cond_c

    .line 387
    :cond_b
    :goto_b
    return-void

    .line 378
    :cond_c
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 382
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v2, p2}, Lcom/google/android/opengl/carousel/CarouselCallback;->getTalkBackText(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, label:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_b
.end method

.method private sendFocusedEvent(I)V
    .registers 3
    .parameter "focusId"

    .prologue
    .line 368
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEventForItem(II)V

    .line 369
    return-void
.end method

.method private sendHoverEvent()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 349
    const/4 v2, -0x1

    .line 350
    .local v2, hoveredId:I
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getHoverCard()I

    move-result v0

    .line 351
    .local v0, hoverCard:I
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getHoverDetail()I

    move-result v1

    .line 352
    .local v1, hoverDetail:I
    if-eq v0, v4, :cond_18

    .line 353
    move v2, v0

    .line 358
    :cond_11
    :goto_11
    if-eq v2, v4, :cond_17

    .line 359
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEventForItem(II)V

    .line 361
    :cond_17
    return-void

    .line 354
    :cond_18
    if-eq v1, v4, :cond_11

    .line 355
    move v2, v1

    goto :goto_11
.end method

.method private setSurfacePixelFormat(I)V
    .registers 3
    .parameter "surfacePixelFormat"

    .prologue
    .line 250
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLContextClientVersion(I)V

    .line 251
    if-nez p1, :cond_b

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLConfigChooser(Z)V

    .line 259
    :goto_a
    return-void

    .line 254
    :cond_b
    new-instance v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;

    invoke-direct {v0, p1}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_a
.end method


# virtual methods
.method public disableMixAndFade()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->disableMixAndFade()V

    .line 346
    return-void
.end method

.method public getCardCount()I
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    if-nez v0, :cond_6

    .line 584
    const/4 v0, 0x0

    .line 586
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v0

    goto :goto_5
.end method

.method public getCoverView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCoverView:Landroid/view/View;

    return-object v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    const v2, 0x3e4ccccd

    .line 1492
    invoke-super {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1493
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1494
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1495
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1496
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1497
    return-void
.end method

.method public getRealtimeCarouselRotationAngle()F
    .registers 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->getRealtimeCarouselRotationAngle()F

    move-result v0

    return v0
.end method

.method public interpretLongPressEvents()Z
    .registers 2

    .prologue
    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateDetailTexture(IZ)V
    .registers 4
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 1589
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$24;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$24;-><init>(Lcom/google/android/opengl/carousel/CarouselView;IZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1594
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1595
    return-void
.end method

.method public invalidateDetailTextures(Z)V
    .registers 3
    .parameter "eraseCurrent"

    .prologue
    .line 1603
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$25;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$25;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1608
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1609
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->onDetachedFromWindow()V

    .line 175
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v0, :cond_c

    .line 176
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onDetachedFromWindow()V

    .line 178
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1631
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/opengl/common/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1632
    if-eqz p1, :cond_b

    if-eqz p3, :cond_b

    .line 1637
    invoke-direct {p0, p2}, Lcom/google/android/opengl/carousel/CarouselView;->focusOnFirstVisibleCard(I)V

    .line 1642
    :goto_a
    return-void

    .line 1639
    :cond_b
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_a
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 301
    if-nez p1, :cond_4

    const/4 v3, 0x0

    .line 337
    :goto_3
    return v3

    .line 303
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mHandleHover:Z

    if-eqz v3, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1f

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 306
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 311
    .local v2, y:F
    packed-switch v0, :pswitch_data_36

    .line 337
    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1f
    :goto_1f
    :pswitch_1f
    invoke-super {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_3

    .line 316
    .restart local v0       #action:I
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_24
    new-instance v3, Lcom/google/android/opengl/carousel/CarouselView$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselView$2;-><init>(Lcom/google/android/opengl/carousel/CarouselView;FF)V

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 327
    :pswitch_2d
    new-instance v3, Lcom/google/android/opengl/carousel/CarouselView$3;

    invoke-direct {v3, p0}, Lcom/google/android/opengl/carousel/CarouselView$3;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 311
    :pswitch_data_36
    .packed-switch 0x7
        :pswitch_24
        :pswitch_1f
        :pswitch_24
        :pswitch_2d
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 424
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mDebugKeyMode:Z

    if-eqz v3, :cond_b

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView;->onKeyDownInDebugMode(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 446
    :cond_a
    :goto_a
    return v1

    .line 428
    :cond_b
    invoke-static {p1}, Lcom/google/android/opengl/carousel/CarouselView;->desiredKey(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 432
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getFocusedItem()I

    move-result v0

    .line 433
    .local v0, focusCard:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    .line 434
    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->focusOnFirstVisibleCard(I)V

    move v1, v2

    .line 435
    goto :goto_a

    .line 438
    :cond_1f
    const/4 v1, 0x0

    .line 439
    .local v1, handled:Z
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    if-ne v3, v2, :cond_2e

    .line 440
    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselView;->keyDownForSingleRow(II)Z

    move-result v1

    .line 445
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_a

    .line 442
    :cond_2e
    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselView;->keyDownForMultiRow(II)Z

    move-result v1

    goto :goto_2a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 392
    sparse-switch p1, :sswitch_data_1c

    .line 403
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/common/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 406
    :goto_7
    return v1

    .line 395
    :sswitch_8
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getFocusedItem()I

    move-result v0

    .line 396
    .local v0, focusCard:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 397
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v1, :cond_1a

    .line 398
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v1, v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardSelected(I)V

    .line 406
    :cond_1a
    const/4 v1, 0x1

    goto :goto_7

    .line 392
    :sswitch_data_1c
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mAccessibilityEnabled:Z

    .line 183
    invoke-super {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->onResume()V

    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 270
    if-nez p1, :cond_4

    .line 296
    :goto_3
    return v3

    .line 272
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 273
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 274
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 276
    .local v2, y:F
    packed-switch v0, :pswitch_data_3c

    .line 295
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 296
    invoke-super {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_3

    .line 278
    :pswitch_1b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    .line 279
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 280
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doStart(FF)V

    goto :goto_13

    .line 284
    :pswitch_2a
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    if-eqz v3, :cond_13

    .line 285
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doMotion(FF)V

    goto :goto_13

    .line 290
    :pswitch_34
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doStop(FF)V

    .line 291
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    goto :goto_13

    .line 276
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_34
        :pswitch_2a
    .end packed-switch
.end method

.method public rotateCarousel(I)V
    .registers 3
    .parameter "toColumn"

    .prologue
    .line 559
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$4;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method

.method public setAccelerationFactor(F)V
    .registers 3
    .parameter "factor"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    .line 1034
    return-void
.end method

.method public setAccelerationRatio(F)V
    .registers 3
    .parameter "ratio"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    .line 1030
    return-void
.end method

.method public setAntiJitter(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAntiJitter:Z

    .line 750
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 751
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 1055
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1056
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "animate"

    .prologue
    .line 1059
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$13;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$13;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1067
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .registers 7
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    new-instance v1, Lcom/google/android/opengl/common/Float4;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/opengl/common/Float4;-><init>(FFFF)V

    iput-object v1, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    .line 990
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 991
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 7
    .parameter "color"

    .prologue
    .line 998
    new-instance v0, Lcom/google/android/opengl/common/Float4;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/common/Float4;-><init>(FFFF)V

    .line 999
    .local v0, tmp:Lcom/google/android/opengl/common/Float4;
    const/high16 v1, 0x3b80

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/common/Float4;->times(F)V

    .line 1000
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    iput-object v0, v1, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1002
    return-void
.end method

.method public setBackgroundTransitionDuration(J)V
    .registers 4
    .parameter "t"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-wide p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    .line 1353
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1354
    return-void
.end method

.method public setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    .line 1076
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1078
    return-void
.end method

.method public setCameraFov(F)V
    .registers 3
    .parameter "fov"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iput p1, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1359
    return-void
.end method

.method public setCardGlowScale(F)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 1038
    return-void
.end method

.method public setCardRenderer(Lcom/google/android/opengl/carousel/ICardRenderer;)V
    .registers 3
    .parameter "renderer"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1152
    return-void
.end method

.method public setCardRotation(F)V
    .registers 3
    .parameter "cardRotation"

    .prologue
    .line 1133
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$14;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$14;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1141
    return-void
.end method

.method public setCardXYScale(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    iput p1, v0, Lcom/google/android/opengl/common/Float2;->x:F

    .line 1234
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    iput p2, v0, Lcom/google/android/opengl/common/Float2;->y:F

    .line 1235
    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .registers 3
    .parameter "faceTangent"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    .line 1225
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1170
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$15;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$15;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1178
    return-void
.end method

.method public setCarouselRotationAngle(FIIF)V
    .registers 11
    .parameter "endAngle"
    .parameter "milliseconds"
    .parameter "interpolationMode"
    .parameter "maxAnimatedArc"

    .prologue
    .line 1198
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/carousel/CarouselView$16;-><init>(Lcom/google/android/opengl/carousel/CarouselView;FIIF)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1206
    return-void
.end method

.method public setCoverView(Landroid/view/View;)V
    .registers 2
    .parameter "coverView"

    .prologue
    .line 1704
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCoverView:Landroid/view/View;

    .line 1705
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 916
    if-nez p1, :cond_3

    .line 931
    :goto_2
    return-void

    .line 919
    :cond_3
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$10;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$10;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 930
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_2
.end method

.method public setDefaultCardMatrix([F)V
    .registers 5
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 1542
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultCardMatrix:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1543
    return-void
.end method

.method public setDefaultEyeLookAt([F[F)V
    .registers 4
    .parameter "eye"
    .parameter "at"

    .prologue
    .line 1314
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$18;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1321
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1322
    return-void
.end method

.method public setDefaultGeometry(Lcom/google/android/opengl/carousel/Mesh;)V
    .registers 3
    .parameter "mesh"

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultGeometry:Lcom/google/android/opengl/carousel/Mesh;

    .line 1414
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1415
    return-void
.end method

.method public setDetailLineBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 1100
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1101
    return-void
.end method

.method public setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1089
    return-void
.end method

.method public setDetailTextureAlignment(I)V
    .registers 3
    .parameter "alignment"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 904
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 905
    return-void
.end method

.method public setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
    .registers 15
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "bitmap"

    .prologue
    .line 886
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/carousel/CarouselView$9;-><init>(Lcom/google/android/opengl/carousel/CarouselView;IFFFFLandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 893
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 894
    return-void
.end method

.method public setDpadNavigationHorizontal(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadHorizontal:Z

    .line 774
    return-void
.end method

.method public setDpadSmoothScrollTime(I)V
    .registers 3
    .parameter "time"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    .line 1046
    return-void
.end method

.method public setDragFactor(F)V
    .registers 3
    .parameter "dragFactor"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 1267
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1268
    return-void
.end method

.method public setDragModel(I)V
    .registers 3
    .parameter "model"

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    .line 1279
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1280
    return-void
.end method

.method public setDrawCardsWithBlending(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawCardsWithBlending:Z

    .line 1292
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1293
    return-void
.end method

.method public setDrawRuler(Z)V
    .registers 3
    .parameter "drawRuler"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    .line 762
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 763
    return-void
.end method

.method public setEnableBoostArea(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    .line 1011
    return-void
.end method

.method public setFadeInDuration(J)V
    .registers 4
    .parameter "t"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-wide p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1349
    return-void
.end method

.method public setFadeOutLeftAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    .line 1042
    return-void
.end method

.method public setFillDirection(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    .line 1262
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1263
    return-void
.end method

.method public setFirstCardTop(Z)V
    .registers 3
    .parameter "f"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    .line 1275
    return-void
.end method

.method public setFocusOnStartUp(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 1617
    return-void
.end method

.method public setFormat(I)V
    .registers 3
    .parameter "format"

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1437
    return-void
.end method

.method public setFrictionCoefficient(F)V
    .registers 3
    .parameter "frictionCoefficient"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1255
    return-void
.end method

.method public setGeometryForItem(ILcom/google/android/opengl/carousel/Mesh;)V
    .registers 4
    .parameter "n"
    .parameter "mesh"

    .prologue
    .line 1382
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$19;-><init>(Lcom/google/android/opengl/carousel/CarouselView;ILcom/google/android/opengl/carousel/Mesh;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1390
    return-void
.end method

.method public setGlowingBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 959
    if-nez p1, :cond_3

    .line 973
    :goto_2
    return-void

    .line 962
    :cond_3
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$12;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$12;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 972
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_2
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 941
    if-nez p1, :cond_3

    .line 956
    :goto_2
    return-void

    .line 944
    :cond_3
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$11;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$11;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 955
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_2
.end method

.method public setLoadingGeometry(Lcom/google/android/opengl/carousel/Mesh;)V
    .registers 3
    .parameter "mesh"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingGeometry:Lcom/google/android/opengl/carousel/Mesh;

    .line 1425
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1426
    return-void
.end method

.method public setLookAt([F[F[F)V
    .registers 5
    .parameter "eye"
    .parameter "at"
    .parameter "up"

    .prologue
    .line 1296
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/opengl/carousel/CarouselView$17;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1306
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1307
    return-void
.end method

.method public setMatrixForItem(I[F)V
    .registers 4
    .parameter "n"
    .parameter "matrix"

    .prologue
    .line 1398
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$20;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1404
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1405
    return-void
.end method

.method public setMixAndFade(FFFF)V
    .registers 6
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/carousel/CarouselScene;->setMixAndFade(FFFF)V

    .line 342
    return-void
.end method

.method public setMusicPortraitOfLabel(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    .line 741
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 742
    return-void
.end method

.method public setOverscrollSlots(F)V
    .registers 2
    .parameter "slots"

    .prologue
    .line 1245
    return-void
.end method

.method public setPrefetchCardCount(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    .line 730
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 731
    return-void
.end method

.method public setRadius(F)V
    .registers 4
    .parameter "radius"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    iput p1, v1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1122
    return-void
.end method

.method public setRecycler(Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;)V
    .registers 3
    .parameter "bitmapRecycler"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    .line 1156
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1157
    return-void
.end method

.method public setRezInCardCount(F)V
    .registers 3
    .parameter "n"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    .line 1334
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1335
    return-void
.end method

.method public setRowCount(I)V
    .registers 3
    .parameter "row"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 1126
    return-void
.end method

.method public setRowSpacing(F)V
    .registers 3
    .parameter "space"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowSpacing:F

    .line 1130
    return-void
.end method

.method public setScaleSelectedCard(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    .line 1019
    return-void
.end method

.method public setSlotCount(I)V
    .registers 7
    .parameter "n"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    .line 682
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const-wide v1, 0x401921fb54442d18L

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    .line 683
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 684
    return-void
.end method

.method public setSpecialRotationInPortrait(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSpecialRotationInPortrait:Z

    .line 1023
    return-void
.end method

.method public setStartAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    .line 1112
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1113
    return-void
.end method

.method public setSwaySensitivity(F)V
    .registers 3
    .parameter "swaySensitivity"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    .line 1249
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1250
    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "n"
    .parameter "bitmap"

    .prologue
    .line 826
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$6;-><init>(Lcom/google/android/opengl/carousel/CarouselView;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 833
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 834
    return-void
.end method

.method public setTextureState(II)V
    .registers 4
    .parameter "n"
    .parameter "state"

    .prologue
    .line 837
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$7;-><init>(Lcom/google/android/opengl/carousel/CarouselView;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 843
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 844
    return-void
.end method

.method public setTiltMaximumAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1669
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$27;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$27;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1675
    return-void
.end method

.method public setVelocityUpLimit(F)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    .line 705
    return-void
.end method

.method public setVisibleDetails(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    .line 715
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 716
    return-void
.end method

.method public setVisibleSlots(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    .line 695
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 696
    return-void
.end method

.method public shuffle([I)V
    .registers 3
    .parameter "comeFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1462
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$21;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$21;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1467
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEvent(I)V

    .line 1468
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1469
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/common/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 264
    const-string v0, "CarouselView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 266
    return-void
.end method
