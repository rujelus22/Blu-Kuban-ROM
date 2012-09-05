.class final Lcom/google/android/youtube/googlemobile/masf/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/masf/f;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/googlemobile/masf/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v1, v0, Lcom/google/android/youtube/googlemobile/masf/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-wide v4, v0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/masf/f;->s:Lcom/google/android/youtube/googlemobile/common/c/d;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-wide v2, v2, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/youtube/googlemobile/common/c/d;->b(J)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    iget-object v0, v0, Lcom/google/android/youtube/googlemobile/masf/f;->s:Lcom/google/android/youtube/googlemobile/common/c/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/d;->e()V

    monitor-exit v1

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/youtube/googlemobile/masf/f;->r:J

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/youtube/googlemobile/masf/f;->q:J

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/g;->a:Lcom/google/android/youtube/googlemobile/masf/f;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/f;)V

    goto :goto_24

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method
