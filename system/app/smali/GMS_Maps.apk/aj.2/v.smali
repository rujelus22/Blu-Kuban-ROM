.class public Laj/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laj/w;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:F

.field private u:F

.field private v:F

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Laj/w;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 165
    iput-object p1, p0, Laj/v;->a:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Laj/v;->b:Laj/w;

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laj/v;->t:F

    .line 168
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 316
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 324
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 14
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 328
    iget-object v0, p0, Laj/v;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    .line 329
    iget-object v0, p0, Laj/v;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 331
    :cond_f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Laj/v;->e:Landroid/view/MotionEvent;

    .line 333
    iput v1, p0, Laj/v;->n:F

    .line 334
    iput v1, p0, Laj/v;->o:F

    .line 335
    iput v1, p0, Laj/v;->p:F

    .line 337
    iget-object v0, p0, Laj/v;->d:Landroid/view/MotionEvent;

    .line 339
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 340
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 341
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 342
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 343
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 344
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 345
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 346
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 348
    sub-float/2addr v3, v1

    .line 349
    sub-float/2addr v4, v2

    .line 350
    sub-float/2addr v7, v5

    .line 351
    sub-float/2addr v8, v6

    .line 352
    iput v3, p0, Laj/v;->j:F

    .line 353
    iput v4, p0, Laj/v;->k:F

    .line 354
    iput v7, p0, Laj/v;->l:F

    .line 355
    iput v8, p0, Laj/v;->m:F

    .line 357
    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    iput v5, p0, Laj/v;->f:F

    .line 358
    mul-float v5, v8, v11

    add-float/2addr v5, v6

    iput v5, p0, Laj/v;->g:F

    .line 359
    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    iput v1, p0, Laj/v;->h:F

    .line 360
    mul-float v1, v4, v11

    add-float/2addr v1, v2

    iput v1, p0, Laj/v;->i:F

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Laj/v;->s:J

    .line 362
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Laj/v;->q:F

    .line 363
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Laj/v;->r:F

    .line 364
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Laj/v;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    .line 368
    iget-object v0, p0, Laj/v;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 369
    iput-object v2, p0, Laj/v;->d:Landroid/view/MotionEvent;

    .line 371
    :cond_d
    iget-object v0, p0, Laj/v;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_18

    .line 372
    iget-object v0, p0, Laj/v;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 373
    iput-object v2, p0, Laj/v;->e:Landroid/view/MotionEvent;

    .line 375
    :cond_18
    iput-boolean v1, p0, Laj/v;->w:Z

    .line 376
    iput-boolean v1, p0, Laj/v;->c:Z

    .line 377
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Laj/v;->f:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const v5, 0xff00

    const/4 v4, 0x2

    const/high16 v10, -0x4080

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 174
    iget-boolean v3, p0, Laj/v;->c:Z

    if-nez v3, :cond_14f

    .line 175
    const/4 v3, 0x5

    if-eq v2, v3, :cond_17

    const/16 v3, 0x105

    if-ne v2, v3, :cond_b9

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v4, :cond_b9

    .line 181
    iget-object v2, p0, Laj/v;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 182
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Laj/v;->t:F

    sub-float/2addr v3, v4

    iput v3, p0, Laj/v;->u:F

    .line 183
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Laj/v;->t:F

    sub-float/2addr v2, v3

    iput v2, p0, Laj/v;->v:F

    .line 186
    invoke-direct {p0}, Laj/v;->h()V

    .line 188
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Laj/v;->d:Landroid/view/MotionEvent;

    .line 189
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laj/v;->s:J

    .line 191
    invoke-direct {p0, p1}, Laj/v;->b(Landroid/view/MotionEvent;)V

    .line 197
    iget v2, p0, Laj/v;->t:F

    .line 198
    iget v4, p0, Laj/v;->u:F

    .line 199
    iget v5, p0, Laj/v;->v:F

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 202
    invoke-static {p1, v1}, Laj/v;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 203
    invoke-static {p1, v1}, Laj/v;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 205
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_6d

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_6d

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6d

    cmpl-float v3, v6, v5

    if-lez v3, :cond_8a

    :cond_6d
    move v3, v1

    .line 207
    :goto_6e
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_7e

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_7e

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_7e

    cmpl-float v2, v8, v5

    if-lez v2, :cond_8c

    :cond_7e
    move v2, v1

    .line 210
    :goto_7f
    if-eqz v3, :cond_8e

    if-eqz v2, :cond_8e

    .line 211
    iput v10, p0, Laj/v;->f:F

    .line 212
    iput v10, p0, Laj/v;->g:F

    .line 213
    iput-boolean v1, p0, Laj/v;->w:Z

    .line 308
    :cond_89
    :goto_89
    return v1

    :cond_8a
    move v3, v0

    .line 205
    goto :goto_6e

    :cond_8c
    move v2, v0

    .line 207
    goto :goto_7f

    .line 214
    :cond_8e
    if-eqz v3, :cond_9f

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Laj/v;->f:F

    .line 216
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/v;->g:F

    .line 217
    iput-boolean v1, p0, Laj/v;->w:Z

    goto :goto_89

    .line 218
    :cond_9f
    if-eqz v2, :cond_b0

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/v;->f:F

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/v;->g:F

    .line 221
    iput-boolean v1, p0, Laj/v;->w:Z

    goto :goto_89

    .line 223
    :cond_b0
    iget-object v2, p0, Laj/v;->b:Laj/w;

    invoke-interface {v2, p0, v0, v0}, Laj/w;->b(Laj/v;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Laj/v;->c:Z

    goto :goto_89

    .line 225
    :cond_b9
    if-ne v2, v4, :cond_130

    iget-boolean v3, p0, Laj/v;->w:Z

    if-eqz v3, :cond_130

    .line 227
    iget v2, p0, Laj/v;->t:F

    .line 228
    iget v4, p0, Laj/v;->u:F

    .line 229
    iget v5, p0, Laj/v;->v:F

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 232
    invoke-static {p1, v1}, Laj/v;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 233
    invoke-static {p1, v1}, Laj/v;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 235
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_e5

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_e5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_e5

    cmpl-float v3, v6, v5

    if-lez v3, :cond_100

    :cond_e5
    move v3, v1

    .line 237
    :goto_e6
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_f6

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_f6

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_f6

    cmpl-float v2, v8, v5

    if-lez v2, :cond_102

    :cond_f6
    move v2, v1

    .line 240
    :goto_f7
    if-eqz v3, :cond_104

    if-eqz v2, :cond_104

    .line 241
    iput v10, p0, Laj/v;->f:F

    .line 242
    iput v10, p0, Laj/v;->g:F

    goto :goto_89

    :cond_100
    move v3, v0

    .line 235
    goto :goto_e6

    :cond_102
    move v2, v0

    .line 237
    goto :goto_f7

    .line 243
    :cond_104
    if-eqz v3, :cond_114

    .line 244
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Laj/v;->f:F

    .line 245
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/v;->g:F

    goto/16 :goto_89

    .line 246
    :cond_114
    if-eqz v2, :cond_124

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/v;->f:F

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/v;->g:F

    goto/16 :goto_89

    .line 250
    :cond_124
    iput-boolean v0, p0, Laj/v;->w:Z

    .line 251
    iget-object v2, p0, Laj/v;->b:Laj/w;

    invoke-interface {v2, p0, v0, v0}, Laj/w;->b(Laj/v;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Laj/v;->c:Z

    goto/16 :goto_89

    .line 253
    :cond_130
    const/4 v3, 0x6

    if-eq v2, v3, :cond_137

    const/16 v3, 0x106

    if-ne v2, v3, :cond_89

    :cond_137
    iget-boolean v3, p0, Laj/v;->w:Z

    if-eqz v3, :cond_89

    .line 257
    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_141

    move v0, v1

    .line 259
    :cond_141
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/v;->f:F

    .line 260
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/v;->g:F

    goto/16 :goto_89

    .line 264
    :cond_14f
    sparse-switch v2, :sswitch_data_1ac

    goto/16 :goto_89

    .line 292
    :sswitch_154
    invoke-direct {p0, p1}, Laj/v;->b(Landroid/view/MotionEvent;)V

    .line 297
    iget v2, p0, Laj/v;->q:F

    iget v3, p0, Laj/v;->r:F

    div-float/2addr v2, v3

    const v3, 0x3f2b851f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_89

    .line 298
    iget-object v2, p0, Laj/v;->b:Laj/w;

    invoke-interface {v2, p0, v0, v0}, Laj/w;->a(Laj/v;ZZ)Z

    move-result v0

    .line 300
    if-eqz v0, :cond_89

    .line 301
    iget-object v0, p0, Laj/v;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 302
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Laj/v;->d:Landroid/view/MotionEvent;

    goto/16 :goto_89

    .line 268
    :sswitch_178
    invoke-direct {p0, p1}, Laj/v;->b(Landroid/view/MotionEvent;)V

    .line 271
    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_19b

    move v2, v1

    .line 273
    :goto_181
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Laj/v;->f:F

    .line 274
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Laj/v;->g:F

    .line 276
    iget-boolean v2, p0, Laj/v;->w:Z

    if-nez v2, :cond_196

    .line 277
    iget-object v2, p0, Laj/v;->b:Laj/w;

    invoke-interface {v2, p0, v0, v0}, Laj/w;->c(Laj/v;ZZ)V

    .line 280
    :cond_196
    invoke-direct {p0}, Laj/v;->h()V

    goto/16 :goto_89

    :cond_19b
    move v2, v0

    .line 271
    goto :goto_181

    .line 284
    :sswitch_19d
    iget-boolean v2, p0, Laj/v;->w:Z

    if-nez v2, :cond_1a6

    .line 285
    iget-object v2, p0, Laj/v;->b:Laj/w;

    invoke-interface {v2, p0, v0, v0}, Laj/w;->c(Laj/v;ZZ)V

    .line 288
    :cond_1a6
    invoke-direct {p0}, Laj/v;->h()V

    goto/16 :goto_89

    .line 264
    nop

    :sswitch_data_1ac
    .sparse-switch
        0x2 -> :sswitch_154
        0x3 -> :sswitch_19d
        0x6 -> :sswitch_178
        0x106 -> :sswitch_178
    .end sparse-switch
.end method

.method public b()F
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Laj/v;->g:F

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Laj/v;->h:F

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Laj/v;->i:F

    return v0
.end method

.method public e()F
    .registers 3

    .prologue
    .line 450
    iget v0, p0, Laj/v;->n:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 451
    iget v0, p0, Laj/v;->l:F

    .line 452
    iget v1, p0, Laj/v;->m:F

    .line 453
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Laj/v;->n:F

    .line 455
    :cond_17
    iget v0, p0, Laj/v;->n:F

    return v0
.end method

.method public f()F
    .registers 3

    .prologue
    .line 465
    iget v0, p0, Laj/v;->o:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 466
    iget v0, p0, Laj/v;->j:F

    .line 467
    iget v1, p0, Laj/v;->k:F

    .line 468
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Laj/v;->o:F

    .line 470
    :cond_17
    iget v0, p0, Laj/v;->o:F

    return v0
.end method

.method public g()F
    .registers 3

    .prologue
    .line 481
    iget v0, p0, Laj/v;->p:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 482
    invoke-virtual {p0}, Laj/v;->e()F

    move-result v0

    invoke-virtual {p0}, Laj/v;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Laj/v;->p:F

    .line 484
    :cond_13
    iget v0, p0, Laj/v;->p:F

    return v0
.end method
