.class public Lcom/google/android/maps/driveabout/app/dn;
.super Landroid/text/style/ReplacementSpan;

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

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/dn;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FF)V
    .registers 6

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->b:F

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->f:I

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->e:I

    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->c:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->d:F

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_53

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->c:F

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->b:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->e:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->e:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->d:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->f:I

    :cond_53
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dn;->e:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dn;->g:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->g:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dn;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dn;->h:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->h:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dn;->i:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->g:I

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dn;->j:I

    goto :goto_14
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 9

    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->h:I

    if-le v0, v1, :cond_a

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->h:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_a
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->g:I

    if-ge v0, v1, :cond_14

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->g:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_14
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->i:I

    if-le v0, v1, :cond_1e

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->i:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_1e
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->j:I

    if-ge v0, v1, :cond_28

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->j:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_28
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 14

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p9}, Lcom/google/android/maps/driveabout/app/dn;->a(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dn;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->h:I

    add-int/2addr v0, p7

    int-to-float v0, v0

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/maps/driveabout/app/dn;

    if-eqz v1, :cond_1a

    check-cast p1, Lcom/google/android/maps/driveabout/app/dn;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, p1, Lcom/google/android/maps/driveabout/app/dn;->b:F

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dn;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dn;->a(Landroid/graphics/Paint;)V

    if-eqz p5, :cond_15

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->h:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->g:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->i:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->j:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_15
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dn;->f:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dn;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dn;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
