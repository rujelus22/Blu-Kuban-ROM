.class public Lcom/anddoes/launcher/CircleIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/iy;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/anddoes/launcher/CircleIndicator;->i:I

    .line 25
    iput-boolean v2, p0, Lcom/anddoes/launcher/CircleIndicator;->j:Z

    .line 26
    iput-boolean v0, p0, Lcom/anddoes/launcher/CircleIndicator;->k:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->b:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->b:Landroid/graphics/Paint;

    invoke-static {}, Lcom/anddoes/launcher/ia;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->c:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/anddoes/launcher/CircleIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-static {}, Lcom/anddoes/launcher/ia;->c()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4020

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    .line 43
    return-void
.end method

.method private c(I)I
    .registers 8
    .parameter

    .prologue
    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 208
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 210
    const/high16 v0, 0x4000

    if-eq v2, v0, :cond_10

    iget v0, p0, Lcom/anddoes/launcher/CircleIndicator;->d:I

    if-nez v0, :cond_12

    :cond_10
    move v0, v1

    .line 223
    :cond_11
    :goto_11
    return v0

    .line 215
    :cond_12
    iget v0, p0, Lcom/anddoes/launcher/CircleIndicator;->d:I

    .line 216
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 217
    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    mul-float/2addr v4, v5

    .line 216
    add-float/2addr v3, v4

    .line 217
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    mul-float/2addr v0, v4

    .line 216
    add-float/2addr v0, v3

    .line 217
    const/high16 v3, 0x3f80

    .line 216
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 219
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_11

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method private d(I)I
    .registers 6
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 236
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 238
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_d

    .line 249
    :goto_c
    return v0

    .line 243
    :cond_d
    const/high16 v1, 0x4000

    iget v3, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f80

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 245
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_2b

    .line 246
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_c

    :cond_2b
    move v0, v1

    goto :goto_c
.end method


# virtual methods
.method public final a(F)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    .line 100
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->invalidate()V

    .line 101
    return-void
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput p1, p0, Lcom/anddoes/launcher/CircleIndicator;->d:I

    .line 254
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->requestLayout()V

    .line 255
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 258
    if-ltz p1, :cond_11

    iget v0, p0, Lcom/anddoes/launcher/CircleIndicator;->d:I

    if-ge p1, v0, :cond_11

    iget v0, p0, Lcom/anddoes/launcher/CircleIndicator;->e:I

    if-eq v0, p1, :cond_11

    .line 259
    iput p1, p0, Lcom/anddoes/launcher/CircleIndicator;->e:I

    .line 260
    iput p1, p0, Lcom/anddoes/launcher/CircleIndicator;->f:I

    .line 261
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->invalidate()V

    .line 263
    :cond_11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter

    .prologue
    const/high16 v9, 0x4000

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget v5, p0, Lcom/anddoes/launcher/CircleIndicator;->d:I

    .line 126
    if-nez v5, :cond_a

    .line 182
    :goto_9
    return-void

    .line 134
    :cond_a
    iget v0, p0, Lcom/anddoes/launcher/CircleIndicator;->i:I

    if-nez v0, :cond_6a

    .line 135
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getWidth()I

    move-result v3

    .line 136
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingLeft()I

    move-result v2

    .line 137
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingRight()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingTop()I

    move-result v0

    .line 146
    :goto_1e
    iget v4, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    const/high16 v6, 0x40c0

    mul-float/2addr v6, v4

    .line 147
    int-to-float v0, v0

    iget v4, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    add-float/2addr v4, v0

    .line 148
    int-to-float v0, v2

    iget v7, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    add-float/2addr v0, v7

    .line 149
    iget-boolean v7, p0, Lcom/anddoes/launcher/CircleIndicator;->j:Z

    if-eqz v7, :cond_3a

    .line 150
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    int-to-float v2, v5

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 157
    :cond_3a
    const/4 v1, 0x0

    move v3, v1

    :goto_3c
    if-lt v3, v5, :cond_7b

    .line 170
    iget-boolean v1, p0, Lcom/anddoes/launcher/CircleIndicator;->k:Z

    if-eqz v1, :cond_91

    iget v1, p0, Lcom/anddoes/launcher/CircleIndicator;->f:I

    :goto_44
    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 171
    iget-boolean v2, p0, Lcom/anddoes/launcher/CircleIndicator;->k:Z

    if-nez v2, :cond_5a

    iget v2, p0, Lcom/anddoes/launcher/CircleIndicator;->h:I

    if-eqz v2, :cond_5a

    .line 172
    iget v2, p0, Lcom/anddoes/launcher/CircleIndicator;->g:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/anddoes/launcher/CircleIndicator;->h:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 174
    :cond_5a
    iget v2, p0, Lcom/anddoes/launcher/CircleIndicator;->i:I

    if-nez v2, :cond_94

    .line 175
    add-float/2addr v0, v1

    .line 181
    :goto_5f
    iget v1, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/anddoes/launcher/CircleIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 140
    :cond_6a
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getHeight()I

    move-result v3

    .line 141
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingTop()I

    move-result v2

    .line 142
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingBottom()I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/anddoes/launcher/CircleIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1e

    .line 158
    :cond_7b
    int-to-float v1, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v0

    .line 159
    iget v2, p0, Lcom/anddoes/launcher/CircleIndicator;->i:I

    if-nez v2, :cond_8f

    move v2, v1

    move v1, v4

    .line 164
    :goto_84
    iget v7, p0, Lcom/anddoes/launcher/CircleIndicator;->a:F

    iget-object v8, p0, Lcom/anddoes/launcher/CircleIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3c

    :cond_8f
    move v2, v4

    .line 163
    goto :goto_84

    .line 170
    :cond_91
    iget v1, p0, Lcom/anddoes/launcher/CircleIndicator;->e:I

    goto :goto_44

    .line 179
    :cond_94
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_5f
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 191
    iget v0, p0, Lcom/anddoes/launcher/CircleIndicator;->i:I

    if-nez v0, :cond_10

    .line 192
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/CircleIndicator;->c(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/anddoes/launcher/CircleIndicator;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/CircleIndicator;->setMeasuredDimension(II)V

    .line 196
    :goto_f
    return-void

    .line 194
    :cond_10
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/CircleIndicator;->d(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/anddoes/launcher/CircleIndicator;->c(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/CircleIndicator;->setMeasuredDimension(II)V

    goto :goto_f
.end method
