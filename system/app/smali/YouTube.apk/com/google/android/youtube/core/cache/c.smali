.class public final Lcom/google/android/youtube/core/cache/c;
.super Lcom/google/android/youtube/core/cache/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x3f40

    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/a;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/youtube/core/cache/c;->a:I

    .line 41
    int-to-float v0, p1

    div-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 42
    new-instance v1, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;-><init>(Lcom/google/android/youtube/core/cache/c;IFZ)V

    iput-object v1, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/cache/c;)I
    .registers 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/youtube/core/cache/c;->a:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 58
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 60
    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_34

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/c;->a()V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hit. [ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/c;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 68
    :goto_32
    monitor-exit v1

    return-object v0

    .line 65
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/c;->b()V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Miss. [ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/c;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_57

    goto :goto_32

    .line 69
    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/core/utils/l;)V
    .registers 5
    .parameter

    .prologue
    .line 91
    const-string v0, "predicate may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 93
    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/youtube/core/utils/l;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_26

    goto :goto_12

    .line 98
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "element may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 79
    :try_start_d
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
