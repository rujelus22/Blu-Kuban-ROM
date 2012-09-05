.class public Lo/L;
.super Lo/a;


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Z

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Lo/a;-><init>()V

    iput-object p2, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lo/L;->a:Landroid/os/Handler;

    iput-object p1, p0, Lo/L;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lo/L;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;)Lo/a;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_d

    move-object v0, v6

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :try_start_16
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    new-instance v1, Lo/L;

    invoke-direct {v1, p0, v0, p2}, Lo/L;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_30} :catch_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_30} :catch_41

    move-object v0, v1

    goto :goto_c

    :catch_32
    move-exception v0

    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    move-object v0, v6

    goto :goto_c

    :catch_3a
    move-exception v0

    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    :catch_41
    move-exception v0

    const-string v1, "Error loading sound file from resource"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Lo/a;
    .registers 6

    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Lo/L;

    invoke-direct {v0, p0, v1, p2}, Lo/L;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;Landroid/os/Handler;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const-string v1, "Exception creating MediaAlert from file"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_20
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lo/L;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_27

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1c
    const/high16 v0, 0x3f40

    :goto_1e
    iget-object v1, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_24
    const/high16 v0, 0x3f80

    goto :goto_1e

    :cond_27
    const v0, 0x3f19999a

    goto :goto_1e
.end method

.method private f()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/L;->b:Z

    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lo/L;->f()V

    :cond_a
    return-void
.end method

.method public declared-synchronized a(Lo/b;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_a

    invoke-interface {p1, p0}, Lo/b;->a(Lo/a;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1d

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    new-instance v1, Lo/M;

    invoke-direct {v1, p0, p1}, Lo/M;-><init>(Lo/L;Lo/b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-direct {p0}, Lo/L;->e()V

    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1d

    goto :goto_8

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/L;->b:Z

    iget-object v0, p0, Lo/L;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lo/L;->e()V

    :cond_a
    return-void
.end method

.method b(Lo/b;)V
    .registers 2

    invoke-direct {p0}, Lo/L;->d()V

    if-eqz p1, :cond_8

    invoke-interface {p1, p0}, Lo/b;->a(Lo/a;)V

    :cond_8
    return-void
.end method
