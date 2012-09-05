.class public Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
.super Landroid/view/View;
.source "GLFastScrollIndexView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;,
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;,
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;
    }
.end annotation


# instance fields
.field private mAllowWiggle:Z

.field private mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mAlphaAnimDuration:I

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mCellHeight:F

.field private mCurrentIndex:I

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mFirstCharPreMatches:Z

.field private mIndexStr:Ljava/lang/String;

.field private mNormalAlpha:F

.field private mOverflowGrpSepChar:C

.field private mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

.field private mPressDelay:I

.field private mSelTextColor:I

.field private mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mTextColor:I

.field private mTextMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextUppercase:Z

.field private mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

.field private mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

.field private mTouchAlpha:F

.field private mUnpressDelay:I

.field private mWorkingStr:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    .line 44
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 45
    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    .line 46
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    .line 50
    new-instance v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    .line 51
    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/high16 v5, -0x4080

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    .line 39
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    .line 40
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 41
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    .line 42
    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/16 v5, 0xc8

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v5, 0x1f4

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    .line 44
    new-instance v5, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 45
    const/16 v5, 0x2e

    iput-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    .line 46
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    .line 47
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    .line 49
    new-instance v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    .line 50
    new-instance v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    .line 51
    new-instance v5, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 52
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 63
    sget-object v5, Lcom/sec/android/app/twlauncher/R$styleable;->GLFastScrollIndexView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v5, 0x8

    const/16 v6, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    .line 66
    const/16 v5, 0x9

    const/16 v6, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    .line 67
    const/16 v5, 0xa

    const/16 v6, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    .line 68
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    .line 69
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    .line 70
    const/high16 v5, -0x4080

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    .line 72
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    .line 73
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    .line 75
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, temp:Ljava/lang/String;
    if-eqz v2, :cond_be

    .line 77
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    .line 79
    :cond_be
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextColor:I

    .line 81
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSelTextColor:I

    .line 82
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, typeFace:Ljava/lang/String;
    if-nez v3, :cond_dd

    .line 84
    const-string v3, "default"

    .line 86
    :cond_dd
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 87
    .local v4, typeFaceStyle:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 89
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x3

    const/high16 v7, 0x4120

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 91
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 93
    new-array v1, v9, [C

    .line 94
    .local v1, ch:[C
    iget-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    aput-char v5, v1, v8

    .line 95
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    array-length v6, v1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v8, v6, v7}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 96
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method private compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z
    .registers 13
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aDrawBounds"
    .parameter "aTouchPt"
    .parameter "aAllowWiggle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCharsWouldFit(F)I

    move-result v2

    .line 345
    .local v2, charsWouldFit:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_15

    if-eqz p5, :cond_15

    .line 349
    add-int/lit8 v2, v2, -0x1

    .line 351
    :cond_15
    if-ge v2, v5, :cond_18

    .line 373
    :cond_17
    :goto_17
    return v4

    .line 354
    :cond_18
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 355
    invoke-direct {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v0

    .line 359
    .local v0, cellHt:F
    const/high16 v6, 0x4000

    div-float v1, v0, v6

    .line 363
    .local v1, cellHtHalf:F
    iget v6, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    iput v6, p4, Landroid/graphics/PointF;->y:F

    .line 364
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-direct {p0, v6, v2, p3, p4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 368
    invoke-direct {p0, p3, p4, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v3

    .line 369
    .local v3, touchIndex:I
    if-eqz p5, :cond_53

    const/4 v4, -0x1

    if-eq v3, v4, :cond_53

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v4, v6, :cond_53

    .line 370
    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->top:F

    .line 371
    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->bottom:F

    :cond_53
    move v4, v5

    .line 373
    goto :goto_17
.end method

.method private computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .registers 18
    .parameter "aLength"
    .parameter "aCapacity"
    .parameter "aBounds"
    .parameter "aTouchPt"

    .prologue
    .line 292
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 293
    .local v7, padding:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getHeight()I

    move-result v9

    int-to-float v5, v9

    .line 294
    .local v5, ht:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v2

    .line 295
    .local v2, cellHt:F
    int-to-float v9, p1

    mul-float v4, v9, v2

    .line 296
    .local v4, fitHt:F
    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v9, v10

    .line 297
    .local v6, padHt:F
    sub-float v1, v5, v6

    .line 299
    .local v1, availHt:F
    iget v9, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->left:F

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->right:F

    .line 302
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5a

    .line 303
    const/4 v9, 0x0

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 304
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 327
    :goto_58
    const/4 v9, 0x1

    return v9

    .line 307
    :cond_5a
    iget v9, v7, Landroid/graphics/RectF;->top:F

    add-float v8, v9, v1

    .line 308
    .local v8, unpaddedBottom:F
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_76

    .line 309
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 310
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    goto :goto_58

    .line 313
    :cond_76
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCharsWouldFit(F)I

    move-result v3

    .line 314
    .local v3, charsWouldFitFromY:I
    if-gt p1, v3, :cond_96

    .line 315
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 316
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_58

    .line 319
    :cond_96
    if-lez v3, :cond_b2

    .line 320
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 321
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    goto :goto_58

    .line 324
    :cond_b2
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 325
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    goto :goto_58
.end method

.method private computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z
    .registers 15
    .parameter "aIndexStr"
    .parameter "aWorkingStr"
    .parameter "aCapacity"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 226
    move v6, p3

    .line 227
    .local v6, numWouldFit:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v6, :cond_d

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    :goto_c
    return v8

    .line 231
    :cond_d
    const/4 v4, 0x3

    .line 232
    .local v4, minNeeded:I
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v10, :cond_14

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 235
    :cond_14
    if-ge v6, v4, :cond_18

    move v8, v9

    .line 236
    goto :goto_c

    .line 238
    :cond_18
    const/4 v7, 0x0

    .local v7, startIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 239
    .local v3, len:I
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v10, :cond_2c

    .line 240
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v7, v7, 0x1

    .line 242
    add-int/lit8 v6, v6, -0x1

    .line 244
    :cond_2c
    int-to-float v9, v6

    const/high16 v10, 0x4040

    div-float/2addr v9, v10

    float-to-int v5, v9

    .line 245
    .local v5, numPossibleGrps:I
    sub-int v9, v3, v7

    int-to-float v9, v9

    int-to-float v10, v5

    div-float/2addr v9, v10

    float-to-int v0, v9

    .line 250
    .local v0, charsPerGrp:I
    add-int/lit8 v1, v5, -0x2

    .local v1, i:I
    move v2, v7

    .local v2, index:I
    :goto_3a
    if-ltz v1, :cond_57

    .line 251
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    iget-char v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    add-int/lit8 v9, v0, -0x1

    add-int/2addr v2, v9

    .line 254
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 250
    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    .line 260
    :cond_57
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    iget-char v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c
.end method

.method private getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I
    .registers 10
    .parameter "aBounds"
    .parameter "aPt"
    .parameter "aWorkingStr"

    .prologue
    .line 275
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 276
    .local v1, len:I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_9

    .line 277
    const/4 v0, -0x1

    .line 288
    :cond_8
    :goto_8
    return v0

    .line 279
    :cond_9
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 280
    .local v3, top:F
    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v3

    .line 281
    .local v2, relY:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v4

    div-float v4, v2, v4

    float-to-int v0, v4

    .line 282
    .local v0, index:I
    if-gez v0, :cond_21

    .line 283
    const/4 v0, 0x0

    goto :goto_8

    .line 285
    :cond_21
    if-lt v0, v1, :cond_8

    .line 286
    add-int/lit8 v0, v1, -0x1

    goto :goto_8
.end method

.method private getCharsWouldFit(F)I
    .registers 7
    .parameter "aYOffset"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 332
    .local v0, availHt:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v1

    .line 333
    .local v1, cellHt:F
    div-float v3, v0, v1

    float-to-int v2, v3

    .line 334
    .local v2, charsWouldFit:I
    return v2
.end method

.method private setReloadRequired()V
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_c

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 506
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 508
    :cond_c
    return-void
.end method


# virtual methods
.method public Contains(Landroid/graphics/PointF;)Z
    .registers 7
    .parameter "aPt"

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 173
    .local v0, bounds:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public clearCurrentChar()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 158
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 389
    const/4 v6, 0x0

    .line 390
    .local v6, mustRedraw:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 393
    const/4 v6, 0x1

    .line 401
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 403
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 404
    return v6

    .line 395
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 396
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    goto :goto_17

    .line 398
    :cond_41
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    goto :goto_17
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 182
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 184
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v5

    invoke-direct {v13, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    .local v13, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_27

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_39

    .line 218
    :cond_38
    return-void

    .line 194
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v10

    .local v10, cellHt:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v15, v1, v3

    .line 195
    .local v15, txtHt:F
    sub-float v1, v10, v15

    const/high16 v3, 0x4000

    div-float v9, v1, v3

    .line 196
    .local v9, bottomGap:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    .line 197
    .local v12, len:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getWidth()I

    move-result v1

    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v0, v1

    move/from16 v16, v0

    .line 198
    .local v16, width:F
    new-instance v14, Landroid/graphics/PointF;

    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float v3, v16, v3

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-direct {v14, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 199
    .local v14, pos:Landroid/graphics/PointF;
    const/4 v1, 0x1

    new-array v2, v1, [C

    .line 200
    .local v2, ch:[C
    const/4 v11, 0x0

    .local v11, i:I
    :goto_84
    if-ge v11, v12, :cond_38

    .line 201
    iget v1, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v10

    iput v1, v14, Landroid/graphics/PointF;->y:F

    .line 202
    iget v1, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v9

    sub-float v6, v1, v3

    .line 203
    .local v6, drawY:F
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    .line 204
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    if-eqz v1, :cond_b1

    .line 205
    const/4 v1, 0x0

    const/4 v3, 0x0

    aget-char v3, v2, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v2, v1

    .line 207
    :cond_b1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-ne v11, v1, :cond_eb

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSelTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 212
    :goto_c8
    const/4 v1, 0x0

    aget-char v1, v2, v1

    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v1, v3, :cond_db

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 214
    .local v8, bndsHt:I
    int-to-float v1, v8

    sub-float/2addr v6, v1

    .line 216
    .end local v8           #bndsHt:I
    :cond_db
    const/4 v3, 0x0

    array-length v4, v2

    iget v5, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 200
    add-int/lit8 v11, v11, 0x1

    goto :goto_84

    .line 210
    :cond_eb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_c8
.end method

.method public feedPt(Landroid/graphics/PointF;)I
    .registers 7
    .parameter "aPt"

    .prologue
    const/4 v2, 0x3

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-direct {p0, v3, p1, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 137
    .local v1, charIndex:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    .line 138
    const/4 v2, 0x4

    .line 152
    :cond_d
    :goto_d
    return v2

    .line 140
    :cond_e
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-eq v1, v3, :cond_d

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 144
    .local v0, ch:C
    iget-char v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-eq v0, v3, :cond_d

    .line 147
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 149
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-nez v2, :cond_2b

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v2, :cond_2b

    .line 150
    const/4 v2, 0x2

    goto :goto_d

    .line 152
    :cond_2b
    const/4 v2, 0x1

    goto :goto_d
.end method

.method public getCellHeight()F
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    .line 132
    :goto_12
    return v0

    :cond_13
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    goto :goto_12
.end method

.method public getCurrentChar()Ljava/lang/Character;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 161
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v2, v3, :cond_10

    .line 168
    :cond_f
    :goto_f
    return-object v1

    .line 164
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 165
    .local v0, ch:C
    iget-char v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-eq v0, v2, :cond_f

    .line 168
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_f
.end method

.method public getMidYForCurrentChar()F
    .registers 4

    .prologue
    .line 267
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 268
    const/high16 v1, -0x4080

    .line 271
    :goto_7
    return v1

    .line 270
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v0

    .line 271
    .local v0, cellHt:F
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    add-float/2addr v1, v2

    goto :goto_7
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    .line 491
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    .line 501
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    .line 496
    return-void
.end method

.method public isPreMatching()Z
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 378
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 382
    if-eqz p1, :cond_9

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->updateBounds(Landroid/graphics/PointF;)Z

    .line 385
    :cond_9
    return-void
.end method

.method public pressDelayed()Z
    .registers 4

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, res:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->abort()Z

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->postToQueue(I)V

    .line 471
    const/4 v0, 0x1

    .line 473
    :cond_1c
    return v0
.end method

.method public setAllowWiggle(Z)V
    .registers 2
    .parameter "aWiggle"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    .line 126
    return-void
.end method

.method public setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V
    .registers 3
    .parameter "aStr"
    .parameter "aPt"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->updateBounds(Landroid/graphics/PointF;)Z

    .line 103
    return-void
.end method

.method public setPressedImmediate(Z)V
    .registers 4
    .parameter "aPressed"

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, mustRedraw:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    .line 481
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_27

    const/4 v1, 0x1

    :goto_1d
    or-int/2addr v0, v1

    .line 482
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressed(Z)V

    .line 483
    if-eqz v0, :cond_26

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 486
    :cond_26
    return-void

    .line 481
    :cond_27
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public unPressDelayed()Z
    .registers 4

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, res:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->abort()Z

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->postToQueue(I)V

    .line 461
    const/4 v0, 0x1

    .line 463
    :cond_1c
    return v0
.end method

.method public updateBounds(Landroid/graphics/PointF;)Z
    .registers 9
    .parameter "aPt"

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v6

    .line 121
    :goto_e
    return v0

    .line 111
    :cond_f
    if-nez p1, :cond_16

    .line 112
    new-instance p1, Landroid/graphics/PointF;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 114
    .restart local p1
    :cond_16
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 115
    .local v3, drawBounds:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    .line 119
    const/4 v0, 0x1

    goto :goto_e

    :cond_44
    move v0, v6

    .line 121
    goto :goto_e
.end method
