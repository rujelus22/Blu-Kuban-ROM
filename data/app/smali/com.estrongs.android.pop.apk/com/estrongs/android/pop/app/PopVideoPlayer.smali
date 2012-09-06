.class public Lcom/estrongs/android/pop/app/PopVideoPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field private e:Landroid/widget/VideoView;

.field private f:Landroid/widget/MediaController;

.field private g:I

.field private h:Landroid/net/Uri;

.field private i:Landroid/os/PowerManager;

.field private j:Landroid/net/wifi/WifiManager;

.field private k:Landroid/os/PowerManager$WakeLock;

.field private l:Landroid/net/wifi/WifiManager$WifiLock;

.field private m:Landroid/os/Handler;

.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    new-instance v0, Lcom/estrongs/android/pop/app/dj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dj;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Landroid/os/Handler;

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:I

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v3

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_15
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_28
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_40

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_40
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_47
    move-exception v0

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    throw v0

    :cond_4e
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "http://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_32

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "127.0.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    :cond_32
    :goto_32
    return v0

    :cond_33
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const-class v4, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_5b

    const/4 v0, 0x1

    goto :goto_32

    :catch_5b
    move-exception v1

    goto :goto_32
.end method

.method private d()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :try_start_9
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_2a
    return-void

    :cond_2b
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    if-eqz v4, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_48} :catch_49

    goto :goto_2a

    :catch_49
    move-exception v0

    goto :goto_2a
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6

    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Landroid/os/PowerManager;

    if-nez v0, :cond_13

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Landroid/os/PowerManager;

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_21

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b9

    move v3, v1

    :goto_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b7

    move v0, v1

    :goto_3b
    if-eqz v3, :cond_51

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Landroid/os/PowerManager;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ES Wake Lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_51
    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_a8

    move-result v0

    if-lt v0, v4, :cond_ab

    :try_start_5d
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_77

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_77} :catch_7e

    :cond_77
    :goto_77
    :try_start_77
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7c} :catch_8b

    :cond_7c
    :goto_7c
    monitor-exit p0

    return-void

    :catch_7e
    move-exception v1

    :try_start_7f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_8b

    goto :goto_77

    :catch_8b
    move-exception v1

    if-lt v0, v4, :cond_7c

    const/16 v1, 0xc

    if-ge v0, v1, :cond_7c

    :try_start_92
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "ES Wifi Lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_a2
    .catchall {:try_start_92 .. :try_end_a2} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a2} :catch_a3

    goto :goto_7c

    :catch_a3
    move-exception v0

    const/4 v0, 0x0

    :try_start_a5
    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_a8

    goto :goto_7c

    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ab
    :try_start_ab
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b6} :catch_8b

    goto :goto_77

    :cond_b7
    move v0, v2

    goto :goto_3b

    :cond_b9
    move v3, v2

    goto/16 :goto_2e
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/os/PowerManager$WakeLock;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2e

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2e
    move-exception v0

    goto :goto_29
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->setDefaultKeyMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->setContentView(I)V

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Landroid/widget/MediaController;

    const v0, 0x7f0701be

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/dk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dk;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    new-instance v1, Lcom/estrongs/android/pop/app/dl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dl;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Landroid/net/Uri;

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_6b

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    :goto_6a
    return-void

    :cond_6b
    iput v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d()V

    goto :goto_6a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_96

    :cond_4
    :goto_4
    return-object v0

    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/app/dm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/dm;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    :pswitch_30
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108001d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09016f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090170

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09005f

    new-instance v3, Lcom/estrongs/android/pop/app/dn;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/pop/app/dn;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090085

    new-instance v2, Lcom/estrongs/android/pop/app/do;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/do;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_4

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_5
        :pswitch_30
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f090171

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/dp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dp;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Sharp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const v0, 0x7f090172

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/dq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dq;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f090174

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/dr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dr;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_72
    :goto_72
    return v3

    :cond_73
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_72
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b()V

    return-void
.end method

.method public onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "EEE"

    const-string v1, "pause video play"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    :goto_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_2a

    :goto_22
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void

    :cond_26
    const/4 v0, 0x1

    :try_start_27
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_29} :catch_2a

    goto :goto_1a

    :catch_2a
    move-exception v0

    goto :goto_22
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "playback_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "EEE"

    const-string v1, "resume video play"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_27
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Z

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    const-string v0, "EEE"

    const-string v1, "resume play called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    if-eqz v0, :cond_32

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    goto :goto_32

    :cond_3c
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    if-lez v0, :cond_32

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d()V

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    const-string v0, "EEE"

    const-string v1, "restart play called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    goto :goto_32
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "playback_position"

    iget v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .registers 3

    :try_start_0
    const-string v0, "EEE"

    const-string v1, "stop video play"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_16

    :goto_12
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void

    :catch_16
    move-exception v0

    goto :goto_12
.end method
