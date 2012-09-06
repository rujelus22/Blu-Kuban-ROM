.class public Lcom/google/android/youtube/core/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/a;


# instance fields
.field final a:Ljava/util/LinkedHashMap;

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x3f40

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/youtube/core/cache/b;->b:I

    .line 42
    int-to-float v0, p1

    div-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 43
    new-instance v1, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;-><init>(Lcom/google/android/youtube/core/cache/b;IFZ)V

    iput-object v1, p0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/cache/b;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/youtube/core/cache/b;->b:I

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/youtube/core/utils/o;)V
    .registers 4
    .parameter

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    const-string v0, "predicate may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/youtube/core/utils/o;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_10

    .line 78
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_27
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "element may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 70
    monitor-exit p0

    return-void

    .line 67
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
