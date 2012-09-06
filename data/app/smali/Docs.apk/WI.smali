.class public abstract LWI;
.super Ljava/lang/Object;
.source "GellyInjectorBuilderBase.java"


# instance fields
.field private final a:LWV;

.field private a:Lans;

.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "LWL;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "LWZ",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "LWY;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lany",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "LanG;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "LanG;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Laqm;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Laqm;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lanz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWI;->a:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWI;->b:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWI;->c:Ljava/util/Map;

    .line 276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LWI;->a:Ljava/util/Queue;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWI;->d:Ljava/util/Map;

    .line 282
    new-instance v0, LWV;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LWV;-><init>(LWJ;)V

    iput-object v0, p0, LWI;->a:LWV;

    .line 284
    const-class v0, LWL;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, LWI;->a:Ljava/util/EnumSet;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LWI;->e:Ljava/util/Map;

    .line 291
    invoke-static {p1}, Lajk;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LWI;->a:Ljava/util/List;

    .line 292
    return-void
.end method

.method private a(Lant;)LWZ;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)",
            "LWZ",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, LWI;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWZ;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find static provider for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-object v0
.end method

.method private a(Ljava/lang/Class;)LanG;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "LanG;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, LWI;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanG;

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find scope instance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scope annotation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-object v0
.end method

