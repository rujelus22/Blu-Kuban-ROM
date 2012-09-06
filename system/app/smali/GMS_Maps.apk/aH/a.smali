.class public Lah/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Lah/m;

.field private static final i:Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/Hashtable;

.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private c:Ljava/util/Vector;

.field private volatile d:Z

.field private final f:Lcom/google/googlenav/android/Y;

.field private final g:LY/c;

.field private final h:Ljava/util/Hashtable;

.field private final j:Ljava/util/Vector;

.field private final k:Lah/q;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Lah/m;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lah/m;-><init>(LS/f;LS/f;LS/f;LS/f;Ljava/lang/String;Ljava/lang/Long;)V

    sput-object v0, Lah/a;->e:Lah/m;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lah/a;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/Y;LY/c;Lah/q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lah/a;->a:Ljava/util/Hashtable;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lah/a;->c:Ljava/util/Vector;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lah/a;->h:Ljava/util/Hashtable;

    .line 135
    iput-object p1, p0, Lah/a;->f:Lcom/google/googlenav/android/Y;

    .line 136
    iput-object p2, p0, Lah/a;->g:LY/c;

    .line 137
    iput-object p3, p0, Lah/a;->k:Lah/q;

    .line 138
    new-instance v0, Lcom/google/common/collect/cF;

    invoke-direct {v0}, Lcom/google/common/collect/cF;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/cF;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lah/a;->j:Ljava/util/Vector;

    .line 141
    invoke-direct {p0}, Lah/a;->e()V

    .line 142
    return-void
.end method

.method static synthetic a(Lah/a;)V
    .registers 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lah/a;->c()V

    return-void
.end method

