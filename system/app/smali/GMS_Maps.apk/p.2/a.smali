.class public Lp/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Lt/af;

.field private static b:Lp/a;


# instance fields
.field private final c:Laf/a;

.field private final d:Ljava/util/Map;

.field private final e:I

.field private final f:I

.field private g:I

.field private h:Lcom/google/android/maps/driveabout/vector/aT;

.field private i:I

.field private j:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lt/af;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lt/af;-><init>(III)V

    sput-object v0, Lp/a;->a:Lt/af;

    return-void
.end method

.method public constructor <init>(Laf/a;II)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp/a;->d:Ljava/util/Map;

    iput v1, p0, Lp/a;->g:I

    iput v1, p0, Lp/a;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lp/a;->j:Ljava/util/Set;

    iput-object p1, p0, Lp/a;->c:Laf/a;

    iput p2, p0, Lp/a;->e:I

    iput p3, p0, Lp/a;->f:I

    return-void
.end method

.method static a(I)I
    .registers 2

    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static synthetic a(Lp/a;I)I
    .registers 3

    iget v0, p0, Lp/a;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lp/a;->g:I

    return v0
.end method

.method static synthetic a(Lp/a;)Lcom/google/android/maps/driveabout/vector/aT;
    .registers 2

    iget-object v0, p0, Lp/a;->h:Lcom/google/android/maps/driveabout/vector/aT;

    return-object v0
.end method

