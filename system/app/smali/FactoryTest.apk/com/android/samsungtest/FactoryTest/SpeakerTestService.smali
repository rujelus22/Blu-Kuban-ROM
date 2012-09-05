.class public Lcom/android/samsungtest/FactoryTest/SpeakerTestService;
.super Landroid/app/Service;
.source "SpeakerTestService.java"


# instance fields
.field binder:Landroid/os/Binder;

.field mode:Ljava/lang/String;

.field mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    .line 20
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->binder:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public makeFile()V
    .registers 8

    .prologue
    .line 90
    const-string v4, "SpeakerTestService"

    const-string v5, "makeFile()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_7
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mp3_1khz.mp3"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 93
    .local v3, fileCopyOutputStream:Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 95
    .local v2, fileCopyInputStream:Ljava/io/InputStream;
    const/16 v4, 0x7d0

    new-array v0, v4, [B

    .line 97
    .local v0, buffer:[B
    :goto_25
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3a

    .line 98
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_25

    .line 104
    .end local v0           #buffer:[B
    .end local v2           #fileCopyInputStream:Ljava/io/InputStream;
    .end local v3           #fileCopyOutputStream:Ljava/io/OutputStream;
    :catch_2f
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FileCopyError"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v1           #e:Ljava/lang/Exception;
    :goto_39
    return-void

    .line 101
    .restart local v0       #buffer:[B
    .restart local v2       #fileCopyInputStream:Ljava/io/InputStream;
    .restart local v3       #fileCopyOutputStream:Ljava/io/OutputStream;
    :cond_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 103
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_2f

    goto :goto_39
.end method

.method public makeFile_L()V
    .registers 8

    .prologue
    .line 129
    const-string v4, "SpeakerTestService"

    const-string v5, "makeFile_L"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_7
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mp3_left.mp3"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 132
    .local v3, fileCopyOutputStream:Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 134
    .local v2, fileCopyInputStream:Ljava/io/InputStream;
    const/16 v4, 0x7d0

    new-array v0, v4, [B

    .line 136
    .local v0, buffer:[B
    :goto_25
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3a

    .line 137
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_25

    .line 143
    .end local v0           #buffer:[B
    .end local v2           #fileCopyInputStream:Ljava/io/InputStream;
    .end local v3           #fileCopyOutputStream:Ljava/io/OutputStream;
    :catch_2f
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FileCopyError"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1           #e:Ljava/lang/Exception;
    :goto_39
    return-void

    .line 140
    .restart local v0       #buffer:[B
    .restart local v2       #fileCopyInputStream:Ljava/io/InputStream;
    .restart local v3       #fileCopyOutputStream:Ljava/io/OutputStream;
    :cond_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 142
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_2f

    goto :goto_39
.end method

.method public makeFile_R()V
    .registers 8

    .prologue
    .line 110
    const-string v4, "SpeakerTestService"

    const-string v5, "makeFile_R"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_7
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mp3_right.mp3"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 113
    .local v3, fileCopyOutputStream:Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 115
    .local v2, fileCopyInputStream:Ljava/io/InputStream;
    const/16 v4, 0x7d0

    new-array v0, v4, [B

    .line 117
    .local v0, buffer:[B
    :goto_25
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3a

    .line 118
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_25

    .line 124
    .end local v0           #buffer:[B
    .end local v2           #fileCopyInputStream:Ljava/io/InputStream;
    .end local v3           #fileCopyOutputStream:Ljava/io/OutputStream;
    :catch_2f
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FileCopyError"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1           #e:Ljava/lang/Exception;
    :goto_39
    return-void

    .line 121
    .restart local v0       #buffer:[B
    .restart local v2       #fileCopyInputStream:Ljava/io/InputStream;
    .restart local v3       #fileCopyOutputStream:Ljava/io/OutputStream;
    :cond_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 122
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 123
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_2f

    goto :goto_39
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 85
    const-string v0, "SpeakerTestService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 87
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 34
    const-string v1, "SpeakerTestService"

    const-string v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v1, "SPK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    const-string v2, "MAX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    const-string v2, "MIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 39
    :cond_26
    const-string v1, "SpeakerTestService"

    const-string v2, "mode.equals(MAX) || mode.equals(MIN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->makeFile()V

    .line 42
    :try_start_30
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 43
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    const-string v2, "/data/data/com.android.samsungtest.FactoryTest/files/mp3_1khz.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 45
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 46
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4c} :catch_4d

    .line 80
    :cond_4c
    :goto_4c
    return-void

    .line 47
    :catch_4d
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :cond_52
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    const-string v2, "MAX_R"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    const-string v2, "MIN_R"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 52
    :cond_66
    const-string v1, "SpeakerTestService"

    const-string v2, "MAX_R...MIN_R"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->makeFile_R()V

    .line 56
    :try_start_70
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 57
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    const-string v2, "/data/data/com.android.samsungtest.FactoryTest/files/mp3_right.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 59
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 60
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_8c} :catch_8d

    goto :goto_4c

    .line 61
    :catch_8d
    move-exception v0

    .line 62
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 65
    .end local v0           #e:Ljava/io/IOException;
    :cond_92
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    const-string v2, "MAX_L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mode:Ljava/lang/String;

    const-string v2, "MIN_L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 66
    :cond_a6
    const-string v1, "SpeakerTestService"

    const-string v2, "MAX_L....MIN_L"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->makeFile_L()V

    .line 70
    :try_start_b0
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 71
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    const-string v2, "/data/data/com.android.samsungtest.FactoryTest/files/mp3_left.mp3"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 73
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 74
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/SpeakerTestService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_cc} :catch_cd

    goto :goto_4c

    .line 75
    :catch_cd
    move-exception v0

    .line 76
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4c
.end method
