.class public Lcom/android/launcher2/FolderIcon;
.super Landroid/widget/LinearLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher2/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;,
        Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final NUM_ITEMS_IN_PREVIEW:I = 0x3

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field private static final PERSPECTIVE_SHIFT_FACTOR:F = 0.24f

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field mFolder:Lcom/android/launcher2/Folder;

.field private mFolderName:Lcom/android/launcher2/BubbleTextView;

.field mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field mInfo:Lcom/android/launcher2/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxPerspectiveShift:F

.field private mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 92
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 93
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 94
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 92
    iput-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    .line 93
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 94
    new-instance v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 98
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    return-object v0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
    .registers 10
    .parameter "d"
    .parameter "duration"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 528
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    .line 530
    .local v0, finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    const/high16 v1, 0x3f80

    .line 531
    .local v1, scale0:F
    iget v5, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 532
    .local v2, transX0:F
    iget v5, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 533
    .local v3, transY0:F
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v5, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 535
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_46

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 536
    .local v4, va:Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/android/launcher2/FolderIcon$3;

    invoke-direct {v5, p0, v2, v0, v3}, Lcom/android/launcher2/FolderIcon$3;-><init>(Lcom/android/launcher2/FolderIcon;FLcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    new-instance v5, Lcom/android/launcher2/FolderIcon$4;

    invoke-direct {v5, p0}, Lcom/android/launcher2/FolderIcon$4;-><init>(Lcom/android/launcher2/FolderIcon;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 557
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 558
    return-void

    .line 535
    nop

    :array_46
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .registers 9
    .parameter "drawableSize"
    .parameter "totalSize"

    .prologue
    .line 393
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    if-ne v4, p1, :cond_8

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    if-eq v4, p2, :cond_4d

    .line 394
    :cond_8
    iput p1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    .line 395
    iput p2, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    .line 397
    sget v2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 398
    .local v2, previewSize:I
    sget v1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 400
    .local v1, previewPadding:I
    mul-int/lit8 v4, v1, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    .line 402
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v5, 0x3fe66666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 404
    .local v0, adjustedAvailableSpace:I
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    const v5, 0x3f9eb852

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 405
    .local v3, unscaledHeight:I
    const/high16 v4, 0x3f80

    int-to-float v5, v0

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    .line 407
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    .line 408
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v4, v4

    const v5, 0x3e75c28f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mMaxPerspectiveShift:F

    .line 410
    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mTotalWidth:I

    iget v5, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    .line 411
    iput v1, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    .line 413
    .end local v0           #adjustedAvailableSpace:I
    .end local v1           #previewPadding:I
    .end local v2           #previewSize:I
    .end local v3           #unscaledHeight:I
    :cond_4d
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "d"

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    .line 417
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    .registers 15
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v11, 0x3f80

    .line 448
    rsub-int/lit8 v0, p1, 0x3

    add-int/lit8 p1, v0, -0x1

    .line 449
    int-to-float v0, p1

    mul-float/2addr v0, v11

    const/high16 v1, 0x4000

    div-float v7, v0, v1

    .line 450
    .local v7, r:F
    const v0, 0x3eb33333

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    sub-float v8, v11, v0

    .line 452
    .local v8, scale:F
    sub-float v0, v11, v7

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mMaxPerspectiveShift:F

    mul-float v6, v0, v1

    .line 453
    .local v6, offset:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v0, v0

    mul-float v10, v8, v0

    .line 454
    .local v10, scaledSize:F
    sub-float v0, v11, v8

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    mul-float v9, v0, v1

    .line 458
    .local v9, scaleOffsetCorrection:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v0, v0

    add-float v1, v6, v10

    add-float/2addr v1, v9

    sub-float v3, v0, v1

    .line 459
    .local v3, transY:F
    add-float v2, v6, v9

    .line 460
    .local v2, transX:F
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mBaselineIconScale:F

    mul-float v4, v0, v8

    .line 461
    .local v4, totalScale:F
    const/high16 v0, 0x42a0

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 463
    .local v5, overlayAlpha:I
    if-nez p2, :cond_44

    .line 464
    new-instance p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .end local p2
    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher2/FolderIcon;FFFI)V

    .line 471
    .restart local p2
    :goto_43
    return-object p2

    .line 466
    :cond_44
    iput v2, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 467
    iput v3, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 468
    iput v4, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 469
    iput v5, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_43
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V
    .registers 8
    .parameter "canvas"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 476
    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 477
    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v2, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 478
    iget-object v0, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 480
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3d

    .line 481
    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 483
    iget v1, p2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 485
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 486
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 488
    :cond_3d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 489
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;
    .registers 11
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"
    .parameter "iconCache"

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 122
    .local v1, icon:Lcom/android/launcher2/FolderIcon;
    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BubbleTextView;

    iput-object v2, v1, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    .line 123
    iget-object v2, v1, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    iget-object v3, p3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/launcher2/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {v1, p3}, Lcom/android/launcher2/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object p3, v1, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 129
    iput-object p1, v1, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 130
    const v2, 0x7f0c0056

    invoke-virtual {p1, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {p1}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 133
    .local v0, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 135
    invoke-virtual {v0, p3}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 136
    iput-object v0, v1, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    .line 138
    new-instance v2, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderIcon;)V

    iput-object v2, v1, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 139
    invoke-virtual {p3, v1}, Lcom/android/launcher2/FolderInfo;->addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V

    .line 141
    return-object v1
.end method

.method private getLocalCenterForIndex(I[I)F
    .registers 9
    .parameter "index"
    .parameter "center"

    .prologue
    const/high16 v5, 0x4000

    .line 434
    const/4 v2, 0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 436
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 437
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mPreviewOffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 438
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 439
    .local v0, offsetX:F
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 441
    .local v1, offsetY:F
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 442
    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 443
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v2
.end method

.method private onDrop(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
    .registers 25
    .parameter "item"
    .parameter "animateView"
    .parameter "finalRect"
    .parameter "scaleRelativeToDragLayer"
    .parameter "index"
    .parameter "postAnimationRunnable"

    .prologue
    .line 325
    const/4 v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 326
    const/4 v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 331
    if-eqz p2, :cond_e5

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 333
    .local v2, dragLayer:Lcom/android/launcher2/DragLayer;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .local v4, from:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 335
    move-object/from16 v5, p3

    .line 336
    .local v5, to:Landroid/graphics/Rect;
    if-nez v5, :cond_75

    .line 337
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #to:Landroid/graphics/Rect;
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 338
    .restart local v5       #to:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    .line 340
    .local v17, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getScaleX()F

    move-result v15

    .line 342
    .local v15, scaleX:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getScaleY()F

    move-result v16

    .line 343
    .local v16, scaleY:F
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/FolderIcon;->setScaleX(F)V

    .line 344
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/FolderIcon;->setScaleY(F)V

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/FolderIcon;->setScaleX(F)V

    .line 348
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->setScaleY(F)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 352
    .end local v15           #scaleX:F
    .end local v16           #scaleY:F
    .end local v17           #workspace:Lcom/android/launcher2/Workspace;
    :cond_75
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 353
    .local v13, center:[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v13}, Lcom/android/launcher2/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v14

    .line 354
    .local v14, scale:F
    const/4 v3, 0x0

    const/4 v7, 0x0

    aget v7, v13, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v13, v3

    .line 355
    const/4 v3, 0x1

    const/4 v7, 0x1

    aget v7, v13, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v13, v3

    .line 357
    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    const/4 v7, 0x1

    aget v7, v13, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v5, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 360
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ge v0, v3, :cond_e3

    const/high16 v6, 0x3f00

    .line 362
    .local v6, finalAlpha:F
    :goto_b8
    mul-float v7, v14, p4

    const/16 v8, 0x190

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v9, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v10, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v12, 0x0

    move-object/from16 v3, p2

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 366
    new-instance v3, Lcom/android/launcher2/FolderIcon$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/FolderIcon$2;-><init>(Lcom/android/launcher2/FolderIcon;Lcom/android/launcher2/ShortcutInfo;)V

    const-wide/16 v7, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v8}, Lcom/android/launcher2/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    .end local v2           #dragLayer:Lcom/android/launcher2/DragLayer;
    .end local v4           #from:Landroid/graphics/Rect;
    .end local v5           #to:Landroid/graphics/Rect;
    .end local v6           #finalAlpha:F
    .end local v13           #center:[I
    .end local v14           #scale:F
    :goto_e2
    return-void

    .line 360
    .restart local v2       #dragLayer:Lcom/android/launcher2/DragLayer;
    .restart local v4       #from:Landroid/graphics/Rect;
    .restart local v5       #to:Landroid/graphics/Rect;
    .restart local v13       #center:[I
    .restart local v14       #scale:F
    :cond_e3
    const/4 v6, 0x0

    goto :goto_b8

    .line 372
    .end local v2           #dragLayer:Lcom/android/launcher2/DragLayer;
    .end local v4           #from:Landroid/graphics/Rect;
    .end local v5           #to:Landroid/graphics/Rect;
    .end local v13           #center:[I
    .end local v14           #scale:F
    :cond_e5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_e2
.end method

.method private willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 268
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 269
    .local v0, itemType:I
    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_1a

    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isFull()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    if-eq p1, v2, :cond_1a

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-boolean v2, v2, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v2, :cond_1a

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .registers 4
    .parameter "dragInfo"

    .prologue
    .line 275
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 276
    .local v0, item:Lcom/android/launcher2/ItemInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result v1

    return v1
.end method

.method public addItem(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 9
    .parameter "item"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 281
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher2/FolderInfo;->id:J

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 282
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 493
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 495
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v5, :cond_a

    .line 524
    :cond_9
    :goto_9
    return-void

    .line 496
    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v5

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_9

    .line 498
    :cond_16
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 503
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_58

    .line 504
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget-object v5, v5, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 511
    :goto_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 512
    .local v3, nItemsInPreview:I
    iget-boolean v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimating:Z

    if-nez v5, :cond_68

    .line 513
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_36
    if-ltz v1, :cond_9

    .line 514
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 515
    .local v4, v:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 517
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v1, v5}, Lcom/android/launcher2/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    .line 518
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput-object v0, v5, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V

    .line 513
    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    .line 506
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #i:I
    .end local v3           #nItemsInPreview:I
    .end local v4           #v:Landroid/widget/TextView;
    :cond_58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 507
    .restart local v4       #v:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 508
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 522
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #v:Landroid/widget/TextView;
    .restart local v3       #nItemsInPreview:I
    :cond_68
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/android/launcher2/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;)V

    goto :goto_9
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .registers 3
    .parameter "d"

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextVisible()Z
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher2/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDropEnabled()Z
    .registers 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 106
    .local v1, cellLayoutChildren:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    .local v0, cellLayout:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    .line 108
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public onAdd(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 579
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->requestLayout()V

    .line 580
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .registers 7
    .parameter "dragInfo"

    .prologue
    .line 285
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 292
    :goto_8
    return-void

    .line 286
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 287
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 288
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 289
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher2/CellLayout;)V

    .line 290
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 291
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    goto :goto_8
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .registers 3
    .parameter "dragInfo"

    .prologue
    .line 319
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIcon;->willAcceptItem(Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 321
    :goto_8
    return-void

    .line 320
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    goto :goto_8
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .registers 2
    .parameter "dragInfo"

    .prologue
    .line 295
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .registers 9
    .parameter "d"

    .prologue
    .line 378
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_27

    .line 380
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationInfo;->makeShortcut()Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 384
    .local v1, item:Lcom/android/launcher2/ShortcutInfo;
    :goto_e
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->notifyDrop()V

    .line 385
    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 386
    return-void

    .line 382
    .end local v1           #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_27
    iget-object v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .restart local v1       #item:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_e
.end method

.method public onItemsChanged()V
    .registers 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->requestLayout()V

    .line 575
    return-void
.end method

.method public onRemove(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->requestLayout()V

    .line 585
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/FolderIcon;->sStaticValuesDirty:Z

    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "title"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 591
    return-void
.end method

.method public performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .registers 16
    .parameter "destInfo"
    .parameter "destView"
    .parameter "srcInfo"
    .parameter "srcView"
    .parameter "dstRect"
    .parameter "scaleRelativeToDragLayer"
    .parameter "postAnimationRunnable"

    .prologue
    const/4 v5, 0x1

    .line 301
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v7, v0, v5

    .line 302
    .local v7, animateDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/FolderIcon;->computePreviewDrawingParams(II)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    .line 305
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 309
    const/16 v0, 0x15e

    invoke-direct {p0, v7, v0}, Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V

    .line 311
    new-instance v0, Lcom/android/launcher2/FolderIcon$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/FolderIcon$1;-><init>(Lcom/android/launcher2/FolderIcon;Lcom/android/launcher2/ShortcutInfo;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    return-void
.end method

.method public setTextVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 561
    if-eqz p1, :cond_9

    .line 562
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BubbleTextView;->setVisibility(I)V

    .line 566
    :goto_8
    return-void

    .line 564
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mFolderName:Lcom/android/launcher2/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BubbleTextView;->setVisibility(I)V

    goto :goto_8
.end method
