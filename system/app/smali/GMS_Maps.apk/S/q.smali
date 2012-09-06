.class public LS/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/e;


# instance fields
.field private a:LS/e;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(LS/e;IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual/range {p0 .. p5}, LS/q;->a(LS/e;IIII)V

    .line 100
    return-void
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 147
    iget v0, p0, LS/q;->b:I

    add-int/2addr v0, p1

    iget v1, p0, LS/q;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method private c(I)I
    .registers 4
    .parameter

    .prologue
    .line 151
    iget v0, p0, LS/q;->c:I

    add-int/2addr v0, p1

    iget v1, p0, LS/q;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)I
    .registers 4
    .parameter

    .prologue
    .line 155
    iget v0, p0, LS/q;->b:I

    sub-int v0, p1, v0

    iget v1, p0, LS/q;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private e(I)I
    .registers 4
    .parameter

    .prologue
    .line 159
    iget v0, p0, LS/q;->c:I

    sub-int v0, p1, v0

    iget v1, p0, LS/q;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private f()Z
    .registers 6

    .prologue
    .line 270
    iget v0, p0, LS/q;->l:I

    if-lez v0, :cond_8

    iget v0, p0, LS/q;->m:I

    if-gtz v0, :cond_a

    .line 271
    :cond_8
    const/4 v0, 0x0

    .line 280
    :goto_9
    return v0

    .line 274
    :cond_a
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0}, LS/e;->a()I

    move-result v0

    iput v0, p0, LS/q;->n:I

    .line 275
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0}, LS/e;->b()I

    move-result v0

    iput v0, p0, LS/q;->o:I

    .line 276
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0}, LS/e;->c()I

    move-result v0

    iput v0, p0, LS/q;->p:I

    .line 277
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0}, LS/e;->d()I

    move-result v0

    iput v0, p0, LS/q;->q:I

    .line 279
    iget-object v0, p0, LS/q;->a:LS/e;

    iget v1, p0, LS/q;->j:I

    iget v2, p0, LS/q;->k:I

    iget v3, p0, LS/q;->l:I

    iget v4, p0, LS/q;->m:I

    invoke-interface {v0, v1, v2, v3, v4}, LS/e;->a(IIII)V

    .line 280
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private g()V
    .registers 6

    .prologue
    .line 287
    iget-object v0, p0, LS/q;->a:LS/e;

    iget v1, p0, LS/q;->n:I

    iget v2, p0, LS/q;->o:I

    iget v3, p0, LS/q;->p:I

    iget v4, p0, LS/q;->q:I

    invoke-interface {v0, v1, v2, v3, v4}, LS/e;->a(IIII)V

    .line 288
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, LS/q;->j:I

    invoke-direct {p0, v0}, LS/q;->d(I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0, p1}, LS/e;->a(I)V

    .line 234
    return-void
.end method