.method private a(Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Laqm;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, LWI;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic a(LWI;)Ljava/util/EnumSet;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LWI;->a:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic a(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->c()V

    return-void
.end method

.method private a(LaqC;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LaqC",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 395
    invoke-interface {p1}, LaqC;->a()Lant;

    move-result-object v0

    .line 397
    invoke-direct {p0, v0}, LWI;->a(Lant;)LWZ;

    move-result-object v0

    .line 398
    invoke-interface {p1}, LaqC;->b()Ljava/lang/Object;

    move-result-object v1

    .line 400
    instance-of v2, v0, LWX;

    if-eqz v2, :cond_16

    .line 402
    check-cast v0, LWX;

    .line 403
    invoke-interface {v0, v1}, LWX;->a(Ljava/lang/Object;)V

    .line 407
    :goto_15
    return-void

    .line 405
    :cond_16
    invoke-static {v1}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v1

    invoke-interface {v0, v1}, LWZ;->a(LanD;)V

    goto :goto_15
.end method

.method private a(LaqE;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LaqE",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, LWI;->a:Lans;

    invoke-virtual {p1}, LaqE;->a()LanP;

    move-result-object v1

    invoke-interface {v0, v1}, Lans;->a(LanP;)Lany;

    move-result-object v0

    .line 538
    invoke-virtual {p1, v0}, LaqE;->a(Lany;)V

    .line 539
    return-void
.end method

.method private a(LaqI;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LaqI",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-interface {p1}, LaqI;->a()Lant;

    move-result-object v0

    .line 413
    invoke-direct {p0, v0}, LWI;->a(Lant;)LWZ;

    move-result-object v0

    .line 414
    invoke-interface {p1}, LaqI;->b()LanD;

    move-result-object v1

    .line 415
    new-instance v2, LWJ;

    invoke-direct {v2, p0, v1}, LWJ;-><init>(LWI;LanD;)V

    .line 421
    invoke-interface {v0, v2}, LWZ;->a(LanD;)V

    .line 422
    return-void
.end method

.method private a(LaqK;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LaqK",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, LWI;->a:Lans;

    invoke-virtual {p1}, LaqK;->a()Lant;

    move-result-object v1

    invoke-interface {v0, v1}, Lans;->a(Lant;)LanD;

    move-result-object v0

    .line 531
    invoke-virtual {p1, v0}, LaqK;->a(LanD;)V

    .line 532
    return-void
.end method

.method private a(Ljava/lang/Class;Laqm;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Laqm;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Laqm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0, p1}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    .line 352
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method static synthetic b(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->d()V

    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v1, LWK;

    iget-object v2, p0, LWI;->a:LWV;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LWK;-><init>(LanD;LWJ;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v1, p0, LWI;->a:Ljava/util/List;

    invoke-static {v1}, Lajk;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, Lang;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, LaqC;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, LaqI;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, LaqP;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, LaqB;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, LaqK;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, LWI;->e:Ljava/util/Map;

    const-class v2, LaqE;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {v0}, Laqn;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_75
    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqm;

    .line 328
    instance-of v2, v0, Lang;

    if-eqz v2, :cond_9e

    .line 329
    const-class v2, Lang;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    .line 331
    instance-of v2, v0, LaqC;

    if-eqz v2, :cond_94

    .line 332
    const-class v2, LaqC;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    goto :goto_75

    .line 333
    :cond_94
    instance-of v2, v0, LaqI;

    if-eqz v2, :cond_75

    .line 334
    const-class v2, LaqI;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    goto :goto_75

    .line 336
    :cond_9e
    instance-of v2, v0, LaqP;

    if-eqz v2, :cond_a8

    .line 337
    const-class v2, LaqP;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    goto :goto_75

    .line 338
    :cond_a8
    instance-of v2, v0, LaqB;

    if-eqz v2, :cond_b2

    .line 339
    const-class v2, LaqB;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    goto :goto_75

    .line 340
    :cond_b2
    instance-of v2, v0, LaqK;

    if-eqz v2, :cond_bc

    .line 341
    const-class v2, LaqK;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    goto :goto_75

    .line 342
    :cond_bc
    instance-of v2, v0, LaqE;

    if-eqz v2, :cond_75

    .line 343
    const-class v2, LaqE;

    invoke-direct {p0, v2, v0}, LWI;->a(Ljava/lang/Class;Laqm;)V

    goto :goto_75

    .line 346
    :cond_c6
    return-void
.end method

.method static synthetic c(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->e()V

    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 359
    const-class v0, LaqP;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqP;

    .line 360
    iget-object v2, p0, LWI;->c:Ljava/util/Map;

    invoke-virtual {v0}, LaqP;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, LaqP;->a()LanG;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 362
    :cond_24
    return-void
.end method

.method static synthetic d(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->f()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 384
    const-class v0, LaqC;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqC;

    .line 385
    invoke-direct {p0, v0}, LWI;->a(LaqC;)V

    goto :goto_a

    .line 389
    :cond_1a
    const-class v0, LaqI;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqI;

    .line 390
    invoke-direct {p0, v0}, LWI;->a(LaqI;)V

    goto :goto_24

    .line 392
    :cond_34
    return-void
.end method

.method static synthetic e(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->g()V

    return-void
.end method

.method private f()V
    .registers 6

    .prologue
    .line 428
    const-class v0, Lang;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lang;

    .line 429
    invoke-static {v0}, LXa;->a(Lang;)LanG;

    move-result-object v1

    .line 430
    if-nez v1, :cond_4a

    .line 431
    invoke-static {v0}, LXa;->a(Lang;)Ljava/lang/Class;

    move-result-object v1

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lang;->a()Lant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no scope instance nor scope binding. An unscoped binding should have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Scopes.NO_SCOPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-direct {p0, v1}, LWI;->a(Ljava/lang/Class;)LanG;

    move-result-object v1

    .line 438
    :cond_4a
    sget-object v3, LanI;->b:LanG;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 440
    iget-object v3, p0, LWI;->d:Ljava/util/Map;

    invoke-interface {v0}, Lang;->a()Lant;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 444
    :cond_5c
    iget-object v0, p0, LWI;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lant;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanG;

    .line 448
    invoke-direct {p0, v1}, LWI;->a(Lant;)LWZ;

    move-result-object v1

    .line 449
    invoke-interface {v1, v0}, LWZ;->a(LanG;)V

    goto :goto_66

    .line 451
    :cond_86
    return-void
.end method

.method static synthetic f(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->h()V

    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    .line 464
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 465
    const-class v0, Lang;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lang;

    .line 466
    invoke-interface {v0}, Lang;->a()Lant;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 469
    :cond_23
    new-instance v0, LWG;

    iget-object v2, p0, LWI;->a:Ljava/util/Map;

    iget-object v3, p0, LWI;->b:Ljava/util/Map;

    iget-object v4, p0, LWI;->c:Ljava/util/Map;

    invoke-direct {v0, v2, v3, v4, v1}, LWG;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, LWI;->a:Lans;

    .line 471
    iget-object v0, p0, LWI;->a:LWV;

    iget-object v1, p0, LWI;->a:Lans;

    invoke-virtual {v0, v1}, LWV;->a(Lans;)V

    .line 472
    return-void
.end method

.method static synthetic g(LWI;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, LWI;->i()V

    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 488
    const-class v0, LaqI;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqI;

    .line 489
    iget-object v2, p0, LWI;->a:Lans;

    invoke-interface {v0}, LaqI;->b()LanD;

    move-result-object v0

    invoke-interface {v2, v0}, Lans;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 492
    :cond_20
    :goto_20
    iget-object v0, p0, LWI;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 493
    iget-object v0, p0, LWI;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWY;

    .line 494
    invoke-interface {v0}, LWY;->a()V

    goto :goto_20

    .line 505
    :cond_34
    const-class v0, LaqC;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqC;

    .line 506
    iget-object v2, p0, LWI;->a:Lans;

    invoke-interface {v0}, LaqC;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lans;->a(Ljava/lang/Object;)V

    goto :goto_3e

    .line 509
    :cond_54
    const-class v0, LaqB;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqB;

    .line 510
    iget-object v2, p0, LWI;->a:Lans;

    invoke-interface {v2, v0}, Lans;->a(Ljava/lang/Object;)V

    goto :goto_5e

    .line 512
    :cond_70
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 519
    const-class v0, LaqK;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqK;

    .line 520
    invoke-direct {p0, v0}, LWI;->a(LaqK;)V

    goto :goto_a

    .line 524
    :cond_1a
    const-class v0, LaqE;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqE;

    .line 525
    invoke-direct {p0, v0}, LWI;->a(LaqE;)V

    goto :goto_24

    .line 527
    :cond_34
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lans;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 298
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, LWI;->a:Lans;

    if-eqz v1, :cond_a

    .line 299
    iget-object v0, p0, LWI;->a:Lans;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_2c

    .line 308
    :goto_8
    monitor-exit p0

    return-object v0

    .line 301
    :cond_a
    :try_start_a
    iget-object v1, p0, LWI;->a:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    :goto_13
    const-string v2, "This builder is no longer usable. Please create a new builder."

    invoke-static {v1, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 304
    invoke-static {}, LWL;->values()[LWL;

    move-result-object v1

    array-length v2, v1

    :goto_1d
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    .line 305
    invoke-virtual {v3, p0}, LWL;->a(LWI;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_27
    move v1, v0

    .line 301
    goto :goto_13

    .line 308
    :cond_29
    iget-object v0, p0, LWI;->a:Lans;
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_2c

    goto :goto_8

    .line 298
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a()V
.end method

.method protected a(LWY;)V
    .registers 4
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, LWI;->a:Lans;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "No one should be registering additional post initialization injections after the injector has been initialized."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 584
    iget-object v0, p0, LWI;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 585
    return-void

    .line 581
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected a(Lant;LWZ;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LWZ",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, LWI;->a:Lans;

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_5
    const-string v1, "No one should be registering additional providers after the injector has been initialized."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 553
    iget-object v0, p0, LWI;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-interface {p2}, LWZ;->a()Ljava/lang/Class;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_1e

    .line 556
    iget-object v1, p0, LWI;->d:Ljava/util/Map;

    invoke-direct {p0, v0}, LWI;->a(Ljava/lang/Class;)LanG;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_1e
    return-void

    .line 550
    :cond_1f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected a(Ljava/lang/Class;Lany;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lany",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, LWI;->a:Lans;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "No one should be registering additional member injectors after the injector has been initialized."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 574
    iget-object v0, p0, LWI;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    return-void

    .line 571
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, LWI;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWZ;

    .line 375
    invoke-interface {v0}, LWZ;->a()V

    goto :goto_a

    .line 377
    :cond_1a
    return-void
.end method
