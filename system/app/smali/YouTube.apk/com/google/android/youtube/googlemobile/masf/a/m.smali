.class public abstract Lcom/google/android/youtube/googlemobile/masf/a/m;
.super Lcom/google/android/youtube/googlemobile/masf/a/a;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/e;


# instance fields
.field protected c:Lcom/google/android/youtube/googlemobile/masf/a/n;

.field protected d:J

.field protected e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/a/a;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->d:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->e:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/googlemobile/masf/a/n;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->c:Lcom/google/android/youtube/googlemobile/masf/a/n;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b()I
.end method

.method public final declared-synchronized b(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->e:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract c()Ljava/io/InputStream;
.end method

.method public declared-synchronized e()J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->d:J

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->d:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->d:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->e:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Lcom/google/android/youtube/googlemobile/masf/a/n;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/a/m;->c:Lcom/google/android/youtube/googlemobile/masf/a/n;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
