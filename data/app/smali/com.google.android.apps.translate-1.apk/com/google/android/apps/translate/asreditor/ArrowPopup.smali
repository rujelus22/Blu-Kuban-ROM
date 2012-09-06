.class public Lcom/google/android/apps/translate/asreditor/ArrowPopup;
.super Landroid/widget/FrameLayout;
.source "ArrowPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArrowPopup"


# instance fields
.field private mArrowPoint:Landroid/graphics/Point;

.field private mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFilterDpad:Z

.field private mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mOutsideListener:Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;

.field private mOutsideTouchable:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPopupRect:Landroid/graphics/Rect;

.field private mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mTouchStartedOutside:Z

.field private mTypingCancels:Z

.field private mVisible:Z

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideTouchable:Z

    .line 44
    iput-boolean v2, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mFilterDpad:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mTypingCancels:Z

    .line 51
    iput-boolean v2, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mTouchStartedOutside:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_correctbubble_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 83
    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_correctbubble_center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 85
    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_correctbubble_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->setBackgroundColor(I)V

    .line 89
    return-void
.end method

.method private calculatePopupRect()Landroid/graphics/Rect;
    .registers 18

    .prologue
    .line 96
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v7, metrics:Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v14, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v15, -0x8000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 101
    .local v10, wSpec:I
    iget v14, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    const/high16 v15, -0x8000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 103
    .local v3, hSpec:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->measure(II)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getMeasuredWidth()I

    move-result v11

    .line 106
    .local v11, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getMeasuredHeight()I

    move-result v4

    .line 108
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v5

    .line 109
    .local v5, lWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v1

    .line 110
    .local v1, cWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v9

    .line 112
    .local v9, rWidth:I
    div-int/lit8 v14, v1, 0x2

    add-int/2addr v14, v9

    sub-int v6, v11, v14

    .line 113
    .local v6, maxRight:I
    div-int/lit8 v14, v1, 0x2

    add-int v8, v5, v14

    .line 117
    .local v8, minLeft:I
    int-to-float v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    float-to-int v2, v14

    .line 118
    .local v2, centerX:I
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    sub-int v12, v14, v2

    .line 121
    .local v12, x:I
    const/4 v14, 0x0

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v15, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v13, v14, Landroid/graphics/Point;->y:I

    .line 125
    .local v13, y:I
    new-instance v14, Landroid/graphics/Rect;

    add-int v15, v12, v11

    add-int v16, v13, v4

    move/from16 v0, v16

    invoke-direct {v14, v12, v13, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v14
.end method

.method public static getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;
    .registers 14
    .parameter "textView"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 374
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 375
    .local v3, layout:Landroid/text/Layout;
    if-nez v3, :cond_15

    .line 376
    const-string v7, "ArrowPopup"

    const-string v8, "Trying to calculate popup position with null layout"

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 412
    :goto_14
    return-object v7

    .line 379
    :cond_15
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 381
    .local v1, coords:[I
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 383
    aget v7, v1, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v5, v7, v8

    .line 384
    .local v5, x:I
    aget v7, v1, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    add-int v6, v7, v8

    .line 385
    .local v6, y:I
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 386
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 388
    .local v4, path:Landroid/graphics/Path;
    invoke-virtual {v3, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 389
    .local v2, lastLineOffset:I
    if-ne v2, p2, :cond_4f

    .line 391
    invoke-virtual {v3, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 412
    :goto_49
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_14

    .line 392
    :cond_4f
    if-ne p1, p2, :cond_75

    .line 393
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v7

    if-ne p1, v7, :cond_68

    .line 394
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v3, v7, p2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 395
    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 396
    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-int/2addr v5, v7

    .line 403
    :goto_63
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_49

    .line 398
    :cond_68
    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v3, p1, v7, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 399
    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 400
    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/2addr v5, v7

    goto :goto_63

    .line 405
    :cond_75
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v7, p2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 406
    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 408
    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v5, v7

    .line 409
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_49
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 197
    .local v0, windowManager:Landroid/view/WindowManager;
    return-object v0
.end method

.method private initLayout(Landroid/graphics/Point;)V
    .registers 3
    .parameter "point"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    .line 161
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->calculatePopupRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mPopupRect:Landroid/graphics/Rect;

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mPopupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 163
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->dismiss()V

    .line 288
    return-void
.end method

.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .registers 9
    .parameter "popupRect"

    .prologue
    const/4 v6, 0x0

    .line 133
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 137
    .local v2, x:I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 139
    .local v3, y:I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 140
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const v4, 0x20100

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 142
    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 144
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 148
    iget-object v4, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_5d

    .line 149
    iget-object v4, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 152
    :cond_5d
    const/4 v4, 0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 153
    const/16 v4, 0x3ea

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 154
    const/4 v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 156
    return-object v1
.end method

.method public disableArrow()V
    .registers 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$drawable;->vs_dialog_correctbubble_center_noarrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 306
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mVisible:Z

    if-eqz v0, :cond_e

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mVisible:Z

    .line 296
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 298
    :cond_e
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 312
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->cancel()V

    .line 313
    const/4 v1, 0x1

    .line 332
    :goto_b
    return v1

    .line 316
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 317
    .local v0, code:I
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideListener:Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;

    if-eqz v1, :cond_3a

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3a

    .line 323
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mTypingCancels:Z

    if-eqz v1, :cond_2f

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->cancel()V

    .line 326
    :cond_2f
    iget-boolean v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mFilterDpad:Z

    if-eqz v1, :cond_38

    .line 327
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideListener:Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;

    invoke-interface {v1, p0, p1}, Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;->onUnhandledKeyEvent(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/view/KeyEvent;)V

    .line 329
    :cond_38
    const/4 v1, 0x0

    goto :goto_b

    .line 332
    :cond_3a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_b
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 337
    iget-boolean v4, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideTouchable:Z

    if-nez v4, :cond_a

    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 361
    :goto_9
    return v3

    .line 343
    :cond_a
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 344
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_51

    move v0, v3

    .line 349
    .local v0, outside:Z
    :goto_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2b

    .line 350
    iput-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mTouchStartedOutside:Z

    .line 352
    :cond_2b
    iget-object v4, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideListener:Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;

    if-eqz v4, :cond_53

    iget-boolean v4, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mTouchStartedOutside:Z

    if-eqz v4, :cond_53

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3c

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->cancel()V

    .line 356
    :cond_3c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 357
    .local v1, outsideEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 358
    iget-object v4, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideListener:Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;

    invoke-interface {v4, p0, v1}, Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;->onOutsideTouch(Lcom/google/android/apps/translate/asreditor/ArrowPopup;Landroid/view/MotionEvent;)V

    goto :goto_9

    .line 348
    .end local v0           #outside:Z
    .end local v1           #outsideEvent:Landroid/view/MotionEvent;
    :cond_51
    const/4 v0, 0x0

    goto :goto_23

    .line 361
    .restart local v0       #outside:Z
    :cond_53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_9
.end method

.method public isOutsideTouchable()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideTouchable:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mVisible:Z

    return v0
.end method

.method public move(Landroid/graphics/Point;)V
    .registers 4
    .parameter "point"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 263
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->requestLayout()V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->invalidate()V

    .line 268
    :cond_18
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter "canvas"

    .prologue
    .line 167
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 170
    .local v6, location:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getLocationOnScreen([I)V

    .line 172
    const/4 v12, 0x0

    aget v5, v6, v12

    .line 173
    .local v5, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWidth()I

    move-result v11

    .line 174
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getHeight()I

    move-result v3

    .line 175
    .local v3, h:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v4

    .line 176
    .local v4, lWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v2

    .line 177
    .local v2, cWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v9

    .line 179
    .local v9, rWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    div-int/lit8 v13, v2, 0x2

    sub-int v1, v12, v13

    .line 180
    .local v1, arrowX:I
    sub-int v12, v11, v9

    sub-int v7, v12, v2

    .line 181
    .local v7, maxRight:I
    move v8, v4

    .line 182
    .local v8, minLeft:I
    sub-int v12, v1, v5

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 184
    .local v10, relArrowX:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    add-int v15, v10, v2

    invoke-direct {v13, v10, v14, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v13, Landroid/graphics/Rect;

    add-int v14, v10, v2

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    return-void
.end method

.method public refreshLayout()V
    .registers 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 251
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->requestLayout()V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->invalidate()V

    .line 255
    :cond_1a
    return-void
.end method

.method public setFilterDpad(Z)V
    .registers 2
    .parameter "filterDpad"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mFilterDpad:Z

    .line 214
    return-void
.end method

.method public setOnOutsideTouchListener(Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideListener:Lcom/google/android/apps/translate/asreditor/ArrowPopup$OnOutsideEventListener;

    .line 206
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .registers 2
    .parameter "outsideTouchable"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mOutsideTouchable:Z

    .line 243
    return-void
.end method

.method public setTypingCancels(Z)V
    .registers 2
    .parameter "cancels"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mTypingCancels:Z

    .line 221
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    .line 202
    return-void
.end method

.method public showAt(Landroid/graphics/Point;)V
    .registers 4
    .parameter "point"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 278
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->mVisible:Z

    .line 281
    return-void
.end method
