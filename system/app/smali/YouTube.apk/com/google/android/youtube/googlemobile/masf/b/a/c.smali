.class public abstract Lcom/google/android/youtube/googlemobile/masf/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/e;


# instance fields
.field private a:Lcom/google/android/youtube/googlemobile/masf/b/a/d;

.field private b:I


# virtual methods
.method public abstract c()Ljava/io/InputStream;
.end method

.method public final declared-synchronized d()Lcom/google/android/youtube/googlemobile/masf/b/a/d;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->a:Lcom/google/android/youtube/googlemobile/masf/b/a/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a/c;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
