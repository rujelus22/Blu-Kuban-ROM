.class public final LL/f;
.super Lbk/k;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 288
    invoke-direct {p0}, Lbk/k;-><init>()V

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL/f;->b:Ljava/util/List;

    .line 509
    const-string v0, ""

    iput-object v0, p0, LL/f;->c:Ljava/lang/Object;

    .line 289
    invoke-direct {p0}, LL/f;->h()V

    .line 290
    return-void
.end method

.method static synthetic g()LL/f;
    .registers 1

    .prologue
    .line 283
    invoke-static {}, LL/f;->i()LL/f;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 1

    .prologue
    .line 293
    return-void
.end method

.method private static i()LL/f;
    .registers 1

    .prologue
    .line 295
    new-instance v0, LL/f;

    invoke-direct {v0}, LL/f;-><init>()V

    return-object v0
.end method

.method private j()V
    .registers 3

    .prologue
    .line 387
    iget v0, p0, LL/f;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LL/f;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LL/f;->b:Ljava/util/List;

    .line 389
    iget v0, p0, LL/f;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LL/f;->a:I

    .line 391
    :cond_16
    return-void
.end method


# virtual methods
.method public a()LL/f;
    .registers 3

    .prologue
    .line 308
    invoke-static {}, LL/f;->i()LL/f;

    move-result-object v0

    invoke-virtual {p0}, LL/f;->c()LL/d;

    move-result-object v1

    invoke-virtual {v0, v1}, LL/f;->a(LL/d;)LL/f;

    move-result-object v0

    return-object v0
.end method

.method public a(LL/c;)LL/f;
    .registers 4
    .parameter

    .prologue
    .line 464
    invoke-direct {p0}, LL/f;->j()V

    .line 465
    iget-object v0, p0, LL/f;->b:Ljava/util/List;

    invoke-virtual {p1}, LL/c;->b()LL/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    return-object p0
.end method

.method public a(LL/d;)LL/f;
    .registers 4
    .parameter

    .prologue
    .line 341
    invoke-static {}, LL/d;->a()LL/d;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 357
    :cond_6
    :goto_6
    return-object p0

    .line 342
    :cond_7
    invoke-static {p1}, LL/d;->b(LL/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 343
    iget-object v0, p0, LL/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 344
    invoke-static {p1}, LL/d;->b(LL/d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LL/f;->b:Ljava/util/List;

    .line 345
    iget v0, p0, LL/f;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, LL/f;->a:I

    .line 352
    :cond_25
    :goto_25
    invoke-virtual {p1}, LL/d;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 353
    iget v0, p0, LL/f;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/f;->a:I

    .line 354
    invoke-static {p1}, LL/d;->c(LL/d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LL/f;->c:Ljava/lang/Object;

    goto :goto_6

    .line 347
    :cond_38
    invoke-direct {p0}, LL/f;->j()V

    .line 348
    iget-object v0, p0, LL/f;->b:Ljava/util/List;

    invoke-static {p1}, LL/d;->b(LL/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public a(Lbk/f;Lbk/i;)LL/f;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 370
    :try_start_1
    sget-object v0, LL/d;->a:Lbk/r;

    invoke-interface {v0, p1, p2}, Lbk/r;->b(Lbk/f;Lbk/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lbk/l; {:try_start_1 .. :try_end_9} :catch_f

    .line 375
    if-eqz v0, :cond_e

    .line 376
    invoke-virtual {p0, v0}, LL/f;->a(LL/d;)LL/f;

    .line 379
    :cond_e
    return-object p0

    .line 371
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 372
    :try_start_11
    invoke-virtual {v1}, Lbk/l;->a()Lbk/p;

    move-result-object v0

    check-cast v0, LL/d;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 373
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 375
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 376
    invoke-virtual {p0, v1}, LL/f;->a(LL/d;)LL/f;

    :cond_21
    throw v0

    .line 375
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)LL/f;
    .registers 3
    .parameter

    .prologue
    .line 551
    if-nez p1, :cond_8

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 554
    :cond_8
    iget v0, p0, LL/f;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/f;->a:I

    .line 555
    iput-object p1, p0, LL/f;->c:Ljava/lang/Object;

    .line 557
    return-object p0
.end method

.method public b()LL/d;
    .registers 3

    .prologue
    .line 316
    invoke-virtual {p0}, LL/f;->c()LL/d;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, LL/d;->d()Z

    move-result v1

    if-nez v1, :cond_f

    .line 318
    invoke-static {v0}, LL/f;->a(Lbk/p;)Lbk/x;

    move-result-object v0

    throw v0

    .line 320
    :cond_f
    return-object v0
.end method

.method public synthetic b(Lbk/f;Lbk/i;)Lbk/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0, p1, p2}, LL/f;->a(Lbk/f;Lbk/i;)LL/f;

    move-result-object v0

    return-object v0
.end method

.method public c()LL/d;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 324
    new-instance v2, LL/d;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LL/d;-><init>(Lbk/k;LL/e;)V

    .line 325
    iget v3, p0, LL/f;->a:I

    .line 326
    const/4 v1, 0x0

    .line 327
    iget v4, p0, LL/f;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_1e

    .line 328
    iget-object v4, p0, LL/f;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, LL/f;->b:Ljava/util/List;

    .line 329
    iget v4, p0, LL/f;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, LL/f;->a:I

    .line 331
    :cond_1e
    iget-object v4, p0, LL/f;->b:Ljava/util/List;

    invoke-static {v2, v4}, LL/d;->a(LL/d;Ljava/util/List;)Ljava/util/List;

    .line 332
    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 335
    :goto_28
    iget-object v1, p0, LL/f;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, LL/d;->a(LL/d;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static {v2, v0}, LL/d;->a(LL/d;I)I

    .line 337
    return-object v2

    :cond_31
    move v0, v1

    goto :goto_28
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, LL/f;->a()LL/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lbk/k;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, LL/f;->a()LL/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lbk/b;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, LL/f;->a()LL/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lbk/p;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, LL/f;->b()LL/d;

    move-result-object v0

    return-object v0
.end method
