.class public abstract Lcom/google/android/youtube/googlemobile/common/util/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    return-void
.end method

.method private a()[Lcom/google/android/youtube/googlemobile/common/util/b;
    .registers 4

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/youtube/googlemobile/common/util/b;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/googlemobile/common/util/b;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/util/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/util/a;->a()[Lcom/google/android/youtube/googlemobile/common/util/b;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/util/b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method
