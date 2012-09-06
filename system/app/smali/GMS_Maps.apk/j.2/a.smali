.class public Lj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ln/am;

.field private static b:Lj/a;


# instance fields
.field private final c:Lcom/google/googlenav/common/a;

.field private final d:Ljava/util/Map;

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Ln/am;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Ln/am;-><init>(III)V

    sput-object v0, Lj/a;->a:Ln/am;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/a;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj/a;->d:Ljava/util/Map;

    .line 75
    iput v1, p0, Lj/a;->g:I

    .line 81
    iput v1, p0, Lj/a;->h:I

    .line 168
    iput-object p1, p0, Lj/a;->c:Lcom/google/googlenav/common/a;

    .line 169
    iput p2, p0, Lj/a;->e:I

    .line 170
    iput p3, p0, Lj/a;->f:I

    .line 171
    return-void
.end method

.method protected static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 106
    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static synthetic a(Lj/a;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lj/a;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lj/a;->g:I

    return v0
.end method

.method static synthetic a(Lj/a;)Lcom/google/googlenav/common/a;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lj/a;->c:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method public static declared-synchronized a()Lj/a;
    .registers 2

    .prologue
    .line 126
    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lj/a;->b:Lj/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lj/a;->g:I

    if-gt v0, p1, :cond_b

    iget v0, p0, Lj/a;->h:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4f

    if-gt v0, p2, :cond_b

    .line 376
    :cond_9
    monitor-exit p0

    return-void

    .line 339
    :cond_b
    :try_start_b
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 341
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/d;

    invoke-virtual {v1}, Lj/d;->c()Lt/h;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_1a

    iget-object v1, v2, Lt/h;->a:Ljava/lang/Object;

    sget-object v5, Lj/a;->a:Ln/am;

    if-eq v1, v5, :cond_1a

    .line 345
    new-instance v5, Lj/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v2, Lt/h;->a:Ljava/lang/Object;

    check-cast v1, Ln/am;

    iget-object v2, v2, Lt/h;->b:Ljava/lang/Object;

    check-cast v2, Lj/b;

    invoke-direct {v5, v0, v1, v2}, Lj/c;-><init>(Landroid/util/Pair;Ln/am;Lj/b;)V

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4f

    goto :goto_1a

    .line 334
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 350
    :cond_52
    :try_start_52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    :cond_57
    :goto_57
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b1

    iget v0, p0, Lj/a;->g:I

    if-gt v0, p1, :cond_65

    iget v0, p0, Lj/a;->h:I

    if-le v0, p2, :cond_b1

    .line 355
    :cond_65
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/c;

    .line 356
    iget-object v1, p0, Lj/a;->d:Ljava/util/Map;

    iget-object v4, v0, Lj/c;->a:Landroid/util/Pair;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/d;

    .line 357
    iget-object v4, v0, Lj/c;->b:Ln/am;

    invoke-virtual {v1, v4}, Lj/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {v1}, Lj/d;->f()I

    move-result v4

    if-nez v4, :cond_8f

    invoke-static {v1}, Lj/d;->a(Lj/d;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 359
    iget-object v4, v0, Lj/c;->a:Landroid/util/Pair;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_8f
    invoke-interface {v3, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v1}, Lj/d;->c()Lt/h;

    move-result-object v1

    .line 366
    if-eqz v1, :cond_57

    iget-object v4, v1, Lt/h;->a:Ljava/lang/Object;

    sget-object v5, Lj/a;->a:Ln/am;

    if-eq v4, v5, :cond_57

    .line 367
    new-instance v4, Lj/c;

    iget-object v5, v0, Lj/c;->a:Landroid/util/Pair;

    iget-object v0, v1, Lt/h;->a:Ljava/lang/Object;

    check-cast v0, Ln/am;

    iget-object v1, v1, Lt/h;->b:Ljava/lang/Object;

    check-cast v1, Lj/b;

    invoke-direct {v4, v5, v0, v1}, Lj/c;-><init>(Landroid/util/Pair;Ln/am;Lj/b;)V

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 373
    :cond_b1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 374
    iget-object v2, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catchall {:try_start_52 .. :try_end_c6} :catchall_4f

    goto :goto_b5
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/common/a;)V
    .registers 5
    .parameter

    .prologue
    .line 139
    const-class v1, Lj/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lj/a;->b:Lj/a;

    if-nez v0, :cond_1a

    .line 140
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->h()I

    move-result v0

    .line 141
    new-instance v2, Lj/a;

    invoke-static {v0}, Lj/a;->a(I)I

    move-result v3

    invoke-static {v0}, Lj/a;->b(I)I

    move-result v0

    invoke-direct {v2, p0, v3, v0}, Lj/a;-><init>(Lcom/google/googlenav/common/a;II)V

    sput-object v2, Lj/a;->b:Lj/a;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 144
    :cond_1a
    monitor-exit v1

    return-void

    .line 139
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static b(I)I
    .registers 2
    .parameter

    .prologue
    .line 121
    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method static synthetic b(Lj/a;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lj/a;->h:I

    sub-int/2addr v0, p1

    iput v0, p0, Lj/a;->h:I

    return v0
.end method

.method private declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lj/b;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 397
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v1

    .line 398
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 399
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 400
    if-nez v0, :cond_51

    .line 401
    if-eqz p4, :cond_37

    .line 402
    new-instance v0, Lj/d;

    invoke-direct {v0, p0, v1, v2}, Lj/d;-><init>(Lj/a;J)V

    .line 403
    iget-object v1, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 409
    :goto_25
    invoke-virtual {v7, p3}, Lj/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/b;

    .line 410
    if-eqz v0, :cond_39

    .line 411
    iget-object v1, p0, Lj/a;->c:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lj/b;->d:J
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_4e

    .line 420
    :goto_35
    monitor-exit p0

    return-object v0

    :cond_37
    move-object v0, v6

    .line 405
    goto :goto_35

    .line 415
    :cond_39
    if-eqz p4, :cond_4c

    .line 418
    :try_start_3b
    new-instance v0, Lj/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lj/a;->c:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lj/b;-><init>(Lcom/google/android/maps/driveabout/vector/aV;IIJ)V

    invoke-virtual {v7, p3, v0}, Lj/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_4e

    :cond_4c
    move-object v0, v6

    .line 420
    goto :goto_35

    .line 397
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_51
    move-object v7, v0

    goto :goto_25
.end method

.method private static c(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 559
    mul-int/lit8 v0, p0, 0xa

    const/high16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/j;->b(II)I

    move-result v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lj/a;->b(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lj/b;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_b

    .line 390
    iget-object v0, v0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    .line 392
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 387
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 598
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 599
    iput-wide p1, p0, Lj/a;->i:J

    .line 601
    :cond_8
    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 9
    .parameter

    .prologue
    .line 246
    monitor-enter p0

    if-nez p1, :cond_5

    .line 257
    :cond_3
    monitor-exit p0

    return-void

    .line 249
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v2

    .line 251
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-nez v1, :cond_13

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/d;

    sget-object v5, Lj/a;->a:Ln/am;

    invoke-virtual {v1, v5}, Lj/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    invoke-virtual {v0, p1}, Lj/d;->a(Lcom/google/android/maps/driveabout/vector/aU;)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    goto :goto_13

    .line 246
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 196
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 197
    if-eqz v0, :cond_22

    .line 199
    invoke-virtual {v0}, Lj/d;->e()V

    .line 201
    invoke-virtual {v0, p1}, Lj/d;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 204
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 206
    :cond_22
    monitor-exit p0

    return-void

    .line 195
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_48

    .line 431
    if-nez v0, :cond_19

    .line 445
    :goto_17
    monitor-exit p0

    return-void

    .line 434
    :cond_19
    const/4 v2, 0x0

    .line 435
    :try_start_1a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 436
    invoke-virtual {v0, v1}, Lj/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/b;

    .line 437
    if-eqz v1, :cond_4b

    iget-object v4, v1, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    if-eqz v4, :cond_4b

    iget v4, v1, Lj/b;->b:I

    if-nez v4, :cond_4b

    .line 441
    iget v1, v1, Lj/b;->c:I

    add-int/2addr v1, v2

    :goto_3d
    move v2, v1

    .line 443
    goto :goto_1e

    .line 444
    :cond_3f
    iget v0, p0, Lj/a;->e:I

    sub-int/2addr v0, v2

    iget v1, p0, Lj/a;->f:I

    invoke-direct {p0, v0, v1}, Lj/a;->a(II)V
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_48

    goto :goto_17

    .line 429
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4b
    move v1, v2

    goto :goto_3d
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 285
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 286
    if-nez v0, :cond_7d

    .line 287
    new-instance v0, Lj/d;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lj/d;-><init>(Lj/a;J)V

    .line 288
    iget-object v2, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 291
    :goto_26
    invoke-virtual {v1, p3}, Lj/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/b;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_66

    .line 292
    if-nez v0, :cond_30

    .line 323
    :goto_2e
    monitor-exit p0

    return-void

    .line 300
    :cond_30
    :try_start_30
    iget-object v2, v0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    if-eqz v2, :cond_42

    .line 301
    invoke-virtual {v1, p3}, Lj/d;->a(Ln/am;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 302
    new-instance v2, Lj/b;

    invoke-direct {v2, v0}, Lj/b;-><init>(Lj/b;)V

    invoke-virtual {v1, v2}, Lj/d;->a(Lj/b;)V

    .line 314
    :cond_42
    :goto_42
    iput-object p4, v0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    .line 315
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/vector/aV;->i()I

    move-result v1

    iput v1, v0, Lj/b;->b:I

    .line 316
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/vector/aV;->j()I

    move-result v1

    iput v1, v0, Lj/b;->c:I

    .line 317
    iget v1, p0, Lj/a;->g:I

    iget v2, v0, Lj/b;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lj/a;->g:I

    .line 318
    iget v1, p0, Lj/a;->h:I

    iget v0, v0, Lj/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lj/a;->h:I

    .line 322
    iget v0, p0, Lj/a;->e:I

    iget v1, p0, Lj/a;->f:I

    invoke-direct {p0, v0, v1}, Lj/a;->a(II)V
    :try_end_65
    .catchall {:try_start_30 .. :try_end_65} :catchall_66

    goto :goto_2e

    .line 284
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_69
    :try_start_69
    iget-object v1, v0, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 307
    iget v1, p0, Lj/a;->g:I

    iget v2, v0, Lj/b;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lj/a;->g:I

    .line 308
    iget v1, p0, Lj/a;->h:I

    iget v2, v0, Lj/b;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lj/a;->h:I
    :try_end_7c
    .catchall {:try_start_69 .. :try_end_7c} :catchall_66

    goto :goto_42

    :cond_7d
    move-object v1, v0

    goto :goto_26
.end method

.method public declared-synchronized a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 511
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 512
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLTileCacheManager.onLowJavaAndNativeMemory("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3b

    const-string v0, "critical"

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lj/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    :cond_31
    if-eqz p1, :cond_3e

    .line 517
    iget v0, p0, Lj/a;->g:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj/a;->a(II)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_48

    .line 522
    :goto_39
    monitor-exit p0

    return-void

    .line 512
    :cond_3b
    :try_start_3b
    const-string v0, "warning"

    goto :goto_18

    .line 520
    :cond_3e
    iget v0, p0, Lj/a;->g:I

    iget v1, p0, Lj/a;->h:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lj/a;->a(II)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_48

    goto :goto_39

    .line 511
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 530
    const/4 v0, 0x0

    iget v1, p0, Lj/a;->h:I

    invoke-direct {p0, v0, v1}, Lj/a;->a(II)V

    .line 531
    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 213
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 214
    if-eqz v0, :cond_25

    .line 216
    invoke-virtual {v0}, Lj/d;->a()V

    .line 218
    invoke-virtual {v0}, Lj/d;->f()I

    move-result v0

    if-nez v0, :cond_25

    .line 220
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 223
    :cond_25
    monitor-exit p0

    return-void

    .line 212
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_59

    .line 455
    if-nez v0, :cond_19

    .line 472
    :goto_17
    monitor-exit p0

    return-void

    .line 458
    :cond_19
    :try_start_19
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 459
    invoke-virtual {v0, v1}, Lj/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/b;

    .line 460
    if-eqz v1, :cond_1d

    iget-object v3, v1, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    if-eqz v3, :cond_1d

    iget v3, v1, Lj/b;->b:I

    if-nez v3, :cond_1d

    .line 462
    iget-object v3, v1, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->i()I

    move-result v3

    iput v3, v1, Lj/b;->b:I

    .line 463
    iget v3, p0, Lj/a;->g:I

    iget v4, v1, Lj/b;->b:I

    add-int/2addr v3, v4

    iput v3, p0, Lj/a;->g:I

    .line 464
    iget v3, v1, Lj/b;->c:I

    .line 465
    iget-object v4, v1, Lj/b;->a:Lcom/google/android/maps/driveabout/vector/aV;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/aV;->j()I

    move-result v4

    .line 466
    iput v4, v1, Lj/b;->c:I

    .line 467
    iget v1, p0, Lj/a;->h:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v4

    iput v1, p0, Lj/a;->h:I
    :try_end_58
    .catchall {:try_start_19 .. :try_end_58} :catchall_59

    goto :goto_1d

    .line 453
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 471
    :cond_5c
    :try_start_5c
    iget v0, p0, Lj/a;->e:I

    iget v1, p0, Lj/a;->f:I

    invoke-direct {p0, v0, v1}, Lj/a;->a(II)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    goto :goto_17
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 535
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/d;

    invoke-virtual {v1}, Lj/d;->f()I

    move-result v1

    .line 539
    if-eqz v1, :cond_10

    .line 540
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_33

    .line 541
    const-string v4, " + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_10

    .line 535
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 546
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_53

    .line 547
    const-string v0, "no"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_53
    const-string v0, " tiles use "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v0, p0, Lj/a;->g:I

    invoke-static {v0}, Lj/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj/a;->e:I

    invoke-static {v1}, Lj/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M GL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj/a;->h:I

    invoke-static {v1}, Lj/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj/a;->f:I

    invoke-static {v1}, Lj/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M J+N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_48 .. :try_end_9a} :catchall_45

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized c(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 232
    if-eqz v0, :cond_2d

    .line 233
    sget-object v2, Lj/a;->a:Ln/am;

    invoke-virtual {v0, v2}, Lj/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0}, Lj/d;->b()V

    .line 235
    invoke-virtual {v0, p1}, Lj/d;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 237
    invoke-virtual {v0}, Lj/d;->f()I

    move-result v0

    if-nez v0, :cond_2d

    .line 239
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 242
    :cond_2d
    monitor-exit p0

    return-void

    .line 230
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 266
    if-eqz v0, :cond_1a

    .line 267
    invoke-virtual {v0}, Lj/d;->b()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 269
    :cond_1a
    monitor-exit p0

    return-void

    .line 264
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 481
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v1

    .line 482
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 483
    iget-object v0, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    .line 484
    if-nez v0, :cond_21

    .line 485
    new-instance v0, Lj/d;

    invoke-direct {v0, p0, v1, v2}, Lj/d;-><init>(Lj/a;J)V

    .line 486
    iget-object v1, p0, Lj/a;->d:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_21
    invoke-virtual {v0}, Lj/d;->d()V

    .line 489
    invoke-virtual {v0, p1}, Lj/d;->a(Lcom/google/android/maps/driveabout/vector/aU;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 490
    monitor-exit p0

    return-void

    .line 481
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
