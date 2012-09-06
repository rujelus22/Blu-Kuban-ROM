.class public LaX/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lbb/f;

.field private final c:LaX/c;

.field private d:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lbb/f;

    invoke-direct {v0}, Lbb/f;-><init>()V

    iput-object v0, p0, LaX/b;->b:Lbb/f;

    .line 28
    int-to-float v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, LaX/b;->a:I

    .line 31
    sget-object v0, LaW/f;->a:LaW/f;

    invoke-virtual {v0}, LaW/f;->a()F

    move-result v0

    sget-object v1, LaW/f;->a:LaW/f;

    invoke-virtual {v1}, LaW/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, LaX/b;->a(FF)V

    .line 32
    new-instance v0, LaX/c;

    const v1, 0x3e19999a

    iget-object v5, p0, LaX/b;->b:Lbb/f;

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LaX/c;-><init>(FIILandroid/graphics/Bitmap;Lbb/f;)V

    iput-object v0, p0, LaX/b;->c:LaX/c;

    .line 33
    return-void
.end method

.method private a(F)F
    .registers 5
    .parameter

    .prologue
    .line 72
    const/high16 v0, -0x4080

    iget v1, p0, LaX/b;->d:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, LaX/b;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(FF)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, LaX/b;->b:Lbb/f;

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

    invoke-virtual {v0, v1, v2, v3, v4}, Lbb/f;->a(DD)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LaX/b;->c:LaX/c;

    invoke-virtual {v0}, LaX/c;->a()V

    .line 51
    return-void
.end method

.method public a(LaW/f;)V
    .registers 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, LaW/f;->a()F

    move-result v0

    invoke-virtual {p1}, LaW/f;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, LaX/b;->a(FF)V

    .line 46
    iget-object v0, p0, LaX/b;->c:LaX/c;

    iget-object v1, p0, LaX/b;->b:Lbb/f;

    invoke-virtual {v0, v1}, LaX/c;->a(Lbb/f;)V

    .line 47
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, LaX/b;->b(Landroid/graphics/Canvas;Z)V

    .line 37
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p2, :cond_6

    .line 57
    const/high16 v0, 0x3f00

    iput v0, p0, LaX/b;->d:F

    .line 61
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    iget-object v0, p0, LaX/b;->c:LaX/c;

    invoke-virtual {v0}, LaX/c;->b()F

    move-result v0

    invoke-direct {p0, v0}, LaX/b;->a(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    iget-object v0, p0, LaX/b;->c:LaX/c;

    invoke-virtual {v0, p1, p2}, LaX/c;->a(Landroid/graphics/Canvas;Z)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    return-void
.end method
