.class public Lai/e;
.super Ljava/lang/Object;

# interfaces
.implements Lah/e;


# static fields
.field private static final d:Landroid/graphics/Rect;

.field private static final e:Landroid/graphics/Rect;

.field private static final f:Landroid/graphics/Rect;

.field private static final g:Landroid/graphics/RectF;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private final b:Landroid/graphics/Paint;

.field private c:Lah/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lai/e;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lai/e;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lai/e;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lai/e;->g:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, Lai/e;->a:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    sget-object v1, Lai/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lai/e;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(IIII)V
    .registers 9

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public a(IIIIII)V
    .registers 14

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lai/e;->a(Z)Z

    sget-object v0, Lai/e;->g:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    sget-object v1, Lai/e;->g:Landroid/graphics/RectF;

    add-int/lit8 v2, p5, -0x5a

    sub-int/2addr v2, p6

    int-to-float v2, v2

    int-to-float v3, p6

    iget-object v5, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v4}, Lai/e;->a(Z)Z

    return-void
.end method

.method public a(Lah/d;)V
    .registers 2

    iput-object p1, p0, Lai/e;->c:Lah/d;

    return-void
.end method

.method public a(Lah/f;II)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-interface {p1, p0, p2, p3}, Lah/f;->a(Lah/e;II)V

    :cond_5
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 2

    iput-object p1, p0, Lai/e;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 5

    iget-object v0, p0, Lai/e;->c:Lah/d;

    invoke-interface {v0, p0, p1, p2, p3}, Lah/d;->a(Lah/e;Ljava/lang/String;II)V

    return-void
.end method

.method public a(Lah/f;IIIIIIII)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    check-cast p1, Lai/f;

    invoke-virtual {p1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Lai/e;->d:Landroid/graphics/Rect;

    add-int v2, p6, p8

    add-int v3, p7, p9

    invoke-virtual {v0, p6, p7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lai/e;->e:Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    sget-object v2, Lai/e;->d:Landroid/graphics/Rect;

    sget-object v3, Lai/e;->e:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public a(Z)Z
    .registers 3

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    sget-object v1, Lai/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lai/e;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b(IIII)V
    .registers 11

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b(IIIIII)V
    .registers 13

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    add-int/lit8 v2, p5, -0x5a

    sub-int/2addr v2, p6

    int-to-float v2, v2

    int-to-float v3, p6

    const/4 v4, 0x0

    iget-object v5, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    sget-object v1, Lai/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lai/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public c(IIII)V
    .registers 11

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public d()I
    .registers 3

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    sget-object v1, Lai/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lai/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public e()Lah/d;
    .registers 2

    iget-object v0, p0, Lai/e;->c:Lah/d;

    return-object v0
.end method

.method public f()Landroid/graphics/Canvas;
    .registers 2

    iget-object v0, p0, Lai/e;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lai/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method
