.class public Lcom/estrongs/android/pop/ftp/i;
.super Ljava/lang/Thread;


# instance fields
.field public a:Ljava/net/ServerSocket;

.field public b:Ljava/net/InetAddress;

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:Ljava/util/concurrent/locks/Lock;

.field final synthetic h:Lcom/estrongs/android/pop/ftp/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/ftp/h;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->b:Ljava/net/InetAddress;

    iput v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public run()V
    .registers 12

    const/4 v6, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    :try_start_c
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1, p0}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_80

    :try_start_2b
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    if-eqz v1, :cond_4ba

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_83

    move-result-object v4

    :goto_35
    :try_start_35
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_4b4

    :goto_3a
    :try_start_3a
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_98

    :goto_44
    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-nez v1, :cond_4c

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    if-nez v1, :cond_a0

    :cond_4c
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_53
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_73

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_53 .. :try_end_74} :catchall_9d

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    return-void

    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v1

    :catch_83
    move-exception v1

    :try_start_84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_91

    :try_start_87
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8c} :catch_8e

    move-object v4, v2

    goto :goto_3a

    :catch_8e
    move-exception v1

    move-object v4, v2

    goto :goto_3a

    :catchall_91
    move-exception v1

    :try_start_92
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_4b7

    :goto_97
    throw v1

    :catch_98
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1

    :cond_a0
    if-nez v4, :cond_b3

    :try_start_a2
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->b:Ljava/net/InetAddress;

    if-eqz v1, :cond_b3

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->c:I

    if-eqz v1, :cond_b3

    new-instance v4, Ljava/net/Socket;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->b:Ljava/net/InetAddress;

    iget v3, p0, Lcom/estrongs/android/pop/ftp/i;->c:I

    invoke-direct {v4, v1, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b3} :catch_e5

    :cond_b3
    :goto_b3
    if-nez v4, :cond_ee

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_bc
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_dc

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_dc
    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_bc .. :try_end_dd} :catchall_eb

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "425 Cannot open data connection.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto :goto_7f

    :catch_e5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v2

    goto :goto_b3

    :catchall_eb
    move-exception v1

    :try_start_ec
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v1

    :cond_ee
    :try_start_ee
    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    if-eq v1, v8, :cond_100

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_100

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_100

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    if-ne v1, v9, :cond_27d

    :cond_100
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_14a

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "501 Can\'t list target dir.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_ee .. :try_end_10d} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10d} :catch_4b0

    if-eqz v4, :cond_112

    :try_start_10f
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_493

    :cond_112
    :goto_112
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_119
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_139

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_139
    monitor-exit v2
    :try_end_13a
    .catchall {:try_start_119 .. :try_end_13a} :catchall_147

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_147
    move-exception v1

    :try_start_148
    monitor-exit v2
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v1

    :cond_14a
    :try_start_14a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "List dir:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    if-eq v1, v9, :cond_1b1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b1

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "501 Can\'t list target dir.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_14a .. :try_end_174} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_174} :catch_4b0

    if-eqz v4, :cond_179

    :try_start_176
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_496

    :cond_179
    :goto_179
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_180
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_1a0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_1a0
    monitor-exit v2
    :try_end_1a1
    .catchall {:try_start_180 .. :try_end_1a1} :catchall_1ae

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_1ae
    move-exception v1

    :try_start_1af
    monitor-exit v2
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    throw v1

    :cond_1b1
    :try_start_1b1
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v3, "150 Opening data connection for list.\r\n"

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_1b8
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b8} :catch_4b0

    :try_start_1b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_223

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    iget v5, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    invoke-virtual {v3, v5, v2}, Lcom/estrongs/android/pop/ftp/h;->a(ILjava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d0
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 Transfer complete.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_1e9
    .catchall {:try_start_1b8 .. :try_end_1e9} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1e9} :catch_339

    :cond_1e9
    :goto_1e9
    if-eqz v4, :cond_1ee

    :try_start_1eb
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1ee} :catch_4ad

    :cond_1ee
    :goto_1ee
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_1f5
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_215

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_215
    monitor-exit v2
    :try_end_216
    .catchall {:try_start_1f5 .. :try_end_216} :catchall_490

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :cond_223
    :try_start_223
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    :goto_227
    array-length v3, v2

    if-ge v5, v3, :cond_1d0

    iget-boolean v3, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z
    :try_end_22c
    .catchall {:try_start_223 .. :try_end_22c} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_22c} :catch_339

    if-eqz v3, :cond_26b

    if-eqz v4, :cond_233

    :try_start_230
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_233} :catch_499

    :cond_233
    :goto_233
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_23a
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_25a

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_25a
    monitor-exit v2
    :try_end_25b
    .catchall {:try_start_23a .. :try_end_25b} :catchall_268

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_268
    move-exception v1

    :try_start_269
    monitor-exit v2
    :try_end_26a
    .catchall {:try_start_269 .. :try_end_26a} :catchall_268

    throw v1

    :cond_26b
    :try_start_26b
    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    iget v6, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    aget-object v7, v2, v5

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/ftp/h;->a(ILjava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27a
    .catchall {:try_start_26b .. :try_end_27a} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_27a} :catch_339

    :cond_27a
    add-int/lit8 v5, v5, 0x1

    goto :goto_227

    :cond_27d
    :try_start_27d
    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_381

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->e:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/pop/ftp/j;

    move-object v2, v0

    iget-object v1, v2, Lcom/estrongs/android/pop/ftp/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29b

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2df

    :cond_29b
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "501 target is dir.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_2a2
    .catchall {:try_start_27d .. :try_end_2a2} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_2a2} :catch_4b0

    if-eqz v4, :cond_2a7

    :try_start_2a4
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2a7} :catch_49c

    :cond_2a7
    :goto_2a7
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_2ae
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2ce

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_2ce
    monitor-exit v2
    :try_end_2cf
    .catchall {:try_start_2ae .. :try_end_2cf} :catchall_2dc

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_2dc
    move-exception v1

    :try_start_2dd
    monitor-exit v2
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2dc

    throw v1

    :cond_2df
    :try_start_2df
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v6, "150 Opening data connection for file.\r\n"

    invoke-static {v1, v6}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_2e6
    .catchall {:try_start_2df .. :try_end_2e6} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_2e6} :catch_4b0

    :try_start_2e6
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v5, 0x0

    iget-wide v6, v2, Lcom/estrongs/android/pop/ftp/j;->a:J

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z
    :try_end_2f1
    .catchall {:try_start_2e6 .. :try_end_2f1} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_2f1} :catch_339

    if-eqz v1, :cond_330

    if-eqz v4, :cond_2f8

    :try_start_2f5
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2f8} :catch_49f

    :cond_2f8
    :goto_2f8
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_2ff
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_31f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_31f
    monitor-exit v2
    :try_end_320
    .catchall {:try_start_2ff .. :try_end_320} :catchall_32d

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_32d
    move-exception v1

    :try_start_32e
    monitor-exit v2
    :try_end_32f
    .catchall {:try_start_32e .. :try_end_32f} :catchall_32d

    throw v1

    :cond_330
    :try_start_330
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 Transfer complete.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_337
    .catchall {:try_start_330 .. :try_end_337} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_330 .. :try_end_337} :catch_339

    goto/16 :goto_1e9

    :catch_339
    move-exception v1

    move v2, v8

    :goto_33b
    :try_start_33b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_347

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "426 Data connection unexpectedly closed.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_347
    .catchall {:try_start_33b .. :try_end_347} :catchall_450

    :cond_347
    if-eqz v4, :cond_34c

    :try_start_349
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_34c} :catch_4a8

    :cond_34c
    :goto_34c
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_353
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_373

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_373
    monitor-exit v2
    :try_end_374
    .catchall {:try_start_353 .. :try_end_374} :catchall_48a

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :cond_381
    :try_start_381
    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    if-eq v1, v6, :cond_38a

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1e9

    :cond_38a
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->e:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/pop/ftp/j;

    move-object v2, v0

    iget-object v1, v2, Lcom/estrongs/android/pop/ftp/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3e1

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "501 target is directory.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_3a4
    .catchall {:try_start_381 .. :try_end_3a4} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_381 .. :try_end_3a4} :catch_4b0

    if-eqz v4, :cond_3a9

    :try_start_3a6
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3a9
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3a9} :catch_4a2

    :cond_3a9
    :goto_3a9
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_3b0
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_3d0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_3d0
    monitor-exit v2
    :try_end_3d1
    .catchall {:try_start_3b0 .. :try_end_3d1} :catchall_3de

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_3de
    move-exception v1

    :try_start_3df
    monitor-exit v2
    :try_end_3e0
    .catchall {:try_start_3df .. :try_end_3e0} :catchall_3de

    throw v1

    :cond_3e1
    :try_start_3e1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f6

    iget v1, p0, Lcom/estrongs/android/pop/ftp/i;->d:I

    if-ne v1, v6, :cond_3f6

    iget-wide v6, v2, Lcom/estrongs/android/pop/ftp/j;->a:J

    const-wide/16 v9, 0x0

    cmp-long v1, v6, v9

    if-nez v1, :cond_3f6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3f6
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v6, "150 Opening data connection for file.\r\n"

    invoke-static {v1, v6}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_3fd
    .catchall {:try_start_3e1 .. :try_end_3fd} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3fd} :catch_4b0

    :try_start_3fd
    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z
    :try_end_3ff
    .catchall {:try_start_3fd .. :try_end_3ff} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_3fd .. :try_end_3ff} :catch_339

    if-eqz v1, :cond_43e

    if-eqz v4, :cond_406

    :try_start_403
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_406
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_406} :catch_4a5

    :cond_406
    :goto_406
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_40d
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_42d

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_42d
    monitor-exit v2
    :try_end_42e
    .catchall {:try_start_40d .. :try_end_42e} :catchall_43b

    iget-boolean v1, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 ABOR succ.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    goto/16 :goto_7f

    :catchall_43b
    move-exception v1

    :try_start_43c
    monitor-exit v2
    :try_end_43d
    .catchall {:try_start_43c .. :try_end_43d} :catchall_43b

    throw v1

    :cond_43e
    :try_start_43e
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/estrongs/android/pop/ftp/j;->a:J

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v2, "226 Transfer complete.\r\n"

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    :try_end_44e
    .catchall {:try_start_43e .. :try_end_44e} :catchall_450
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_44e} :catch_339

    goto/16 :goto_1e9

    :catchall_450
    move-exception v1

    if-eqz v4, :cond_456

    :try_start_453
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_456
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_456} :catch_4ab

    :cond_456
    :goto_456
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v2

    monitor-enter v2

    :try_start_45d
    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    invoke-static {v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_47d

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V

    :cond_47d
    monitor-exit v2
    :try_end_47e
    .catchall {:try_start_45d .. :try_end_47e} :catchall_48d

    iget-boolean v2, p0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    if-eqz v2, :cond_489

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/i;->h:Lcom/estrongs/android/pop/ftp/h;

    const-string v3, "226 ABOR succ.\r\n"

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V

    :cond_489
    throw v1

    :catchall_48a
    move-exception v1

    :try_start_48b
    monitor-exit v2
    :try_end_48c
    .catchall {:try_start_48b .. :try_end_48c} :catchall_48a

    throw v1

    :catchall_48d
    move-exception v1

    :try_start_48e
    monitor-exit v2
    :try_end_48f
    .catchall {:try_start_48e .. :try_end_48f} :catchall_48d

    throw v1

    :catchall_490
    move-exception v1

    :try_start_491
    monitor-exit v2
    :try_end_492
    .catchall {:try_start_491 .. :try_end_492} :catchall_490

    throw v1

    :catch_493
    move-exception v1

    goto/16 :goto_112

    :catch_496
    move-exception v1

    goto/16 :goto_179

    :catch_499
    move-exception v1

    goto/16 :goto_233

    :catch_49c
    move-exception v1

    goto/16 :goto_2a7

    :catch_49f
    move-exception v1

    goto/16 :goto_2f8

    :catch_4a2
    move-exception v1

    goto/16 :goto_3a9

    :catch_4a5
    move-exception v1

    goto/16 :goto_406

    :catch_4a8
    move-exception v1

    goto/16 :goto_34c

    :catch_4ab
    move-exception v2

    goto :goto_456

    :catch_4ad
    move-exception v1

    goto/16 :goto_1ee

    :catch_4b0
    move-exception v1

    move v2, v5

    goto/16 :goto_33b

    :catch_4b4
    move-exception v1

    goto/16 :goto_3a

    :catch_4b7
    move-exception v2

    goto/16 :goto_97

    :cond_4ba
    move-object v4, v2

    goto/16 :goto_35
.end method
