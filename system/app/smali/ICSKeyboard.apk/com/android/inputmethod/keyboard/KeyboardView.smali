.class public Lcom/android/inputmethod/keyboard/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;,
        Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;,
        Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;
    }
.end annotation


# static fields
.field private static final KEY_LABEL_REFERENCE_CHAR:[C = null

.field private static final KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C = null

.field private static final LABEL_ICON_MARGIN:F = 0.05f

.field private static final LONG_PRESSABLE_STATE_SET:[I = null

.field private static final MAX_LABEL_RATIO:F = 0.9f

.field private static final POPUP_HINT_CHAR:Ljava/lang/String; = "\u2026"

.field private static final sTextBounds:Landroid/graphics/Rect;

.field private static final sTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextWidthCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mBufferNeedsUpdate:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

.field private mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mInvalidatedKeyRect:Landroid/graphics/Rect;

.field public mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

.field protected final mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

.field private final mKeyPreviewLayoutId:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field protected final mMoreKeysLayout:I

.field private mNeedsToDimBackground:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviewPlacer:Landroid/view/ViewGroup;

.field private mShowKeyPreviewPopup:Z

.field protected final mVerticalCorrection:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    .line 135
    new-array v0, v3, [C

    const/16 v1, 0x4d

    aput-char v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    .line 136
    new-array v0, v3, [C

    const/16 v1, 0x38

    aput-char v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    .line 769
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 351
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 123
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    .line 128
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    .line 358
    sget-object v2, Linputmethod/latin/ported/R$styleable;->KeyboardView:[I

    const v3, 0x7f0f0005

    .line 357
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 360
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-direct {v2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;-><init>(Landroid/content/res/TypedArray;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .line 361
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-direct {v2, v0, v3}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;-><init>(Landroid/content/res/TypedArray;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    .line 362
    const/16 v2, 0x13

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    .line 363
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-nez v2, :cond_4a

    .line 364
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 367
    :cond_4a
    const/16 v2, 0x1d

    .line 366
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mVerticalCorrection:F

    .line 368
    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMoreKeysLayout:I

    .line 369
    const/16 v2, 0x21

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    .line 370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 374
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    .line 375
    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 377
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 379
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/res/TypedArray;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-static {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v0

    return v0
.end method

.method private addKeyPreview(Landroid/widget/TextView;)V
    .registers 6
    .parameter "keyPreview"

    .prologue
    const/4 v3, 0x0

    .line 888
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    if-nez v1, :cond_22

    .line 889
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    .line 891
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 892
    .local v0, windowContentView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 894
    .end local v0           #windowContentView:Landroid/view/ViewGroup;
    :cond_22
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    .line 895
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v3}, Lcom/android/inputmethod/compat/FrameLayoutCompatUtils;->newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    .line 894
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    return-void
.end method

.method private static drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .registers 11
    .parameter "canvas"
    .parameter "y"
    .parameter "w"
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 831
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 832
    const/high16 v0, 0x3f80

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 833
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 835
    return-void
.end method

.method private static drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .registers 9
    .parameter "canvas"
    .parameter "icon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 823
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 824
    invoke-virtual {p1, v2, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 825
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 827
    return-void
.end method

.method private static drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V
    .registers 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "color"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 846
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 847
    const/high16 v0, 0x3f80

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 848
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 849
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p0

    move v2, v1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 850
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 851
    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 852
    return-void
.end method

.method private static drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .registers 11
    .parameter "canvas"
    .parameter "x"
    .parameter "h"
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 838
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 839
    const/high16 v0, 0x3f80

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 840
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 841
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 842
    return-void
.end method

.method private static getCharGeometryCacheKey(CLandroid/graphics/Paint;)I
    .registers 6
    .parameter "reference"
    .parameter "paint"

    .prologue
    .line 772
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-int v2, v3

    .line 773
    .local v2, labelSize:I
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 774
    .local v1, face:Landroid/graphics/Typeface;
    shl-int/lit8 v0, p0, 0xf

    .line 775
    .local v0, codePointOffset:I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_12

    .line 776
    add-int v3, v0, v2

    .line 782
    :goto_11
    return v3

    .line 777
    :cond_12
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_1b

    .line 778
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x1000

    goto :goto_11

    .line 779
    :cond_1b
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_24

    .line 780
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x2000

    goto :goto_11

    .line 782
    :cond_24
    add-int v3, v0, v2

    goto :goto_11
.end method

.method private static getCharHeight([CLandroid/graphics/Paint;)F
    .registers 8
    .parameter "character"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 787
    aget-char v3, p0, v5

    invoke-static {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 788
    .local v2, key:Ljava/lang/Integer;
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 789
    .local v0, cachedValue:Ljava/lang/Float;
    if-eqz v0, :cond_1a

    .line 790
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 795
    :goto_19
    return v1

    .line 792
    :cond_1a
    const/4 v3, 0x1

    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 793
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v1, v3

    .line 794
    .local v1, height:F
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private static getCharWidth([CLandroid/graphics/Paint;)F
    .registers 8
    .parameter "character"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 799
    aget-char v3, p0, v5

    invoke-static {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 800
    .local v1, key:Ljava/lang/Integer;
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 801
    .local v0, cachedValue:Ljava/lang/Float;
    if-eqz v0, :cond_1a

    .line 802
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 807
    :goto_19
    return v2

    .line 804
    :cond_1a
    const/4 v3, 0x1

    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 805
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v2, v3

    .line 806
    .local v2, width:F
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private static getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F
    .registers 6
    .parameter "label"
    .parameter "paint"

    .prologue
    .line 811
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 812
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private static getRatio(Landroid/content/res/TypedArray;I)F
    .registers 4
    .parameter "a"
    .parameter "index"

    .prologue
    const/16 v1, 0x3e8

    .line 384
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method private onBufferDraw()V
    .registers 18

    .prologue
    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v16

    .line 468
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v13

    .line 470
    .local v13, height:I
    if-eqz v16, :cond_c

    if-nez v13, :cond_d

    .line 519
    :cond_c
    :goto_c
    return-void

    .line 472
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v13, :cond_5e

    .line 473
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_36

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    :cond_36
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v4, v7, v0, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_105

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    :cond_5e
    :goto_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 484
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 485
    const/high16 v2, -0x100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v2, :cond_c

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v6

    .line 490
    .local v6, isManualTemporaryUpperCase:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .line 491
    .local v5, params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v2, :cond_114

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Key;->mX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    iget v4, v4, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int/2addr v2, v4

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v4

    .line 493
    add-int v14, v2, v4

    .line 495
    .local v14, keyDrawX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int v15, v2, v4

    .line 496
    .local v15, keyDrawY:I
    int-to-float v2, v14

    int-to-float v4, v15

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 497
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDrawKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;Z)V

    .line 499
    neg-int v2, v14

    int-to-float v2, v2

    neg-int v4, v15

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    .end local v14           #keyDrawX:I
    .end local v15           #keyDrawY:I
    :cond_d2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    if-eqz v2, :cond_f7

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v7, 0x437f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v16

    int-to-float v10, v0

    int-to-float v11, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 517
    :cond_f7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_c

    .line 480
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .end local v6           #isManualTemporaryUpperCase:Z
    :cond_105
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5e

    .line 502
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v5       #params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .restart local v6       #isManualTemporaryUpperCase:Z
    :cond_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 503
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v4, v1, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int v14, v2, v4

    .line 504
    .restart local v14       #keyDrawX:I
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int v15, v2, v4

    .line 505
    .restart local v15       #keyDrawY:I
    int-to-float v2, v14

    int-to-float v4, v15

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDrawKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;Z)V

    .line 507
    neg-int v2, v14

    int-to-float v2, v2

    neg-int v4, v15

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_11e
.end method

.method private static onBufferDrawKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;Z)V
    .registers 55
    .parameter "key"
    .parameter "keyboard"
    .parameter "canvas"
    .parameter "paint"
    .parameter "params"
    .parameter "isManualTemporaryUpperCase"

    .prologue
    .line 531
    sget-boolean v39, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    .line 533
    .local v39, debugShowAlign:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v4

    if-nez v4, :cond_c6

    .line 534
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int/2addr v4, v6

    .line 535
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 534
    add-int/2addr v4, v6

    .line 535
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 534
    add-int v33, v4, v6

    .line 536
    .local v33, bgWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v32, v4, v6

    .line 537
    .local v32, bgHeight:I
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v0, v4

    move/from16 v34, v0

    .line 538
    .local v34, bgX:I
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v0, v4

    move/from16 v35, v0

    .line 541
    .local v35, bgY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v40

    .line 542
    .local v40, drawableState:[I
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    .line 544
    .local v31, background:Landroid/graphics/drawable/Drawable;
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    if-eqz v4, :cond_6b

    .line 546
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mBackgroundType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_379

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundFunctional:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_379

    .line 548
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundFunctional:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    .line 555
    :cond_6b
    :goto_6b
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 556
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v36

    .line 557
    .local v36, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v33

    if-ne v0, v4, :cond_86

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v32

    if-eq v0, v4, :cond_91

    .line 558
    :cond_86
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    :cond_91
    move/from16 v0, v34

    int-to-float v4, v0

    move/from16 v0, v35

    int-to-float v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 561
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    if-eqz v39, :cond_b9

    .line 563
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v33

    int-to-float v7, v0

    move/from16 v0, v32

    int-to-float v8, v0

    const/high16 v9, -0x7f40

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 565
    :cond_b9
    move/from16 v0, v34

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v35

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    .end local v31           #background:Landroid/graphics/drawable/Drawable;
    .end local v32           #bgHeight:I
    .end local v33           #bgWidth:I
    .end local v34           #bgX:I
    .end local v35           #bgY:I
    .end local v36           #bounds:Landroid/graphics/Rect;
    .end local v40           #drawableState:[I
    :cond_c6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int v44, v4, v6

    .line 570
    .local v44, keyWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v43, v0

    .line 571
    .local v43, keyHeight:I
    move/from16 v0, v44

    int-to-float v4, v0

    const/high16 v6, 0x3f00

    mul-float v37, v4, v6

    .line 572
    .local v37, centerX:F
    move/from16 v0, v43

    int-to-float v4, v0

    const/high16 v6, 0x3f00

    mul-float v38, v4, v6

    .line 574
    .local v38, centerY:F
    if-eqz v39, :cond_100

    .line 575
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v44

    int-to-float v7, v0

    move/from16 v0, v43

    int-to-float v8, v0

    const v9, -0x7fffff40

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 579
    :cond_100
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 580
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    move/from16 v8, v37

    .line 581
    .local v8, positionX:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_210

    .line 583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 585
    .local v5, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/Key;->selectTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 586
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    .line 587
    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterSize:I

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    .line 586
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/inputmethod/keyboard/Key;->selectTextSize(IIII)I

    move-result v47

    .line 588
    .local v47, labelSize:I
    move/from16 v0, v47

    int-to-float v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 589
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v45

    .line 590
    .local v45, labelCharHeight:F
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v46

    .line 593
    .local v46, labelCharWidth:F
    const/high16 v4, 0x4000

    div-float v4, v45, v4

    add-float v9, v38, v4

    .line 596
    .local v9, baseline:F
    const/16 v48, 0x0

    .line 597
    .local v48, labelWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v4

    if-eqz v4, :cond_387

    .line 598
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    int-to-float v8, v4

    .line 599
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 621
    :goto_16e
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->needsXScale()Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 623
    const/high16 v4, 0x3f80

    move/from16 v0, v44

    int-to-float v6, v0

    const v7, 0x3f666666

    mul-float/2addr v6, v7

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 622
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 626
    :cond_18d
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_419

    if-eqz p5, :cond_419

    .line 627
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    :goto_19e
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_424

    .line 633
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowRadius:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 638
    :goto_1b3
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 640
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 641
    const/high16 v4, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 643
    if-eqz v11, :cond_1ef

    .line 644
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 645
    .local v14, iconWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 646
    .local v15, iconHeight:I
    sub-int v4, v43, v15

    div-int/lit8 v13, v4, 0x2

    .line 647
    .local v13, iconY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v4

    if-eqz v4, :cond_42c

    .line 648
    const/high16 v4, 0x4000

    div-float v4, v48, v4

    sub-float v4, v37, v4

    float-to-int v12, v4

    .local v12, iconX:I
    move-object/from16 v10, p2

    .line 649
    invoke-static/range {v10 .. v15}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 656
    .end local v12           #iconX:I
    .end local v13           #iconY:I
    .end local v14           #iconWidth:I
    .end local v15           #iconHeight:I
    :cond_1ef
    :goto_1ef
    if-eqz v39, :cond_210

    .line 657
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 658
    .local v28, line:Landroid/graphics/Paint;
    move/from16 v0, v44

    int-to-float v4, v0

    const v6, -0x3fff8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v9, v4, v6, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 659
    move/from16 v0, v43

    int-to-float v4, v0

    const v6, -0x3f7fff80

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v8, v4, v6, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 664
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v9           #baseline:F
    .end local v28           #line:Landroid/graphics/Paint;
    .end local v45           #labelCharHeight:F
    .end local v46           #labelCharWidth:F
    .end local v47           #labelSize:I
    .end local v48           #labelWidth:F
    :cond_210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2a1

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 668
    .local v17, hint:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v4

    if-eqz v4, :cond_442

    .line 669
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    move/from16 v41, v0

    .line 670
    .local v41, hintColor:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    move/from16 v42, v0

    .line 671
    .local v42, hintSize:I
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 685
    :cond_235
    :goto_235
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 686
    move/from16 v0, v42

    int-to-float v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v4

    if-eqz v4, :cond_477

    .line 692
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v4

    const/high16 v6, 0x4000

    mul-float/2addr v4, v6

    add-float v20, v8, v4

    .line 693
    .local v20, hintX:F
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v4

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float v21, v38, v4

    .line 694
    .local v21, hintY:F
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 716
    :goto_26b
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v16, p2

    move-object/from16 v22, p3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 718
    if-eqz v39, :cond_2a1

    .line 719
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 720
    .restart local v28       #line:Landroid/graphics/Paint;
    move/from16 v0, v21

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v44

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 721
    move/from16 v0, v20

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v43

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 726
    .end local v17           #hint:Ljava/lang/CharSequence;
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    .end local v28           #line:Landroid/graphics/Paint;
    .end local v41           #hintColor:I
    .end local v42           #hintSize:I
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_2f1

    if-eqz v11, :cond_2f1

    .line 727
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 728
    .restart local v14       #iconWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 730
    .restart local v15       #iconHeight:I
    sub-int v4, v43, v15

    div-int/lit8 v13, v4, 0x2

    .line 731
    .restart local v13       #iconY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v4

    if-eqz v4, :cond_4df

    .line 732
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v12, v4

    .line 733
    .restart local v12       #iconX:I
    move/from16 v30, v12

    .local v30, alignX:I
    :goto_2c2
    move-object/from16 v10, p2

    .line 741
    invoke-static/range {v10 .. v15}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 743
    if-eqz v39, :cond_2f1

    .line 744
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 745
    .restart local v28       #line:Landroid/graphics/Paint;
    move/from16 v0, v30

    int-to-float v4, v0

    move/from16 v0, v43

    int-to-float v6, v0

    const v7, -0x3f7fff80

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 746
    int-to-float v0, v12

    move/from16 v23, v0

    int-to-float v0, v13

    move/from16 v24, v0

    int-to-float v0, v14

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    const/high16 v27, -0x7f40

    move-object/from16 v22, p2

    invoke-static/range {v22 .. v28}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 751
    .end local v12           #iconX:I
    .end local v13           #iconY:I
    .end local v14           #iconWidth:I
    .end local v15           #iconHeight:I
    .end local v28           #line:Landroid/graphics/Paint;
    .end local v30           #alignX:I
    :cond_2f1
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasPopupHint()Z

    move-result v4

    if-eqz v4, :cond_304

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_304

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-gtz v4, :cond_30a

    .line 752
    :cond_304
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->needsSpecialPopupHint()Z

    move-result v4

    if-eqz v4, :cond_378

    .line 753
    :cond_30a
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 754
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 756
    move/from16 v0, v44

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    sub-float/2addr v4, v6

    .line 757
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    .line 756
    sub-float v20, v4, v6

    .line 758
    .restart local v20       #hintX:F
    move/from16 v0, v43

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyPopupHintLetterPadding:F

    sub-float v21, v4, v6

    .line 759
    .restart local v21       #hintY:F
    const-string v4, "\u2026"

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 761
    if-eqz v39, :cond_378

    .line 762
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 763
    .restart local v28       #line:Landroid/graphics/Paint;
    move/from16 v0, v21

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v44

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 764
    move/from16 v0, v20

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v43

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 767
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    .end local v28           #line:Landroid/graphics/Paint;
    :cond_378
    return-void

    .line 550
    .end local v8           #positionX:F
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v37           #centerX:F
    .end local v38           #centerY:F
    .end local v43           #keyHeight:I
    .end local v44           #keyWidth:I
    .restart local v31       #background:Landroid/graphics/drawable/Drawable;
    .restart local v32       #bgHeight:I
    .restart local v33       #bgWidth:I
    .restart local v34       #bgX:I
    .restart local v35       #bgY:I
    .restart local v40       #drawableState:[I
    :cond_379
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundExternal:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6b

    .line 552
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackgroundExternal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    goto/16 :goto_6b

    .line 600
    .end local v31           #background:Landroid/graphics/drawable/Drawable;
    .end local v32           #bgHeight:I
    .end local v33           #bgWidth:I
    .end local v34           #bgX:I
    .end local v35           #bgY:I
    .end local v40           #drawableState:[I
    .restart local v5       #label:Ljava/lang/CharSequence;
    .restart local v8       #positionX:F
    .restart local v9       #baseline:F
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v37       #centerX:F
    .restart local v38       #centerY:F
    .restart local v43       #keyHeight:I
    .restart local v44       #keyWidth:I
    .restart local v45       #labelCharHeight:F
    .restart local v46       #labelCharWidth:F
    .restart local v47       #labelSize:I
    .restart local v48       #labelWidth:F
    :cond_387
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v4

    if-eqz v4, :cond_39e

    .line 601
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    sub-int v4, v44, v4

    int-to-float v8, v4

    .line 602
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_16e

    .line 603
    :cond_39e
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeftOfCenter()Z

    move-result v4

    if-eqz v4, :cond_3b6

    .line 605
    const/high16 v4, 0x40e0

    mul-float v4, v4, v46

    const/high16 v6, 0x4080

    div-float/2addr v4, v6

    sub-float v8, v37, v4

    .line 606
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_16e

    .line 607
    :cond_3b6
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v4

    if-eqz v4, :cond_3e2

    if-eqz v11, :cond_3e2

    .line 608
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 609
    const v6, 0x3d4ccccd

    move/from16 v0, v44

    int-to-float v7, v0

    mul-float/2addr v6, v7

    .line 608
    add-float v48, v4, v6

    .line 610
    const/high16 v4, 0x4000

    div-float v4, v48, v4

    add-float v8, v37, v4

    .line 611
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_16e

    .line 612
    :cond_3e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v4

    if-eqz v4, :cond_40e

    if-eqz v11, :cond_40e

    .line 613
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 614
    const v6, 0x3d4ccccd

    move/from16 v0, v44

    int-to-float v7, v0

    mul-float/2addr v6, v7

    .line 613
    add-float v48, v4, v6

    .line 615
    const/high16 v4, 0x4000

    div-float v4, v48, v4

    sub-float v8, v37, v4

    .line 616
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_16e

    .line 618
    :cond_40e
    move/from16 v8, v37

    .line 619
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_16e

    .line 629
    :cond_419
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_19e

    .line 636
    :cond_424
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1b3

    .line 650
    .restart local v13       #iconY:I
    .restart local v14       #iconWidth:I
    .restart local v15       #iconHeight:I
    :cond_42c
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 651
    const/high16 v4, 0x4000

    div-float v4, v48, v4

    add-float v4, v4, v37

    int-to-float v6, v14

    sub-float/2addr v4, v6

    float-to-int v12, v4

    .restart local v12       #iconX:I
    move-object/from16 v10, p2

    .line 652
    invoke-static/range {v10 .. v15}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_1ef

    .line 672
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v9           #baseline:F
    .end local v12           #iconX:I
    .end local v13           #iconY:I
    .end local v14           #iconWidth:I
    .end local v15           #iconHeight:I
    .end local v45           #labelCharHeight:F
    .end local v46           #labelCharWidth:F
    .end local v47           #labelSize:I
    .end local v48           #labelWidth:F
    .restart local v17       #hint:Ljava/lang/CharSequence;
    :cond_442
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_45f

    .line 673
    if-eqz p5, :cond_458

    .line 674
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterActivatedColor:I

    move/from16 v41, v0

    .line 676
    .restart local v41       #hintColor:I
    :goto_450
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterSize:I

    move/from16 v42, v0

    .restart local v42       #hintSize:I
    goto/16 :goto_235

    .line 675
    .end local v41           #hintColor:I
    .end local v42           #hintSize:I
    :cond_458
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterInactivatedColor:I

    move/from16 v41, v0

    goto :goto_450

    .line 678
    :cond_45f
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    move/from16 v41, v0

    .line 679
    .restart local v41       #hintColor:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    move/from16 v42, v0

    .line 680
    .restart local v42       #hintSize:I
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    if-eqz v4, :cond_235

    .line 682
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    move/from16 v41, v0

    goto/16 :goto_235

    .line 695
    :cond_477
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_4a2

    .line 697
    move/from16 v0, v44

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    sub-float/2addr v4, v6

    .line 698
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    .line 697
    sub-float v20, v4, v6

    .line 699
    .restart local v20       #hintX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v0, v4

    move/from16 v21, v0

    .line 700
    .restart local v21       #hintY:F
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_26b

    .line 702
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    :cond_4a2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    move/from16 v29, v0

    .line 703
    .local v29, KeyHintLetterPadding:F
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    if-eqz v4, :cond_4b0

    .line 704
    const/high16 v4, 0x4040

    mul-float v29, v29, v4

    .line 706
    :cond_4b0
    move/from16 v0, v44

    int-to-float v4, v0

    sub-float v4, v4, v29

    .line 707
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    .line 706
    sub-float v20, v4, v6

    .line 708
    .restart local v20       #hintX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v0, v4

    move/from16 v21, v0

    .line 710
    .restart local v21       #hintY:F
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mUseExternalSkin:Z

    if-eqz v4, :cond_4d6

    .line 712
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    const/high16 v6, 0x4000

    mul-float/2addr v4, v6

    add-float v21, v21, v4

    .line 714
    :cond_4d6
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_26b

    .line 734
    .end local v17           #hint:Ljava/lang/CharSequence;
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    .end local v29           #KeyHintLetterPadding:F
    .end local v41           #hintColor:I
    .end local v42           #hintSize:I
    .restart local v13       #iconY:I
    .restart local v14       #iconWidth:I
    .restart local v15       #iconHeight:I
    :cond_4df
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v4

    if-eqz v4, :cond_4f2

    .line 735
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    sub-int v4, v44, v4

    sub-int v12, v4, v14

    .line 736
    .restart local v12       #iconX:I
    add-int v30, v12, v14

    .restart local v30       #alignX:I
    goto/16 :goto_2c2

    .line 738
    .end local v12           #iconX:I
    .end local v30           #alignX:I
    :cond_4f2
    sub-int v4, v44, v14

    div-int/lit8 v12, v4, 0x2

    .line 739
    .restart local v12       #iconX:I
    div-int/lit8 v4, v14, 0x2

    add-int v30, v12, v4

    .restart local v30       #alignX:I
    goto/16 :goto_2c2
.end method

.method private showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 19
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 899
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v8

    .line 902
    .local v8, previewText:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_f

    .line 903
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/inputmethod/keyboard/KeyboardView;->addKeyPreview(Landroid/widget/TextView;)V

    .line 906
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelDismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 907
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    .line 911
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v2, :cond_23

    .line 961
    :goto_22
    return-void

    .line 914
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    .line 915
    .local v5, params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;
    iget v12, v2, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v13, v2, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int v4, v12, v13

    .line 916
    .local v4, keyDrawX:I
    iget v12, v2, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v13, v2, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v12, v13

    iget v13, v2, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int v3, v12, v13

    .line 918
    .local v3, keyDrawWidth:I
    iget-object v12, v2, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v12, :cond_d6

    .line 920
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 921
    iget-object v12, v2, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_c9

    .line 922
    const/4 v12, 0x0

    iget v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 923
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 928
    :goto_56
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v13, v2, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Lcom/android/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    :goto_63
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    const/4 v12, -0x2

    const/4 v13, -0x2

    .line 937
    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 939
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    .line 940
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    .line 939
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 941
    .local v9, previewWidth:I
    iget v6, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewHeight:I

    .line 942
    .local v6, previewHeight:I
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 943
    sub-int v12, v9, v3

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v4, v12

    iget-object v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v10, v12, v13

    .line 944
    .local v10, previewX:I
    iget v12, v2, Lcom/android/inputmethod/keyboard/Key;->mY:I

    sub-int/2addr v12, v6

    .line 945
    iget-object v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    .line 944
    add-int/2addr v12, v13

    .line 945
    iget v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewOffset:I

    .line 944
    add-int v11, v12, v13

    .line 946
    .local v11, previewY:I
    if-gez v10, :cond_ed

    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_ed

    .line 947
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    const/4 v10, 0x0

    .line 955
    :cond_ae
    :goto_ae
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 956
    iget-object v12, v2, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v12, :cond_105

    sget-object v12, Lcom/android/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 955
    :goto_b8
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 957
    iget v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextColor:I

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 958
    invoke-static {v8, v10, v11, v9, v6}, Lcom/android/inputmethod/compat/FrameLayoutCompatUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 960
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_22

    .line 925
    .end local v6           #previewHeight:I
    .end local v9           #previewWidth:I
    .end local v10           #previewX:I
    .end local v11           #previewY:I
    :cond_c9
    const/4 v12, 0x0

    iget v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 926
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_56

    .line 930
    :cond_d6
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 931
    .local v7, previewIcon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 932
    if-eqz v7, :cond_e8

    .line 931
    .end local v7           #previewIcon:Landroid/graphics/drawable/Drawable;
    :goto_df
    invoke-virtual {v8, v12, v13, v14, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 933
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_63

    .line 932
    .restart local v7       #previewIcon:Landroid/graphics/drawable/Drawable;
    :cond_e8
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_df

    .line 949
    .end local v7           #previewIcon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #previewHeight:I
    .restart local v9       #previewWidth:I
    .restart local v10       #previewX:I
    .restart local v11       #previewY:I
    :cond_ed
    add-int v12, v10, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v13

    if-le v12, v13, :cond_ae

    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_ae

    .line 950
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v12

    sub-int v10, v12, v9

    goto :goto_ae

    .line 956
    :cond_105
    sget-object v12, Lcom/android/inputmethod/keyboard/KeyboardView;->EMPTY_STATE_SET:[I

    goto :goto_b8
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllMessages()V

    .line 856
    return-void
.end method

.method public cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 879
    return-void
.end method

.method public closing()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 996
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews()V

    .line 997
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 999
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 1001
    return-void
.end method

.method public dimEntireKeyboard(Z)V
    .registers 4
    .parameter "dimmed"

    .prologue
    .line 522
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    xor-int v0, v1, p1

    .line 523
    .local v0, needsRedrawing:Z
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    .line 524
    if-eqz v0, :cond_b

    .line 525
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 527
    :cond_b
    return-void
.end method

.method public dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .parameter "tracker"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 884
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->dismissKeyPreview(JLcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 885
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F
    .registers 4
    .parameter "label"
    .parameter "paint"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 817
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 818
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v0

    return v0
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public inflateKeyPreviewText()Landroid/widget/TextView;
    .registers 5

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 862
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-eqz v1, :cond_16

    .line 863
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 865
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_15
.end method

.method public invalidateAllKeys()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 970
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 972
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidate()V

    .line 973
    return-void
.end method

.method public invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 984
    if-nez p1, :cond_3

    .line 993
    :goto_2
    return-void

    .line 986
    :cond_3
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    .line 987
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 988
    .local v0, x:I
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int v1, v2, v3

    .line 989
    .local v1, y:I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v3, v0

    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 990
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 991
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 992
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method public isKeyPreviewPopupEnabled()Z
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1015
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1017
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 1018
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1020
    :cond_f
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 1021
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1024
    :cond_1b
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 459
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 460
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 461
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDraw()V

    .line 463
    :cond_1a
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 464
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v2, :cond_26

    .line 446
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 447
    .local v0, height:I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 449
    .local v1, width:I
    invoke-virtual {p0, v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setMeasuredDimension(II)V

    .line 453
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_25
    return-void

    .line 451
    :cond_26
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_25
.end method

.method public purgeKeyboardAndClosing()V
    .registers 2

    .prologue
    .line 1009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 1010
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 1011
    return-void
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 3
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 429
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 430
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 7
    .parameter "keyboard"

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllShowKeyPreviews()V

    .line 397
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_d

    .line 398
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews()V

    .line 400
    :cond_d
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 401
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 403
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 406
    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v0, v1, v2

    .line 407
    .local v0, keyHeight:I
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->updateKeyHeight(I)V

    .line 408
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->updateKeyHeight(I)V

    .line 409
    return-void
.end method

.method public showKeyPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 6
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    if-eqz v0, :cond_c

    .line 872
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->showKeyPreview(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 874
    :cond_c
    return-void
.end method
