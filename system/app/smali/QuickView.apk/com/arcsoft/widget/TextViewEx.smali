.class public Lcom/arcsoft/widget/TextViewEx;
.super Landroid/view/View;
.source "TextViewEx.java"


# static fields
.field static final DEFAULT_TEXT_SIZE:I = 0x1e


# instance fields
.field private mAscent:I

.field private mDescent:I

.field private mText:Ljava/lang/String;

.field private mTextDirection:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private text_bounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mText:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->text_bounds:Landroid/graphics/Rect;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    .line 26
    invoke-direct {p0}, Lcom/arcsoft/widget/TextViewEx;->initTextView()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-string v3, ""

    iput-object v3, p0, Lcom/arcsoft/widget/TextViewEx;->mText:Ljava/lang/String;

    .line 19
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/arcsoft/widget/TextViewEx;->text_bounds:Landroid/graphics/Rect;

    .line 20
    iput v5, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    .line 31
    invoke-direct {p0}, Lcom/arcsoft/widget/TextViewEx;->initTextView()V

    .line 33
    sget-object v3, Lcom/arcsoft/quickview/R$styleable;->TextViewEx:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, s:Ljava/lang/CharSequence;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/arcsoft/widget/TextViewEx;->setText(Ljava/lang/String;)V

    .line 38
    :cond_27
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/arcsoft/widget/TextViewEx;->setTextColor(I)V

    .line 40
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 41
    .local v2, textSize:I
    if-lez v2, :cond_3a

    invoke-virtual {p0, v2}, Lcom/arcsoft/widget/TextViewEx;->setTextSize(I)V

    .line 43
    :cond_3a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method

.method private final initTextView()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 47
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    .line 48
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/arcsoft/widget/TextViewEx;->setPadding(IIII)V

    .line 53
    return-void
.end method

.method private measureHeight(I)I
    .registers 7
    .parameter "measureSpec"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 117
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 119
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_f

    .line 121
    move v0, v2

    .line 134
    :cond_e
    :goto_e
    return v0

    .line 124
    :cond_f
    iget v3, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_33

    .line 125
    :cond_19
    iget v3, p0, Lcom/arcsoft/widget/TextViewEx;->mAscent:I

    neg-int v3, v3

    iget v4, p0, Lcom/arcsoft/widget/TextViewEx;->mDescent:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 129
    :goto_2a
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_e

    .line 131
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_e

    .line 127
    :cond_33
    iget-object v3, p0, Lcom/arcsoft/widget/TextViewEx;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2a
.end method

.method private measureWidth(I)I
    .registers 7
    .parameter "measureSpec"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 94
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 96
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_f

    .line 98
    move v0, v2

    .line 111
    :cond_e
    :goto_e
    return v0

    .line 101
    :cond_f
    iget v3, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_33

    .line 102
    :cond_19
    iget-object v3, p0, Lcom/arcsoft/widget/TextViewEx;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 106
    :goto_2a
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_e

    .line 108
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_e

    .line 104
    :cond_33
    iget v3, p0, Lcom/arcsoft/widget/TextViewEx;->mAscent:I

    neg-int v3, v3

    iget v4, p0, Lcom/arcsoft/widget/TextViewEx;->mDescent:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2a
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/arcsoft/widget/TextViewEx;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 143
    .local v0, text_horizontally_centered_origin_x:F
    iget v1, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    sparse-switch v1, :sswitch_data_5a

    .line 157
    :goto_1a
    iget v1, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 158
    iget-object v1, p0, Lcom/arcsoft/widget/TextViewEx;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    return-void

    .line 145
    :sswitch_28
    iget v1, p0, Lcom/arcsoft/widget/TextViewEx;->mAscent:I

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1a

    .line 148
    :sswitch_35
    iget v1, p0, Lcom/arcsoft/widget/TextViewEx;->mDescent:I

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1a

    .line 151
    :sswitch_41
    iget v1, p0, Lcom/arcsoft/widget/TextViewEx;->mDescent:I

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1a

    .line 154
    :sswitch_4d
    iget v1, p0, Lcom/arcsoft/widget/TextViewEx;->mAscent:I

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1a

    .line 143
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_28
        0x5a -> :sswitch_35
        0xb4 -> :sswitch_41
        0x10e -> :sswitch_4d
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/arcsoft/widget/TextViewEx;->mAscent:I

    .line 84
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/arcsoft/widget/TextViewEx;->mDescent:I

    .line 85
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/arcsoft/widget/TextViewEx;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/arcsoft/widget/TextViewEx;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/widget/TextViewEx;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/TextViewEx;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/arcsoft/widget/TextViewEx;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/TextViewEx;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/arcsoft/widget/TextViewEx;->mText:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->requestLayout()V

    .line 58
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->invalidate()V

    .line 59
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 69
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->invalidate()V

    .line 70
    return-void
.end method

.method public setTextDirection(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 73
    if-eqz p1, :cond_f

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_f

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_f

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_f

    .line 78
    :goto_e
    return-void

    .line 75
    :cond_f
    iput p1, p0, Lcom/arcsoft/widget/TextViewEx;->mTextDirection:I

    .line 76
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->requestLayout()V

    .line 77
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->invalidate()V

    goto :goto_e
.end method

.method public setTextSize(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/arcsoft/widget/TextViewEx;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->requestLayout()V

    .line 64
    invoke-virtual {p0}, Lcom/arcsoft/widget/TextViewEx;->invalidate()V

    .line 65
    return-void
.end method
