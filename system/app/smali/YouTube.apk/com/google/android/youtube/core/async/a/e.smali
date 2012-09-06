.class public final Lcom/google/android/youtube/core/async/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/a/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ar;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lcom/google/android/youtube/core/async/GDataRequest;

.field private f:Lcom/google/android/youtube/core/async/l;

.field private g:Lcom/google/android/youtube/core/async/GDataRequest;

.field private h:Lcom/google/android/youtube/core/async/GDataRequest;

.field private i:I

.field private j:Lcom/google/android/youtube/core/async/l;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "initialRequest cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->e:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 45
    iput-object p2, p0, Lcom/google/android/youtube/core/async/a/e;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 46
    const-string v0, "requester cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ar;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->a:Lcom/google/android/youtube/core/async/ar;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->b:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/async/a/e;->i:I

    .line 52
    new-instance v0, Lcom/google/android/youtube/core/async/a/f;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/async/a/f;-><init>(Lcom/google/android/youtube/core/async/a/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->f:Lcom/google/android/youtube/core/async/l;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/e;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/youtube/core/async/a/e;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/e;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/e;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/a/e;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/e;Ljava/lang/Exception;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/a/e;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/youtube/core/model/Video;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->j:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/e;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 117
    monitor-exit p0

    return-void

    .line 113
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->j:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/e;->g:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/a/e;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/a/e;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/a/e;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/youtube/core/async/a/e;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object p1
.end method

.method private declared-synchronized b(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    monitor-enter p0

    const/4 v2, -0x1

    :try_start_4
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 88
    if-ltz v4, :cond_38

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_38

    move v3, v0

    .line 89
    :goto_13
    if-lez v4, :cond_3a

    move v2, v0

    .line 90
    :goto_16
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/google/android/youtube/core/async/a/e;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_21

    move v1, v0

    .line 91
    :cond_21
    if-eqz v3, :cond_3c

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 93
    :goto_2b
    if-nez v1, :cond_31

    iget-object v3, p0, Lcom/google/android/youtube/core/async/a/e;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    if-nez v3, :cond_3e

    .line 94
    :cond_31
    iput v4, p0, Lcom/google/android/youtube/core/async/a/e;->i:I

    .line 95
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/youtube/core/async/a/e;->a(Lcom/google/android/youtube/core/model/Video;ZZ)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_42

    .line 99
    :goto_36
    monitor-exit p0

    return-void

    :cond_38
    move v3, v1

    .line 88
    goto :goto_13

    :cond_3a
    move v2, v1

    .line 89
    goto :goto_16

    .line 91
    :cond_3c
    const/4 v0, 0x0

    goto :goto_2b

    .line 97
    :cond_3e
    :try_start_3e
    invoke-direct {p0, v4}, Lcom/google/android/youtube/core/async/a/e;->c(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_36

    .line 87
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 102
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/e;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v1, :cond_1f

    :goto_6
    const-string v1, "there is no next page"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 104
    iput p1, p0, Lcom/google/android/youtube/core/async/a/e;->k:I

    .line 106
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z

    if-nez v0, :cond_1d

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->a:Lcom/google/android/youtube/core/async/ar;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/e;->h:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a/e;->f:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_21

    .line 110
    :cond_1d
    monitor-exit p0

    return-void

    .line 102
    :cond_1f
    const/4 v0, 0x0

    goto :goto_6

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/a/e;)Z
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/async/a/e;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/youtube/core/async/a/e;->k:I

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->j:Lcom/google/android/youtube/core/async/l;

    const-string v1, "call setCallback() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget v0, p0, Lcom/google/android/youtube/core/async/a/e;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/a/e;->b(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 3
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/core/async/a/e;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/youtube/core/async/a/e;->i:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->j:Lcom/google/android/youtube/core/async/l;

    .line 57
    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->j:Lcom/google/android/youtube/core/async/l;

    const-string v1, "call setCallback() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget v0, p0, Lcom/google/android/youtube/core/async/a/e;->i:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/a/e;->b(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized e()V
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/a/e;->l:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