.method public a(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, LS/q;->b(I)I

    move-result v0

    iput v0, p0, LS/q;->j:I

    .line 195
    invoke-direct {p0, p2}, LS/q;->c(I)I

    move-result v0

    iput v0, p0, LS/q;->k:I

    .line 196
    iput p3, p0, LS/q;->l:I

    .line 197
    iput p4, p0, LS/q;->m:I

    .line 198
    iget v0, p0, LS/q;->b:I

    iget v1, p0, LS/q;->j:I

    if-le v0, v1, :cond_24

    .line 199
    iget v0, p0, LS/q;->l:I

    iget v1, p0, LS/q;->b:I

    iget v2, p0, LS/q;->j:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, LS/q;->l:I

    .line 200
    iget v0, p0, LS/q;->b:I

    iput v0, p0, LS/q;->j:I

    .line 202
    :cond_24
    iget v0, p0, LS/q;->c:I

    iget v1, p0, LS/q;->k:I

    if-le v0, v1, :cond_38

    .line 203
    iget v0, p0, LS/q;->m:I

    iget v1, p0, LS/q;->c:I

    iget v2, p0, LS/q;->k:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, LS/q;->m:I

    .line 204
    iget v0, p0, LS/q;->c:I

    iput v0, p0, LS/q;->k:I

    .line 206
    :cond_38
    iget v0, p0, LS/q;->j:I

    iget v1, p0, LS/q;->l:I

    add-int/2addr v0, v1

    iget v1, p0, LS/q;->f:I

    if-le v0, v1, :cond_48

    .line 207
    iget v0, p0, LS/q;->f:I

    iget v1, p0, LS/q;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, LS/q;->l:I

    .line 209
    :cond_48
    iget v0, p0, LS/q;->k:I

    iget v1, p0, LS/q;->m:I

    add-int/2addr v0, v1

    iget v1, p0, LS/q;->g:I

    if-le v0, v1, :cond_58

    .line 210
    iget v0, p0, LS/q;->g:I

    iget v1, p0, LS/q;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, LS/q;->m:I

    .line 212
    :cond_58
    return-void
.end method

.method public a(LS/d;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0, p1}, LS/e;->a(LS/d;)V

    .line 249
    return-void
.end method

.method public a(LS/e;IIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 115
    iput-object p1, p0, LS/q;->a:LS/e;

    .line 116
    iput p2, p0, LS/q;->b:I

    .line 117
    iput p3, p0, LS/q;->c:I

    .line 118
    iput p4, p0, LS/q;->d:I

    .line 119
    iput p5, p0, LS/q;->e:I

    .line 120
    iget v0, p0, LS/q;->b:I

    iget v1, p0, LS/q;->d:I

    add-int/2addr v0, v1

    iput v0, p0, LS/q;->f:I

    .line 121
    iget v0, p0, LS/q;->c:I

    iget v1, p0, LS/q;->e:I

    add-int/2addr v0, v1

    iput v0, p0, LS/q;->g:I

    .line 122
    iget v0, p0, LS/q;->b:I

    iput v0, p0, LS/q;->j:I

    .line 123
    iget v0, p0, LS/q;->c:I

    iput v0, p0, LS/q;->k:I

    .line 124
    iput p4, p0, LS/q;->l:I

    .line 125
    iput p5, p0, LS/q;->m:I

    .line 126
    iput v2, p0, LS/q;->h:I

    .line 127
    iput v2, p0, LS/q;->i:I

    .line 128
    return-void
.end method

.method public a(LS/f;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-direct {p0}, LS/q;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 342
    if-eqz p1, :cond_15

    .line 343
    :try_start_8
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-direct {p0, p2}, LS/q;->b(I)I

    move-result v1

    invoke-direct {p0, p3}, LS/q;->c(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, LS/e;->a(LS/f;II)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_19

    .line 346
    :cond_15
    invoke-direct {p0}, LS/q;->g()V

    .line 349
    :cond_18
    return-void

    .line 346
    :catchall_19
    move-exception v0

    invoke-direct {p0}, LS/q;->g()V

    throw v0
.end method

.method public a(Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-direct {p0}, LS/q;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 406
    :try_start_6
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-direct {p0, p2}, LS/q;->b(I)I

    move-result v1

    invoke-direct {p0, p3}, LS/q;->c(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, LS/e;->a(Ljava/lang/String;II)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 408
    invoke-direct {p0}, LS/q;->g()V

    .line 411
    :cond_16
    return-void

    .line 408
    :catchall_17
    move-exception v0

    invoke-direct {p0}, LS/q;->g()V

    throw v0
.end method

.method public a(LS/f;IIIIIIII)Z
    .registers 20
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
    .line 466
    invoke-direct {p0}, LS/q;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 468
    :try_start_6
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-direct {p0, p2}, LS/q;->b(I)I

    move-result v2

    invoke-direct {p0, p3}, LS/q;->c(I)I

    move-result v3

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, LS/e;->a(LS/f;IIIIIIII)Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_23

    move-result v0

    .line 471
    invoke-direct {p0}, LS/q;->g()V

    .line 474
    :goto_22
    return v0

    .line 471
    :catchall_23
    move-exception v0

    invoke-direct {p0}, LS/q;->g()V

    throw v0

    .line 474
    :cond_28
    const/4 v0, 0x1

    goto :goto_22
.end method

.method public b()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, LS/q;->k:I

    invoke-direct {p0, v0}, LS/q;->e(I)I

    move-result v0

    return v0
.end method

.method public b(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-direct {p0}, LS/q;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 294
    :try_start_6
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-direct {p0, p1}, LS/q;->b(I)I

    move-result v1

    invoke-direct {p0, p2}, LS/q;->c(I)I

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, LS/e;->b(IIII)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 296
    invoke-direct {p0}, LS/q;->g()V

    .line 299
    :cond_16
    return-void

    .line 296
    :catchall_17
    move-exception v0

    invoke-direct {p0}, LS/q;->g()V

    throw v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, LS/q;->l:I

    return v0
.end method

.method public c(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, LS/q;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 305
    :try_start_6
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-direct {p0, p1}, LS/q;->b(I)I

    move-result v1

    invoke-direct {p0, p2}, LS/q;->c(I)I

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, LS/e;->c(IIII)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 307
    invoke-direct {p0}, LS/q;->g()V

    .line 310
    :cond_16
    return-void

    .line 307
    :catchall_17
    move-exception v0

    invoke-direct {p0}, LS/q;->g()V

    throw v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, LS/q;->m:I

    return v0
.end method

.method public e()LS/d;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, LS/q;->a:LS/e;

    invoke-interface {v0}, LS/e;->e()LS/d;

    move-result-object v0

    return-object v0
.end method
