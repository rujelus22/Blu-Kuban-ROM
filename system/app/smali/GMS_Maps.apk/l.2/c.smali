.class public final LL/c;
.super Lbk/k;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 289
    invoke-direct {p0}, Lbk/k;-><init>()V

    .line 379
    const-string v0, ""

    iput-object v0, p0, LL/c;->b:Ljava/lang/Object;

    .line 453
    const-string v0, ""

    iput-object v0, p0, LL/c;->c:Ljava/lang/Object;

    .line 290
    invoke-direct {p0}, LL/c;->h()V

    .line 291
    return-void
.end method

.method static synthetic g()LL/c;
    .registers 1

    .prologue
    .line 284
    invoke-static {}, LL/c;->i()LL/c;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method private static i()LL/c;
    .registers 1

    .prologue
    .line 296
    new-instance v0, LL/c;

    invoke-direct {v0}, LL/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()LL/c;
    .registers 3

    .prologue
    .line 309
    invoke-static {}, LL/c;->i()LL/c;

    move-result-object v0

    invoke-virtual {p0}, LL/c;->c()LL/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LL/c;->a(LL/a;)LL/c;

    move-result-object v0

    return-object v0
.end method

.method public a(LL/a;)LL/c;
    .registers 3
    .parameter

    .prologue
    .line 341
    invoke-static {}, LL/a;->a()LL/a;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 352
    :cond_6
    :goto_6
    return-object p0

    .line 342
    :cond_7
    invoke-virtual {p1}, LL/a;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 343
    iget v0, p0, LL/c;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LL/c;->a:I

    .line 344
    invoke-static {p1}, LL/a;->a(LL/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LL/c;->b:Ljava/lang/Object;

    .line 347
    :cond_19
    invoke-virtual {p1}, LL/a;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    iget v0, p0, LL/c;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/c;->a:I

    .line 349
    invoke-static {p1}, LL/a;->b(LL/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LL/c;->c:Ljava/lang/Object;

    goto :goto_6
.end method

.method public a(Lbk/f;Lbk/i;)LL/c;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 365
    :try_start_1
    sget-object v0, LL/a;->a:Lbk/r;

    invoke-interface {v0, p1, p2}, Lbk/r;->b(Lbk/f;Lbk/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL/a;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lbk/l; {:try_start_1 .. :try_end_9} :catch_f

    .line 370
    if-eqz v0, :cond_e

    .line 371
    invoke-virtual {p0, v0}, LL/c;->a(LL/a;)LL/c;

    .line 374
    :cond_e
    return-object p0

    .line 366
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 367
    :try_start_11
    invoke-virtual {v1}, Lbk/l;->a()Lbk/p;

    move-result-object v0

    check-cast v0, LL/a;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 368
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 370
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 371
    invoke-virtual {p0, v1}, LL/c;->a(LL/a;)LL/c;

    :cond_21
    throw v0

    .line 370
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)LL/c;
    .registers 3
    .parameter

    .prologue
    .line 421
    if-nez p1, :cond_8

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_8
    iget v0, p0, LL/c;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LL/c;->a:I

    .line 425
    iput-object p1, p0, LL/c;->b:Ljava/lang/Object;

    .line 427
    return-object p0
.end method

.method public b()LL/a;
    .registers 3

    .prologue
    .line 317
    invoke-virtual {p0}, LL/c;->c()LL/a;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, LL/a;->f()Z

    move-result v1

    if-nez v1, :cond_f

    .line 319
    invoke-static {v0}, LL/c;->a(Lbk/p;)Lbk/x;

    move-result-object v0

    throw v0

    .line 321
    :cond_f
    return-object v0
.end method

.method public b(Ljava/lang/String;)LL/c;
    .registers 3
    .parameter

    .prologue
    .line 495
    if-nez p1, :cond_8

    .line 496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 498
    :cond_8
    iget v0, p0, LL/c;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/c;->a:I

    .line 499
    iput-object p1, p0, LL/c;->c:Ljava/lang/Object;

    .line 501
    return-object p0
.end method

.method public synthetic b(Lbk/f;Lbk/i;)Lbk/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, LL/c;->a(Lbk/f;Lbk/i;)LL/c;

    move-result-object v0

    return-object v0
.end method

.method public c()LL/a;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 325
    new-instance v2, LL/a;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LL/a;-><init>(Lbk/k;LL/b;)V

    .line 326
    iget v3, p0, LL/c;->a:I

    .line 327
    const/4 v1, 0x0

    .line 328
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 331
    :goto_e
    iget-object v1, p0, LL/c;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, LL/a;->a(LL/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 333
    or-int/lit8 v0, v0, 0x2

    .line 335
    :cond_1a
    iget-object v1, p0, LL/c;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, LL/a;->b(LL/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static {v2, v0}, LL/a;->a(LL/a;I)I

    .line 337
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, LL/c;->a()LL/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lbk/k;
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, LL/c;->a()LL/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lbk/b;
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, LL/c;->a()LL/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lbk/p;
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, LL/c;->b()LL/a;

    move-result-object v0

    return-object v0
.end method
