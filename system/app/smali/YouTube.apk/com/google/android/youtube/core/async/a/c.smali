.class public final Lcom/google/android/youtube/core/async/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/a/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/client/ad;

.field private final b:Lcom/google/android/youtube/core/model/UserAuth;

.field private final c:Ljava/util/List;

.field private final d:[Lcom/google/android/youtube/core/model/Video;

.field private final e:[Lcom/google/android/youtube/core/async/GDataRequest;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/google/android/youtube/core/async/g;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "gdataClient cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->a:Lcom/google/android/youtube/core/client/ad;

    .line 40
    const-string v0, "videoIds cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->c:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/google/android/youtube/core/async/a/c;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->d:[Lcom/google/android/youtube/core/model/Video;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequest;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->e:[Lcom/google/android/youtube/core/async/GDataRequest;

    .line 44
    iput v1, p0, Lcom/google/android/youtube/core/async/a/c;->h:I

    .line 45
    iput v1, p0, Lcom/google/android/youtube/core/async/a/c;->j:I

    .line 46
    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->i:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/c;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/a/c;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/c;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/a/c;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/async/GDataRequest;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z

    .line 112
    iput-boolean p3, p0, Lcom/google/android/youtube/core/async/a/c;->g:Z

    .line 113
    iput-boolean p4, p0, Lcom/google/android/youtube/core/async/a/c;->f:Z

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->i:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p2, p1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 115
    monitor-exit p0

    return-void

    .line 111
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/c;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/c;)[Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->d:[Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method private declared-synchronized b(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    monitor-enter p0

    const/4 v3, -0x1

    :try_start_5
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 82
    if-ltz v5, :cond_39

    iget-object v3, p0, Lcom/google/android/youtube/core/async/a/c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_39

    move v4, v1

    .line 83
    :goto_14
    if-lez v5, :cond_3b

    move v3, v1

    .line 84
    :goto_17
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/google/android/youtube/core/async/a/c;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_22

    move v2, v1

    .line 85
    :cond_22
    if-eqz v4, :cond_3d

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/c;->d:[Lcom/google/android/youtube/core/model/Video;

    aget-object v1, v1, v5

    .line 86
    :goto_28
    if-eqz v4, :cond_2e

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->e:[Lcom/google/android/youtube/core/async/GDataRequest;

    aget-object v0, v0, v5

    .line 88
    :cond_2e
    if-nez v1, :cond_32

    if-nez v4, :cond_3f

    .line 89
    :cond_32
    iput v5, p0, Lcom/google/android/youtube/core/async/a/c;->h:I

    .line 90
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/google/android/youtube/core/async/a/c;->a(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/async/GDataRequest;ZZ)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_43

    .line 94
    :goto_37
    monitor-exit p0

    return-void

    :cond_39
    move v4, v2

    .line 82
    goto :goto_14

    :cond_3b
    move v3, v2

    .line 83
    goto :goto_17

    :cond_3d
    move-object v1, v0

    .line 85
    goto :goto_28

    .line 92
    :cond_3f
    :try_start_3f
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/async/a/c;->c(I)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_37

    .line 80
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/a/c;)[Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->e:[Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method private declared-synchronized c(I)V
    .registers 6
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/youtube/core/async/a/c;->j:I

    .line 99
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z

    if-nez v0, :cond_22

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->b:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_24

    .line 102
    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/c;->a:Lcom/google/android/youtube/core/client/ad;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a/c;->b:Lcom/google/android/youtube/core/model/UserAuth;

    new-instance v3, Lcom/google/android/youtube/core/async/a/d;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/core/async/a/d;-><init>(Lcom/google/android/youtube/core/async/a/c;I)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/core/client/ad;->b(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_37

    .line 107
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 104
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/c;->a:Lcom/google/android/youtube/core/client/ad;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/google/android/youtube/core/async/a/d;

    invoke-direct {v2, p0, p1}, Lcom/google/android/youtube/core/async/a/d;-><init>(Lcom/google/android/youtube/core/async/a/c;I)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/ad;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_37

    goto :goto_22

    .line 97
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/a/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/async/a/c;)I
    .registers 2
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/youtube/core/async/a/c;->j:I

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->i:Lcom/google/android/youtube/core/async/g;

    const-string v1, "call setCallback() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget v0, p0, Lcom/google/android/youtube/core/async/a/c;->h:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/a/c;->b(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 3
    .parameter

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/core/async/a/c;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/youtube/core/async/a/c;->h:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/core/async/g;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->i:Lcom/google/android/youtube/core/async/g;

    .line 50
    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/c;->i:Lcom/google/android/youtube/core/async/g;

    const-string v1, "call setCallback() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget v0, p0, Lcom/google/android/youtube/core/async/a/c;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/a/c;->b(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .registers 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .registers 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .registers 2

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/c;->k:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
