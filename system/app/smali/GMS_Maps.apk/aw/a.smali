.class public LaW/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field private final b:Lbb/f;

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:LaW/b;

.field private final j:Lbb/b;

.field private final k:Lbb/b;

.field private l:Lbb/f;

.field private m:Landroid/graphics/Bitmap;

.field private n:Z

.field private o:I

.field private p:Z

.field private q:LaW/c;

.field private r:LaW/e;


# direct methods
.method public constructor <init>(LaW/b;IILandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;LaW/c;Lbb/f;Landroid/graphics/Bitmap;Z)V
    .registers 19
    .parameter
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v1, 0xff

    iput v1, p0, LaW/a;->o:I

    .line 56
    iput-object p1, p0, LaW/a;->i:LaW/b;

    .line 57
    iput p2, p0, LaW/a;->d:I

    .line 58
    iput p3, p0, LaW/a;->e:I

    .line 60
    iput-object p4, p0, LaW/a;->c:Landroid/graphics/Paint;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iput-object p5, p0, LaW/a;->f:Landroid/graphics/Bitmap;

    .line 63
    iput-object p6, p0, LaW/a;->g:Landroid/graphics/Bitmap;

    .line 65
    iput-object p7, p0, LaW/a;->q:LaW/c;

    .line 67
    invoke-direct {p0}, LaW/a;->c()V

    .line 72
    new-instance v1, Lbb/f;

    const-wide/high16 v2, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object/from16 v0, p8

    iget v4, v0, Lbb/f;->a:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object/from16 v0, p8

    iget v6, v0, Lbb/f;->b:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lbb/f;-><init>(DD)V

    iput-object v1, p0, LaW/a;->l:Lbb/f;

    .line 74
    move-object/from16 v0, p9

    iput-object v0, p0, LaW/a;->h:Landroid/graphics/Bitmap;

    .line 75
    move/from16 v0, p10

    iput-boolean v0, p0, LaW/a;->n:Z

    .line 77
    new-instance v1, Lbb/b;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Lbb/b;-><init>(F)V

    iput-object v1, p0, LaW/a;->j:Lbb/b;

    .line 78
    new-instance v1, Lbb/b;

    invoke-direct {v1}, Lbb/b;-><init>()V

    iput-object v1, p0, LaW/a;->k:Lbb/b;

    .line 80
    new-instance v1, Lbb/f;

    iget-object v2, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget-object v6, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p3

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lbb/f;-><init>(FF)V

    iput-object v1, p0, LaW/a;->b:Lbb/f;

    .line 87
    iget-object v1, p0, LaW/a;->j:Lbb/b;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Lbb/b;->a(F)V

    .line 88
    iget-object v1, p0, LaW/a;->k:Lbb/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbb/b;->a(F)V

    .line 89
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, LaW/a;->g:Landroid/graphics/Bitmap;

    iput-object v0, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    .line 93
    sget-object v0, LaW/c;->a:LaW/c;

    iget-object v1, p0, LaW/a;->q:LaW/c;

    if-ne v0, v1, :cond_e

    .line 94
    iget-object v0, p0, LaW/a;->f:Landroid/graphics/Bitmap;

    iput-object v0, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    .line 96
    :cond_e
    return-void
.end method


