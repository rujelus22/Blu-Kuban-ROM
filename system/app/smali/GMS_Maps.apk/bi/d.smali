.class public Lbi/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lbn/f;

.field private final c:Lbi/b;

.field private d:F


# direct methods
.method public constructor <init>(II[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbn/f;

    invoke-direct {v0}, Lbn/f;-><init>()V

    iput-object v0, p0, Lbi/d;->b:Lbn/f;

    int-to-float v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lbi/d;->a:I

    sget-object v0, Lbi/f;->a:Lbi/f;

    invoke-virtual {v0}, Lbi/f;->a()F

    move-result v0

    sget-object v1, Lbi/f;->b:Lbi/f;

    invoke-virtual {v1}, Lbi/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lbi/d;->a(FF)V

    new-instance v0, Lbi/b;

    const/high16 v1, 0x3f00

    iget-object v6, p0, Lbi/d;->b:Lbn/f;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lbi/b;-><init>(FII[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Lbn/f;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lbi/d;->c:Lbi/b;

    return-void
.end method

.method private a(FF)V
    .registers 13

    const/high16 v9, 0x3f80

    new-instance v0, Lbn/f;

    float-to-double v1, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sub-float v5, p2, p1

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    float-to-double v3, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-float v7, p2, p1

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lbn/f;-><init>(DD)V

    iget-object v1, p0, Lbi/d;->b:Lbn/f;

    iget v2, v0, Lbn/f;->a:F

    mul-float/2addr v2, v9

    iput v2, v1, Lbn/f;->a:F

    iget-object v1, p0, Lbi/d;->b:Lbn/f;

    iget v0, v0, Lbn/f;->b:F

    mul-float/2addr v0, v9

    iput v0, v1, Lbn/f;->b:F

    return-void
.end method

.method private b(F)F
    .registers 5

    const/high16 v0, -0x4080

    iget v1, p0, Lbi/d;->d:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lbi/d;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lbi/d;->c:Lbi/b;

    invoke-virtual {v0}, Lbi/b;->a()V

    return-void
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lbi/d;->d:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lbi/d;->b(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public a(Lbi/f;Lbi/c;Lbi/e;Z)V
    .registers 7

    invoke-virtual {p1}, Lbi/f;->a()F

    move-result v0

    invoke-virtual {p1}, Lbi/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lbi/d;->a(FF)V

    iget-object v0, p0, Lbi/d;->c:Lbi/b;

    iget-object v1, p0, Lbi/d;->b:Lbn/f;

    invoke-virtual {v0, v1, p2, p3, p4}, Lbi/b;->a(Lbn/f;Lbi/c;Lbi/e;Z)V

    return-void
.end method

.method public a(Lbi/f;Lbi/c;Z)V
    .registers 5

    sget-object v0, Lbi/e;->d:Lbi/e;

    invoke-virtual {p0, p1, p2, v0, p3}, Lbi/d;->a(Lbi/f;Lbi/c;Lbi/e;Z)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .registers 5

    if-eqz p2, :cond_6

    const/high16 v0, 0x3f00

    iput v0, p0, Lbi/d;->d:F

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbi/d;->c:Lbi/b;

    invoke-virtual {v0}, Lbi/b;->b()F

    move-result v0

    invoke-direct {p0, v0}, Lbi/d;->b(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbi/d;->c:Lbi/b;

    invoke-virtual {v0, p1, p2}, Lbi/b;->a(Landroid/graphics/Canvas;Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
