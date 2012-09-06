.class public Lp/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lp/A;

.field private final b:I

.field private final c:I

.field private final d:Ln/Q;

.field private final e:Ln/Q;

.field private final f:[Lq/f;

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lp/A;IILn/Q;Ln/Q;[Lq/f;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lp/C;->a:Lp/A;

    .line 157
    iput p2, p0, Lp/C;->b:I

    .line 158
    iput p3, p0, Lp/C;->c:I

    .line 159
    iput-object p4, p0, Lp/C;->d:Ln/Q;

    .line 160
    iput-object p5, p0, Lp/C;->e:Ln/Q;

    .line 161
    iput-object p6, p0, Lp/C;->f:[Lq/f;

    .line 162
    iput p7, p0, Lp/C;->h:I

    .line 163
    iput p8, p0, Lp/C;->i:I

    .line 164
    iget-object v0, p1, Lp/A;->c:[Lq/e;

    aget-object v0, v0, p2

    invoke-static {v0}, Lp/C;->a(Lq/e;)I

    move-result v0

    iput v0, p0, Lp/C;->g:I

    .line 165
    return-void
.end method

.method public constructor <init>(Lq/b;Lp/A;I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lp/C;->a:Lp/A;

    .line 108
    iput p3, p0, Lp/C;->b:I

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v0, p0, Lp/C;->a:Lp/A;

    iget-object v4, v0, Lp/A;->c:[Lq/e;

    .line 111
    aget-object v0, v4, p3

    invoke-static {v0}, Lp/C;->a(Lq/e;)I

    move-result v0

    .line 112
    array-length v1, v4

    move v2, v0

    .line 114
    :goto_19
    if-ge p3, v1, :cond_7e

    .line 115
    aget-object v0, v4, p3

    invoke-virtual {v0, v6}, Lq/e;->c(I)Lq/f;

    move-result-object v0

    .line 116
    sget-object v5, Lq/e;->a:Lq/f;

    if-eq v0, v5, :cond_2e

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 117
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2e
    invoke-virtual {p0, p1, v2, p3}, Lp/C;->a(Lq/b;II)Z

    move-result v0

    if-nez v0, :cond_60

    .line 120
    add-int/lit8 v0, p3, 0x1

    .line 126
    :goto_36
    iput v2, p0, Lp/C;->g:I

    .line 127
    iput v0, p0, Lp/C;->c:I

    .line 128
    iget v0, p0, Lp/C;->b:I

    if-nez v0, :cond_6a

    iget-object v0, p0, Lp/C;->a:Lp/A;

    iget-object v0, v0, Lp/A;->a:Lp/d;

    iget-object v0, v0, Lp/d;->b:Ln/Q;

    :goto_44
    iput-object v0, p0, Lp/C;->d:Ln/Q;

    .line 131
    iget v0, p0, Lp/C;->c:I

    if-ne v0, v1, :cond_73

    iget-object v0, p0, Lp/C;->a:Lp/A;

    iget-object v0, v0, Lp/A;->b:Lp/d;

    iget-object v0, v0, Lp/d;->b:Ln/Q;

    :goto_50
    iput-object v0, p0, Lp/C;->e:Ln/Q;

    .line 134
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lq/f;

    iput-object v0, p0, Lp/C;->f:[Lq/f;

    .line 135
    iget-object v0, p0, Lp/C;->f:[Lq/f;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    return-void

    .line 123
    :cond_60
    aget-object v0, v4, p3

    invoke-static {v0}, Lp/C;->a(Lq/e;)I

    move-result v0

    .line 114
    add-int/lit8 p3, p3, 0x1

    move v2, v0

    goto :goto_19

    .line 128
    :cond_6a
    iget v0, p0, Lp/C;->b:I

    aget-object v0, v4, v0

    invoke-virtual {v0, v6}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    goto :goto_44

    .line 131
    :cond_73
    iget v0, p0, Lp/C;->c:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Lq/e;->e()Ln/Q;

    move-result-object v0

    goto :goto_50

    :cond_7e
    move v0, v1

    goto :goto_36
.end method

.method static a(Lq/e;)I
    .registers 2
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lq/e;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 178
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 174
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 176
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_8

    .line 168
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method private a(Lq/e;Lq/e;Ljava/util/List;)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-static {p1, p2}, Lp/b;->a(Lq/e;Lq/e;)I

    move-result v4

    .line 263
    if-eqz p3, :cond_d

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move v0, v1

    .line 275
    :goto_e
    return v0

    .line 266
    :cond_f
    const/4 v3, 0x0

    .line 268
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/e;

    .line 269
    invoke-static {p1, v0}, Lp/b;->a(Lq/e;Lq/e;)I

    move-result v2

    .line 270
    if-eqz v3, :cond_30

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_3b

    :cond_30
    move-object v1, v0

    move v0, v2

    :goto_32
    move-object v3, v1

    move v1, v0

    .line 274
    goto :goto_14

    .line 275
    :cond_35
    if-le v4, v1, :cond_39

    const/4 v0, 0x2

    goto :goto_e

    :cond_39
    const/4 v0, 0x1

    goto :goto_e

    :cond_3b
    move v0, v1

    move-object v1, v3

    goto :goto_32
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 579
    packed-switch p0, :pswitch_data_10

    .line 587
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 581
    :pswitch_6
    const-string v0, "NORMAL"

    goto :goto_5

    .line 583
    :pswitch_9
    const-string v0, "RAMP"

    goto :goto_5

    .line 585
    :pswitch_c
    const-string v0, "ROUNDABOUT"

    goto :goto_5

    .line 579
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private a(Lq/b;Lq/e;Lq/e;I)Ljava/util/List;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_5
    invoke-virtual {p2}, Lq/e;->d()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 333
    invoke-virtual {p2, v1}, Lq/e;->a(I)Lq/a;

    move-result-object v2

    .line 334
    invoke-virtual {v2, p1}, Lq/a;->a(Lq/b;)Lq/e;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_2b

    if-eq v2, p3, :cond_2b

    .line 336
    invoke-static {p2, v2}, Lp/b;->a(Lq/e;Lq/e;)I

    move-result v3

    .line 337
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, p4, :cond_2b

    .line 338
    if-nez v0, :cond_28

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    :cond_28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 345
    :cond_2e
    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 349
    if-nez p1, :cond_3

    .line 359
    :cond_2
    return-void

    .line 352
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 353
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/e;

    .line 355
    invoke-static {v0}, Lp/C;->a(Lq/e;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7
.end method

.method private a(Ljava/util/List;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 363
    if-nez p1, :cond_3

    .line 373
    :cond_2
    return-void

    .line 366
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/e;

    .line 369
    invoke-virtual {v0}, Lq/e;->h()I

    move-result v0

    if-ge v0, p2, :cond_7

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7
.end method

.method private a(Lq/b;Lq/e;Lq/e;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-static {p3}, Lp/C;->a(Lq/e;)I

    move-result v2

    .line 215
    if-ne v2, v0, :cond_c

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lp/C;->c(Lq/b;Lq/e;Lq/e;)V

    .line 219
    :goto_b
    return v1

    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lp/C;->e(Lq/b;Lq/e;Lq/e;)Z

    move-result v2

    if-nez v2, :cond_14

    :goto_12
    move v1, v0

    goto :goto_b

    :cond_14
    move v0, v1

    goto :goto_12
.end method

.method private a(Lq/e;Lq/e;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, p1}, Lp/C;->b(Lq/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 290
    :cond_7
    :goto_7
    return v0

    .line 287
    :cond_8
    invoke-virtual {p1}, Lq/e;->h()I

    move-result v1

    invoke-virtual {p2}, Lq/e;->h()I

    move-result v2

    if-gt v1, v2, :cond_7

    .line 290
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b(Lq/b;Lq/e;Lq/e;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 228
    invoke-static {p3}, Lp/C;->a(Lq/e;)I

    move-result v2

    .line 229
    if-eq v2, v0, :cond_11

    .line 230
    invoke-direct {p0, p1, p2, p3}, Lp/C;->e(Lq/b;Lq/e;Lq/e;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 232
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 230
    goto :goto_e

    .line 232
    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lp/C;->d(Lq/b;Lq/e;Lq/e;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private b(Lq/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, Lq/e;->h()I

    move-result v0

    .line 295
    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c(Lq/b;Lq/e;Lq/e;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, p3, v0}, Lp/C;->a(Lq/b;Lq/e;Lq/e;I)Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-direct {p0, p2, p3, v0}, Lp/C;->a(Lq/e;Lq/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lp/C;->i:I

    .line 246
    invoke-direct {p0, p2, p3}, Lp/C;->a(Lq/e;Lq/e;)Z

    move-result v0

    .line 248
    if-eqz v0, :cond_17

    .line 249
    const/16 v0, 0x8

    iput v0, p0, Lp/C;->h:I

    .line 253
    :goto_16
    return-void

    .line 251
    :cond_17
    const/4 v0, 0x7

    iput v0, p0, Lp/C;->h:I

    goto :goto_16
.end method

.method private d(Lq/b;Lq/e;Lq/e;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, p3, v0}, Lp/C;->a(Lq/b;Lq/e;Lq/e;I)Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-direct {p0, p2, p3, v0}, Lp/C;->a(Lq/e;Lq/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lp/C;->i:I

    .line 308
    iget v0, p0, Lp/C;->i:I

    if-eqz v0, :cond_16

    .line 309
    const/16 v0, 0x9

    iput v0, p0, Lp/C;->h:I

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private e(Lq/b;Lq/e;Lq/e;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x14

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 383
    invoke-static {p2, p3}, Lp/b;->a(Lq/e;Lq/e;)I

    move-result v5

    .line 384
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 395
    invoke-virtual {p2, v3}, Lq/e;->c(I)Lq/f;

    move-result-object v0

    invoke-virtual {p3, v3}, Lq/e;->c(I)Lq/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lq/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    move v4, v2

    .line 397
    :goto_1c
    if-lez v5, :cond_72

    move v0, v1

    :goto_1f
    iput v0, p0, Lp/C;->i:I

    .line 399
    const/16 v0, 0x2d

    if-gt v6, v0, :cond_86

    .line 400
    add-int/lit8 v0, v6, 0x1e

    invoke-direct {p0, p1, p2, p3, v0}, Lp/C;->a(Lq/b;Lq/e;Lq/e;I)Ljava/util/List;

    move-result-object v7

    .line 403
    invoke-direct {p0, v7}, Lp/C;->a(Ljava/util/List;)V

    .line 404
    invoke-virtual {p2}, Lq/e;->h()I

    move-result v0

    invoke-virtual {p3}, Lq/e;->h()I

    move-result v8

    if-ne v0, v8, :cond_3f

    .line 405
    invoke-virtual {p2}, Lq/e;->h()I

    move-result v0

    invoke-direct {p0, v7, v0}, Lp/C;->a(Ljava/util/List;I)V

    .line 409
    :cond_3f
    if-eqz v7, :cond_74

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_74

    if-ge v6, v9, :cond_74

    .line 411
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/e;

    invoke-static {p2, v0}, Lp/b;->a(Lq/e;Lq/e;)I

    move-result v6

    .line 413
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/e;

    invoke-virtual {v0}, Lq/e;->h()I

    move-result v0

    invoke-virtual {p3}, Lq/e;->h()I

    move-result v8

    if-ne v0, v8, :cond_74

    if-ge v6, v9, :cond_74

    .line 415
    const/16 v0, 0x9

    iput v0, p0, Lp/C;->h:I

    .line 416
    invoke-direct {p0, p2, p3, v7}, Lp/C;->a(Lq/e;Lq/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lp/C;->i:I

    .line 447
    :goto_6f
    return v2

    :cond_70
    move v4, v3

    .line 395
    goto :goto_1c

    :cond_72
    move v0, v2

    .line 397
    goto :goto_1f

    .line 423
    :cond_74
    const/16 v0, 0x1e

    if-lt v5, v0, :cond_7a

    if-nez v4, :cond_82

    :cond_7a
    if-eqz v7, :cond_9c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 425
    :cond_82
    const/4 v0, 0x3

    iput v0, p0, Lp/C;->h:I

    goto :goto_6f

    .line 428
    :cond_86
    const/16 v0, 0x87

    if-gt v6, v0, :cond_8e

    .line 429
    const/4 v0, 0x4

    iput v0, p0, Lp/C;->h:I

    goto :goto_6f

    .line 431
    :cond_8e
    const/16 v0, 0xb3

    if-gt v6, v0, :cond_96

    .line 432
    const/4 v0, 0x5

    iput v0, p0, Lp/C;->h:I

    goto :goto_6f

    .line 435
    :cond_96
    const/4 v0, 0x6

    iput v0, p0, Lp/C;->h:I

    .line 438
    iput v2, p0, Lp/C;->i:I

    goto :goto_6f

    .line 442
    :cond_9c
    if-eqz v4, :cond_a9

    invoke-virtual {p2}, Lq/e;->d()I

    move-result v0

    if-le v0, v2, :cond_a9

    .line 443
    iput v1, p0, Lp/C;->h:I

    .line 444
    iput v3, p0, Lp/C;->i:I

    goto :goto_6f

    :cond_a9
    move v2, v3

    .line 447
    goto :goto_6f
.end method


# virtual methods
.method public a(Ln/W;)D
    .registers 20
    .parameter

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lp/C;->a:Lp/A;

    iget-object v8, v1, Lp/A;->c:[Lq/e;

    .line 485
    const/4 v4, 0x0

    .line 486
    new-instance v9, Ln/Q;

    invoke-direct {v9}, Ln/Q;-><init>()V

    .line 487
    const-wide/16 v2, 0x0

    .line 488
    move-object/from16 v0, p0

    iget v1, v0, Lp/C;->b:I

    move v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-object v3, v4

    move v4, v15

    :goto_19
    move-object/from16 v0, p0

    iget v5, v0, Lp/C;->c:I

    if-ge v4, v5, :cond_8b

    .line 489
    aget-object v10, v8, v4

    .line 490
    invoke-virtual {v10}, Lq/e;->f()I

    move-result v6

    .line 493
    if-nez v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v5, v0, Lp/C;->a:Lp/A;

    iget-object v5, v5, Lp/A;->a:Lp/d;

    iget v5, v5, Lp/d;->d:I

    .line 494
    :goto_2f
    add-int/lit8 v6, v6, -0x1

    .line 495
    array-length v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_40

    .line 499
    move-object/from16 v0, p0

    iget-object v6, v0, Lp/C;->a:Lp/A;

    iget-object v6, v6, Lp/A;->b:Lp/d;

    iget v6, v6, Lp/d;->d:I

    add-int/lit8 v6, v6, 0x1

    :cond_40
    move v7, v5

    .line 501
    :goto_41
    if-gt v7, v6, :cond_88

    .line 502
    move-object/from16 v0, p0

    iget v11, v0, Lp/C;->b:I

    if-ne v4, v11, :cond_6c

    if-ne v7, v5, :cond_6c

    .line 503
    move-object/from16 v0, p0

    iget-object v11, v0, Lp/C;->d:Ln/Q;

    invoke-virtual {v9, v11}, Ln/Q;->b(Ln/Q;)V

    .line 509
    :goto_52
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ln/W;->a(Ln/Q;)Z

    .line 510
    if-eqz v3, :cond_82

    .line 514
    invoke-virtual {v3, v9}, Ln/Q;->c(Ln/Q;)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v3}, Ln/Q;->e()D

    move-result-wide v13

    div-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 519
    :goto_64
    invoke-virtual {v3, v9}, Ln/Q;->b(Ln/Q;)V

    .line 501
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 493
    :cond_6a
    const/4 v5, 0x0

    goto :goto_2f

    .line 504
    :cond_6c
    move-object/from16 v0, p0

    iget v11, v0, Lp/C;->c:I

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_7e

    if-ne v7, v6, :cond_7e

    .line 505
    move-object/from16 v0, p0

    iget-object v11, v0, Lp/C;->e:Ln/Q;

    invoke-virtual {v9, v11}, Ln/Q;->b(Ln/Q;)V

    goto :goto_52

    .line 507
    :cond_7e
    invoke-virtual {v10, v7, v9}, Lq/e;->a(ILn/Q;)V

    goto :goto_52

    .line 517
    :cond_82
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    goto :goto_64

    .line 488
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 522
    :cond_8b
    return-wide v1
.end method

.method public a()I
    .registers 5

    .prologue
    .line 454
    iget-object v0, p0, Lp/C;->a:Lp/A;

    iget-object v2, v0, Lp/A;->d:[I

    .line 455
    const/4 v1, 0x0

    .line 456
    iget v0, p0, Lp/C;->b:I

    :goto_7
    iget v3, p0, Lp/C;->c:I

    if-ge v0, v3, :cond_11

    .line 457
    aget v3, v2, v0

    add-int/2addr v1, v3

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 459
    :cond_11
    return v1
.end method

.method a(Lq/b;II)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lp/C;->a:Lp/A;

    iget-object v1, v1, Lp/A;->c:[Lq/e;

    .line 193
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_11

    .line 194
    const/16 v1, 0x10

    iput v1, p0, Lp/C;->h:I

    .line 195
    iput v0, p0, Lp/C;->i:I

    .line 206
    :goto_10
    return v0

    .line 199
    :cond_11
    aget-object v0, v1, p3

    .line 200
    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 202
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1f

    .line 203
    invoke-direct {p0, p1, v0, v1}, Lp/C;->b(Lq/b;Lq/e;Lq/e;)Z

    move-result v0

    goto :goto_10

    .line 206
    :cond_1f
    invoke-direct {p0, p1, v0, v1}, Lp/C;->a(Lq/b;Lq/e;Lq/e;)Z

    move-result v0

    goto :goto_10
.end method

.method public b()I
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lp/C;->h:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 469
    iget v0, p0, Lp/C;->i:I

    return v0
.end method

.method public d()[Lq/f;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lp/C;->f:[Lq/f;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Lp/C;->b:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 532
    iget v0, p0, Lp/C;->c:I

    return v0
.end method

.method public g()Lq/e;
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lp/C;->a:Lp/A;

    iget-object v0, v0, Lp/A;->c:[Lq/e;

    iget v1, p0, Lp/C;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()Lq/e;
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lp/C;->a:Lp/A;

    iget-object v0, v0, Lp/A;->c:[Lq/e;

    iget v1, p0, Lp/C;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public i()Ln/Q;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lp/C;->d:Ln/Q;

    return-object v0
.end method

.method public j()Ln/Q;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lp/C;->e:Ln/Q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    const-string v0, "type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lp/C;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    const-string v0, " side: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lp/C;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " names: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v2, p0, Lp/C;->f:[Lq/f;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v3, :cond_3a

    aget-object v4, v2, v0

    .line 567
    invoke-virtual {v4}, Lq/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 570
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 571
    const-string v0, " start: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lp/C;->d:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, " end: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lp/C;->e:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v0, " type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lp/C;->g:I

    invoke-static {v2}, Lp/C;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
