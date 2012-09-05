.class public Lbj/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lbn/f;

.field private final c:Lbj/c;

.field private d:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbn/f;

    invoke-direct {v0}, Lbn/f;-><init>()V

    iput-object v0, p0, Lbj/b;->b:Lbn/f;

    int-to-float v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lbj/b;->a:I

    sget-object v0, Lbi/f;->a:Lbi/f;

    invoke-virtual {v0}, Lbi/f;->a()F

    move-result v0

    sget-object v1, Lbi/f;->a:Lbi/f;

    invoke-virtual {v1}, Lbi/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lbj/b;->a(FF)V

    new-instance v0, Lbj/c;

    const v1, 0x3e19999a

    iget-object v5, p0, Lbj/b;->b:Lbn/f;

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbj/c;-><init>(FIILandroid/graphics/Bitmap;Lbn/f;)V

    iput-object v0, p0, Lbj/b;->c:Lbj/c;

    return-void
.end method

.method private a(F)F
    .registers 5

    const/high16 v0, -0x4080

    iget v1, p0, Lbj/b;->d:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lbj/b;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(FF)V
    .registers 12

    iget-object v0, p0, Lbj/b;->b:Lbn/f;

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

    invoke-virtual {v0, v1, v2, v3, v4}, Lbn/f;->a(DD)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lbj/b;->c:Lbj/c;

    invoke-virtual {v0}, Lbj/c;->a()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lbj/b;->b(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public a(Lbi/f;)V
    .registers 4

    invoke-virtual {p1}, Lbi/f;->a()F

    move-result v0

    invoke-virtual {p1}, Lbi/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lbj/b;->a(FF)V

    iget-object v0, p0, Lbj/b;->c:Lbj/c;

    iget-object v1, p0, Lbj/b;->b:Lbn/f;

    invoke-virtual {v0, v1}, Lbj/c;->a(Lbn/f;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .registers 5

    if-eqz p2, :cond_6

    const/high16 v0, 0x3f00

    iput v0, p0, Lbj/b;->d:F

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbj/b;->c:Lbj/c;

    invoke-virtual {v0}, Lbj/c;->b()F

    move-result v0

    invoke-direct {p0, v0}, Lbj/b;->a(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lbj/b;->c:Lbj/c;

    invoke-virtual {v0, p1, p2}, Lbj/c;->a(Landroid/graphics/Canvas;Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
