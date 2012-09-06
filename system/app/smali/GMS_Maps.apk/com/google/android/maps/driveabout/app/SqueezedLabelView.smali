.class public Lcom/google/android/maps/driveabout/app/SqueezedLabelView;
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
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    .line 51
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    .line 60
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b()V

    .line 62
    sget-object v0, Lcom/google/android/apps/maps/R$styleable;->da_SqueezedLabelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 67
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1d

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDesiredTextSize(F)V

    .line 70
    :cond_1d
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 72
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2a

    .line 73
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setMinTextSize(F)V

    .line 76
    :cond_2a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final b()V
    .registers 4

    .prologue
    .line 98
    const/4 v0, 0x1

    const/high16 v1, 0x4180

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    .line 101
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    .line 102
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setTextSize(IF)V

    .line 103
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 259
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->e:I

    .line 261
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    return v0
.end method

.method a(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 212
    iput p1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->e:I

    .line 215
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    .line 216
    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    invoke-super {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getTextScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1f

    .line 219
    invoke-super {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 223
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 225
    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    .line 227
    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6a

    .line 231
    const v2, 0x3f333333

    int-to-float v3, p1

    div-float v0, v3, v0

    const v3, 0x3c23d70a

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 233
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 240
    :goto_4b
    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6a

    .line 241
    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    int-to-float v3, p1

    div-float v0, v3, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getTextSize()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 243
    int-to-float v2, v0

    invoke-super {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 244
    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6b

    .line 250
    :cond_6a
    return-void

    .line 247
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

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
    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    if-lez v2, :cond_18

    if-eqz v1, :cond_18

    iget v2, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    if-le v0, v2, :cond_18

    .line 174
    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    .line 175
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 179
    :cond_18
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b(I)I

    move-result v0

    .line 180
    if-nez v1, :cond_28

    .line 183
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(I)V

    .line 199
    :cond_24
    :goto_24
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 200
    return-void

    .line 184
    :cond_28
    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_33

    .line 187
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(I)V

    goto :goto_24

    .line 188
    :cond_33
    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->d:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->e:I

    if-eq v1, v0, :cond_24

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(I)V

    goto :goto_24
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 158
    return-void
.end method

.method public setDesiredTextSize(F)V
    .registers 4
    .parameter

    .prologue
    .line 110
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 111
    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    .line 112
    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a:F

    .line 113
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->requestLayout()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->invalidate()V

    .line 117
    :cond_17
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    if-eq p1, v0, :cond_9

    .line 136
    iput p1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c:I

    .line 137
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 139
    :cond_9
    return-void
.end method

.method public setMinTextSize(F)V
    .registers 4
    .parameter

    .prologue
    .line 124
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 125
    iget v1, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    .line 126
    iput v0, p0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->b:F

    .line 127
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->requestLayout()V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->invalidate()V

    .line 131
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
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 164
    return-void
.end method

.method public setTextScaleX(F)V
    .registers 2
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 153
    return-void
.end method

.method public setTextSize(F)V
    .registers 2
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->c()V

    .line 146
    return-void
.end method
