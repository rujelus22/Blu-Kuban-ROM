.class public Lbl/d;
.super Ljava/lang/Object;


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

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/d;->a:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbl/d;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lbl/d;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lbl/d;->b:Landroid/graphics/Path;

    const/high16 v1, 0x4248

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/d;->a:Z

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8

    iget-object v0, p0, Lbl/d;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lbl/d;->b:Landroid/graphics/Path;

    iget v1, p0, Lbl/d;->c:F

    iget v2, p0, Lbl/d;->d:F

    iget v3, p0, Lbl/d;->e:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lbl/d;->j:F

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    iput v0, p0, Lbl/d;->j:F

    iget v0, p0, Lbl/d;->j:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lbl/d;->h:F

    float-to-int v0, v0

    const/16 v1, 0xa9

    const/16 v2, 0xd8

    const/16 v3, 0xf0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lbl/d;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 8

    const/4 v3, 0x0

    iput p1, p0, Lbl/d;->c:F

    iput p2, p0, Lbl/d;->d:F

    const/high16 v0, 0x4170

    iput v0, p0, Lbl/d;->g:F

    iput v3, p0, Lbl/d;->e:F

    const/high16 v0, 0x41a0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41c8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lbl/d;->f:F

    const/high16 v0, 0x4348

    iput v0, p0, Lbl/d;->h:F

    iput v3, p0, Lbl/d;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/d;->a:Z

    const/high16 v0, 0x4040

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4014

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lbl/d;->j:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6

    iget-boolean v0, p0, Lbl/d;->a:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lbl/d;->e:F

    iget v1, p0, Lbl/d;->f:F

    iget v2, p0, Lbl/d;->e:F

    sub-float/2addr v1, v2

    iget v2, p0, Lbl/d;->g:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lbl/d;->e:F

    iget v0, p0, Lbl/d;->h:F

    iget v1, p0, Lbl/d;->i:F

    iget v2, p0, Lbl/d;->h:F

    sub-float/2addr v1, v2

    iget v2, p0, Lbl/d;->g:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lbl/d;->h:F

    invoke-direct {p0, p1, p2}, Lbl/d;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget v0, p0, Lbl/d;->f:F

    iget v1, p0, Lbl/d;->e:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    invoke-direct {p0}, Lbl/d;->a()V

    :cond_2f
    return-void
.end method
