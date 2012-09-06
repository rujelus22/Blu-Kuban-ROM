.class public Lcom/google/android/youtube/core/model/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:Landroid/net/Uri;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;

.field private u:Ljava/util/List;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/o;
    .registers 2

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/o;->v:Z

    .line 345
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    if-nez v0, :cond_b

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    .line 288
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->c:Ljava/lang/String;

    .line 430
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 293
    if-nez p1, :cond_7

    .line 294
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    :cond_7
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    return-object p0
.end method

.method public final b()Lcom/google/android/youtube/core/model/n;
    .registers 24

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    .line 536
    :cond_10
    sget-object v1, Lcom/google/android/youtube/core/model/n;->a:Lcom/google/android/youtube/core/model/n;

    .line 548
    :goto_12
    return-object v1

    .line 538
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/o;->v:Z

    if-eqz v1, :cond_49

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    if-eqz v1, :cond_49

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 544
    const-string v2, "eid\\d=\\d+"

    const-string v3, "eid1=5"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->f(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;

    .line 548
    :cond_49
    new-instance v1, Lcom/google/android/youtube/core/model/n;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/model/o;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/model/o;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/o;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/o;->e:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/model/o;->f:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/model/o;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/model/o;->i:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/core/model/o;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/core/model/o;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/model/o;->n:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->o:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->p:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->q:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->r:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->s:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->t:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/o;->u:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-direct/range {v1 .. v22}, Lcom/google/android/youtube/core/model/n;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_12
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    if-nez v0, :cond_b

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    .line 304
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->b:Ljava/lang/String;

    .line 435
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->a:Ljava/util/List;

    .line 455
    return-object p0
.end method

.method public synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/o;->b()Lcom/google/android/youtube/core/model/n;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->h:Ljava/util/List;

    if-nez v0, :cond_b

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->h:Ljava/util/List;

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->d:Ljava/lang/String;

    .line 440
    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->g:Ljava/util/List;

    .line 460
    return-object p0
.end method

.method public final d(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->i:Ljava/util/List;

    if-nez v0, :cond_b

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->i:Ljava/util/List;

    .line 320
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p0
.end method

.method public final d(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->h:Ljava/util/List;

    .line 465
    return-object p0
.end method

.method public final e(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->j:Ljava/util/List;

    if-nez v0, :cond_b

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->j:Ljava/util/List;

    .line 328
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object p0
.end method

.method public final e(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->i:Ljava/util/List;

    .line 470
    return-object p0
.end method

.method public final f(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    if-nez v0, :cond_b

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-object p0
.end method

.method public final f(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->j:Ljava/util/List;

    .line 475
    return-object p0
.end method

.method public final g(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->l:Ljava/util/List;

    if-nez v0, :cond_b

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->l:Ljava/util/List;

    .line 352
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-object p0
.end method

.method public final g(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->k:Ljava/util/List;

    .line 480
    return-object p0
.end method

.method public final h(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    if-nez v0, :cond_b

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-object p0
.end method

.method public final h(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->l:Ljava/util/List;

    .line 485
    return-object p0
.end method

.method public final i(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->n:Ljava/util/List;

    if-nez v0, :cond_b

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->n:Ljava/util/List;

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-object p0
.end method

.method public final i(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->m:Ljava/util/List;

    .line 490
    return-object p0
.end method

.method public final j(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->o:Ljava/util/List;

    if-nez v0, :cond_b

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->o:Ljava/util/List;

    .line 376
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-object p0
.end method

.method public final j(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->n:Ljava/util/List;

    .line 495
    return-object p0
.end method

.method public final k(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->p:Ljava/util/List;

    if-nez v0, :cond_b

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->p:Ljava/util/List;

    .line 384
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-object p0
.end method

.method public final k(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->o:Ljava/util/List;

    .line 500
    return-object p0
.end method

.method public final l(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->q:Ljava/util/List;

    if-nez v0, :cond_b

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->q:Ljava/util/List;

    .line 392
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    return-object p0
.end method

.method public final l(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->p:Ljava/util/List;

    .line 505
    return-object p0
.end method

.method public final m(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->r:Ljava/util/List;

    if-nez v0, :cond_b

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->r:Ljava/util/List;

    .line 400
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-object p0
.end method

.method public final m(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->q:Ljava/util/List;

    .line 510
    return-object p0
.end method

.method public final n(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->s:Ljava/util/List;

    if-nez v0, :cond_b

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->s:Ljava/util/List;

    .line 408
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-object p0
.end method

.method public final n(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->r:Ljava/util/List;

    .line 515
    return-object p0
.end method

.method public final o(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->t:Ljava/util/List;

    if-nez v0, :cond_b

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->t:Ljava/util/List;

    .line 416
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    return-object p0
.end method

.method public final o(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->s:Ljava/util/List;

    .line 520
    return-object p0
.end method

.method public final p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 3
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->u:Ljava/util/List;

    if-nez v0, :cond_b

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/o;->u:Ljava/util/List;

    .line 424
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/o;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    return-object p0
.end method

.method public final p(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->t:Ljava/util/List;

    .line 525
    return-object p0
.end method

.method public final q(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->e:Landroid/net/Uri;

    .line 445
    return-object p0
.end method

.method public final q(Ljava/util/List;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->u:Ljava/util/List;

    .line 530
    return-object p0
.end method

.method public final r(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    .registers 2
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/android/youtube/core/model/o;->f:Landroid/net/Uri;

    .line 450
    return-object p0
.end method
