.class public Lcom/google/android/youtube/core/model/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/j;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Landroid/net/Uri;

.field private f:Ljava/util/List;

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

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/p;
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/p;->r:Z

    .line 273
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->a:Ljava/util/List;

    if-nez v0, :cond_b

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->a:Ljava/util/List;

    .line 216
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->b:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 221
    if-nez p1, :cond_7

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :cond_7
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    return-object p0
.end method

.method public final b()Lcom/google/android/youtube/core/model/o;
    .registers 20

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/youtube/core/model/p;->r:Z

    if-eqz v1, :cond_36

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    if-eqz v1, :cond_36

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 424
    const-string v2, "eid\\d=\\d+"

    const-string v3, "eid1=5"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/p;->f(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;

    .line 428
    :cond_36
    new-instance v1, Lcom/google/android/youtube/core/model/o;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/model/p;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/model/p;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/model/p;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/p;->d:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/p;->e:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/core/model/p;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/core/model/p;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/model/p;->n:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/p;->o:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/p;->p:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/p;->q:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v1 .. v18}, Lcom/google/android/youtube/core/model/o;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    if-nez v0, :cond_b

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    .line 232
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->c:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->a:Ljava/util/List;

    .line 354
    return-object p0
.end method

.method public synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/p;->b()Lcom/google/android/youtube/core/model/o;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    if-nez v0, :cond_b

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    .line 240
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    .line 359
    return-object p0
.end method

.method public final d(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/List;

    if-nez v0, :cond_b

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/List;

    .line 248
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-object p0
.end method

.method public final d(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    .line 364
    return-object p0
.end method

.method public final e(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/List;

    if-nez v0, :cond_b

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/List;

    .line 256
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-object p0
.end method

.method public final e(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/List;

    .line 369
    return-object p0
.end method

.method public final f(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/List;

    if-nez v0, :cond_b

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/List;

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-object p0
.end method

.method public final f(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/List;

    .line 374
    return-object p0
.end method

.method public final g(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/List;

    if-nez v0, :cond_b

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/List;

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object p0
.end method

.method public final g(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/List;

    .line 379
    return-object p0
.end method

.method public final h(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->l:Ljava/util/List;

    if-nez v0, :cond_b

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->l:Ljava/util/List;

    .line 288
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-object p0
.end method

.method public final h(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/List;

    .line 384
    return-object p0
.end method

.method public final i(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->m:Ljava/util/List;

    if-nez v0, :cond_b

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->m:Ljava/util/List;

    .line 296
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-object p0
.end method

.method public final i(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->l:Ljava/util/List;

    .line 389
    return-object p0
.end method

.method public final j(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->n:Ljava/util/List;

    if-nez v0, :cond_b

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->n:Ljava/util/List;

    .line 304
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-object p0
.end method

.method public final j(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->m:Ljava/util/List;

    .line 394
    return-object p0
.end method

.method public final k(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->o:Ljava/util/List;

    if-nez v0, :cond_b

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->o:Ljava/util/List;

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-object p0
.end method

.method public final k(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->n:Ljava/util/List;

    .line 399
    return-object p0
.end method

.method public final l(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->p:Ljava/util/List;

    if-nez v0, :cond_b

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->p:Ljava/util/List;

    .line 320
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p0
.end method

.method public final l(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->o:Ljava/util/List;

    .line 404
    return-object p0
.end method

.method public final m(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 3
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->q:Ljava/util/List;

    if-nez v0, :cond_b

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/p;->q:Ljava/util/List;

    .line 328
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/core/model/p;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object p0
.end method

.method public final m(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->p:Ljava/util/List;

    .line 409
    return-object p0
.end method

.method public final n(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->d:Landroid/net/Uri;

    .line 344
    return-object p0
.end method

.method public final n(Ljava/util/List;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->q:Ljava/util/List;

    .line 414
    return-object p0
.end method

.method public final o(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/p;
    .registers 2
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/youtube/core/model/p;->e:Landroid/net/Uri;

    .line 349
    return-object p0
.end method