# virtual methods
.method public a()LaW/c;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, LaW/a;->q:LaW/c;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v3, 0x4120

    const v6, 0x3f733333

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 130
    iget-object v0, p0, LaW/a;->j:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 131
    iget-object v0, p0, LaW/a;->k:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 135
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v1, v0, Lbb/f;->a:F

    iget-object v2, p0, LaW/a;->l:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->a:F

    .line 136
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v1, v0, Lbb/f;->b:F

    iget-object v2, p0, LaW/a;->l:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    .line 139
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget v1, p0, LaW/a;->d:I

    iget-object v2, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_120

    .line 140
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget-object v1, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lbb/f;->a:F

    .line 146
    :cond_49
    :goto_49
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v0, v0, Lbb/f;->b:F

    iget v1, p0, LaW/a;->e:I

    int-to-float v1, v1

    iget-object v2, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_140

    .line 147
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget-object v1, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, v0, Lbb/f;->b:F

    .line 152
    :cond_6a
    :goto_6a
    iget-object v0, p0, LaW/a;->k:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    const v1, 0x3d4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11f

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v1, p0, LaW/a;->b:Lbb/f;

    iget v1, v1, Lbb/f;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    iget-object v0, p0, LaW/a;->j:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    iget-object v1, p0, LaW/a;->j:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    .line 162
    iget-boolean v1, p0, LaW/a;->n:Z

    if-eqz v1, :cond_b2

    float-to-double v0, v0

    const-wide v2, 0x3feff7ced916872bL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b2

    iget-boolean v0, p0, LaW/a;->p:Z

    if-nez v0, :cond_b2

    .line 164
    const/16 v0, 0xc8

    iput v0, p0, LaW/a;->o:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, LaW/a;->p:Z

    .line 169
    :cond_b2
    iget v0, p0, LaW/a;->o:I

    int-to-float v0, v0

    iget-object v1, p0, LaW/a;->r:LaW/e;

    invoke-virtual {v1}, LaW/e;->a()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, LaW/a;->o:I

    .line 170
    iget v0, p0, LaW/a;->o:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_c9

    .line 171
    iput v7, p0, LaW/a;->o:I

    .line 172
    iput-boolean v7, p0, LaW/a;->p:Z

    .line 176
    :cond_c9
    iget-boolean v0, p0, LaW/a;->p:Z

    if-eqz v0, :cond_f4

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    const v0, 0x3f666666

    .line 179
    iget-object v1, p0, LaW/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v4

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 180
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 181
    iget-object v0, p0, LaW/a;->c:Landroid/graphics/Paint;

    iget v1, p0, LaW/a;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    iget-object v0, p0, LaW/a;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, LaW/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 185
    :cond_f4
    iget-object v0, p0, LaW/a;->c:Landroid/graphics/Paint;

    iget-object v1, p0, LaW/a;->k:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 187
    iget-object v0, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    iget-object v1, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, LaW/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    :cond_11f
    return-void

    .line 141
    :cond_120
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v1, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_49

    .line 142
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v1, p0, LaW/a;->d:I

    iget-object v2, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lbb/f;->a:F

    goto/16 :goto_49

    .line 148
    :cond_140
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v0, v0, Lbb/f;->b:F

    iget-object v1, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6a

    .line 149
    iget-object v0, p0, LaW/a;->b:Lbb/f;

    iget v1, p0, LaW/a;->e:I

    int-to-float v1, v1

    iget-object v2, p0, LaW/a;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    goto/16 :goto_6a
.end method

.method public a(Lbb/f;LaW/c;LaW/e;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v5, 0x3fe0

    .line 109
    iget-object v0, p0, LaW/a;->l:Lbb/f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p1, Lbb/f;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p1, Lbb/f;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lbb/f;->a(DD)V

    .line 110
    iput-boolean p4, p0, LaW/a;->n:Z

    .line 111
    iput-object p2, p0, LaW/a;->q:LaW/c;

    .line 112
    iput-object p3, p0, LaW/a;->r:LaW/e;

    .line 114
    invoke-direct {p0}, LaW/a;->c()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, LaW/a;->a:Z

    .line 117
    iget-object v0, p0, LaW/a;->j:Lbb/b;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 118
    iget-object v0, p0, LaW/a;->j:Lbb/b;

    const-wide/high16 v1, 0x4020

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 119
    iget-object v0, p0, LaW/a;->k:Lbb/b;

    const/high16 v1, 0x437f

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 120
    iget-object v0, p0, LaW/a;->k:Lbb/b;

    iget-object v1, p0, LaW/a;->j:Lbb/b;

    invoke-virtual {v1}, Lbb/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 121
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, LaW/a;->a:Z

    .line 125
    iget-object v0, p0, LaW/a;->j:Lbb/b;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 126
    iget-object v0, p0, LaW/a;->k:Lbb/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 127
    return-void
.end method
