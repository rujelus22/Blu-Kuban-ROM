.class public Lcom/google/googlenav/android/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaT/o;


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/googlenav/android/I;->d:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lcom/google/googlenav/android/I;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/I;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_store_v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event_store"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    :cond_44
    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 140
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 143
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

    .line 144
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_14

    .line 145
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 151
    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 126
    if-eqz p0, :cond_2e

    .line 127
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 128
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 129
    :cond_11
    const-string v0, ""

    .line 134
    :goto_13
    return-object v0

    .line 131
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 134
    :cond_2e
    const-string v0, ""

    goto :goto_13
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/android/I;->b:Z

    if-nez v0, :cond_8

    .line 60
    invoke-virtual {p0}, Lcom/google/googlenav/android/I;->b()V

    .line 62
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/I;->b:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 75
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3d

    if-eqz v1, :cond_25

    .line 78
    :try_start_6
    iget-object v1, p0, Lcom/google/googlenav/android/I;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2a

    .line 80
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/iz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 81
    iget-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 82
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_25} :catch_2e

    .line 94
    :cond_25
    :goto_25
    const/4 v0, 0x1

    :try_start_26
    iput-boolean v0, p0, Lcom/google/googlenav/android/I;->b:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_3d

    .line 95
    monitor-exit p0

    return-void

    .line 84
    :cond_2a
    const/4 v1, 0x0

    :try_start_2b
    iput-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2d} :catch_2e

    goto :goto_25

    .line 86
    :catch_2e
    move-exception v1

    .line 87
    const/4 v1, 0x0

    :try_start_30
    iput-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 88
    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->b(Ljava/io/InputStream;)V

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/android/I;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3d

    goto :goto_25

    .line 75
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 99
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 100
    iget-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_19

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/android/I;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 115
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/I;->b:Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_3b

    .line 117
    monitor-exit p0

    return-void

    .line 105
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/googlenav/android/I;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/googlenav/android/I;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2e} :catch_2f

    goto :goto_11

    .line 109
    :catch_2f
    move-exception v1

    .line 110
    :try_start_30
    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/OutputStream;)V

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/android/I;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/googlenav/android/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3b

    goto :goto_11

    .line 99
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
