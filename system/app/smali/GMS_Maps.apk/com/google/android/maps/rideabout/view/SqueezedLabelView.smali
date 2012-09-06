.class public Lcom/google/android/maps/rideabout/view/SqueezedLabelView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    .line 63
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a()V

    .line 65
    sget-object v0, Lcom/google/android/apps/maps/R$styleable;->SqueezedLabelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 69
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1d

    .line 70
    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setDesiredTextSize(F)V

    .line 72
    :cond_1d
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 73
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2a

    .line 74
    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setMinTextSize(F)V

    .line 77
    :cond_2a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private final a()V
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x1

    const/high16 v1, 0x4180

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    .line 102
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    .line 103
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setTextSize(IF)V

    .line 104
    return-void
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 255
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->e:I

    .line 257
    return-void
.end method


# virtual methods
.method a(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 209
    iput p1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->e:I

    .line 212
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    .line 213
    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    invoke-super {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getTextScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1f

    .line 216
    invoke-super {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 220
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 222
    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    .line 224
    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6a

    .line 228
    const v2, 0x3f333333

    int-to-float v3, p1

    div-float v0, v3, v0

    const v3, 0x3c23d70a

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 229
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 236
    :goto_4b
    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6a

    .line 237
    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    int-to-float v3, p1

    div-float v0, v3, v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getTextSize()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 239
    int-to-float v2, v0

    invoke-super {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 240
    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6b

    .line 246
    :cond_6a
    return-void

    .line 243
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    goto :goto_4b
.end method

.method public onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 172
    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    if-lez v2, :cond_18

    if-eqz v1, :cond_18

    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    if-le v0, v2, :cond_18

    .line 173
    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    .line 174
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 177
    :cond_18
    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b(I)I

    move-result v0

    .line 178
    if-nez v1, :cond_28

    .line 181
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(I)V

    .line 196
    :cond_24
    :goto_24
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 197
    return-void

    .line 182
    :cond_28
    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_33

    .line 185
    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(I)V

    goto :goto_24

    .line 186
    :cond_33
    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->e:I

    if-eq v1, v0, :cond_24

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(I)V

    goto :goto_24
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 159
    return-void
.end method

.method public setDesiredTextSize(F)V
    .registers 4
    .parameter

    .prologue
    .line 111
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 112
    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    .line 113
    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    .line 114
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->requestLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->invalidate()V

    .line 118
    :cond_17
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    if-eq p1, v0, :cond_9

    .line 137
    iput p1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    .line 138
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 140
    :cond_9
    return-void
.end method

.method public setMinTextSize(F)V
    .registers 4
    .parameter

    .prologue
    .line 125
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 126
    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    .line 127
    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    .line 128
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->requestLayout()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->invalidate()V

    .line 132
    :cond_17
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 165
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 2
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 153
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 154
    return-void
.end method

.method public setTextSize(F)V
    .registers 2
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    .line 147
    return-void
.end method
