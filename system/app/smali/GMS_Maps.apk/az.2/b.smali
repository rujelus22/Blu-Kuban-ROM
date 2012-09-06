.class public LaZ/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbb/f;

.field private final b:Lbb/f;

.field private final c:Lbb/f;

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:I

.field private final g:LaZ/d;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Lbb/f;

.field private p:F

.field private q:I

.field private r:[Lbb/f;

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(IILbb/f;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lbb/f;

    invoke-direct {v0}, Lbb/f;-><init>()V

    iput-object v0, p0, LaZ/b;->a:Lbb/f;

    .line 22
    new-instance v0, Lbb/f;

    invoke-direct {v0}, Lbb/f;-><init>()V

    iput-object v0, p0, LaZ/b;->b:Lbb/f;

    .line 23
    new-instance v0, Lbb/f;

    invoke-direct {v0}, Lbb/f;-><init>()V

    iput-object v0, p0, LaZ/b;->c:Lbb/f;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaZ/b;->d:Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, LaZ/b;->l:F

    .line 39
    const/4 v0, 0x4

    iput v0, p0, LaZ/b;->q:I

    .line 43
    iput-boolean v2, p0, LaZ/b;->u:Z

    .line 44
    iput-boolean v2, p0, LaZ/b;->v:Z

    .line 45
    iput-boolean v2, p0, LaZ/b;->w:Z

    .line 48
    iput p1, p0, LaZ/b;->e:I

    .line 49
    iput p2, p0, LaZ/b;->f:I

    .line 50
    iput-object p3, p0, LaZ/b;->o:Lbb/f;

    .line 51
    iget-object v0, p0, LaZ/b;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, LaZ/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance v0, LaZ/d;

    invoke-direct {v0}, LaZ/d;-><init>()V

    iput-object v0, p0, LaZ/b;->g:LaZ/d;

    .line 54
    iput v2, p0, LaZ/b;->s:I

    .line 57
    invoke-direct {p0}, LaZ/b;->f()I

    move-result v0

    iput v0, p0, LaZ/b;->t:I

    .line 58
    invoke-direct {p0}, LaZ/b;->g()V

    .line 59
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-boolean v1, p0, LaZ/b;->w:Z

    if-nez v1, :cond_93

    .line 179
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 180
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    const/16 v1, 0xff

    const/16 v3, 0xa9

    const/16 v4, 0xd8

    const/16 v5, 0xf0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 184
    iget v1, p0, LaZ/b;->q:I

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-lez v1, :cond_3f

    .line 185
    iget-object v3, p0, LaZ/b;->r:[Lbb/f;

    aget-object v3, v3, v1

    iget-object v4, p0, LaZ/b;->r:[Lbb/f;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lbb/f;->a:F

    iput v4, v3, Lbb/f;->a:F

    .line 186
    iget-object v3, p0, LaZ/b;->r:[Lbb/f;

    aget-object v3, v3, v1

    iget-object v4, p0, LaZ/b;->r:[Lbb/f;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lbb/f;->b:F

    iput v4, v3, Lbb/f;->b:F

    .line 184
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 188
    :cond_3f
    iget-object v1, p0, LaZ/b;->r:[Lbb/f;

    aget-object v1, v1, v0

    iget-object v3, p0, LaZ/b;->b:Lbb/f;

    iget v3, v3, Lbb/f;->a:F

    iput v3, v1, Lbb/f;->a:F

    .line 189
    iget-object v1, p0, LaZ/b;->r:[Lbb/f;

    aget-object v1, v1, v0

    iget-object v3, p0, LaZ/b;->b:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    iput v3, v1, Lbb/f;->b:F

    .line 193
    iget v1, p0, LaZ/b;->l:F

    const/high16 v3, 0x4120

    cmpl-float v1, v1, v3

    if-lez v1, :cond_93

    .line 194
    iget v1, p0, LaZ/b;->n:F

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 195
    iget v1, p0, LaZ/b;->k:F

    .line 196
    :goto_63
    iget v3, p0, LaZ/b;->q:I

    if-ge v0, v3, :cond_93

    .line 197
    const/4 v3, 0x0

    iget v4, p0, LaZ/b;->n:F

    mul-int/lit8 v5, v0, 0x1e

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    iget-object v3, p0, LaZ/b;->r:[Lbb/f;

    aget-object v3, v3, v0

    iget v3, v3, Lbb/f;->a:F

    iget-object v4, p0, LaZ/b;->r:[Lbb/f;

    aget-object v4, v4, v0

    iget v4, v4, Lbb/f;->b:F

    const/high16 v5, 0x4000

    mul-float/2addr v5, v1

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 199
    float-to-double v3, v1

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    double-to-float v1, v3

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 203
    :cond_93
    return-void
.end method

.method private b(Lbb/f;)V
    .registers 8
    .parameter

    .prologue
    const/high16 v5, 0x437f

    .line 121
    iget-object v0, p0, LaZ/b;->o:Lbb/f;

    invoke-virtual {v0, p1}, Lbb/f;->a(Lbb/f;)V

    .line 122
    iget-object v0, p0, LaZ/b;->a:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:F

    iget-object v2, p0, LaZ/b;->o:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, LaZ/b;->o:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    invoke-static {v0, v1, v2, v3}, Lbb/c;->a(FFFF)F

    move-result v0

    iput v0, p0, LaZ/b;->h:F

    .line 123
    iget-object v0, p0, LaZ/b;->a:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:F

    iget-object v2, p0, LaZ/b;->o:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, LaZ/b;->o:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    invoke-static {v0, v1, v2, v3}, Lbb/c;->b(FFFF)F

    move-result v0

    iput v0, p0, LaZ/b;->i:F

    .line 124
    iget v0, p0, LaZ/b;->l:F

    iget v1, p0, LaZ/b;->m:F

    add-float/2addr v0, v1

    iput v0, p0, LaZ/b;->l:F

    .line 126
    iget v0, p0, LaZ/b;->l:F

    const/high16 v1, 0x4300

    cmpg-float v0, v0, v1

    if-gez v0, :cond_46

    .line 127
    iget v0, p0, LaZ/b;->l:F

    iput v0, p0, LaZ/b;->n:F

    .line 130
    :cond_46
    iget v0, p0, LaZ/b;->l:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_60

    .line 133
    iget-object v0, p0, LaZ/b;->g:LaZ/d;

    iget-object v1, p0, LaZ/b;->c:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget-object v2, p0, LaZ/b;->c:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    invoke-virtual {v0, v1, v2}, LaZ/d;->a(FF)V

    .line 134
    const/high16 v0, 0x3f80

    iput v0, p0, LaZ/b;->l:F

    .line 135
    invoke-direct {p0}, LaZ/b;->g()V

    .line 139
    :cond_60
    const/high16 v0, 0x437d

    iget v1, p0, LaZ/b;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, LaZ/b;->n:F

    .line 140
    const/high16 v0, 0x4000

    iget v1, p0, LaZ/b;->n:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LaZ/b;->n:F

    .line 141
    iget v0, p0, LaZ/b;->l:F

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, LaZ/b;->j:F

    .line 143
    iget-object v0, p0, LaZ/b;->c:Lbb/f;

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget v2, p0, LaZ/b;->j:F

    iget v3, p0, LaZ/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LaZ/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbb/f;->a:F

    .line 144
    iget-object v0, p0, LaZ/b;->c:Lbb/f;

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:F

    iget v2, p0, LaZ/b;->j:F

    iget v3, p0, LaZ/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LaZ/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    .line 146
    iget v0, p0, LaZ/b;->l:F

    div-float/2addr v0, v5

    iput v0, p0, LaZ/b;->p:F

    .line 147
    iget-object v0, p0, LaZ/b;->b:Lbb/f;

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget v2, p0, LaZ/b;->j:F

    iget v3, p0, LaZ/b;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, LaZ/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LaZ/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbb/f;->a:F

    .line 149
    iget-object v0, p0, LaZ/b;->b:Lbb/f;

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->b:F

    iget v2, p0, LaZ/b;->j:F

    iget v3, p0, LaZ/b;->p:F

    mul-float/2addr v2, v3

    iget v3, p0, LaZ/b;->h:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, LaZ/b;->i:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    .line 153
    iget v0, p0, LaZ/b;->k:F

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, LaZ/b;->k:F

    .line 154
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, LaZ/b;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x6b

    const/16 v3, 0xcf

    const/16 v4, 0xed

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 209
    iget-object v0, p0, LaZ/b;->g:LaZ/d;

    iget-object v1, p0, LaZ/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, LaZ/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 210
    return-void
.end method

.method private f()I
    .registers 5

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4079

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private g()V
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, LaZ/b;->v:Z

    if-eqz v0, :cond_10

    .line 67
    invoke-direct {p0}, LaZ/b;->h()V

    .line 68
    iget-object v0, p0, LaZ/b;->o:Lbb/f;

    invoke-direct {p0, v0}, LaZ/b;->b(Lbb/f;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, LaZ/b;->w:Z

    .line 73
    :goto_f
    return-void

    .line 71
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->w:Z

    goto :goto_f
.end method

.method private h()V
    .registers 9

    .prologue
    const/high16 v7, 0x4000

    .line 95
    iget-boolean v0, p0, LaZ/b;->v:Z

    if-eqz v0, :cond_73

    .line 96
    iget-object v0, p0, LaZ/b;->a:Lbb/f;

    iget v1, p0, LaZ/b;->e:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget v5, p0, LaZ/b;->e:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lbb/f;->a:F

    .line 97
    iget-object v0, p0, LaZ/b;->a:Lbb/f;

    iget v1, p0, LaZ/b;->f:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, LaZ/b;->f:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lbb/f;->b:F

    .line 98
    const v0, 0x3dcccccd

    iput v0, p0, LaZ/b;->p:F

    .line 99
    iget-object v0, p0, LaZ/b;->c:Lbb/f;

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget-object v2, p0, LaZ/b;->a:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    invoke-virtual {v0, v1, v2}, Lbb/f;->a(FF)V

    .line 100
    iget-object v0, p0, LaZ/b;->b:Lbb/f;

    iget-object v1, p0, LaZ/b;->a:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget-object v2, p0, LaZ/b;->a:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    invoke-virtual {v0, v1, v2}, Lbb/f;->a(FF)V

    .line 101
    iget v0, p0, LaZ/b;->q:I

    new-array v0, v0, [Lbb/f;

    iput-object v0, p0, LaZ/b;->r:[Lbb/f;

    .line 102
    const/4 v0, 0x0

    :goto_57
    iget v1, p0, LaZ/b;->q:I

    if-ge v0, v1, :cond_6f

    .line 103
    iget-object v1, p0, LaZ/b;->r:[Lbb/f;

    new-instance v2, Lbb/f;

    iget-object v3, p0, LaZ/b;->a:Lbb/f;

    iget v3, v3, Lbb/f;->a:F

    iget-object v4, p0, LaZ/b;->a:Lbb/f;

    iget v4, v4, Lbb/f;->b:F

    invoke-direct {v2, v3, v4}, Lbb/f;-><init>(FF)V

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 105
    :cond_6f
    invoke-direct {p0}, LaZ/b;->i()V

    .line 109
    :goto_72
    return-void

    .line 107
    :cond_73
    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->w:Z

    goto :goto_72
.end method

.method private i()V
    .registers 6

    .prologue
    .line 114
    const/high16 v0, 0x4040

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, LaZ/b;->k:F

    .line 117
    const/high16 v0, 0x3f80

    iget v1, p0, LaZ/b;->k:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LaZ/b;->m:F

    .line 118
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->v:Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, LaZ/b;->s:I

    .line 78
    invoke-direct {p0}, LaZ/b;->f()I

    move-result v0

    iput v0, p0, LaZ/b;->t:I

    .line 79
    invoke-direct {p0}, LaZ/b;->g()V

    .line 80
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iget-boolean v0, p0, LaZ/b;->u:Z

    if-eqz v0, :cond_b

    .line 170
    invoke-direct {p0, p1}, LaZ/b;->b(Landroid/graphics/Canvas;)V

    .line 171
    invoke-direct {p0, p1}, LaZ/b;->c(Landroid/graphics/Canvas;)V

    .line 175
    :cond_a
    :goto_a
    return-void

    .line 172
    :cond_b
    iget-object v0, p0, LaZ/b;->g:LaZ/d;

    iget-boolean v0, v0, LaZ/d;->a:Z

    if-eqz v0, :cond_a

    .line 173
    invoke-direct {p0, p1}, LaZ/b;->c(Landroid/graphics/Canvas;)V

    goto :goto_a
.end method

.method public a(Lbb/f;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    iget-boolean v0, p0, LaZ/b;->u:Z

    if-nez v0, :cond_13

    .line 158
    iget v0, p0, LaZ/b;->s:I

    iget v1, p0, LaZ/b;->t:I

    if-le v0, v1, :cond_d

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->u:Z

    .line 161
    :cond_d
    iget v0, p0, LaZ/b;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaZ/b;->s:I

    .line 163
    :cond_13
    iget-boolean v0, p0, LaZ/b;->u:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, LaZ/b;->w:Z

    if-nez v0, :cond_1e

    .line 164
    invoke-direct {p0, p1}, LaZ/b;->b(Lbb/f;)V

    .line 166
    :cond_1e
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, LaZ/b;->v:Z

    .line 84
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, LaZ/b;->g:LaZ/d;

    iget-boolean v0, v0, LaZ/d;->a:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, LaZ/b;->w:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, LaZ/b;->v:Z

    return v0
.end method
