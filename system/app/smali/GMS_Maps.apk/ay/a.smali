.class public LaY/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:Lbb/f;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Lbb/b;

.field private j:Lbb/f;

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:Landroid/graphics/Paint;

.field private p:Lbb/f;

.field private q:Lbb/f;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:[Landroid/graphics/Bitmap;

.field private w:I

.field private x:I

.field private y:Z

.field private z:Lbb/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFLandroid/graphics/Bitmap;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/16 v7, 0x78

    const/16 v6, 0xff

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lbb/f;

    invoke-direct {v0, v1, v1}, Lbb/f;-><init>(II)V

    iput-object v0, p0, LaY/a;->c:Lbb/f;

    .line 38
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, LaY/a;->e:I

    .line 39
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, LaY/a;->f:I

    .line 40
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, LaY/a;->g:I

    .line 41
    const/high16 v0, 0x3f00

    iput v0, p0, LaY/a;->h:F

    .line 50
    const/16 v0, 0x18

    iput v0, p0, LaY/a;->n:I

    .line 58
    iput-boolean v1, p0, LaY/a;->t:Z

    .line 59
    iput-boolean v1, p0, LaY/a;->u:Z

    .line 62
    iput v1, p0, LaY/a;->w:I

    .line 63
    iput v1, p0, LaY/a;->x:I

    .line 64
    iput-boolean v1, p0, LaY/a;->y:Z

    .line 75
    iput-object p1, p0, LaY/a;->a:Landroid/content/Context;

    .line 76
    iput p2, p0, LaY/a;->b:I

    .line 77
    iget-object v0, p0, LaY/a;->c:Lbb/f;

    iput p3, v0, Lbb/f;->b:F

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, LaY/a;->v:[Landroid/graphics/Bitmap;

    move v2, v1

    .line 82
    :goto_45
    const/4 v0, 0x4

    if-ge v2, v0, :cond_62

    move v0, v1

    .line 83
    :goto_49
    const/4 v3, 0x4

    if-ge v0, v3, :cond_5e

    .line 84
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v0

    .line 85
    mul-int/lit8 v4, v0, 0x78

    .line 86
    mul-int/lit8 v5, v2, 0x78

    .line 87
    invoke-static {p4, v4, v5, v7, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 88
    iget-object v5, p0, LaY/a;->v:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 82
    :cond_5e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_45

    .line 92
    :cond_62
    iput v7, p0, LaY/a;->k:I

    .line 93
    iput v7, p0, LaY/a;->l:I

    .line 94
    new-instance v0, Lbb/f;

    iget v2, p0, LaY/a;->k:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, LaY/a;->l:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Lbb/f;-><init>(II)V

    iput-object v0, p0, LaY/a;->j:Lbb/f;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaY/a;->d:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, LaY/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 98
    iget-object v0, p0, LaY/a;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaY/a;->m:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, LaY/a;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 102
    iget-object v0, p0, LaY/a;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaY/a;->o:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, LaY/a;->o:Landroid/graphics/Paint;

    iget v1, p0, LaY/a;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-object v0, p0, LaY/a;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 109
    new-instance v0, Lbb/f;

    iget-object v1, p0, LaY/a;->j:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget-object v2, p0, LaY/a;->j:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    iget-object v3, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x4040

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbb/f;-><init>(FF)V

    iput-object v0, p0, LaY/a;->p:Lbb/f;

    .line 111
    new-instance v0, Lbb/f;

    iget-object v1, p0, LaY/a;->p:Lbb/f;

    iget v1, v1, Lbb/f;->a:F

    iget-object v2, p0, LaY/a;->p:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    iget-object v3, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lbb/f;-><init>(FF)V

    iput-object v0, p0, LaY/a;->q:Lbb/f;

    .line 113
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, LaY/a;->i:Lbb/b;

    .line 114
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v0, v8}, Lbb/b;->a(F)V

    .line 115
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 116
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v0, v8}, Lbb/b;->b(F)V

    .line 118
    new-instance v0, Lbb/b;

    invoke-direct {v0}, Lbb/b;-><init>()V

    iput-object v0, p0, LaY/a;->z:Lbb/b;

    .line 119
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0, v9}, Lbb/b;->a(F)V

    .line 120
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lbb/b;->a(I)V

    .line 121
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0, v9}, Lbb/b;->b(F)V

    .line 123
    invoke-direct {p0}, LaY/a;->c()V

    .line 124
    return-void
