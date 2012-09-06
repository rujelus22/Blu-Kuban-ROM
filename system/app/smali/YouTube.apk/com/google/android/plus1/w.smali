.class public final Lcom/google/android/plus1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/plus1/as;

.field private final b:Lcom/google/android/plus1/as;

.field private final c:Lcom/google/android/plus1/aa;

.field private final d:Lcom/google/common/collect/hu;

.field private final e:Ljava/util/Set;

.field private final f:Lcom/google/common/collect/hu;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lcom/google/android/plus1/ad;

.field private final j:Lcom/google/android/plus1/aw;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/an;Lcom/google/android/plus1/as;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/plus1/w;-><init>(Lcom/google/android/plus1/an;Lcom/google/android/plus1/as;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/plus1/aw;)V

    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/an;Lcom/google/android/plus1/as;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/plus1/aw;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/android/plus1/am;

    invoke-direct {v0}, Lcom/google/android/plus1/am;-><init>()V

    iput-object v0, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    .line 83
    new-instance v0, Lcom/google/android/plus1/av;

    iget-object v1, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    iget-object v2, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-direct {v0, v1, v2}, Lcom/google/android/plus1/av;-><init>(Lcom/google/android/plus1/as;Lcom/google/android/plus1/as;)V

    iput-object v0, p0, Lcom/google/android/plus1/w;->b:Lcom/google/android/plus1/as;

    .line 86
    new-instance v0, Lcom/google/android/plus1/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/plus1/aa;-><init>(Lcom/google/android/plus1/w;B)V

    iput-object v0, p0, Lcom/google/android/plus1/w;->c:Lcom/google/android/plus1/aa;

    .line 88
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/w;->d:Lcom/google/common/collect/hu;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/plus1/w;->e:Ljava/util/Set;

    .line 92
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/w;->f:Lcom/google/common/collect/hu;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/w;->g:Ljava/util/Map;

    .line 125
    iput-object p4, p0, Lcom/google/android/plus1/w;->h:Ljava/util/concurrent/Executor;

    .line 126
    new-instance v0, Lcom/google/android/plus1/ad;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/plus1/ad;-><init>(Lcom/google/android/plus1/w;Lcom/google/android/plus1/an;Lcom/google/android/plus1/as;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/android/plus1/w;->i:Lcom/google/android/plus1/ad;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/plus1/w;->j:Lcom/google/android/plus1/aw;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/ad;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/plus1/w;->i:Lcom/google/android/plus1/ad;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/google/android/plus1/u;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/plus1/w;->d:Lcom/google/common/collect/hu;

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 339
    invoke-static {v2}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 340
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/ac;

    .line 341
    if-nez v1, :cond_26

    .line 342
    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 343
    :cond_26
    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 344
    if-eqz p2, :cond_32

    .line 345
    invoke-interface {v1, p2}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Object;)V

    goto :goto_e

    .line 347
    :cond_32
    invoke-interface {v1, p3}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Exception;)V

    goto :goto_e

    .line 351
    :cond_36
    return-void
.end method

.method private a(Lcom/google/android/plus1/aq;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/plus1/w;->e:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 364
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/ac;

    .line 365
    if-nez v1, :cond_24

    .line 366
    iget-object v1, p0, Lcom/google/android/plus1/w;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 367
    :cond_24
    iget-object v3, p0, Lcom/google/android/plus1/w;->e:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 368
    if-eqz p1, :cond_32

    .line 369
    invoke-interface {v1, p1}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 371
    :cond_32
    invoke-interface {v1, p2}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Exception;)V

    goto :goto_a

    .line 375
    :cond_36
    return-void
.end method

