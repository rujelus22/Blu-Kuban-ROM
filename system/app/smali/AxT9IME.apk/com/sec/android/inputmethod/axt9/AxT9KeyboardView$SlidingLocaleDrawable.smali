.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AxT9KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private mAscent:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLangWidth:I

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private mDiffLimit:I

.field private mHeight:I

.field private mHitThreshold:Z

.field private mIsPreview:Z

.field private mMiddleX:I

.field private mNextLangWidth:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLangWidth:I

.field private mPrevLanguage:Ljava/lang/String;

.field private mSlidingKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThreshold:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/drawable/Drawable;IILandroid/inputmethodservice/Keyboard$Key;Z)V
    .registers 18
    .parameter
    .parameter "background"
    .parameter "width"
    .parameter "height"
    .parameter "key"
    .parameter "isPreview"

    .prologue
    .line 8436
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 8423
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 8437
    iput-object p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8438
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_21

    .line 8439
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8442
    :cond_21
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    .line 8443
    iput p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    .line 8444
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 8445
    const v6, 0x1030044

    const/16 v7, 0x12

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTextSizeFromTheme(II)I
    invoke-static {p1, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;II)I

    move-result v5

    .line 8446
    .local v5, textSize:I
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 8447
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 8448
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8449
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 8450
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 8451
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    .line 8452
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_108

    .line 8453
    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mMiddleX:I

    .line 8458
    :goto_6f
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setSlidingKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 8459
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setIsPreview(Z)V

    .line 8461
    iget-object v6, p1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mThreshold:I

    .line 8462
    iget-object v6, p1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v6

    if-eqz v6, :cond_110

    const/high16 v2, 0x42a0

    .line 8463
    .local v2, diffdpi:F
    :goto_8f
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    .line 8465
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v6, :cond_bf

    .line 8466
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;
    invoke-static {p1, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 8467
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getNextInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;
    invoke-static {p1, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 8468
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, p6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPrevInputLanguage(Landroid/graphics/Paint;Z)Ljava/lang/String;
    invoke-static {p1, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 8472
    :cond_bf
    const/4 v3, 0x0

    .line 8474
    .local v3, maxStringLengthFloat:F
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_11e

    .line 8475
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_115

    .line 8476
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 8488
    :goto_e4
    const/high16 v6, 0x3f00

    add-float/2addr v6, v3

    float-to-int v4, v6

    .line 8489
    .local v4, maxStringLengthInt:I
    const/16 v6, 0x14

    new-array v1, v6, [F

    .line 8490
    .local v1, buffer:[F
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 8492
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    .line 8494
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 8495
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    .line 8497
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 8498
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    .line 8500
    return-void

    .line 8455
    .end local v1           #buffer:[F
    .end local v2           #diffdpi:F
    .end local v3           #maxStringLengthFloat:F
    .end local v4           #maxStringLengthInt:I
    :cond_108
    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mMiddleX:I

    goto/16 :goto_6f

    .line 8462
    :cond_110
    const v2, 0x41d55604

    goto/16 :goto_8f

    .line 8478
    .restart local v2       #diffdpi:F
    .restart local v3       #maxStringLengthFloat:F
    :cond_115
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_e4

    .line 8481
    :cond_11e
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_135

    .line 8482
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_e4

    .line 8484
    :cond_135
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_e4
.end method


# virtual methods
.method public IsPreview()Z
    .registers 2

    .prologue
    .line 8617
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mIsPreview:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 8526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8527
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v2, :cond_fe

    .line 8528
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->IsPreview()Z

    move-result v2

    if-nez v2, :cond_157

    .line 8529
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelColor()I
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v1

    .line 8530
    .local v1, normalKeyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    .line 8531
    .local v0, functionKeyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 8532
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->getSlidingKey()Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v3

    iget-boolean v3, v3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_111

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    .end local v0           #functionKeyLabelColor:I
    :cond_37
    :goto_37
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 8535
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_128

    .line 8536
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8548
    .end local v1           #normalKeyLabelColor:I
    :cond_55
    :goto_55
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8550
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16f

    .line 8551
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8556
    :goto_96
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8559
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8564
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8582
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8584
    :cond_fe
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10d

    .line 8585
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8586
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8588
    :cond_10d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8589
    return-void

    .line 8532
    .restart local v0       #functionKeyLabelColor:I
    .restart local v1       #normalKeyLabelColor:I
    :cond_111
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_125

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_125
    move v0, v1

    goto/16 :goto_37

    .line 8538
    .end local v0           #functionKeyLabelColor:I
    :cond_128
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->getSlidingKey()Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v3

    iget-boolean v3, v3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v3, :cond_138

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v1

    .end local v1           #normalKeyLabelColor:I
    :cond_138
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 8539
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8540
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->getSlidingKey()Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v2

    iget-boolean v2, v2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v2, :cond_55

    .line 8541
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    goto/16 :goto_55

    .line 8545
    :cond_157
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mColorPreviewLabel:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 8546
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_55

    .line 8553
    :cond_16f
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3e666666

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    int-to-float v4, v4

    const v5, 0x3f466666

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto/16 :goto_96
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 8613
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 8608
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 8593
    const/4 v0, -0x3

    return v0
.end method

.method public getSlidingKey()Landroid/inputmethodservice/Keyboard$Key;
    .registers 2

    .prologue
    .line 8625
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mSlidingKey:Landroid/inputmethodservice/Keyboard$Key;

    return-object v0
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 8599
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 8604
    return-void
.end method

.method setDiff(I)V
    .registers 6
    .parameter "diff"

    .prologue
    .line 8508
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_c

    .line 8509
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 8510
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 8522
    :goto_b
    return-void

    .line 8513
    :cond_c
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    .line 8515
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int v0, v2, v3

    .line 8516
    .local v0, leftLimit:I
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int v1, v2, v3

    .line 8518
    .local v1, rightLimit:I
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    if-le v2, v1, :cond_2a

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    .line 8519
    :cond_2a
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    neg-int v3, v0

    if-ge v2, v3, :cond_32

    neg-int v2, v0

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    .line 8520
    :cond_32
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mThreshold:I

    if-le v2, v3, :cond_3f

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 8521
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_b
.end method

.method public setIsPreview(Z)V
    .registers 2
    .parameter "mIsPreview"

    .prologue
    .line 8621
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mIsPreview:Z

    .line 8622
    return-void
.end method

.method public setKey(Landroid/inputmethodservice/Keyboard$Key;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 8503
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    .line 8504
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    .line 8505
    return-void
.end method

.method public setSlidingKey(Landroid/inputmethodservice/Keyboard$Key;)V
    .registers 2
    .parameter "mSlidingKey"

    .prologue
    .line 8629
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mSlidingKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 8630
    return-void
.end method
