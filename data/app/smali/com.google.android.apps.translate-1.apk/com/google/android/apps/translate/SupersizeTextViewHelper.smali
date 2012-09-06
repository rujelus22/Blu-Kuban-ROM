.class public Lcom/google/android/apps/translate/SupersizeTextViewHelper;
.super Ljava/lang/Object;
.source "SupersizeTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;,
        Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_SIZE:I = 0x3c

.field private static final SCALE_MIN_FONT_SIZE:I = 0xf

.field private static final ZOOM_IN_SCALE_FACTOR:F = 1.1f

.field private static final ZOOM_OUT_SCALE_FACTOR:F = 0.9f

.field private static final ZOOM_SPEED:I = 0x64


# instance fields
.field private mCalculatedFont:F

.field private final mContext:Landroid/content/Context;

.field private mMaxFontSizeInPixel:I

.field private mScaleFactor:F

.field private final mTextView:Landroid/widget/TextView;

.field private final mTriggerZoomButtonsListener:Landroid/view/View$OnTouchListener;

.field private final mViewHeight:I

.field private final mViewWidth:I

.field private mZoomController:Landroid/widget/ZoomButtonsController;

.field private mZoomMaxScale:F

.field private mZoomMinScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;II)V
    .registers 8
    .parameter "context"
    .parameter "textView"
    .parameter "widgetWidth"
    .parameter "widgetHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mCalculatedFont:F

    .line 57
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    .line 60
    const/16 v0, 0x3c

    iput v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mMaxFontSizeInPixel:I

    .line 68
    new-instance v0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;-><init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTriggerZoomButtonsListener:Landroid/view/View$OnTouchListener;

    .line 109
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    .line 111
    if-lez p3, :cond_45

    move v0, v1

    :goto_2b
    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkArguments(Z)V

    .line 112
    if-lez p4, :cond_31

    move v2, v1

    :cond_31
    invoke-static {v2}, Lcom/google/android/apps/translate/Preconditions;->checkArguments(Z)V

    .line 114
    iput p3, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mViewWidth:I

    .line 115
    iput p4, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mViewHeight:I

    .line 118
    iget v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mViewWidth:I

    iput v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mMaxFontSizeInPixel:I

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->enableTextScrolling(Landroid/widget/TextView;Z)V

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->setupZoomSupport()V

    .line 125
    return-void

    :cond_45
    move v0, v2

    .line 111
    goto :goto_2b
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/widget/ZoomButtonsController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/SupersizeTextViewHelper;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->zoomSupersizeText(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->enableTextScrolling(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/view/View$OnTouchListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTriggerZoomButtonsListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private static calcTextLayoutInfo(Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;Ljava/lang/String;ILandroid/text/TextPaint;I)V
    .registers 13
    .parameter "resultLayout"
    .parameter "text"
    .parameter "viewWidth"
    .parameter "testPaint"
    .parameter "tryFontSize"

    .prologue
    const/4 v7, 0x0

    .line 233
    if-lez p4, :cond_25

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Lcom/google/android/apps/translate/Preconditions;->checkArguments(Z)V

    .line 234
    int-to-float v1, p4

    invoke-virtual {p3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 236
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 239
    .local v0, layout:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->requiredHeight:I

    .line 240
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->requiredLines:I

    .line 241
    return-void

    .end local v0           #layout:Landroid/text/StaticLayout;
    :cond_25
    move v1, v7

    .line 233
    goto :goto_4
.end method

.method private static createTestPaint(Landroid/graphics/Typeface;I)Landroid/text/TextPaint;
    .registers 4
    .parameter "textTypeface"
    .parameter "fontSize"

    .prologue
    .line 213
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 214
    .local v0, testPaint:Landroid/text/TextPaint;
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 215
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 216
    return-object v0
.end method

.method private static enableTextScrolling(Landroid/widget/TextView;Z)V
    .registers 3
    .parameter "textView"
    .parameter "enable"

    .prologue
    .line 285
    if-eqz p1, :cond_a

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 286
    return-void

    .line 285
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isFontSizeTooBig(Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;)Z
    .registers 4
    .parameter "requirement"

    .prologue
    .line 252
    iget v0, p1, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->requiredHeight:I

    iget v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mViewHeight:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private pickFontInRect()Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;
    .registers 9

    .prologue
    const/16 v7, 0x3c

    .line 177
    new-instance v3, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;

    const/4 v6, 0x1

    invoke-direct {v3, v7, v6, v7}, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;-><init>(III)V

    .line 178
    .local v3, requirement:Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;
    iget-object v6, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    iget v7, v3, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->fontSize:I

    invoke-static {v6, v7}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->createTestPaint(Landroid/graphics/Typeface;I)Landroid/text/TextPaint;

    move-result-object v4

    .line 179
    .local v4, testPaint:Landroid/text/TextPaint;
    iget-object v6, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, text:Ljava/lang/String;
    iget v1, v3, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->fontSize:I

    .line 185
    .local v1, lowFontSize:I
    iget v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mViewWidth:I

    .line 186
    .local v0, highFontSize:I
    :goto_22
    if-ge v1, v0, :cond_3c

    .line 189
    sub-int v6, v0, v1

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x2

    add-int v2, v1, v6

    .line 190
    .local v2, midFontSize:I
    iget v6, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mViewWidth:I

    invoke-static {v3, v5, v6, v4, v2}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->calcTextLayoutInfo(Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;Ljava/lang/String;ILandroid/text/TextPaint;I)V

    .line 191
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->isFontSizeTooBig(Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 192
    add-int/lit8 v0, v2, -0x1

    goto :goto_22

    .line 194
    :cond_3a
    move v1, v2

    goto :goto_22

    .line 199
    .end local v2           #midFontSize:I
    :cond_3c
    iput v1, v3, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->fontSize:I

    .line 200
    return-object v3
.end method

.method private setupZoomButtons()V
    .registers 4

    .prologue
    .line 320
    new-instance v0, Landroid/widget/ZoomButtonsController;

    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;-><init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTriggerZoomButtonsListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    return-void
.end method

.method private setupZoomSupport()V
    .registers 5

    .prologue
    .line 293
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_c

    .line 294
    invoke-direct {p0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->setupZoomButtons()V

    .line 313
    :goto_b
    return-void

    .line 298
    :cond_c
    new-instance v0, Lcom/google/android/apps/translate/ScaleGestureDetector;

    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/translate/SupersizeTextViewHelper$ScaleListener;-><init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 301
    .local v0, scaleDetector:Lcom/google/android/apps/translate/ScaleGestureDetector;
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;-><init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;Lcom/google/android/apps/translate/ScaleGestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_b
.end method

.method private updateZoomButtonsEnabled()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    iget v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    iget v4, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomMaxScale:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_23

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    iget v3, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    iget v4, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomMinScale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 347
    return-void

    :cond_23
    move v0, v2

    .line 345
    goto :goto_12

    :cond_25
    move v1, v2

    .line 346
    goto :goto_1f
.end method

.method private zoomSupersizeText(F)V
    .registers 6
    .parameter "scaleFactor"

    .prologue
    .line 271
    iget v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    .line 274
    iget v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    iget v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomMaxScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomMinScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mCalculatedFont:F

    iget v3, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 277
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_a

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 133
    :cond_a
    return-void
.end method

.method public resizeText(Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V
    .registers 7
    .parameter "text"
    .parameter "textPossibleLanguages"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    array-length v1, p2

    if-lez v1, :cond_4c

    move v1, v2

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->pickFontInRect()Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;

    move-result-object v0

    .line 152
    .local v0, textLayoutInfo:Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;
    iget v1, v0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->requiredLines:I

    if-ne v1, v2, :cond_27

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    :cond_27
    iget v1, v0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;->fontSize:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mCalculatedFont:F

    .line 160
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mScaleFactor:F

    .line 161
    const/high16 v1, 0x4170

    iget v2, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mCalculatedFont:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomMinScale:F

    .line 162
    iget v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mMaxFontSizeInPixel:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mCalculatedFont:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomMaxScale:F

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mCalculatedFont:F

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1, p1, p2}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    .line 166
    return-void

    .end local v0           #textLayoutInfo:Lcom/google/android/apps/translate/SupersizeTextViewHelper$TextLayoutInfo;
    :cond_4c
    move v1, v3

    .line 145
    goto :goto_9
.end method
