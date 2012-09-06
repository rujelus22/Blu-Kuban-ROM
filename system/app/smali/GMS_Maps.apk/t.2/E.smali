.class public LT/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/e;


# static fields
.field private static final d:Landroid/graphics/Rect;

.field private static final e:Landroid/graphics/Rect;

.field private static final f:Landroid/graphics/Rect;

.field private static final g:Landroid/graphics/RectF;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private final b:Landroid/graphics/Paint;

.field private c:LS/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LT/e;->d:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LT/e;->e:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LT/e;->f:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, LT/e;->g:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LT/e;->b:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, LT/e;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iput-object p1, p0, LT/e;->a:Landroid/graphics/Canvas;

    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    sget-object v1, LT/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50
    sget-object v0, LT/e;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 52
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, LT/e;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    return-void
.end method

.method public a(IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 82
    return-void
.end method

.method public a(LS/d;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, LT/e;->c:LS/d;

    .line 190
    return-void
.end method

.method public a(LS/f;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    if-eqz p1, :cond_5

    .line 139
    invoke-interface {p1, p0, p2, p3}, LS/f;->a(LS/e;II)V

    .line 141
    :cond_5
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, LT/e;->a:Landroid/graphics/Canvas;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, LT/e;->c:LS/d;

    invoke-interface {v0, p0, p1, p2, p3}, LS/d;->a(LS/e;Ljava/lang/String;II)V

    .line 208
    return-void
.end method

.method public a(LS/f;IIIIIIII)Z
    .registers 15
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
    const/4 v0, 0x0

    .line 294
    if-nez p1, :cond_4

    .line 304
    :cond_3
    :goto_3
    return v0

    .line 297
    :cond_4
    check-cast p1, LT/f;

    invoke-virtual {p1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_3

    .line 301
    sget-object v0, LT/e;->d:Landroid/graphics/Rect;

    add-int v2, p6, p8

    add-int v3, p7, p9

    invoke-virtual {v0, p6, p7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    sget-object v0, LT/e;->e:Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    sget-object v2, LT/e;->d:Landroid/graphics/Rect;

    sget-object v3, LT/e;->e:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 304
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public b()I
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    sget-object v1, LT/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 58
    sget-object v0, LT/e;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 60
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, LT/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, LT/e;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method public c()I
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    sget-object v1, LT/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    sget-object v0, LT/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 68
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public c(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, LT/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, LT/e;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method public d()I
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    sget-object v1, LT/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    sget-object v0, LT/e;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 76
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public e()LS/d;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, LT/e;->c:LS/d;

    return-object v0
.end method

.method public f()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, LT/e;->a:Landroid/graphics/Canvas;

    return-object v0
.end method