.end method

.method private c()V
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    const/16 v0, 0x8c

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, LaY/a;->e:I

    .line 152
    const/16 v0, 0x64

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, LaY/a;->f:I

    .line 153
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, LaY/a;->g:I

    .line 155
    new-array v5, v3, [I

    iget v0, p0, LaY/a;->e:I

    aput v0, v5, v2

    const/4 v0, 0x1

    iget v2, p0, LaY/a;->f:I

    aput v2, v5, v0

    const/4 v0, 0x2

    iget v2, p0, LaY/a;->g:I

    aput v2, v5, v0

    .line 156
    new-array v6, v3, [F

    fill-array-data v6, :array_4c

    .line 158
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x4348

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 162
    iget-object v1, p0, LaY/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 165
    iget-object v0, p0, LaY/a;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 167
    return-void

    .line 156
    nop

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, LaY/a;->r:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, LaY/a;->s:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 331
    iget-boolean v0, p0, LaY/a;->t:Z

    if-nez v0, :cond_10

    .line 332
    iput-boolean v1, p0, LaY/a;->t:Z

    .line 333
    iput-boolean v1, p0, LaY/a;->u:Z

    .line 334
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 336
    :cond_10
    return-void
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 346
    iput p1, p0, LaY/a;->h:F

    .line 347
    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_11

    .line 348
    iget-boolean v0, p0, LaY/a;->t:Z

    if-nez v0, :cond_10

    .line 349
    invoke-virtual {p0}, LaY/a;->a()V

    .line 356
    :cond_10
    :goto_10
    return-void

    .line 352
    :cond_11
    iget-boolean v0, p0, LaY/a;->t:Z

    if-eqz v0, :cond_10

    .line 353
    invoke-virtual {p0}, LaY/a;->b()V

    goto :goto_10
.end method

.method public a(LaU/c;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x1

    .line 170
    sget-object v0, LaY/b;->a:[I

    invoke-virtual {p1}, LaU/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    .line 243
    :goto_e
    iget v0, p0, LaY/a;->x:I

    iget v1, p0, LaY/a;->w:I

    if-eq v0, v1, :cond_1c

    .line 246
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 247
    iput-boolean v2, p0, LaY/a;->y:Z

    .line 249
    :cond_1c
    return-void

    .line 173
    :pswitch_1d
    const/4 v0, 0x0

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 177
    :pswitch_21
    const/16 v0, 0xd

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 181
    :pswitch_26
    const/16 v0, 0xa

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 186
    :pswitch_2b
    const/4 v0, 0x7

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 190
    :pswitch_2f
    const/4 v0, 0x5

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 195
    :pswitch_33
    iput v3, p0, LaY/a;->w:I

    goto :goto_e

    .line 200
    :pswitch_36
    const/4 v0, 0x6

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 204
    :pswitch_3a
    iput v3, p0, LaY/a;->w:I

    goto :goto_e

    .line 208
    :pswitch_3d
    iput v2, p0, LaY/a;->w:I

    goto :goto_e

    .line 213
    :pswitch_40
    const/16 v0, 0xb

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 217
    :pswitch_45
    iput v2, p0, LaY/a;->w:I

    goto :goto_e

    .line 221
    :pswitch_48
    const/16 v0, 0xe

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 225
    :pswitch_4d
    const/4 v0, 0x3

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 229
    :pswitch_51
    const/16 v0, 0xc

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 235
    :pswitch_56
    const/16 v0, 0x9

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 239
    :pswitch_5b
    const/4 v0, 0x4

    iput v0, p0, LaY/a;->w:I

    goto :goto_e

    .line 170
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_33
        :pswitch_36
        :pswitch_36
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_40
        :pswitch_45
        :pswitch_48
        :pswitch_4d
        :pswitch_51
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_5b
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0xff

    const/high16 v8, 0x3f80

    const/high16 v7, 0x437f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 269
    iget-boolean v0, p0, LaY/a;->u:Z

    if-eqz v0, :cond_127

    invoke-direct {p0}, LaY/a;->d()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 270
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 271
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->a()V

    .line 272
    iget-object v0, p0, LaY/a;->m:Landroid/graphics/Paint;

    iget-object v2, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    iget-boolean v0, p0, LaY/a;->y:Z

    if-eqz v0, :cond_40

    .line 275
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_138

    .line 277
    iget v0, p0, LaY/a;->w:I

    iput v0, p0, LaY/a;->x:I

    .line 278
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0, v8}, Lbb/b;->b(F)V

    .line 285
    :cond_40
    :goto_40
    iget-object v0, p0, LaY/a;->d:Landroid/graphics/Paint;

    iget-object v2, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    iget v0, p0, LaY/a;->b:I

    int-to-float v3, v0

    const/high16 v4, 0x4348

    iget-object v5, p0, LaY/a;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 290
    iget-object v0, p0, LaY/a;->c:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    iget-object v2, p0, LaY/a;->c:Lbb/f;

    iget v2, v2, Lbb/f;->b:F

    iget-object v3, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v3}, Lbb/b;->b()F

    move-result v3

    sub-float v3, v8, v3

    const/high16 v4, 0x41f0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 293
    const/high16 v0, 0x4240

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    iget v0, p0, LaY/a;->k:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, LaY/a;->l:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 297
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    iget-object v2, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    iget-object v2, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 303
    iget-object v0, p0, LaY/a;->v:[Landroid/graphics/Bitmap;

    iget v2, p0, LaY/a;->x:I

    aget-object v0, v0, v2

    iget v2, p0, LaY/a;->k:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, LaY/a;->l:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, LaY/a;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    iget-object v0, p0, LaY/a;->o:Landroid/graphics/Paint;

    iget-object v2, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 310
    iget-object v0, p0, LaY/a;->r:Ljava/lang/String;

    iget-object v2, p0, LaY/a;->p:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, LaY/a;->p:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    iget-object v4, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    iget-object v0, p0, LaY/a;->s:Ljava/lang/String;

    iget-object v2, p0, LaY/a;->q:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, LaY/a;->q:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    iget-object v4, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    iget-object v0, p0, LaY/a;->o:Landroid/graphics/Paint;

    iget-object v2, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v2}, Lbb/b;->b()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 315
    iget-object v0, p0, LaY/a;->r:Ljava/lang/String;

    iget-object v2, p0, LaY/a;->p:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, LaY/a;->p:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    iget-object v4, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    iget-object v0, p0, LaY/a;->s:Ljava/lang/String;

    iget-object v2, p0, LaY/a;->q:Lbb/f;

    iget v2, v2, Lbb/f;->a:F

    iget-object v3, p0, LaY/a;->q:Lbb/f;

    iget v3, v3, Lbb/f;->b:F

    iget-object v4, p0, LaY/a;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 321
    :cond_127
    iget-boolean v0, p0, LaY/a;->t:Z

    if-nez v0, :cond_137

    iget-object v0, p0, LaY/a;->i:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_137

    .line 322
    iput-boolean v6, p0, LaY/a;->u:Z

    .line 324
    :cond_137
    return-void

    .line 279
    :cond_138
    iget-object v0, p0, LaY/a;->z:Lbb/b;

    invoke-virtual {v0}, Lbb/b;->b()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_40

    iget v0, p0, LaY/a;->x:I

    iget v2, p0, LaY/a;->w:I

    if-ne v0, v2, :cond_40

    .line 280
    iput-boolean v6, p0, LaY/a;->y:Z

    goto/16 :goto_40
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, LaY/a;->r:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 339
    iget-boolean v0, p0, LaY/a;->t:Z

    if-eqz v0, :cond_d

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/a;->t:Z

    .line 341
    iget-object v0, p0, LaY/a;->i:Lbb/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbb/b;->b(F)V

    .line 343
    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, LaY/a;->s:Ljava/lang/String;

    .line 265
    return-void
.end method