.method private a(Lcom/google/android/plus1/u;)V
    .registers 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p1, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/plus1/w;->a(Landroid/net/Uri;Lcom/google/android/plus1/u;Ljava/lang/Exception;)V

    .line 327
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/plus1/w;->a(Landroid/net/Uri;Lcom/google/android/plus1/u;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Lcom/google/android/plus1/aq;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/as;->a(Lcom/google/android/plus1/aq;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/aq;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Lcom/google/android/plus1/at;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-virtual {p1, v0}, Lcom/google/android/plus1/at;->a(Lcom/google/android/plus1/ak;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_c
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1 .. :try_end_6} :catch_2e

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/as;->b(Lcom/google/android/plus1/at;)V

    return-void

    :catch_c
    move-exception v0

    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading +1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_2e
    move-exception v0

    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading +1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Lcom/google/android/plus1/u;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/u;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/aq;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-interface {v1}, Lcom/google/android/plus1/as;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-interface {v1, v0}, Lcom/google/android/plus1/as;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/plus1/w;->b:Lcom/google/android/plus1/as;

    invoke-interface {v0}, Lcom/google/android/plus1/as;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    invoke-direct {p0, v0}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/u;)V

    goto :goto_20

    :cond_36
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/w;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    :try_start_20
    iget-object v3, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    invoke-interface {v3, v1, v0}, Lcom/google/android/plus1/as;->a(Landroid/net/Uri;Lcom/google/android/plus1/u;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3a
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_20 .. :try_end_25} :catch_45

    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/plus1/w;->b:Lcom/google/android/plus1/as;

    invoke-interface {v0, v1}, Lcom/google/android/plus1/as;->a(Landroid/net/Uri;)Lcom/google/android/plus1/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/u;)V
    :try_end_2e
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_25 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_50

    goto :goto_8

    :catch_2f
    move-exception v0

    const-string v1, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_3a
    move-exception v0

    const-string v3, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catch_45
    move-exception v0

    const-string v3, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catch_50
    move-exception v0

    const-string v1, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_5b
    return-void
.end method

.method static synthetic b(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/as;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/plus1/w;->a:Lcom/google/android/plus1/as;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/plus1/w;)Ljava/util/concurrent/Executor;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/plus1/w;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/as;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/plus1/w;->b:Lcom/google/android/plus1/as;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/plus1/w;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/plus1/w;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/ak;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/plus1/w;->c:Lcom/google/android/plus1/aa;

    return-object v0
.end method

.method public final a(Lcom/google/android/plus1/ac;)V
    .registers 4
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/plus1/w;->d:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/ac;

    .line 180
    if-eq v0, p1, :cond_26

    if-nez v0, :cond_a

    .line 181
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 184
    :cond_2a
    return-void
.end method

.method public final a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 141
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 142
    iget-object v2, p0, Lcom/google/android/plus1/w;->d:Lcom/google/common/collect/hu;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Lcom/google/common/collect/hu;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 149
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/plus1/w;->b:Lcom/google/android/plus1/as;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/as;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Object;)V
    :try_end_3d
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_1c .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3d} :catch_6a

    goto :goto_2a

    .line 153
    :catch_3e
    move-exception v0

    .line 154
    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 155
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading cached +1\'s: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/google/android/plus1/w;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/plus1/x;-><init>(Lcom/google/android/plus1/w;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void

    .line 157
    :catch_6a
    move-exception v0

    .line 158
    const-string v1, "PlusOneController"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 159
    const-string v1, "PlusOneController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading cached +1\'s: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/plus1/w;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/z;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/z;-><init>(Lcom/google/android/plus1/w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public final b(Lcom/google/android/plus1/ac;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 191
    iget-object v0, p0, Lcom/google/android/plus1/w;->e:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :try_start_b
    iget-object v0, p0, Lcom/google/android/plus1/w;->b:Lcom/google/android/plus1/as;

    invoke-interface {v0}, Lcom/google/android/plus1/as;->a()Lcom/google/android/plus1/aq;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_16

    .line 196
    invoke-interface {p1, v0}, Lcom/google/android/plus1/ac;->a(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_21
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_b .. :try_end_16} :catch_39

    .line 210
    :cond_16
    iget-object v0, p0, Lcom/google/android/plus1/w;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/plus1/y;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/y;-><init>(Lcom/google/android/plus1/w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    return-void

    .line 198
    :catch_21
    move-exception v0

    .line 199
    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 200
    const-string v1, "PlusOneController"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :catch_39
    move-exception v0

    .line 204
    const-string v1, "PlusOneController"

    invoke-static {v1, v2}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 205
    const-string v1, "PlusOneController"

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneReader$PlusOneException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Lcom/google/android/plus1/ac;)V
    .registers 4
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/plus1/w;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/ac;

    .line 226
    if-eq v0, p1, :cond_1c

    if-nez v0, :cond_6

    .line 227
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 230
    :cond_20
    return-void
.end method

.method public final d(Lcom/google/android/plus1/ac;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/plus1/w;->j:Lcom/google/android/plus1/aw;

    if-nez v0, :cond_5

    .line 273
    :cond_4
    return-void

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/google/android/plus1/w;->f:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/ac;

    .line 269
    if-eq v0, p1, :cond_2b

    if-nez v0, :cond_f

    .line 270
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f
.end method
