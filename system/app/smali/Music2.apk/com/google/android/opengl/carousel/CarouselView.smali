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

.field private mShouldFocusOnCard:Z

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1358
    const/4 v0, -0x2

    sput v0, Lcom/google/android/opengl/carousel/CarouselView;->INVALID_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "surfacePixelFormat"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 204
    const/4 v0, -0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "surfacePixelFormat"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/common/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    .line 97
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mDebugKeyMode:Z

    .line 100
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mHandleHover:Z

    .line 213
    invoke-static {}, Lcom/google/android/opengl/common/PostFroyoUtils;->runningOnIcsOrLater()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mHandleHover:Z

    .line 214
    invoke-direct {p0, p3}, Lcom/google/android/opengl/carousel/CarouselView;->setSurfacePixelFormat(I)V

    .line 215
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselSetting;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 216
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 217
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 219
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRenderer(Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V

    .line 222
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setRenderMode(I)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setFocusableInTouchMode(Z)V

    .line 228
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$1;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselView$1;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
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

.method static synthetic access$200(Lcom/google/android/opengl/carousel/CarouselView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->sendFocusedEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;
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
    .line 403
    sparse-switch p0, :sswitch_data_8

    .line 412
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 410
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 403
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

.method private focusOnFirstVisibleCard()V
    .registers 4

    .prologue
    .line 1557
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v2}, Lcom/google/android/opengl/carousel/CarouselScene;->getRealtimeCarouselRotationAngle()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1559
    .local v0, firstCardLocation:I
    new-instance v1, Lcom/google/android/opengl/carousel/CarouselView$27;

    invoke-direct {v1, p0, v0}, Lcom/google/android/opengl/carousel/CarouselView$27;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1565
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->sendFocusedEvent(I)V

    .line 1566
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1567
    return-void
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 1587
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 1589
    .local v1, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 1590
    .local v0, accessibilityEnabled:Z
    return v0
.end method

.method private onKeyDownInDebugMode(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 523
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v1

    .line 524
    .local v1, keyChar:C
    const/4 v2, 0x1

    .line 526
    .local v2, validKey:Z
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    .line 528
    .local v0, camera:Lcom/google/android/opengl/carousel/GLCamera;
    sparse-switch v1, :sswitch_data_80

    .line 587
    const/4 v2, 0x0

    .line 591
    :goto_d
    if-eqz v2, :cond_12

    .line 593
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 597
    :cond_12
    return v2

    .line 530
    :sswitch_13
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->forward()V

    goto :goto_d

    .line 533
    :sswitch_17
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->backward()V

    goto :goto_d

    .line 536
    :sswitch_1b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->left()V

    goto :goto_d

    .line 539
    :sswitch_1f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->right()V

    goto :goto_d

    .line 542
    :sswitch_23
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->up()V

    goto :goto_d

    .line 545
    :sswitch_27
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->down()V

    goto :goto_d

    .line 548
    :sswitch_2b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookLeft()V

    goto :goto_d

    .line 551
    :sswitch_2f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookRight()V

    goto :goto_d

    .line 554
    :sswitch_33
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookForward()V

    goto :goto_d

    .line 557
    :sswitch_37
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookBackward()V

    goto :goto_d

    .line 560
    :sswitch_3b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookUp()V

    goto :goto_d

    .line 563
    :sswitch_3f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->lookDown()V

    goto :goto_d

    .line 566
    :sswitch_43
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->worldRotateLeft()V

    goto :goto_d

    .line 569
    :sswitch_47
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->worldRotateRight()V

    goto :goto_d

    .line 572
    :sswitch_4b
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->reset()V

    goto :goto_d

    .line 575
    :sswitch_4f
    const-string v3, "CarouselView"

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->printParameters()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 578
    :sswitch_59
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    goto :goto_d

    .line 581
    :sswitch_67
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    goto :goto_d

    .line 584
    :sswitch_75
    const/4 v3, 0x0

    const/16 v4, 0x2ee

    const/4 v5, 0x1

    const/high16 v6, 0x4130

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(FIIF)V

    goto :goto_d

    .line 528
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

.method private sendAccessibilityEventForItem(II)V
    .registers 6
    .parameter "type"
    .parameter "itemId"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mAccessibilityEnabled:Z

    if-eqz v2, :cond_b

    const/4 v2, -0x1

    if-ne p2, v2, :cond_c

    .line 380
    :cond_b
    :goto_b
    return-void

    .line 371
    :cond_c
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 375
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v2, p2}, Lcom/google/android/opengl/carousel/CarouselCallback;->getTalkBackText(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, label:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_b
.end method

.method private sendFocusedEvent(I)V
    .registers 3
    .parameter "focusId"

    .prologue
    .line 361
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEventForItem(II)V

    .line 362
    return-void
.end method

.method private sendHoverEvent()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 342
    const/4 v2, -0x1

    .line 343
    .local v2, hoveredId:I
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getHoverCard()I

    move-result v0

    .line 344
    .local v0, hoverCard:I
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getHoverDetail()I

    move-result v1

    .line 345
    .local v1, hoverDetail:I
    if-eq v0, v4, :cond_18

    .line 346
    move v2, v0

    .line 351
    :cond_11
    :goto_11
    if-eq v2, v4, :cond_17

    .line 352
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEventForItem(II)V

    .line 354
    :cond_17
    return-void

    .line 347
    :cond_18
    if-eq v1, v4, :cond_11

    .line 348
    move v2, v1

    goto :goto_11
.end method

.method private setSurfacePixelFormat(I)V
    .registers 3
    .parameter "surfacePixelFormat"

    .prologue
    .line 251
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLContextClientVersion(I)V

    .line 252
    if-nez p1, :cond_b

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLConfigChooser(Z)V

    .line 260
    :goto_a
    return-void

    .line 255
    :cond_b
    new-instance v0, Lcom/google/android/opengl/common/PixelFormatConfigChooser;

    invoke-direct {v0, p1}, Lcom/google/android/opengl/common/PixelFormatConfigChooser;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_a
.end method


# virtual methods
.method public getCardCount()I
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    if-nez v0, :cond_6

    .line 517
    const/4 v0, 0x0

    .line 519
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
    .line 1598
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCoverView:Landroid/view/View;

    return-object v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "outRect"

    .prologue
    const v2, 0x3e4ccccd

    .line 1411
    invoke-super {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1412
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1413
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1414
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1415
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1416
    return-void
.end method

.method public getRealtimeCarouselRotationAngle()F
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->getRealtimeCarouselRotationAngle()F

    move-result v0

    return v0
.end method

.method public interpretLongPressEvents()Z
    .registers 2

    .prologue
    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateDetailTexture(IZ)V
    .registers 4
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 1508
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$25;-><init>(Lcom/google/android/opengl/carousel/CarouselView;IZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1513
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1514
    return-void
.end method

.method public invalidateDetailTextures(Z)V
    .registers 3
    .parameter "eraseCurrent"

    .prologue
    .line 1522
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$26;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$26;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1527
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1528
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->onDetachedFromWindow()V

    .line 176
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onDetachedFromWindow()V

    .line 179
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1542
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/opengl/common/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1543
    if-eqz p1, :cond_d

    .line 1546
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mShouldFocusOnCard:Z

    if-eqz v0, :cond_c

    .line 1547
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselView;->focusOnFirstVisibleCard()V

    .line 1553
    :cond_c
    :goto_c
    return-void

    .line 1550
    :cond_d
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 1551
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_c
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 302
    if-nez p1, :cond_4

    const/4 v3, 0x0

    .line 338
    :goto_3
    return v3

    .line 304
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mHandleHover:Z

    if-eqz v3, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1f

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 306
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 307
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 312
    .local v2, y:F
    packed-switch v0, :pswitch_data_36

    .line 338
    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_1f
    :goto_1f
    :pswitch_1f
    invoke-super {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_3

    .line 317
    .restart local v0       #action:I
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_24
    new-instance v3, Lcom/google/android/opengl/carousel/CarouselView$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselView$2;-><init>(Lcom/google/android/opengl/carousel/CarouselView;FF)V

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 328
    :pswitch_2d
    new-instance v3, Lcom/google/android/opengl/carousel/CarouselView$3;

    invoke-direct {v3, p0}, Lcom/google/android/opengl/carousel/CarouselView$3;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 312
    :pswitch_data_36
    .packed-switch 0x7
        :pswitch_24
        :pswitch_1f
        :pswitch_24
        :pswitch_2d
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 417
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mDebugKeyMode:Z

    if-eqz v3, :cond_b

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView;->onKeyDownInDebugMode(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 508
    :cond_a
    :goto_a
    return v1

    .line 421
    :cond_b
    invoke-static {p1}, Lcom/google/android/opengl/carousel/CarouselView;->desiredKey(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 425
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadHorizontal:Z

    if-eqz v3, :cond_45

    .line 426
    const/16 v3, 0x13

    if-eq p1, v3, :cond_a

    const/16 v3, 0x14

    if-eq p1, v3, :cond_a

    .line 435
    :cond_1f
    const-string v3, "CarouselView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getFocusedItem()I

    move-result v0

    .line 437
    .local v0, focusCard:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4e

    .line 438
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselView;->focusOnFirstVisibleCard()V

    move v1, v2

    .line 439
    goto :goto_a

    .line 430
    .end local v0           #focusCard:I
    :cond_45
    const/16 v3, 0x15

    if-eq p1, v3, :cond_a

    const/16 v3, 0x16

    if-ne p1, v3, :cond_1f

    goto :goto_a

    .line 443
    .restart local v0       #focusCard:I
    :cond_4e
    packed-switch p1, :pswitch_data_72

    .line 507
    :goto_51
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    move v1, v2

    .line 508
    goto :goto_a

    .line 446
    :pswitch_56
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 450
    new-instance v1, Lcom/google/android/opengl/carousel/CarouselView$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/opengl/carousel/CarouselView$4;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_51

    .line 476
    :pswitch_67
    if-eqz v0, :cond_a

    .line 480
    new-instance v1, Lcom/google/android/opengl/carousel/CarouselView$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/opengl/carousel/CarouselView$5;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_51

    .line 443
    :pswitch_data_72
    .packed-switch 0x13
        :pswitch_56
        :pswitch_67
        :pswitch_67
        :pswitch_56
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 385
    sparse-switch p1, :sswitch_data_1c

    .line 396
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/common/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 399
    :goto_7
    return v1

    .line 388
    :sswitch_8
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getFocusedItem()I

    move-result v0

    .line 389
    .local v0, focusCard:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 390
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v1, :cond_1a

    .line 391
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v1, v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardSelected(I)V

    .line 399
    :cond_1a
    const/4 v1, 0x1

    goto :goto_7

    .line 385
    :sswitch_data_1c
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselView;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mAccessibilityEnabled:Z

    .line 184
    invoke-super {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->onResume()V

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 271
    if-nez p1, :cond_4

    .line 297
    :goto_3
    return v3

    .line 273
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 274
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 275
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 277
    .local v2, y:F
    packed-switch v0, :pswitch_data_3c

    .line 296
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 297
    invoke-super {p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_3

    .line 279
    :pswitch_1b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    .line 280
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 281
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doStart(FF)V

    goto :goto_13

    .line 285
    :pswitch_2a
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    if-eqz v3, :cond_13

    .line 286
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doMotion(FF)V

    goto :goto_13

    .line 291
    :pswitch_34
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doStop(FF)V

    .line 292
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    goto :goto_13

    .line 277
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_34
        :pswitch_2a
    .end packed-switch
.end method

.method public setAccelerationFactor(F)V
    .registers 3
    .parameter "factor"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    .line 967
    return-void
.end method

.method public setAccelerationRatio(F)V
    .registers 3
    .parameter "ratio"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    .line 963
    return-void
.end method

.method public setAntiJitter(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAntiJitter:Z

    .line 683
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 684
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 988
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V

    .line 989
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "animate"

    .prologue
    .line 992
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$14;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$14;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 999
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1000
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .registers 7
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    new-instance v1, Lcom/google/android/opengl/common/Float4;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/opengl/common/Float4;-><init>(FFFF)V

    iput-object v1, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    .line 923
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 924
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 7
    .parameter "color"

    .prologue
    .line 931
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

    .line 932
    .local v0, tmp:Lcom/google/android/opengl/common/Float4;
    const/high16 v1, 0x3b80

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/common/Float4;->times(F)V

    .line 933
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    iput-object v0, v1, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    .line 934
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 935
    return-void
.end method

.method public setBackgroundTransitionDuration(J)V
    .registers 4
    .parameter "t"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-wide p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    .line 1272
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1273
    return-void
.end method

.method public setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    .line 1009
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1011
    return-void
.end method

.method public setCameraFov(F)V
    .registers 3
    .parameter "fov"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iput p1, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    .line 1277
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1278
    return-void
.end method

.method public setCardGlowScale(F)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 971
    return-void
.end method

.method public setCardRenderer(Lcom/google/android/opengl/carousel/ICardRenderer;)V
    .registers 3
    .parameter "renderer"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1081
    return-void
.end method

.method public setCardRotation(F)V
    .registers 3
    .parameter "cardRotation"

    .prologue
    .line 1062
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$15;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$15;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1069
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1070
    return-void
.end method

.method public setCardXYScale(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    iput p1, v0, Lcom/google/android/opengl/common/Float2;->x:F

    .line 1163
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    iput p2, v0, Lcom/google/android/opengl/common/Float2;->y:F

    .line 1164
    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .registers 3
    .parameter "faceTangent"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    .line 1154
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1099
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$16;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$16;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1106
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1107
    return-void
.end method

.method public setCarouselRotationAngle(FIIF)V
    .registers 11
    .parameter "endAngle"
    .parameter "milliseconds"
    .parameter "interpolationMode"
    .parameter "maxAnimatedArc"

    .prologue
    .line 1127
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$17;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/carousel/CarouselView$17;-><init>(Lcom/google/android/opengl/carousel/CarouselView;FIIF)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1135
    return-void
.end method

.method public setCoverView(Landroid/view/View;)V
    .registers 2
    .parameter "coverView"

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCoverView:Landroid/view/View;

    .line 1610
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 849
    if-nez p1, :cond_3

    .line 864
    :goto_2
    return-void

    .line 852
    :cond_3
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$11;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$11;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 863
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_2
.end method

.method public setDefaultCardMatrix([F)V
    .registers 5
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 1461
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultCardMatrix:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1462
    return-void
.end method

.method public setDefaultEyeLookAt([F[F)V
    .registers 4
    .parameter "eye"
    .parameter "at"

    .prologue
    .line 1233
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$19;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1240
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1241
    return-void
.end method

.method public setDefaultGeometry(Lcom/google/android/opengl/carousel/Mesh;)V
    .registers 3
    .parameter "mesh"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultGeometry:Lcom/google/android/opengl/carousel/Mesh;

    .line 1333
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1334
    return-void
.end method

.method public setDetailLineBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 1033
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1034
    return-void
.end method

.method public setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1022
    return-void
.end method

.method public setDetailTextureAlignment(I)V
    .registers 3
    .parameter "alignment"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 837
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 838
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
    .line 819
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$10;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/carousel/CarouselView$10;-><init>(Lcom/google/android/opengl/carousel/CarouselView;IFFFFLandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 826
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 827
    return-void
.end method

.method public setDpadNavigationHorizontal(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadHorizontal:Z

    .line 707
    return-void
.end method

.method public setDpadSmoothScrollTime(I)V
    .registers 3
    .parameter "time"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    .line 979
    return-void
.end method

.method public setDragFactor(F)V
    .registers 3
    .parameter "dragFactor"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 1186
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1187
    return-void
.end method

.method public setDragModel(I)V
    .registers 3
    .parameter "model"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    .line 1198
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1199
    return-void
.end method

.method public setDrawCardsWithBlending(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawCardsWithBlending:Z

    .line 1211
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1212
    return-void
.end method

.method public setDrawRuler(Z)V
    .registers 3
    .parameter "drawRuler"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    .line 695
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 696
    return-void
.end method

.method public setEnableBoostArea(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    .line 944
    return-void
.end method

.method public setFadeInDuration(J)V
    .registers 4
    .parameter "t"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-wide p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    .line 1267
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1268
    return-void
.end method

.method public setFadeOutLeftAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    .line 975
    return-void
.end method

.method public setFillDirection(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    .line 1181
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1182
    return-void
.end method

.method public setFirstCardTop(Z)V
    .registers 3
    .parameter "f"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    .line 1194
    return-void
.end method

.method public setFocusOnStartUp(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 1535
    iput-boolean p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mShouldFocusOnCard:Z

    .line 1536
    return-void
.end method

.method public setFormat(I)V
    .registers 3
    .parameter "format"

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1356
    return-void
.end method

.method public setFrictionCoefficient(F)V
    .registers 3
    .parameter "frictionCoefficient"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    .line 1173
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1174
    return-void
.end method

.method public setGeometryForItem(ILcom/google/android/opengl/carousel/Mesh;)V
    .registers 4
    .parameter "n"
    .parameter "mesh"

    .prologue
    .line 1301
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$20;-><init>(Lcom/google/android/opengl/carousel/CarouselView;ILcom/google/android/opengl/carousel/Mesh;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1309
    return-void
.end method

.method public setGlowingBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 892
    if-nez p1, :cond_3

    .line 906
    :goto_2
    return-void

    .line 895
    :cond_3
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$13;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$13;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 905
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_2
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 874
    if-nez p1, :cond_3

    .line 889
    :goto_2
    return-void

    .line 877
    :cond_3
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$12;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$12;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 888
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    goto :goto_2
.end method

.method public setLoadingGeometry(Lcom/google/android/opengl/carousel/Mesh;)V
    .registers 3
    .parameter "mesh"

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingGeometry:Lcom/google/android/opengl/carousel/Mesh;

    .line 1344
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1345
    return-void
.end method

.method public setLookAt([F[F[F)V
    .registers 5
    .parameter "eye"
    .parameter "at"
    .parameter "up"

    .prologue
    .line 1215
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/opengl/carousel/CarouselView$18;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1225
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1226
    return-void
.end method

.method public setMatrixForItem(I[F)V
    .registers 4
    .parameter "n"
    .parameter "matrix"

    .prologue
    .line 1317
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$21;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1323
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1324
    return-void
.end method

.method public setMusicPortraitOfLabel(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    .line 674
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 675
    return-void
.end method

.method public setPrefetchCardCount(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    .line 663
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 664
    return-void
.end method

.method public setRadius(F)V
    .registers 4
    .parameter "radius"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    iput p1, v1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1051
    return-void
.end method

.method public setRecycler(Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;)V
    .registers 3
    .parameter "bitmapRecycler"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    .line 1085
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1086
    return-void
.end method

.method public setRezInCardCount(F)V
    .registers 3
    .parameter "n"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    .line 1253
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1254
    return-void
.end method

.method public setRowCount(I)V
    .registers 3
    .parameter "row"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 1055
    return-void
.end method

.method public setRowSpacing(F)V
    .registers 3
    .parameter "space"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowSpacing:F

    .line 1059
    return-void
.end method

.method public setScaleSelectedCard(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    .line 952
    return-void
.end method

.method public setSlotCount(I)V
    .registers 7
    .parameter "n"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    .line 615
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const-wide v1, 0x401921fb54442d18L

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    .line 616
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 617
    return-void
.end method

.method public setSpecialRotationInPortrait(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSpecialRotationInPortrait:Z

    .line 956
    return-void
.end method

.method public setStartAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    .line 1045
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1046
    return-void
.end method

.method public setSwaySensitivity(F)V
    .registers 3
    .parameter "swaySensitivity"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    .line 1168
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1169
    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "n"
    .parameter "bitmap"

    .prologue
    .line 759
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$7;-><init>(Lcom/google/android/opengl/carousel/CarouselView;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 766
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 767
    return-void
.end method

.method public setTextureState(II)V
    .registers 4
    .parameter "n"
    .parameter "state"

    .prologue
    .line 770
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$8;-><init>(Lcom/google/android/opengl/carousel/CarouselView;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 776
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 777
    return-void
.end method

.method public setTiltMaximumAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 1574
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$28;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$28;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1580
    return-void
.end method

.method public setVelocityUpLimit(F)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    .line 638
    return-void
.end method

.method public setVisibleDetails(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    .line 648
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 649
    return-void
.end method

.method public setVisibleSlots(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    .line 628
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 629
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
    .line 1381
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$22;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$22;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1386
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->sendAccessibilityEvent(I)V

    .line 1387
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 1388
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/common/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 265
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

    .line 266
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 267
    return-void
.end method
