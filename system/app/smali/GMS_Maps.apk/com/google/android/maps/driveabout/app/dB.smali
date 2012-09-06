.class public Lcom/google/android/maps/driveabout/app/db;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 35
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 38
    :cond_b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    .line 39
    iput p2, p0, Lcom/google/android/maps/driveabout/app/db;->b:F

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 43
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 46
    :cond_b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    .line 47
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:F

    .line 48
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->f:I

    .line 49
    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->e:I

    .line 50
    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .registers 5
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    .line 107
    :goto_14
    return-void

    .line 91
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:F

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->d:F

    .line 93
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_53

    .line 94
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->c:F

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->b:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->e:I

    .line 95
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->e:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->d:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->f:I

    .line 101
    :cond_53
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 102
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v1, v2

    .line 103
    iget v2, p0, Lcom/google/android/maps/driveabout/app/db;->e:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/db;->g:I

    .line 104
    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->g:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/db;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/db;->h:I

    .line 105
    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->h:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/db;->i:I

    .line 106
    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->g:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->j:I

    goto :goto_14
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->h:I

    if-le v0, v1, :cond_a

    .line 71
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->h:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 73
    :cond_a
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->g:I

    if-ge v0, v1, :cond_14

    .line 74
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->g:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 77
    :cond_14
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->i:I

    if-le v0, v1, :cond_1e

    .line 78
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->i:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 80
    :cond_1e
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->j:I

    if-ge v0, v1, :cond_28

    .line 81
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->j:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 83
    :cond_28
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-direct {p0, p9}, Lcom/google/android/maps/driveabout/app/db;->a(Landroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/db;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->h:I

    add-int/2addr v0, p7

    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 120
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 124
    instance-of v1, p1, Lcom/google/android/maps/driveabout/app/db;

    if-eqz v1, :cond_1a

    .line 125
    check-cast p1, Lcom/google/android/maps/driveabout/app/db;

    .line 126
    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, p1, Lcom/google/android/maps/driveabout/app/db;->b:F

    iget v2, p0, Lcom/google/android/maps/driveabout/app/db;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    .line 129
    :cond_1a
    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/db;->a(Landroid/graphics/Paint;)V

    .line 56
    if-eqz p5, :cond_15

    .line 57
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->h:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 58
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->g:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 60
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->i:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 61
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->j:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 64
    :cond_15
    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->f:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/db;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
