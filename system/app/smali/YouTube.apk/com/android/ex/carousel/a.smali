.class public final Lcom/android/ex/carousel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:Z

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:I

.field private M:F

.field private N:[F

.field private O:[F

.field private P:[F

.field private Q:Landroid/renderscript/Float4;

.field private R:Lcom/android/ex/carousel/d;

.field private S:F

.field private T:J

.field private U:J

.field private V:Landroid/graphics/Bitmap;

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:[I

.field private final a:I

.field private final b:F

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:F

.field private final k:I

.field private l:Lcom/android/ex/carousel/b;

.field private m:Landroid/renderscript/RenderScriptGL;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:I

.field private s:I

.field private t:[F

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f80

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/carousel/a;->a:I

    .line 38
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/ex/carousel/a;->b:F

    .line 39
    iput v2, p0, Lcom/android/ex/carousel/a;->c:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/carousel/a;->d:I

    .line 41
    iput v4, p0, Lcom/android/ex/carousel/a;->e:I

    .line 42
    iput v7, p0, Lcom/android/ex/carousel/a;->f:F

    .line 43
    iput v6, p0, Lcom/android/ex/carousel/a;->g:F

    .line 44
    iput v6, p0, Lcom/android/ex/carousel/a;->h:F

    .line 45
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/ex/carousel/a;->i:F

    .line 46
    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/android/ex/carousel/a;->j:F

    .line 47
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/ex/carousel/a;->k:I

    .line 59
    new-array v0, v2, [I

    fill-array-data v0, :array_a0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/a;->q:Landroid/graphics/Bitmap;

    .line 64
    iput v1, p0, Lcom/android/ex/carousel/a;->u:I

    .line 65
    iput v1, p0, Lcom/android/ex/carousel/a;->v:I

    .line 66
    iput v2, p0, Lcom/android/ex/carousel/a;->w:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/carousel/a;->x:I

    .line 68
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/ex/carousel/a;->y:I

    .line 69
    iput-boolean v1, p0, Lcom/android/ex/carousel/a;->z:Z

    .line 70
    iput-boolean v4, p0, Lcom/android/ex/carousel/a;->A:Z

    .line 73
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/ex/carousel/a;->D:F

    .line 74
    iput v6, p0, Lcom/android/ex/carousel/a;->E:F

    .line 75
    iput-boolean v1, p0, Lcom/android/ex/carousel/a;->F:Z

    .line 76
    iput v7, p0, Lcom/android/ex/carousel/a;->G:F

    .line 77
    iput v6, p0, Lcom/android/ex/carousel/a;->H:F

    .line 78
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/ex/carousel/a;->I:F

    .line 79
    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/android/ex/carousel/a;->J:F

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/carousel/a;->K:I

    .line 81
    iput v4, p0, Lcom/android/ex/carousel/a;->L:I

    .line 82
    iput v6, p0, Lcom/android/ex/carousel/a;->M:F

    .line 83
    new-array v0, v2, [F

    fill-array-data v0, :array_aa

    iput-object v0, p0, Lcom/android/ex/carousel/a;->N:[F

    .line 84
    new-array v0, v2, [F

    fill-array-data v0, :array_b4

    iput-object v0, p0, Lcom/android/ex/carousel/a;->O:[F

    .line 85
    new-array v0, v2, [F

    fill-array-data v0, :array_be

    iput-object v0, p0, Lcom/android/ex/carousel/a;->P:[F

    .line 86
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0, v6, v6, v6, v7}, Landroid/renderscript/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    .line 88
    iput v6, p0, Lcom/android/ex/carousel/a;->S:F

    .line 89
    const-wide/16 v2, 0xfa

    iput-wide v2, p0, Lcom/android/ex/carousel/a;->T:J

    .line 90
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/ex/carousel/a;->U:J

    .line 91
    new-array v0, v4, [I

    aput v1, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v2, v4

    move v3, v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/a;->V:Landroid/graphics/Bitmap;

    .line 93
    iput v1, p0, Lcom/android/ex/carousel/a;->W:I

    .line 94
    iput v4, p0, Lcom/android/ex/carousel/a;->X:I

    .line 95
    iput-boolean v1, p0, Lcom/android/ex/carousel/a;->Y:Z

    .line 99
    return-void

    .line 59
    :array_a0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_aa
    .array-data 0x4
        0x94t 0x76t 0xa5t 0x41t
        0xf3t 0x54t 0x31t 0x40t
        0xe8t 0xd9t 0x85t 0x41t
    .end array-data

    .line 84
    :array_b4
    .array-data 0x4
        0xa6t 0x9bt 0x6bt 0x41t
        0xc4t 0x99t 0x59t 0xc0t
        0xb1t 0xa2t 0xa6t 0xbft
    .end array-data

    .line 85
    :array_be
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 108
    iget v0, p0, Lcom/android/ex/carousel/a;->K:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->a(I)V

    .line 109
    iget-object v0, p0, Lcom/android/ex/carousel/a;->t:[F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->a([F)V

    .line 110
    iget v0, p0, Lcom/android/ex/carousel/a;->u:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->g(I)V

    .line 111
    iget v0, p0, Lcom/android/ex/carousel/a;->v:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->b(I)V

    .line 112
    iget v0, p0, Lcom/android/ex/carousel/a;->w:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->c(I)V

    .line 113
    iget v0, p0, Lcom/android/ex/carousel/a;->x:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->d(I)V

    .line 114
    iget v0, p0, Lcom/android/ex/carousel/a;->G:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->b(F)V

    .line 115
    iget v0, p0, Lcom/android/ex/carousel/a;->L:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->e(I)V

    .line 116
    iget v0, p0, Lcom/android/ex/carousel/a;->M:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->a(F)V

    .line 117
    iget-boolean v0, p0, Lcom/android/ex/carousel/a;->Y:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->a(Z)V

    .line 118
    iget v0, p0, Lcom/android/ex/carousel/a;->y:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->f(I)V

    .line 119
    iget-boolean v0, p0, Lcom/android/ex/carousel/a;->z:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->b(Z)V

    .line 120
    iget-boolean v0, p0, Lcom/android/ex/carousel/a;->A:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->c(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/ex/carousel/a;->R:Lcom/android/ex/carousel/d;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->a(Lcom/android/ex/carousel/d;)V

    .line 122
    iget-object v0, p0, Lcom/android/ex/carousel/a;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->a(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v0, p0, Lcom/android/ex/carousel/a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->b(Landroid/graphics/Bitmap;)V

    .line 124
    iget v0, p0, Lcom/android/ex/carousel/a;->r:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->h(I)V

    .line 125
    iget v0, p0, Lcom/android/ex/carousel/a;->s:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->i(I)V

    .line 126
    iget-object v0, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    iget v0, v0, Landroid/renderscript/Float4;->x:F

    iget-object v1, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->y:F

    iget-object v2, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    iget v2, v2, Landroid/renderscript/Float4;->z:F

    iget-object v3, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    iget v3, v3, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ex/carousel/a;->a(FFFF)V

    .line 128
    iget-object v0, p0, Lcom/android/ex/carousel/a;->p:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->c(Landroid/graphics/Bitmap;)V

    .line 129
    iget-object v0, p0, Lcom/android/ex/carousel/a;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->e(Landroid/graphics/Bitmap;)V

    .line 130
    iget v0, p0, Lcom/android/ex/carousel/a;->B:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->c(F)V

    .line 131
    iget v0, p0, Lcom/android/ex/carousel/a;->C:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->d(F)V

    .line 132
    iget v0, p0, Lcom/android/ex/carousel/a;->D:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->e(F)V

    .line 133
    iget v0, p0, Lcom/android/ex/carousel/a;->E:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->f(F)V

    .line 134
    iget-boolean v0, p0, Lcom/android/ex/carousel/a;->F:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->d(Z)V

    .line 135
    iget v0, p0, Lcom/android/ex/carousel/a;->H:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->g(F)V

    .line 136
    iget v0, p0, Lcom/android/ex/carousel/a;->I:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->h(F)V

    .line 137
    iget v0, p0, Lcom/android/ex/carousel/a;->J:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->i(F)V

    .line 138
    iget v0, p0, Lcom/android/ex/carousel/a;->W:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->j(I)V

    .line 139
    iget v0, p0, Lcom/android/ex/carousel/a;->X:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->k(I)V

    .line 140
    iget-object v0, p0, Lcom/android/ex/carousel/a;->N:[F

    iget-object v1, p0, Lcom/android/ex/carousel/a;->O:[F

    iget-object v2, p0, Lcom/android/ex/carousel/a;->P:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/carousel/a;->a([F[F[F)V

    .line 141
    iget v0, p0, Lcom/android/ex/carousel/a;->S:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->j(F)V

    .line 142
    iget-wide v0, p0, Lcom/android/ex/carousel/a;->T:J

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/a;->a(J)V

    .line 143
    iget-wide v0, p0, Lcom/android/ex/carousel/a;->U:J

    iput-wide v0, p0, Lcom/android/ex/carousel/a;->U:J

    iget-object v2, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v2, v0, v1}, Lcom/android/ex/carousel/b;->b(J)V

    .line 144
    :cond_c9
    iget-object v0, p0, Lcom/android/ex/carousel/a;->V:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/a;->d(Landroid/graphics/Bitmap;)V

    .line 145
    iget-object v0, p0, Lcom/android/ex/carousel/a;->Z:[I

    iput-object v0, p0, Lcom/android/ex/carousel/a;->Z:[I

    iget-object v1, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/b;->a([I)V

    .line 146
    :cond_db
    return-void
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 265
    iput p1, p0, Lcom/android/ex/carousel/a;->M:F

    .line 266
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->f(F)V

    .line 269
    :cond_b
    return-void
.end method

.method public final a(FFFF)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/renderscript/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    .line 478
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_12

    .line 479
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    iget-object v1, p0, Lcom/android/ex/carousel/a;->Q:Landroid/renderscript/Float4;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/b;->a(Landroid/renderscript/Float4;)V

    .line 481
    :cond_12
    return-void
.end method

.method public final a(FFJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/b;->b(FFJ)V

    .line 776
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 205
    iput p1, p0, Lcom/android/ex/carousel/a;->K:I

    .line 206
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->i(I)V

    .line 209
    :cond_b
    return-void
.end method

.method public final a(IFFFFLandroid/graphics/Bitmap;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/ex/carousel/a;->m:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_13

    .line 398
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/b;->a(IFFFFLandroid/graphics/Bitmap;)V

    .line 401
    :cond_13
    return-void
.end method

.method public final a(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/ex/carousel/a;->m:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_d

    .line 375
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/b;->a(ILandroid/graphics/Bitmap;)V

    .line 378
    :cond_d
    return-void
.end method

.method public final a(ILandroid/renderscript/Mesh;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/b;->a(ILandroid/renderscript/Mesh;)V

    .line 171
    :cond_9
    return-void
.end method

.method public final a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/ex/carousel/a;->m:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_e

    .line 416
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/carousel/b;->a(IZ)V

    .line 419
    :cond_e
    return-void
.end method

.method public final a(I[F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/b;->a(I[F)V

    .line 196
    :cond_9
    return-void
.end method

.method public final a(J)V
    .registers 4
    .parameter

    .prologue
    .line 749
    iput-wide p1, p0, Lcom/android/ex/carousel/a;->T:J

    .line 750
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 751
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/b;->a(J)V

    .line 753
    :cond_b
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/ex/carousel/a;->n:Landroid/graphics/Bitmap;

    .line 447
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 448
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->a(Landroid/graphics/Bitmap;)V

    .line 450
    :cond_b
    return-void
.end method

.method public final a(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/ex/carousel/a;->m:Landroid/renderscript/RenderScriptGL;

    .line 104
    iput-object p2, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    .line 105
    return-void
.end method

.method public final a(Lcom/android/ex/carousel/d;)V
    .registers 3
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/ex/carousel/a;->R:Lcom/android/ex/carousel/d;

    .line 578
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 579
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->a(Lcom/android/ex/carousel/d;)V

    .line 581
    :cond_b
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/android/ex/carousel/a;->Y:Z

    .line 276
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->b(Z)V

    .line 279
    :cond_b
    return-void
.end method

.method public final a([F)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/ex/carousel/a;->t:[F

    .line 549
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 550
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->a([F)V

    .line 552
    :cond_b
    return-void
.end method

.method public final a([F[F[F)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/ex/carousel/a;->N:[F

    .line 717
    iput-object p2, p0, Lcom/android/ex/carousel/a;->O:[F

    .line 718
    iput-object p3, p0, Lcom/android/ex/carousel/a;->P:[F

    .line 719
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_f

    .line 720
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ex/carousel/b;->a([F[F[F)V

    .line 722
    :cond_f
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Lcom/android/ex/carousel/a;->u:I

    return v0
.end method

.method public final b(F)V
    .registers 3
    .parameter

    .prologue
    .line 285
    iput p1, p0, Lcom/android/ex/carousel/a;->G:F

    .line 286
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 287
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->g(F)V

    .line 289
    :cond_b
    return-void
.end method

.method public final b(FFJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/b;->a(FFJ)V

    .line 786
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 217
    iput p1, p0, Lcom/android/ex/carousel/a;->v:I

    .line 218
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 219
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->d(I)V

    .line 221
    :cond_b
    return-void
.end method

.method public final b(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/ex/carousel/a;->m:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_d

    .line 432
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/b;->b(IZ)V

    .line 435
    :cond_d
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/ex/carousel/a;->o:Landroid/graphics/Bitmap;

    .line 462
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 463
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->b(Landroid/graphics/Bitmap;)V

    .line 465
    :cond_b
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/android/ex/carousel/a;->z:Z

    .line 324
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 325
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->c(Z)V

    .line 327
    :cond_b
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0}, Lcom/android/ex/carousel/b;->b()V

    .line 793
    return-void
.end method

.method public final c(F)V
    .registers 3
    .parameter

    .prologue
    .line 599
    iput p1, p0, Lcom/android/ex/carousel/a;->B:F

    .line 600
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 601
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->h(F)V

    .line 603
    :cond_b
    return-void
.end method

.method public final c(FFJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/b;->c(FFJ)V

    .line 803
    return-void
.end method

.method public final c(I)V
    .registers 3
    .parameter

    .prologue
    .line 229
    iput p1, p0, Lcom/android/ex/carousel/a;->w:I

    .line 230
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 231
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->e(I)V

    .line 233
    :cond_b
    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/ex/carousel/a;->p:Landroid/graphics/Bitmap;

    .line 491
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 492
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->c(Landroid/graphics/Bitmap;)V

    .line 494
    :cond_b
    return-void
.end method

.method public final c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/ex/carousel/a;->A:Z

    .line 336
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 337
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->d(Z)V

    .line 339
    :cond_b
    return-void
.end method

.method public final d(F)V
    .registers 3
    .parameter

    .prologue
    .line 616
    iput p1, p0, Lcom/android/ex/carousel/a;->C:F

    .line 617
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 618
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->i(F)V

    .line 620
    :cond_b
    return-void
.end method

.method public final d(I)V
    .registers 3
    .parameter

    .prologue
    .line 245
    iput p1, p0, Lcom/android/ex/carousel/a;->x:I

    .line 246
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->g(I)V

    .line 249
    :cond_b
    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/ex/carousel/a;->V:Landroid/graphics/Bitmap;

    .line 504
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 505
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->e(Landroid/graphics/Bitmap;)V

    .line 507
    :cond_b
    return-void
.end method

.method public final d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 688
    iput-boolean p1, p0, Lcom/android/ex/carousel/a;->F:Z

    .line 689
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 690
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->a(Z)V

    .line 692
    :cond_b
    return-void
.end method

.method public final e(F)V
    .registers 3
    .parameter

    .prologue
    .line 646
    iput p1, p0, Lcom/android/ex/carousel/a;->D:F

    .line 647
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 648
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->a(F)V

    .line 650
    :cond_b
    return-void
.end method

.method public final e(I)V
    .registers 3
    .parameter

    .prologue
    .line 255
    iput p1, p0, Lcom/android/ex/carousel/a;->L:I

    .line 256
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 257
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->f(I)V

    .line 259
    :cond_b
    return-void
.end method

.method public final e(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/ex/carousel/a;->q:Landroid/graphics/Bitmap;

    .line 518
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 519
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->d(Landroid/graphics/Bitmap;)V

    .line 521
    :cond_b
    return-void
.end method

.method public final f(F)V
    .registers 3
    .parameter

    .prologue
    .line 681
    iput p1, p0, Lcom/android/ex/carousel/a;->E:F

    .line 682
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 683
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->b(F)V

    .line 685
    :cond_b
    return-void
.end method

.method public final f(I)V
    .registers 4
    .parameter

    .prologue
    .line 297
    const v0, 0xff00

    and-int/2addr v0, p1

    .line 298
    if-eqz v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 299
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one horizontal alignment flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_13
    and-int/lit16 v0, p1, 0xff

    .line 303
    if-eqz v0, :cond_1c

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_24

    .line 304
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one vertical alignment flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_24
    iput p1, p0, Lcom/android/ex/carousel/a;->y:I

    .line 309
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_2f

    .line 310
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->h(I)V

    .line 312
    :cond_2f
    return-void
.end method

.method public final g(F)V
    .registers 3
    .parameter

    .prologue
    .line 695
    iput p1, p0, Lcom/android/ex/carousel/a;->H:F

    .line 696
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 697
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->c(F)V

    .line 699
    :cond_b
    return-void
.end method

.method public final g(I)V
    .registers 3
    .parameter

    .prologue
    .line 350
    iput p1, p0, Lcom/android/ex/carousel/a;->u:I

    .line 351
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 352
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->c(I)V

    .line 354
    :cond_b
    return-void
.end method

.method public final h(F)V
    .registers 3
    .parameter

    .prologue
    .line 702
    iput p1, p0, Lcom/android/ex/carousel/a;->I:F

    .line 703
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 704
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->d(F)V

    .line 706
    :cond_b
    return-void
.end method

.method public final h(I)V
    .registers 4
    .parameter

    .prologue
    .line 532
    iput p1, p0, Lcom/android/ex/carousel/a;->r:I

    .line 533
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_11

    .line 534
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->j(I)Landroid/renderscript/Mesh;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/b;->a(Landroid/renderscript/Mesh;)V

    .line 537
    :cond_11
    return-void
.end method

.method public final i(F)V
    .registers 3
    .parameter

    .prologue
    .line 709
    iput p1, p0, Lcom/android/ex/carousel/a;->J:F

    .line 710
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 711
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->e(F)V

    .line 713
    :cond_b
    return-void
.end method

.method public final i(I)V
    .registers 4
    .parameter

    .prologue
    .line 563
    iput p1, p0, Lcom/android/ex/carousel/a;->s:I

    .line 564
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_11

    .line 565
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->j(I)Landroid/renderscript/Mesh;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/b;->b(Landroid/renderscript/Mesh;)V

    .line 568
    :cond_11
    return-void
.end method

.method public final j(F)V
    .registers 3
    .parameter

    .prologue
    .line 733
    iput p1, p0, Lcom/android/ex/carousel/a;->S:F

    .line 734
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 735
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->j(F)V

    .line 737
    :cond_b
    return-void
.end method

.method public final j(I)V
    .registers 3
    .parameter

    .prologue
    .line 662
    iput p1, p0, Lcom/android/ex/carousel/a;->W:I

    .line 663
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 664
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->a(I)V

    .line 666
    :cond_b
    return-void
.end method

.method public final k(I)V
    .registers 3
    .parameter

    .prologue
    .line 674
    iput p1, p0, Lcom/android/ex/carousel/a;->X:I

    .line 675
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    if-eqz v0, :cond_b

    .line 676
    iget-object v0, p0, Lcom/android/ex/carousel/a;->l:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/b;->b(I)V

    .line 678
    :cond_b
    return-void
.end method