.method static synthetic a(Lah/a;Lah/p;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lah/a;->c(Lah/p;)V

    return-void
.end method

.method static synthetic a(Lah/a;Ljava/lang/Long;Lah/m;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lah/a;->a(Ljava/lang/Long;Lah/m;)V

    return-void
.end method

.method static synthetic a(Lah/a;Ljava/util/Vector;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lah/a;->b(Ljava/util/Vector;)V

    return-void
.end method

.method private a(Ljava/lang/Long;Lah/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-virtual {p2}, Lah/m;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 366
    iget-object v0, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_b
    :goto_b
    iget-object v0, p0, Lah/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void

    .line 367
    :cond_11
    iget-object v0, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 369
    iget-object v0, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Lah/a;->e:Lah/m;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private a(Ljava/util/Vector;)V
    .registers 5
    .parameter

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_15

    .line 346
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/p;

    invoke-interface {v0}, Lah/p;->P_()V

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 348
    :cond_15
    return-void
.end method

.method static synthetic a(Lah/a;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lah/a;->d:Z

    return p1
.end method

.method private static a(Lah/m;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 261
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lah/m;->b()Lah/n;

    move-result-object v2

    invoke-virtual {v2}, Lah/n;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 262
    :cond_e
    if-nez p1, :cond_11

    move v0, v1

    .line 284
    :cond_11
    :goto_11
    return v0

    .line 272
    :cond_12
    if-eqz p1, :cond_11

    .line 277
    invoke-virtual {p0}, Lah/m;->b()Lah/n;

    move-result-object v2

    invoke-virtual {v2}, Lah/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 280
    goto :goto_11
.end method

.method static synthetic b(Lah/a;)LY/c;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lah/a;->g:LY/c;

    return-object v0
.end method

.method static synthetic b()Lah/m;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lah/a;->e:Lah/m;

    return-object v0
.end method

.method static synthetic b(Lah/a;Ljava/util/Vector;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lah/a;->a(Ljava/util/Vector;)V

    return-void
.end method

.method private b(Ljava/util/Vector;)V
    .registers 6
    .parameter

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1b

    .line 352
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/m;

    .line 357
    if-eqz v0, :cond_17

    .line 358
    invoke-virtual {v0}, Lah/m;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lah/a;->a(Ljava/lang/Long;Lah/m;)V

    .line 351
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 361
    :cond_1b
    return-void
.end method

.method private b(Ljava/util/Vector;Lah/p;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 179
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 180
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 182
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_6f

    .line 183
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/n;

    .line 186
    iget-object v1, p0, Lah/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 189
    iget-object v1, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lah/m;

    .line 190
    if-nez v1, :cond_56

    .line 193
    iget-object v1, p0, Lah/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lah/n;

    .line 194
    if-eqz v1, :cond_52

    .line 197
    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 205
    :goto_43
    iget-object v1, p0, Lah/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v7, Lah/a;->i:Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    .line 201
    :cond_52
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_43

    .line 207
    :cond_56
    invoke-virtual {v0}, Lah/n;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lah/a;->a(Lah/m;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 211
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lah/a;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lah/n;->b()Ljava/lang/Long;

    move-result-object v0

    sget-object v7, Lah/a;->i:Ljava/lang/Object;

    invoke-virtual {v1, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 219
    :cond_6f
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    :cond_7b
    const/4 v0, 0x1

    .line 221
    :goto_7c
    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    .line 222
    new-instance v1, Lah/h;

    iget-object v2, p0, Lah/a;->g:LY/c;

    new-instance v3, Lah/b;

    invoke-direct {v3, p0, p2}, Lah/b;-><init>(Lah/a;Lah/p;)V

    invoke-direct {v1, v2, v5, p0, v3}, Lah/h;-><init>(LY/c;Ljava/util/Vector;Lah/a;Lah/i;)V

    invoke-virtual {v1}, Lah/h;->g()V

    .line 242
    :cond_91
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 243
    new-instance v1, Lah/c;

    invoke-direct {v1, p0, p2}, Lah/c;-><init>(Lah/a;Lah/p;)V

    .line 253
    iget-object v2, p0, Lah/a;->k:Lah/q;

    invoke-interface {v2, v4, v1}, Lah/q;->a(Ljava/util/Vector;Lcom/google/googlenav/friend/aC;)V

    .line 256
    :cond_a1
    return v0

    :cond_a2
    move v0, v2

    .line 219
    goto :goto_7c
.end method

.method static synthetic c(Lah/a;)Ljava/util/Vector;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lah/a;->j:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c(Lah/a;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lah/a;->c:Ljava/util/Vector;

    return-object p1
.end method

.method private c()V
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lah/a;->f:Lcom/google/googlenav/android/Y;

    if-eqz v0, :cond_10

    .line 324
    const/4 v0, 0x1

    .line 326
    iget-object v1, p0, Lah/a;->f:Lcom/google/googlenav/android/Y;

    new-instance v2, Lah/e;

    invoke-direct {v2, p0}, Lah/e;-><init>(Lah/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 335
    :goto_f
    return-void

    .line 333
    :cond_10
    iget-object v0, p0, Lah/a;->j:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lah/a;->a(Ljava/util/Vector;)V

    goto :goto_f
.end method

.method private c(Lah/p;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 298
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    .line 299
    if-eqz p1, :cond_1a

    iget-object v1, p0, Lah/a;->f:Lcom/google/googlenav/android/Y;

    if-eqz v1, :cond_1a

    .line 301
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lah/a;->f:Lcom/google/googlenav/android/Y;

    new-instance v2, Lah/d;

    invoke-direct {v2, p0, v0}, Lah/d;-><init>(Lah/a;Ljava/util/Vector;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 314
    :cond_19
    :goto_19
    return-void

    .line 309
    :cond_1a
    if-eqz p1, :cond_19

    .line 311
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0, v0}, Lah/a;->a(Ljava/util/Vector;)V

    goto :goto_19
.end method

.method private d()V
    .registers 5

    .prologue
    .line 528
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 529
    iget-object v1, p0, Lah/a;->a:Ljava/util/Hashtable;

    monitor-enter v1

    .line 530
    :try_start_8
    iget-object v2, p0, Lah/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 531
    :goto_e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 532
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e

    .line 534
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    .line 536
    new-instance v1, Lah/f;

    iget-object v2, p0, Lah/a;->g:LY/c;

    invoke-direct {v1, p0, v2, v0}, Lah/f;-><init>(Lah/a;LY/c;Ljava/util/Vector;)V

    invoke-virtual {v1}, Lah/f;->g()V

    .line 556
    return-void
.end method

.method static synthetic d(Lah/a;)V
    .registers 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lah/a;->d()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 634
    new-instance v0, Lah/g;

    iget-object v1, p0, Lah/a;->g:LY/c;

    invoke-direct {v0, p0, v1}, Lah/g;-><init>(Lah/a;LY/c;)V

    invoke-virtual {v0}, Lah/g;->g()V

    .line 674
    return-void
.end method

.method static synthetic e(Lah/a;)V
    .registers 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lah/a;->f()V

    return-void
.end method

.method static synthetic f(Lah/a;)Ljava/util/Vector;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lah/a;->c:Ljava/util/Vector;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lah/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 684
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 685
    const-string v1, "PROTO_CLIENT_SAVED_PHOTO_CACHE"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 686
    const-string v1, "PHOTO_"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->c(Ljava/lang/String;)V

    .line 687
    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    iget-object v1, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/m;

    .line 378
    sget-object v3, Lah/a;->e:Lah/m;

    if-eq v0, v3, :cond_24

    .line 379
    invoke-virtual {v0}, Lah/m;->i()I

    move-result v0

    add-int/2addr v0, v1

    :goto_21
    move v1, v0

    goto :goto_c

    .line 382
    :cond_23
    return v1

    :cond_24
    move v0, v1

    goto :goto_21
.end method

.method public a(Lcom/google/googlenav/ui/friend/E;)LS/f;
    .registers 4
    .parameter

    .prologue
    .line 587
    invoke-virtual {p1}, Lcom/google/googlenav/ui/friend/E;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lah/a;->a(Ljava/lang/Long;)Lah/m;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_15

    sget-object v1, Lah/a;->e:Lah/m;

    if-eq v0, v1, :cond_15

    .line 589
    invoke-virtual {p1}, Lcom/google/googlenav/ui/friend/E;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 605
    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0

    .line 591
    :pswitch_17
    invoke-virtual {v0}, Lah/m;->f()LS/f;

    move-result-object v0

    goto :goto_16

    .line 593
    :pswitch_1c
    invoke-virtual {v0}, Lah/m;->e()LS/f;

    move-result-object v0

    goto :goto_16

    .line 595
    :pswitch_21
    invoke-virtual {v0}, Lah/m;->d()LS/f;

    move-result-object v0

    goto :goto_16

    .line 597
    :pswitch_26
    invoke-virtual {v0}, Lah/m;->c()LS/f;

    move-result-object v0

    goto :goto_16

    .line 589
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_17
    .end packed-switch
.end method

.method public a(Ljava/lang/Long;)Lah/m;
    .registers 3
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lah/a;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/m;

    return-object v0
.end method

.method public a(Lah/p;)V
    .registers 3
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lah/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public a(Ljava/util/Vector;Lah/p;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-boolean v1, p0, Lah/a;->d:Z

    if-nez v1, :cond_b

    .line 160
    iget-object v1, p0, Lah/a;->c:Ljava/util/Vector;

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/util/a;->a(Ljava/util/List;ILjava/util/List;)V

    .line 163
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1, p2}, Lah/a;->b(Ljava/util/Vector;Lah/p;)Z

    move-result v0

    goto :goto_a
.end method

.method public b(Lah/p;)V
    .registers 3
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lah/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 520
    return-void
.end method
