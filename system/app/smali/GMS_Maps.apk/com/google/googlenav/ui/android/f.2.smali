.class Lcom/google/googlenav/ui/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/bd;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/e;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap;

.field private d:Lai/f;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/e;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/google/googlenav/ui/android/f;->a:Lcom/google/googlenav/ui/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->d:Lai/f;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->g:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(ILandroid/graphics/Paint;)V
    .registers 5

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->d:Lai/f;

    invoke-virtual {v0}, Lai/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->d:Lai/f;

    invoke-virtual {v1}, Lai/f;->b()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->d:Lai/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/e;->a(Landroid/graphics/Bitmap;Lai/f;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    :cond_22
    return-void
.end method

.method private d()V
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/f;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/f;->d()V

    return-void
.end method

.method public a(III)V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/f;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    invoke-static {}, Lcom/google/googlenav/ui/android/e;->g()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/f;->a(ILandroid/graphics/Paint;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->f:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1a
.end method

.method public a(IIIIIII)V
    .registers 13

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/f;->c()V

    new-instance v0, Landroid/graphics/RectF;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p7, v1}, Lcom/google/googlenav/ui/android/f;->a(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    int-to-float v2, p5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p6, v1}, Lcom/google/googlenav/ui/android/f;->a(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lai/f;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/f;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/f;->d:Lai/f;

    return-void
.end method

.method public a([I[IZ)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_12

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/f;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->e:Landroid/graphics/Path;

    aget v1, p2, v3

    int-to-float v1, v1

    aget v2, p2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->e:Landroid/graphics/Path;

    aget v1, p1, v3

    int-to-float v1, v1

    aget v2, p1, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public a([[JIII)V
    .registers 15

    const/4 v9, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/f;->c()V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    array-length v4, p1

    move v1, v2

    :goto_c
    if-ge v1, v4, :cond_48

    aget-object v0, p1, v1

    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v0

    int-to-float v0, v0

    aget-object v5, p1, v1

    aget-wide v5, v5, v2

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v0, p1, v1

    array-length v5, v0

    const/4 v0, 0x1

    :goto_27
    if-ge v0, v5, :cond_41

    aget-object v6, p1, v1

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v6

    int-to-float v6, v6

    aget-object v7, p1, v1

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_41
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_48
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    if-ne p4, v9, :cond_83

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_56
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p4, v0}, Lcom/google/googlenav/ui/android/f;->a(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eq p2, v9, :cond_82

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/android/f;->a(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->b:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_82
    return-void

    :cond_83
    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_56
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/f;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method
