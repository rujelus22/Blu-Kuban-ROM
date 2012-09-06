.class public Li/O;
.super Li/a;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Z

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Li/a;-><init>()V

    .line 100
    iput-object p2, p0, Li/O;->c:Landroid/media/MediaPlayer;

    .line 101
    iput-object p3, p0, Li/O;->a:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Li/O;->d:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Li/O;->b()V

    .line 104
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Li/a;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 53
    if-nez v7, :cond_d

    move-object v0, v6

    .line 71
    :goto_c
    return-object v0

    .line 57
    :cond_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 58
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 60
    :try_start_16
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 61
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 62
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 63
    new-instance v1, Li/O;

    invoke-direct {v1, p0, v0, p2}, Li/O;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_30} :catch_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_30} :catch_41

    move-object v0, v1

    goto :goto_c

    .line 64
    :catch_32
    move-exception v0

    .line 65
    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    move-object v0, v6

    .line 71
    goto :goto_c

    .line 66
    :catch_3a
    move-exception v0

    .line 67
    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 68
    :catch_41
    move-exception v0

    .line 69
    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Li/a;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 83
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 87
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 90
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 91
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 92
    new-instance v0, Li/O;

    invoke-direct {v0, p0, v1, p2}, Li/O;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    .line 95
    :goto_20
    return-object v0

    .line 93
    :catch_21
    move-exception v0

    .line 94
    const-string v1, "Exception creating MediaAlert from file"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private declared-synchronized d()V
    .registers 2

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 155
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 157
    monitor-exit p0

    return-void

    .line 154
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 179
    const v0, 0x3f19999a

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_28

    .line 185
    iget-object v0, p0, Li/O;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 186
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 189
    :cond_25
    const v0, 0x3f733333

    .line 195
    :cond_28
    :goto_28
    iget-object v1, p0, Li/O;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 196
    return-void

    .line 192
    :cond_2e
    const/high16 v0, 0x3f80

    goto :goto_28
.end method

.method private f()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 203
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/O;->b:Z

    .line 131
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 132
    invoke-direct {p0}, Li/O;->f()V

    .line 134
    :cond_a
    return-void
.end method

.method public declared-synchronized a(Li/b;)V
    .registers 4
    .parameter

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_a

    .line 109
    invoke-interface {p1, p0}, Li/b;->a(Li/a;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1d

    .line 126
    :goto_8
    monitor-exit p0

    return-void

    .line 112
    :cond_a
    :try_start_a
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    new-instance v1, Li/P;

    invoke-direct {v1, p0, p1}, Li/P;-><init>(Li/O;Li/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 124
    invoke-direct {p0}, Li/O;->e()V

    .line 125
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1d

    goto :goto_8

    .line 108
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Li/O;->b:Z

    .line 139
    iget-object v0, p0, Li/O;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 140
    invoke-direct {p0}, Li/O;->e()V

    .line 142
    :cond_a
    return-void
.end method

.method b(Li/b;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Li/O;->d()V

    .line 161
    if-eqz p1, :cond_8

    .line 162
    invoke-interface {p1, p0}, Li/b;->a(Li/a;)V

    .line 164
    :cond_8
    return-void
.end method
