.class public Lba/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lbb/b;

.field private final s:Lba/b;

.field private t:F

.field private u:Z

.field private v:Z

.field private final w:Lbb/b;

.field private x:F

.field private y:Z

.field private final z:Lbb/b;


# direct methods
.method public constructor <init>(Lba/b;IILandroid/graphics/Bitmap;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/high16 v0, 0x437f

    iput v0, p0, Lba/a;->l:F

    .line 40
    iput v1, p0, Lba/a;->q:I

    .line 46
    iput-boolean v1, p0, Lba/a;->u:Z

    .line 50
    iput-boolean v1, p0, Lba/a;->v:Z

    .line 54
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, Lba/a;->w:Lbb/b;

    .line 55
    iput v4, p0, Lba/a;->x:F

    .line 56
    iput-boolean v1, p0, Lba/a;->y:Z

    .line 58
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, Lba/a;->z:Lbb/b;

    .line 59
    const/16 v0, 0x32

    iput v0, p0, Lba/a;->A:I

    .line 60
    iput-boolean v1, p0, Lba/a;->B:Z

    .line 61
    iput-boolean v1, p0, Lba/a;->C:Z

    .line 62
    iput v1, p0, Lba/a;->D:I

    .line 63
    iput v1, p0, Lba/a;->E:I

    .line 66
    iput-object p1, p0, Lba/a;->s:Lba/b;

    .line 67
    iput p2, p0, Lba/a;->a:I

    .line 68
    iput p3, p0, Lba/a;->b:I

    .line 69
    int-to-float v0, p2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lba/a;->c:I

    .line 70
    iput-object p4, p0, Lba/a;->d:Landroid/graphics/Bitmap;

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, -0x3f90c00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lba/a;->p:I

    .line 72
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, Lba/a;->r:Lbb/b;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lba/a;->e:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lba/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    iget-object v0, p0, Lba/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0, v6}, Lbb/b;->a(I)V

    .line 79
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0, v4}, Lbb/b;->a(F)V

    .line 80
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0, v4}, Lbb/b;->b(F)V

    .line 82
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0, v6}, Lbb/b;->a(I)V

    .line 83
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0, v4}, Lbb/b;->a(F)V

    .line 84
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0, v4}, Lbb/b;->b(F)V

    .line 85
    return-void
.end method

