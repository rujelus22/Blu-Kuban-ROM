.class public final Lcom/google/android/youtube/googlemobile/masf/k;
.super Lcom/google/android/youtube/googlemobile/masf/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private l()V
    .registers 3

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->h()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/l;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/googlemobile/masf/l;-><init>(Lcom/google/android/youtube/googlemobile/masf/k;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/k;->a(Lcom/google/android/youtube/googlemobile/common/util/b;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->k()V

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->i()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->j()Z
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2b

    move-result v0

    if-nez v0, :cond_29

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_17

    :catch_27
    move-exception v0

    goto :goto_17

    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->l()V

    invoke-super {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/io/DataInputStream;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->l()V

    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->b()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->l()V

    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->c()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->l()V

    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/k;->l()V

    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/masf/a;->e()J

    move-result-wide v0

    return-wide v0
.end method
