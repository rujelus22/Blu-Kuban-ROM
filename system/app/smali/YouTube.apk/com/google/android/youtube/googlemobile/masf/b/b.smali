.class final Lcom/google/android/youtube/googlemobile/masf/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/a/n;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/masf/b/a;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/googlemobile/masf/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Lcom/google/android/youtube/googlemobile/masf/a/o;)V
    .registers 7

    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a()Lcom/google/android/youtube/googlemobile/masf/b/a;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->b()I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_35

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/a/o;->c()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;J)J

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_54
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_28} :catch_3d

    :goto_28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a;->b(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;)V

    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_51

    return-void

    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;J)J
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_54
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_28

    :catch_3d
    move-exception v0

    :try_start_3e
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;J)J
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_54

    :try_start_45
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a;->b(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_51

    goto :goto_33

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_54
    move-exception v0

    :try_start_55
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/youtube/googlemobile/masf/b/a;->b(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a(Lcom/google/android/youtube/googlemobile/masf/b/a;)V

    throw v0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_51
.end method

.method public final a(Lcom/google/android/youtube/googlemobile/masf/a/m;Ljava/lang/Exception;)V
    .registers 6

    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/b/a;->a()Lcom/google/android/youtube/googlemobile/masf/b/a;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/b;->a:Lcom/google/android/youtube/googlemobile/masf/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/googlemobile/masf/b/a;->b(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