.method public static declared-synchronized a()Lp/a;
    .registers 2

    const-class v0, Lp/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lp/a;->b:Lp/a;
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

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lp/a;->g:I

    if-gt v0, p1, :cond_b

    iget v0, p0, Lp/a;->i:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4f

    if-gt v0, p2, :cond_b

    :cond_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/d;

    invoke-virtual {v1}, Lp/d;->c()Lz/i;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v1, v2, Lz/i;->a:Ljava/lang/Object;

    sget-object v5, Lp/a;->a:Lt/af;

    if-eq v1, v5, :cond_1a

    new-instance v5, Lp/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/e;

    iget-object v1, v2, Lz/i;->a:Ljava/lang/Object;

    check-cast v1, Lt/af;

    iget-object v2, v2, Lz/i;->b:Ljava/lang/Object;

    check-cast v2, Lp/b;

    invoke-direct {v5, v0, v1, v2}, Lp/c;-><init>(Lp/e;Lt/af;Lp/b;)V

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4f

    goto :goto_1a

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_52
    :try_start_52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_57
    :goto_57
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b1

    iget v0, p0, Lp/a;->g:I

    if-gt v0, p1, :cond_65

    iget v0, p0, Lp/a;->i:I

    if-le v0, p2, :cond_b1

    :cond_65
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/c;

    iget-object v1, p0, Lp/a;->d:Ljava/util/Map;

    iget-object v4, v0, Lp/c;->a:Lp/e;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/d;

    iget-object v4, v0, Lp/c;->b:Lt/af;

    invoke-virtual {v1, v4}, Lp/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lp/d;->g()I

    move-result v4

    if-nez v4, :cond_8f

    invoke-static {v1}, Lp/d;->a(Lp/d;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8f

    iget-object v4, v0, Lp/c;->a:Lp/e;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    invoke-interface {v3, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lp/d;->c()Lz/i;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-object v4, v1, Lz/i;->a:Ljava/lang/Object;

    sget-object v5, Lp/a;->a:Lt/af;

    if-eq v4, v5, :cond_57

    new-instance v4, Lp/c;

    iget-object v5, v0, Lp/c;->a:Lp/e;

    iget-object v0, v1, Lz/i;->a:Ljava/lang/Object;

    check-cast v0, Lt/af;

    iget-object v1, v1, Lz/i;->b:Ljava/lang/Object;

    check-cast v1, Lp/b;

    invoke-direct {v4, v5, v0, v1}, Lp/c;-><init>(Lp/e;Lt/af;Lp/b;)V

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_b1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/e;

    iget-object v2, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catchall {:try_start_52 .. :try_end_c6} :catchall_4f

    goto :goto_b5
.end method

.method public static declared-synchronized a(Laf/a;)V
    .registers 5

    const-class v1, Lp/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lp/a;->b:Lp/a;

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->h()I

    move-result v0

    new-instance v2, Lp/a;

    invoke-static {v0}, Lp/a;->a(I)I

    move-result v3

    invoke-static {v0}, Lp/a;->b(I)I

    move-result v0

    invoke-direct {v2, p0, v3, v0}, Lp/a;-><init>(Laf/a;II)V

    sput-object v2, Lp/a;->b:Lp/a;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b(I)I
    .registers 2

    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method static synthetic b(Lp/a;I)I
    .registers 3

    iget v0, p0, Lp/a;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lp/a;->i:I

    return v0
.end method

.method static synthetic b(Lp/a;)Laf/a;
    .registers 2

    iget-object v0, p0, Lp/a;->c:Laf/a;

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 4

    mul-int/lit8 v0, p0, 0xa

    const/high16 v1, 0x10

    invoke-static {v0, v1}, Lar/i;->b(II)I

    move-result v0

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
.method public declared-synchronized a(Lp/e;Lt/af;Z)Lcom/google/android/maps/driveabout/vector/aU;
    .registers 12

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-nez v0, :cond_47

    if-eqz p3, :cond_2d

    new-instance v0, Lp/d;

    invoke-direct {v0, p0}, Lp/d;-><init>(Lp/a;)V

    iget-object v1, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    :goto_19
    invoke-virtual {v7, p2}, Lp/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lp/a;->c:Laf/a;

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lp/b;->d:J

    iget-object v0, v0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_44

    :goto_2b
    monitor-exit p0

    return-object v0

    :cond_2d
    move-object v0, v6

    goto :goto_2b

    :cond_2f
    if-eqz p3, :cond_42

    :try_start_31
    new-instance v0, Lp/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lp/a;->c:Laf/a;

    invoke-interface {v4}, Laf/a;->c()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lp/b;-><init>(Lcom/google/android/maps/driveabout/vector/aU;IIJ)V

    invoke-virtual {v7, p2, v0}, Lp/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_44

    :cond_42
    move-object v0, v6

    goto :goto_2b

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_47
    move-object v7, v0

    goto :goto_19
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lp/a;->h:Lcom/google/android/maps/driveabout/vector/aT;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lp/e;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lp/d;->f()V

    invoke-virtual {v0}, Lp/d;->e()V

    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lp/e;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lp/d;

    move-object v7, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1d

    if-nez v7, :cond_f

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    new-instance v1, Lp/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lp/b;-><init>(Lcom/google/android/maps/driveabout/vector/aU;IIJ)V

    invoke-virtual {v7, v1}, Lp/d;->a(Lp/b;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Lp/e;Ljava/util/List;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3c

    if-nez v0, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    const/4 v2, 0x0

    :try_start_e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-virtual {v0, v1}, Lp/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/b;

    if-eqz v1, :cond_3f

    iget-object v4, v1, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v4, :cond_3f

    iget v4, v1, Lp/b;->b:I

    if-nez v4, :cond_3f

    iget v1, v1, Lp/b;->c:I

    add-int/2addr v1, v2

    :goto_31
    move v2, v1

    goto :goto_12

    :cond_33
    iget v0, p0, Lp/a;->e:I

    sub-int/2addr v0, v2

    iget v1, p0, Lp/a;->f:I

    invoke-direct {p0, v0, v1}, Lp/a;->a(II)V
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3c

    goto :goto_b

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move v1, v2

    goto :goto_31
.end method

.method public declared-synchronized a(Lp/e;Lt/af;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-nez v0, :cond_6f

    new-instance v0, Lp/d;

    invoke-direct {v0, p0}, Lp/d;-><init>(Lp/a;)V

    iget-object v1, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_16
    invoke-virtual {v1, p2}, Lp/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_56

    if-nez v0, :cond_20

    :goto_1e
    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    iget-object v2, v0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v2, :cond_32

    invoke-virtual {v1, p2}, Lp/d;->a(Lt/af;)Z

    move-result v2

    if-nez v2, :cond_59

    new-instance v2, Lp/b;

    invoke-direct {v2, v0}, Lp/b;-><init>(Lp/b;)V

    invoke-virtual {v1, v2}, Lp/d;->a(Lp/b;)V

    :cond_32
    :goto_32
    iput-object p3, v0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/aU;->i()I

    move-result v1

    iput v1, v0, Lp/b;->b:I

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/aU;->j()I

    move-result v1

    iput v1, v0, Lp/b;->c:I

    iget v1, p0, Lp/a;->g:I

    iget v2, v0, Lp/b;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lp/a;->g:I

    iget v1, p0, Lp/a;->i:I

    iget v0, v0, Lp/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lp/a;->i:I

    iget v0, p0, Lp/a;->e:I

    iget v1, p0, Lp/a;->f:I

    invoke-direct {p0, v0, v1}, Lp/a;->a(II)V
    :try_end_55
    .catchall {:try_start_20 .. :try_end_55} :catchall_56

    goto :goto_1e

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_59
    :try_start_59
    iget-object v1, v0, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v2, p0, Lp/a;->h:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget v1, p0, Lp/a;->g:I

    iget v2, v0, Lp/b;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lp/a;->g:I

    iget v1, p0, Lp/a;->i:I

    iget v2, v0, Lp/b;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lp/a;->i:I
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_56

    goto :goto_32

    :cond_6f
    move-object v1, v0

    goto :goto_16
.end method

.method public declared-synchronized a(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_31

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

    invoke-virtual {p0}, Lp/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_31
    if-eqz p1, :cond_3e

    iget v0, p0, Lp/a;->g:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lp/a;->a(II)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_48

    :goto_39
    monitor-exit p0

    return-void

    :cond_3b
    :try_start_3b
    const-string v0, "warning"

    goto :goto_18

    :cond_3e
    iget v0, p0, Lp/a;->g:I

    iget v1, p0, Lp/a;->i:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lp/a;->a(II)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_48

    goto :goto_39

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lp/a;->i:I

    invoke-direct {p0, v0, v1}, Lp/a;->a(II)V

    return-void
.end method

.method public declared-synchronized b(Lp/e;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lp/d;->a()V

    invoke-virtual {v0}, Lp/d;->g()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lp/e;Ljava/util/List;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4d

    if-nez v0, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-virtual {v0, v1}, Lp/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/b;

    if-eqz v1, :cond_11

    iget-object v3, v1, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v3, :cond_11

    iget v3, v1, Lp/b;->b:I

    if-nez v3, :cond_11

    iget-object v3, v1, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->i()I

    move-result v3

    iput v3, v1, Lp/b;->b:I

    iget v3, p0, Lp/a;->g:I

    iget v4, v1, Lp/b;->b:I

    add-int/2addr v3, v4

    iput v3, p0, Lp/a;->g:I

    iget v3, v1, Lp/b;->c:I

    iget-object v4, v1, Lp/b;->a:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/aU;->j()I

    move-result v4

    iput v4, v1, Lp/b;->c:I

    iget v1, p0, Lp/a;->i:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v4

    iput v1, p0, Lp/a;->i:I
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4d

    goto :goto_11

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_50
    :try_start_50
    iget v0, p0, Lp/a;->e:I

    iget v1, p0, Lp/a;->f:I

    invoke-direct {p0, v0, v1}, Lp/a;->a(II)V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    goto :goto_b
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/d;

    invoke-virtual {v1}, Lp/d;->g()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_33

    const-string v4, " + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "no"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    const-string v0, " tiles use "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lp/a;->g:I

    invoke-static {v0}, Lp/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lp/a;->e:I

    invoke-static {v1}, Lp/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M GL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lp/a;->i:I

    invoke-static {v1}, Lp/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lp/a;->f:I

    invoke-static {v1}, Lp/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M J+N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_48 .. :try_end_9a} :catchall_45

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized c(Lp/e;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-eqz v0, :cond_21

    sget-object v1, Lp/a;->a:Lt/af;

    invoke-virtual {v0, v1}, Lp/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lp/d;->b()V

    invoke-virtual {v0}, Lp/d;->e()V

    invoke-virtual {v0}, Lp/d;->g()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lp/e;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lp/d;->b()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Lp/e;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    if-nez v0, :cond_15

    new-instance v0, Lp/d;

    invoke-direct {v0, p0}, Lp/d;-><init>(Lp/a;)V

    iget-object v1, p0, Lp/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0}, Lp/d;->d()V

    invoke-virtual {v0}, Lp/d;->e()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
