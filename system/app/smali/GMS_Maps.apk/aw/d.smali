.class public LaW/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lbb/f;

.field private final c:LaW/b;

.field private d:F


# direct methods
.method public constructor <init>(II[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lbb/f;

    invoke-direct {v0}, Lbb/f;-><init>()V

    iput-object v0, p0, LaW/d;->b:Lbb/f;

    .line 33
    int-to-float v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, LaW/d;->a:I

    .line 36
    sget-object v0, LaW/f;->a:LaW/f;

    invoke-virtual {v0}, LaW/f;->a()F

    move-result v0

    sget-object v1, LaW/f;->b:LaW/f;

    invoke-virtual {v1}, LaW/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, LaW/d;->a(FF)V

    .line 38
    new-instance v0, LaW/b;

    const/high16 v1, 0x3f00

    iget-object v6, p0, LaW/d;->b:Lbb/f;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, LaW/b;-><init>(FII[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Lbb/f;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LaW/d;->c:LaW/b;

    .line 41
    return-void
.end method

.method private a(FF)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    .line 48
    new-instance v0, Lbb/f;

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

    invoke-direct {v0, v1, v2, v3, v4}, Lbb/f;-><init>(DD)V

    .line 52
    iget-object v1, p0, LaW/d;->b:Lbb/f;

    iget v2, v0, Lbb/f;->a:F

    mul-float/2addr v2, v9

    iput v2, v1, Lbb/f;->a:F

    .line 53
    iget-object v1, p0, LaW/d;->b:Lbb/f;

    iget v0, v0, Lbb/f;->b:F

    mul-float/2addr v0, v9

    iput v0, v1, Lbb/f;->b:F

    .line 54
    return-void
.end method

.method private b(F)F
    .registers 5
    .parameter

    .prologue
    .line 109
    const/high16 v0, -0x4080

    iget v1, p0, LaW/d;->d:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, LaW/d;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, LaW/d;->c:LaW/b;

    invoke-virtual {v0}, LaW/b;->a()V

    .line 73
    return-void
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput p1, p0, LaW/d;->d:F

    .line 91
    return-void
.end method

.method public a(LaW/f;LaW/c;LaW/e;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, LaW/f;->a()F

    move-result v0

    invoke-virtual {p1}, LaW/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, LaW/d;->a(FF)V

    .line 68
    iget-object v0, p0, LaW/d;->c:LaW/b;

    iget-object v1, p0, LaW/d;->b:Lbb/f;

    invoke-virtual {v0, v1, p2, p3, p4}, LaW/b;->a(Lbb/f;LaW/c;LaW/e;Z)V

    .line 69
    return-void
.end method

.method public a(LaW/f;LaW/c;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    sget-object v0, LaW/e;->d:LaW/e;

    invoke-virtual {p0, p1, p2, v0, p3}, LaW/d;->a(LaW/f;LaW/c;LaW/e;Z)V

    .line 60
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, LaW/d;->b(Landroid/graphics/Canvas;Z)V

    .line 45
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    if-eqz p2, :cond_6

    .line 79
    const/high16 v0, 0x3f00

    iput v0, p0, LaW/d;->d:F

    .line 83
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    iget-object v0, p0, LaW/d;->c:LaW/b;

    invoke-virtual {v0}, LaW/b;->b()F

    move-result v0

    invoke-direct {p0, v0}, LaW/d;->b(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget-object v0, p0, LaW/d;->c:LaW/b;

    invoke-virtual {v0, p1, p2}, LaW/b;->a(Landroid/graphics/Canvas;Z)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    return-void
.end method
