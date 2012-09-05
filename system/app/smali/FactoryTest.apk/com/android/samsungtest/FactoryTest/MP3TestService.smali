.class public Lcom/android/samsungtest/FactoryTest/MP3TestService;
.super Landroid/app/Service;
.source "MP3TestService.java"


# instance fields
.field binder:Landroid/os/Binder;

.field mode:Ljava/lang/String;

.field mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mp:Landroid/media/MediaPlayer;

    .line 19
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->binder:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 53
    const-string v0, "MP3TestService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 55
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 30
    const-string v1, "MP3TestService"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v1, "MP3"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mode:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mode:Ljava/lang/String;

    const-string v2, "START"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 38
    :try_start_1c
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 39
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mp:Landroid/media/MediaPlayer;

    const-string v2, "/sdcard/1kHz.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 41
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/MP3TestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_32} :catch_33

    .line 48
    :cond_32
    :goto_32
    return-void

    .line 42
    :catch_33
    move-exception v0

    .line 43
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32
.end method
