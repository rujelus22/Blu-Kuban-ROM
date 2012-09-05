.class final Lcom/google/android/youtube/googlemobile/common/async/d;
.super Lcom/google/android/youtube/googlemobile/common/async/a;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/async/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Lcom/google/android/youtube/googlemobile/common/async/c;

.field private c:Lcom/google/android/youtube/googlemobile/common/io/e;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/DataInputStream;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/async/c;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/async/a;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->a:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->g:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized j()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/io/InputStream;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->d:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->l_()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->h:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->c:Lcom/google/android/youtube/googlemobile/common/io/e;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Lcom/google/android/youtube/googlemobile/common/io/e;)V

    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/common/async/a;->b()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/youtube/googlemobile/common/c/a;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/async/d;->a(Lcom/google/android/youtube/googlemobile/common/c/a;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-static {v0, p0}, Lcom/google/android/youtube/googlemobile/common/async/c;->a(Lcom/google/android/youtube/googlemobile/common/async/c;Lcom/google/android/youtube/googlemobile/common/async/d;)Z

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->a()V

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->j:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->i:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/io/DataInputStream;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->h:Ljava/io/DataInputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->k_()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/async/d;->a(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j_()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->a()V

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->k:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .registers 10

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/async/c;->a(Lcom/google/android/youtube/googlemobile/common/async/c;)Lcom/google/android/youtube/googlemobile/common/c/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/async/e;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/googlemobile/common/async/e;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;)V

    invoke-virtual {v1, p0}, Lcom/google/android/youtube/googlemobile/common/async/e;->a(Lcom/google/android/youtube/googlemobile/common/async/d;)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/async/e;->a(J)V

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/async/e;->e()V

    const/4 v0, 0x0

    :try_start_1a
    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_8c

    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->m_()V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->e:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->g:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/google/android/youtube/googlemobile/common/async/c;->a(Lcom/google/android/youtube/googlemobile/common/async/c;Ljava/lang/String;Z)Lcom/google/android/youtube/googlemobile/common/io/e;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->c:Lcom/google/android/youtube/googlemobile/common/io/e;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->f:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->c:Lcom/google/android/youtube/googlemobile/common/io/e;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/googlemobile/common/io/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_47

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->c:Lcom/google/android/youtube/googlemobile/common/io/e;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/io/e;->a()Ljava/io/DataOutputStream;

    move-result-object v0

    :cond_47
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->c:Lcom/google/android/youtube/googlemobile/common/io/e;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->d:Ljava/io/InputStream;

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_89

    if-eqz v3, :cond_54

    :try_start_4e
    invoke-static {v3, v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_a4

    :try_start_51
    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    :cond_54
    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/io/e;->c()I

    move-result v0

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/io/e;->e()J

    move-result-wide v3

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/io/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/io/e;->b()Ljava/io/DataInputStream;

    move-result-object v2

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_ae

    iget-object v6, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-static {v6}, Lcom/google/android/youtube/googlemobile/common/async/c;->b(Lcom/google/android/youtube/googlemobile/common/async/c;)Lcom/google/android/youtube/googlemobile/common/io/h;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/google/android/youtube/googlemobile/common/io/h;->a(Z)Z

    :goto_72
    monitor-enter p0
    :try_end_73
    .catchall {:try_start_51 .. :try_end_73} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_73} :catch_8c

    :try_start_73
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->k_()I

    move-result v6

    if-ne v6, v8, :cond_84

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->k:I

    iput-wide v3, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->j:J

    iput-object v5, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->h:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->h()V

    :cond_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_73 .. :try_end_85} :catchall_b4

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/async/e;->b()I

    :goto_88
    return-void

    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit p0

    throw v0
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception v0

    :try_start_8d
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-static {v2}, Lcom/google/android/youtube/googlemobile/common/async/c;->b(Lcom/google/android/youtube/googlemobile/common/async/c;)Lcom/google/android/youtube/googlemobile/common/io/h;

    monitor-enter p0
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_a9

    :try_start_93
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->k_()I

    move-result v2

    if-ne v2, v8, :cond_9c

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/async/d;->a(Ljava/lang/Exception;)V

    :cond_9c
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/async/d;->k_()I

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_b7

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/async/e;->b()I

    goto :goto_88

    :catchall_a4
    move-exception v2

    :try_start_a5
    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/j;->a(Ljava/io/OutputStream;)V

    throw v2
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a9} :catch_8c

    :catchall_a9
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/common/async/e;->b()I

    throw v0

    :cond_ae
    :try_start_ae
    iget-object v6, p0, Lcom/google/android/youtube/googlemobile/common/async/d;->b:Lcom/google/android/youtube/googlemobile/common/async/c;

    invoke-static {v6}, Lcom/google/android/youtube/googlemobile/common/async/c;->b(Lcom/google/android/youtube/googlemobile/common/async/c;)Lcom/google/android/youtube/googlemobile/common/io/h;

    goto :goto_72

    :catchall_b4
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_b7
    .catchall {:try_start_ae .. :try_end_b7} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b7} :catch_8c

    :catchall_b7
    move-exception v0

    :try_start_b8
    monitor-exit p0

    throw v0
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_a9
.end method