.method private f()V
    .registers 7

    .prologue
    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    .line 90
    const/high16 v0, 0x40c0

    invoke-static {v2, v0}, Lbb/c;->a(FF)F

    move-result v0

    .line 91
    const/high16 v1, 0x42c8

    .line 93
    cmpl-float v2, v0, v2

    if-lez v2, :cond_29

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_29

    .line 95
    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lbb/c;->a(FF)F

    move-result v0

    iput v0, p0, Lba/a;->k:F

    .line 96
    iget v0, p0, Lba/a;->a:I

    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v0

    iput v0, p0, Lba/a;->j:F

    .line 117
    :goto_28
    return-void

    .line 98
    :cond_29
    cmpl-float v2, v0, v4

    if-lez v2, :cond_47

    cmpg-float v2, v0, v3

    if-gtz v2, :cond_47

    .line 100
    iget v0, p0, Lba/a;->b:I

    int-to-float v0, v0

    neg-float v2, v1

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Lbb/c;->a(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lba/a;->k:F

    .line 101
    iget v0, p0, Lba/a;->a:I

    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v0

    iput v0, p0, Lba/a;->j:F

    goto :goto_28

    .line 103
    :cond_47
    cmpl-float v2, v0, v3

    if-lez v2, :cond_61

    cmpg-float v2, v0, v5

    if-gtz v2, :cond_61

    .line 105
    iget v0, p0, Lba/a;->b:I

    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v0

    iput v0, p0, Lba/a;->k:F

    .line 106
    neg-float v0, v1

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lbb/c;->a(FF)F

    move-result v0

    iput v0, p0, Lba/a;->j:F

    goto :goto_28

    .line 108
    :cond_61
    cmpl-float v2, v0, v5

    if-lez v2, :cond_81

    const/high16 v2, 0x4080

    cmpg-float v0, v0, v2

    if-gez v0, :cond_81

    .line 110
    iget v0, p0, Lba/a;->b:I

    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v0

    iput v0, p0, Lba/a;->k:F

    .line 111
    iget v0, p0, Lba/a;->a:I

    int-to-float v0, v0

    neg-float v2, v1

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Lbb/c;->a(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lba/a;->j:F

    goto :goto_28

    .line 114
    :cond_81
    iget v0, p0, Lba/a;->a:I

    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v0

    iput v0, p0, Lba/a;->j:F

    .line 115
    iget v0, p0, Lba/a;->b:I

    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v0

    iput v0, p0, Lba/a;->k:F

    goto :goto_28
.end method


# virtual methods
.method a()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4024

    const/16 v1, 0xff

    .line 120
    iget-boolean v0, p0, Lba/a;->v:Z

    if-eqz v0, :cond_95

    .line 121
    iget-object v0, p0, Lba/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 122
    invoke-direct {p0}, Lba/a;->f()V

    .line 123
    const-wide v0, 0x3fe999999999999aL

    const-wide v2, 0x3ff3333333333333L

    invoke-static {v0, v1, v2, v3}, Lbb/c;->a(DD)F

    move-result v0

    iput v0, p0, Lba/a;->t:F

    .line 124
    iput v6, p0, Lba/a;->g:F

    .line 125
    const/high16 v0, 0x3e80

    const/4 v1, 0x1

    invoke-static {v1}, Lbb/c;->a(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    iput v0, p0, Lba/a;->h:F

    .line 126
    iget v0, p0, Lba/a;->j:F

    iget v1, p0, Lba/a;->k:F

    iget-object v2, p0, Lba/a;->s:Lba/b;

    invoke-virtual {v2}, Lba/b;->b()F

    move-result v2

    iget-object v3, p0, Lba/a;->s:Lba/b;

    invoke-virtual {v3}, Lba/b;->c()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lbb/c;->a(FFFF)F

    move-result v0

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p0, Lba/a;->f:F

    .line 127
    iput v8, p0, Lba/a;->n:I

    .line 128
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x406f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0xfa

    iput v0, p0, Lba/a;->o:I

    .line 130
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, Lba/a;->r:Lbb/b;

    .line 131
    iget-object v0, p0, Lba/a;->r:Lbb/b;

    invoke-virtual {v0, v6}, Lbb/b;->a(F)V

    .line 132
    iget-object v0, p0, Lba/a;->r:Lbb/b;

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 133
    iget-object v0, p0, Lba/a;->r:Lbb/b;

    iget v1, p0, Lba/a;->o:I

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 135
    iput v7, p0, Lba/a;->l:F

    .line 136
    const/high16 v0, 0x4120

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lba/a;->m:F

    .line 140
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float/2addr v0, v7

    iput v0, p0, Lba/a;->i:F

    .line 141
    iput-boolean v8, p0, Lba/a;->u:Z

    .line 145
    :goto_94
    return-void

    .line 143
    :cond_95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba/a;->u:Z

    goto :goto_94
.end method

.method public a(F)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-boolean v0, p0, Lba/a;->y:Z

    if-nez v0, :cond_24

    .line 173
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0, v2}, Lbb/b;->a(F)V

    .line 174
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    iget v1, p0, Lba/a;->x:F

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 175
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 176
    const/high16 v0, 0x41a0

    const/high16 v1, 0x41f0

    invoke-static {v0, v1}, Lbb/c;->a(FF)F

    move-result v0

    iput v0, p0, Lba/a;->x:F

    .line 177
    iput-boolean v3, p0, Lba/a;->y:Z

    .line 181
    :cond_24
    iget-boolean v0, p0, Lba/a;->B:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lba/a;->C:Z

    if-nez v0, :cond_58

    .line 182
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0, v2}, Lbb/b;->a(F)V

    .line 183
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 184
    const/high16 v0, 0x4100

    div-float v0, p1, v0

    const/high16 v1, 0x42f0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lba/a;->A:I

    .line 185
    invoke-static {}, Lbb/c;->a()I

    move-result v0

    iput v0, p0, Lba/a;->E:I

    .line 186
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    iget v1, p0, Lba/a;->A:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 187
    iput-boolean v3, p0, Lba/a;->B:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba/a;->C:Z

    .line 190
    :cond_58
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x41a0

    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 281
    iget v0, p0, Lba/a;->j:F

    iget-object v1, p0, Lba/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lba/a;->k:F

    iget-object v2, p0, Lba/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    iget v0, p0, Lba/a;->E:I

    iget v1, p0, Lba/a;->D:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->b()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lba/a;->E:I

    iget v2, p0, Lba/a;->D:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    iget-object v0, p0, Lba/a;->r:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 289
    iget-object v0, p0, Lba/a;->r:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->c()F

    move-result v0

    iget-object v1, p0, Lba/a;->r:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->b()F

    move-result v1

    sub-float/2addr v0, v1

    .line 290
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 295
    iget v0, p0, Lba/a;->l:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    iget v0, p0, Lba/a;->l:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_80

    .line 297
    iget-object v0, p0, Lba/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 299
    :cond_80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 300
    return-void
.end method

.method a([[Lba/c;F)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/high16 v11, 0x4008

    const/16 v10, 0xff

    const/high16 v9, 0x3fc0

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 193
    iget v0, p0, Lba/a;->p:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lba/a;->p:I

    if-lez v0, :cond_1f9

    iget-boolean v0, p0, Lba/a;->u:Z

    if-nez v0, :cond_1f9

    .line 196
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 197
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 198
    iget v0, p0, Lba/a;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lba/a;->D:I

    .line 201
    iget-boolean v0, p0, Lba/a;->y:Z

    if-eqz v0, :cond_49

    .line 202
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    iget v2, p0, Lba/a;->x:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    .line 203
    iput-boolean v1, p0, Lba/a;->y:Z

    .line 204
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v0, v8}, Lbb/b;->b(F)V

    .line 205
    iget-object v0, p0, Lba/a;->w:Lbb/b;

    const/high16 v2, 0x41f0

    const/high16 v3, 0x42f0

    invoke-static {v2, v3}, Lbb/c;->a(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lbb/b;->a(I)V

    .line 210
    :cond_49
    iget-boolean v0, p0, Lba/a;->B:Z

    if-eqz v0, :cond_132

    .line 211
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    iget v2, p0, Lba/a;->A:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_72

    .line 212
    iput-boolean v1, p0, Lba/a;->B:Z

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba/a;->C:Z

    .line 214
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0, v8}, Lbb/b;->b(F)V

    .line 215
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    const/high16 v2, 0x41f0

    const/high16 v3, 0x42f0

    invoke-static {v2, v3}, Lbb/c;->a(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lbb/b;->a(I)V

    .line 222
    :cond_72
    :goto_72
    iget v0, p0, Lba/a;->g:F

    float-to-double v2, v0

    iget v0, p0, Lba/a;->h:F

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL

    sub-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_8f

    .line 223
    iget v0, p0, Lba/a;->g:F

    iget v2, p0, Lba/a;->h:F

    iget v3, p0, Lba/a;->g:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x4270

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lba/a;->g:F

    .line 226
    :cond_8f
    iget v0, p0, Lba/a;->n:I

    if-ge v0, v10, :cond_144

    .line 227
    iget v0, p0, Lba/a;->l:F

    float-to-double v2, v0

    const-wide v4, 0x3ff199999999999aL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lba/a;->l:F

    .line 228
    const/high16 v0, 0x437f

    iget v2, p0, Lba/a;->l:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lba/a;->l:F

    .line 238
    :cond_a9
    :goto_a9
    iget v0, p0, Lba/a;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17f

    move v0, v1

    .line 239
    :goto_b0
    iget v2, p0, Lba/a;->b:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    if-ge v0, v2, :cond_17f

    move v2, v1

    .line 240
    :goto_bd
    iget v3, p0, Lba/a;->a:I

    iget v4, p0, Lba/a;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, p2

    float-to-int v3, v3

    if-ge v2, v3, :cond_17b

    .line 241
    iget v3, p0, Lba/a;->j:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12f

    iget v3, p0, Lba/a;->j:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12f

    iget v3, p0, Lba/a;->k:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12f

    iget v3, p0, Lba/a;->k:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    div-float v5, p2, v9

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12f

    .line 243
    iget v3, p0, Lba/a;->j:F

    iget v4, p0, Lba/a;->k:F

    int-to-float v5, v2

    mul-float/2addr v5, p2

    int-to-float v6, v0

    mul-float/2addr v6, p2

    invoke-static {v3, v4, v5, v6}, Lbb/c;->b(FFFF)F

    move-result v3

    .line 244
    cmpg-float v3, v3, p2

    if-gez v3, :cond_12f

    .line 248
    aget-object v3, p1, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lba/c;->a()F

    move-result v3

    iget v4, p0, Lba/a;->f:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x40069e955b62f741L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_12f

    .line 249
    iget v3, p0, Lba/a;->f:F

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lba/c;->a()F

    move-result v4

    iget v5, p0, Lba/a;->f:F

    sub-float/2addr v4, v5

    iget v5, p0, Lba/a;->i:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lba/a;->f:F

    .line 240
    :cond_12f
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 217
    :cond_132
    iget-boolean v0, p0, Lba/a;->C:Z

    if-eqz v0, :cond_72

    .line 218
    iget-object v0, p0, Lba/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_72

    .line 219
    iput-boolean v1, p0, Lba/a;->C:Z

    goto/16 :goto_72

    .line 229
    :cond_144
    iget v0, p0, Lba/a;->n:I

    iget v2, p0, Lba/a;->o:I

    add-int/lit8 v2, v2, -0x64

    if-le v0, v2, :cond_16e

    .line 230
    iget v0, p0, Lba/a;->l:F

    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lba/a;->l:F

    .line 231
    iget v0, p0, Lba/a;->m:F

    float-to-double v2, v0

    const-wide v4, 0x3fefae147ae147aeL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lba/a;->m:F

    .line 232
    iget v0, p0, Lba/a;->m:F

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lba/a;->m:F

    goto/16 :goto_a9

    .line 233
    :cond_16e
    iget v0, p0, Lba/a;->n:I

    iget v2, p0, Lba/a;->o:I

    if-le v0, v2, :cond_a9

    .line 234
    iget-object v0, p0, Lba/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v10, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_a9

    .line 239
    :cond_17b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b0

    .line 256
    :cond_17f
    iget v0, p0, Lba/a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lba/a;->q:I

    .line 259
    iget v0, p0, Lba/a;->j:F

    float-to-double v0, v0

    iget v2, p0, Lba/a;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget v4, p0, Lba/a;->g:F

    iget-object v5, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v5}, Lbb/b;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lba/a;->j:F

    .line 260
    iget v0, p0, Lba/a;->k:F

    float-to-double v0, v0

    iget v2, p0, Lba/a;->f:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lba/a;->g:F

    iget-object v5, p0, Lba/a;->w:Lbb/b;

    invoke-virtual {v5}, Lbb/b;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lba/a;->k:F

    .line 262
    iget-object v0, p0, Lba/a;->s:Lba/b;

    invoke-virtual {v0}, Lba/b;->b()F

    move-result v0

    iget-object v1, p0, Lba/a;->s:Lba/b;

    invoke-virtual {v1}, Lba/b;->c()F

    move-result v1

    iget v2, p0, Lba/a;->j:F

    iget v3, p0, Lba/a;->k:F

    invoke-static {v0, v1, v2, v3}, Lbb/c;->b(FFFF)F

    move-result v0

    .line 263
    iget-object v1, p0, Lba/a;->s:Lba/b;

    invoke-virtual {v1}, Lba/b;->d()F

    move-result v1

    iget v2, p0, Lba/a;->t:F

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1f9

    .line 264
    iget v1, p0, Lba/a;->g:F

    float-to-double v1, v1

    const-wide v3, 0x3fee666666666666L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lba/a;->g:F

    .line 265
    iget-object v1, p0, Lba/a;->s:Lba/b;

    invoke-virtual {v1}, Lba/b;->e()F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f9

    .line 266
    iget v0, p0, Lba/a;->n:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lba/a;->n:I

    .line 271
    :cond_1f9
    iget v0, p0, Lba/a;->n:I

    iget v1, p0, Lba/a;->o:I

    if-le v0, v1, :cond_202

    .line 274
    invoke-virtual {p0}, Lba/a;->a()V

    .line 276
    :cond_202
    iget v0, p0, Lba/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lba/a;->n:I

    .line 277
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lba/a;->v:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lba/a;->u:Z

    return v0
.end method

.method public d()V
    .registers 5

    .prologue
    .line 156
    iget-boolean v0, p0, Lba/a;->v:Z

    if-nez v0, :cond_17

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lba/a;->v:Z

    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, -0x3f90c00000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lba/a;->p:I

    .line 159
    invoke-virtual {p0}, Lba/a;->a()V

    .line 161
    :cond_17
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lba/a;->v:Z

    if-eqz v0, :cond_7

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba/a;->v:Z

    .line 167
    :cond_7
    return-void
.end method
