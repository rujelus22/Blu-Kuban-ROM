.class public final Lcom/google/android/youtube/core/cache/InMemoryLruCache;
.super Lcom/google/android/youtube/core/cache/AbstractCache;
.source "InMemoryLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/cache/AbstractCache",
        "<TK;TE;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TE;>;"
        }
    .end annotation
.end field

.field private final maxCacheSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .parameter "size"

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    const/high16 v3, 0x3f40

    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/AbstractCache;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->maxCacheSize:I

    .line 41
    int-to-float v1, p1

    div-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 42
    .local v0, mapSize:I
    new-instance v1, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;-><init>(Lcom/google/android/youtube/core/cache/InMemoryLruCache;IFZ)V

    iput-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/cache/InMemoryLruCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->maxCacheSize:I

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const-string v1, "key may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 60
    :try_start_8
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, element:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_35

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->hit()V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hit. [ratio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->ratio()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 68
    :goto_33
    monitor-exit v2

    return-object v0

    .line 65
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->miss()V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Miss. [ratio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->ratio()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    goto :goto_33

    .line 69
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :catchall_59
    move-exception v1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    const-string v0, "key may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "element may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 79
    :try_start_d
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
