.class Lorg/simpleframework/xml/util/WeakCache$Segment;
.super Ljava/util/WeakHashMap;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/WeakCache;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/util/WeakCache;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lorg/simpleframework/xml/util/WeakCache$Segment;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/util/WeakCache;Lorg/simpleframework/xml/util/WeakCache$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;-><init>(Lorg/simpleframework/xml/util/WeakCache;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/WeakCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 231
    monitor-exit p0

    return-void

    .line 230
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized take(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
