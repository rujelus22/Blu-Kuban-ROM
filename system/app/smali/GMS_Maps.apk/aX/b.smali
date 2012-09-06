.class public Lax/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/z;
.implements Lcom/google/googlenav/g;


# instance fields
.field private final a:Lac/h;

.field private final b:Lcom/google/googlenav/ui/ap;

.field private final c:Lax/F;

.field private final d:Ljava/util/Set;

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private final i:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lac/h;Lcom/google/googlenav/ui/ap;Lax/F;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lax/b;->d:Ljava/util/Set;

    .line 53
    iput-boolean v1, p0, Lax/b;->e:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/b;->f:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lax/b;->g:Ljava/lang/Object;

    .line 69
    iput-boolean v1, p0, Lax/b;->h:Z

    .line 77
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lax/b;->i:Ljava/util/Set;

    .line 81
    iput-object p1, p0, Lax/b;->a:Lac/h;

    .line 82
    iput-object p2, p0, Lax/b;->b:Lcom/google/googlenav/ui/ap;

    .line 83
    iput-object p3, p0, Lax/b;->c:Lax/F;

    .line 84
    return-void
.end method

.method static synthetic a(Lax/b;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lax/b;->d:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lax/r;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "BackgroundPlaceDetailsFetcher.fetchDetailsIfNecessary"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 92
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lax/b;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {p1, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {p1, v0}, Lax/r;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 99
    iget-object v2, p0, Lax/b;->d:Ljava/util/Set;

    monitor-enter v2

    .line 100
    :try_start_2c
    iget-object v3, p0, Lax/b;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3c

    .line 101
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_46

    .line 111
    :cond_36
    const-string v0, "BackgroundPlaceDetailsFetcher.fetchDetailsIfNecessary"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 112
    return-void

    .line 103
    :cond_3c
    :try_start_3c
    iget-object v3, p0, Lax/b;->d:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 104
    monitor-exit v2

    goto :goto_9

    .line 106
    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    .line 108
    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lax/b;->a:Lac/h;

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    goto :goto_9
.end method

.method static synthetic a(Lax/b;Lax/m;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lax/b;->a(Lax/m;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lax/b;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lax/b;->e:Z

    return p1
.end method

.method private a(Lax/m;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-interface {p1}, Lax/m;->g()Lax/r;

    move-result-object v1

    .line 243
    invoke-interface {v1, p2}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v2

    if-nez v2, :cond_c

    .line 264
    :goto_b
    return v0

    .line 246
    :cond_c
    invoke-interface {p1, p2, p3}, Lax/m;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 248
    iget-object v2, p0, Lax/b;->i:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v2, "BPDF2"

    invoke-static {v2, p2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-interface {v1, p2}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_31

    .line 259
    new-instance v3, Lax/E;

    invoke-virtual {v2}, Lax/E;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {v3, v2}, Lax/E;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 260
    invoke-virtual {v3, v0}, Lax/E;->a(Z)V

    .line 261
    invoke-interface {v1, v3}, Lax/r;->a(Lax/E;)V

    .line 264
    :cond_31
    const/4 v0, 0x1

    goto :goto_b
.end method

.method static synthetic b(Lax/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lax/b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lax/b;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lax/b;->f:Z

    return p1
.end method

.method private c()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 157
    const/4 v0, 0x5

    new-array v2, v0, [Lax/m;

    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v3

    invoke-virtual {v3}, Lax/l;->h()Lax/m;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v3

    invoke-virtual {v3}, Lax/l;->i()Lax/m;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v3

    invoke-virtual {v3}, Lax/l;->e()Lax/m;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x4

    iget-boolean v0, p0, Lax/b;->h:Z

    if-eqz v0, :cond_49

    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->g()Lax/m;

    move-result-object v0

    :goto_3c
    aput-object v0, v2, v3

    move v0, v1

    .line 168
    :goto_3f
    array-length v3, v2

    if-ge v0, v3, :cond_64

    .line 169
    aget-object v3, v2, v0

    if-nez v3, :cond_4b

    .line 168
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 157
    :cond_49
    const/4 v0, 0x0

    goto :goto_3c

    .line 172
    :cond_4b
    aget-object v3, v2, v0

    invoke-interface {v3}, Lax/m;->g()Lax/r;

    move-result-object v3

    invoke-interface {v3}, Lax/r;->b()Ljava/util/List;

    move-result-object v3

    .line 173
    aget-object v4, v2, v0

    invoke-interface {v4}, Lax/m;->g()Lax/r;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lax/b;->a(Lax/r;Ljava/util/List;)V

    .line 174
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_46

    .line 176
    :cond_64
    return v1
.end method

.method static synthetic c(Lax/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lax/b;->e:Z

    return v0
.end method

.method static synthetic d(Lax/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lax/b;->f:Z

    return v0
.end method

.method static synthetic e(Lax/b;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lax/b;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 186
    new-instance v0, Lax/c;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lax/c;-><init>(Lax/b;LY/c;)V

    invoke-virtual {v0}, Lax/c;->g()V

    .line 226
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v0, Lax/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lax/d;-><init>(Lax/b;LY/c;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v0}, Lax/d;->g()V

    .line 307
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-boolean p1, p0, Lax/b;->h:Z

    .line 273
    if-eqz p1, :cond_7

    .line 274
    invoke-virtual {p0}, Lax/b;->b()V

    .line 276
    :cond_7
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 229
    iget-object v1, p0, Lax/b;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lax/b;->e:Z

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 311
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 312
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lax/b;->c:Lax/F;

    if-eqz v1, :cond_19

    invoke-virtual {v0, p1}, Lax/l;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    if-nez v1, :cond_19

    .line 315
    iget-object v1, p0, Lax/b;->c:Lax/F;

    invoke-virtual {v1, p1}, Lax/F;->d(Ljava/lang/String;)V

    .line 317
    :cond_19
    invoke-virtual {v0, p1}, Lax/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 322
    :goto_1f
    return-void

    .line 321
    :cond_20
    invoke-virtual {p0}, Lax/b;->b()V

    goto :goto_1f
.end method
