.class public Lcom/google/googlenav/android/M;
.super Ljava/lang/Object;

# interfaces
.implements Laf/n;


# instance fields
.field private a:[B

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/googlenav/android/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/M;->c:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_14

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public declared-synchronized a(B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/android/M;->b()B

    iput-byte p1, p0, Lcom/google/googlenav/android/M;->e:B

    iget-byte v0, p0, Lcom/google/googlenav/android/M;->e:B

    const/4 v1, 0x2

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    const-string v1, "event_store"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/android/M;->a:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/android/M;->b:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/android/M;->c()V

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/android/M;->a:[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()B
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/google/googlenav/android/M;->e:B

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    const-string v1, "event_store"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    const-string v2, "event_store_v2"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_1c
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/googlenav/android/M;->e:B

    :cond_1f
    :goto_1f
    iget-byte v0, p0, Lcom/google/googlenav/android/M;->e:B
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    monitor-exit p0

    return v0

    :cond_23
    const/4 v0, 0x1

    :try_start_24
    iput-byte v0, p0, Lcom/google/googlenav/android/M;->e:B
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_27

    goto :goto_1f

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/googlenav/android/M;->e()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_2f

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_8
    iget-object v2, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lak/k;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/android/M;->a:[B

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_22

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :try_start_1a
    iput-boolean v0, p0, Lcom/google/googlenav/android/M;->b:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_2f

    monitor-exit p0

    return-void

    :cond_1e
    const/4 v2, 0x0

    :try_start_1f
    iput-object v2, p0, Lcom/google/googlenav/android/M;->a:[B
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_21} :catch_22

    goto :goto_19

    :catch_22
    move-exception v2

    const/4 v2, 0x0

    :try_start_24
    iput-object v2, p0, Lcom/google/googlenav/android/M;->a:[B

    invoke-static {v0}, Lak/k;->b(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2f

    goto :goto_19

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/googlenav/android/M;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/google/googlenav/android/M;->a:[B

    if-nez v2, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/M;->a:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/M;->b:Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_33

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/android/M;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_11

    :catch_29
    move-exception v2

    :try_start_2a
    invoke-static {v0}, Lak/k;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/googlenav/android/M;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_33

    goto :goto_11

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()Ljava/lang/String;
    .registers 4

    iget-byte v0, p0, Lcom/google/googlenav/android/M;->e:B

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1f

    const-string v0, "event_store"

    :goto_7
    iget-object v1, p0, Lcom/google/googlenav/android/M;->c:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/googlenav/android/M;->c:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget-object v2, p0, Lcom/google/googlenav/android/M;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_22

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    const-string v0, "event_store_v2"

    goto :goto_7

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/android/M;->c:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_42
    const/4 v0, 0x0

    goto :goto_1e
.end method
