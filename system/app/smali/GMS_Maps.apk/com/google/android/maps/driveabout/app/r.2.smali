.class public Lcom/google/android/maps/driveabout/app/r;
.super Lcom/google/android/maps/driveabout/app/q;


# instance fields
.field private a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/high16 v3, 0x4080

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/q;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/r;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x7f0900a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/r;->d:F

    mul-float v0, v1, v3

    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/r;->e:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/r;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/r;->b:Landroid/graphics/Paint;

    const v2, -0xe2a4db

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/r;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/r;->b:Landroid/graphics/Paint;

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/r;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/r;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/r;->d:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/r;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/r;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/r;->e:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/maps/driveabout/app/r;->e:F

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    const v0, 0xffffff

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/r;->c:Landroid/graphics/RectF;

    const/high16 v2, 0x4387

    iget v0, p0, Lcom/google/android/maps/driveabout/app/r;->a:F

    const/high16 v3, 0x43b4

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/r;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/r;->a(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/app/q;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLevelChange(I)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/app/q;->onLevelChange(I)Z

    int-to-float v0, p1

    const v1, 0x461c4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/r;->a:F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/r;->invalidateSelf()V

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
