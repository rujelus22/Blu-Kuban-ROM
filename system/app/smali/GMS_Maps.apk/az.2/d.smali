.class public LaZ/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private final b:Landroid/graphics/Path;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, LaZ/d;->a:Z

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LaZ/d;->b:Landroid/graphics/Path;

    .line 33
    iget-object v0, p0, LaZ/d;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 36
    iget-object v0, p0, LaZ/d;->b:Landroid/graphics/Path;

    const/high16 v1, 0x4248

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 37
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, LaZ/d;->a:Z

    .line 53
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LaZ/d;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 68
    iget-object v0, p0, LaZ/d;->b:Landroid/graphics/Path;

    iget v1, p0, LaZ/d;->c:F

    iget v2, p0, LaZ/d;->d:F

    iget v3, p0, LaZ/d;->e:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 69
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget v0, p0, LaZ/d;->j:F

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    iput v0, p0, LaZ/d;->j:F

    .line 71
    iget v0, p0, LaZ/d;->j:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget v0, p0, LaZ/d;->h:F

    float-to-int v0, v0

    const/16 v1, 0xa9

    const/16 v2, 0xd8

    const/16 v3, 0xf0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 73
    iget-object v0, p0, LaZ/d;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 40
    iput p1, p0, LaZ/d;->c:F

    .line 41
    iput p2, p0, LaZ/d;->d:F

    .line 42
    const/high16 v0, 0x4170

    iput v0, p0, LaZ/d;->g:F

    .line 43
    iput v3, p0, LaZ/d;->e:F

    .line 44
    const/high16 v0, 0x41a0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41c8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LaZ/d;->f:F

    .line 45
    const/high16 v0, 0x4348

    iput v0, p0, LaZ/d;->h:F

    .line 46
    iput v3, p0, LaZ/d;->i:F

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/d;->a:Z

    .line 48
    const/high16 v0, 0x4040

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4014

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, LaZ/d;->j:F

    .line 49
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, LaZ/d;->a:Z

    if-eqz v0, :cond_2f

    .line 57
    iget v0, p0, LaZ/d;->e:F

    iget v1, p0, LaZ/d;->f:F

    iget v2, p0, LaZ/d;->e:F

    sub-float/2addr v1, v2

    iget v2, p0, LaZ/d;->g:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LaZ/d;->e:F

    .line 58
    iget v0, p0, LaZ/d;->h:F

    iget v1, p0, LaZ/d;->i:F

    iget v2, p0, LaZ/d;->h:F

    sub-float/2addr v1, v2

    iget v2, p0, LaZ/d;->g:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LaZ/d;->h:F

    .line 59
    invoke-direct {p0, p1, p2}, LaZ/d;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 60
    iget v0, p0, LaZ/d;->f:F

    iget v1, p0, LaZ/d;->e:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    .line 61
    invoke-direct {p0}, LaZ/d;->a()V

    .line 64
    :cond_2f
    return-void
.end method
