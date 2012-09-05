.class Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Audio"
.end annotation


# instance fields
.field public m_Audio:[B

.field private m_Context:Lcom/vlingo/client/core/audio/AudioContext;

.field public m_Sound:I

.field public m_Type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

.field final synthetic this$0:Lcom/vlingo/client/core/audio/AudioPlayer;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;Ljava/lang/Integer;)V
    .registers 4
    .parameter
    .parameter "sound"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    sget-object v0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->SOUND:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    .line 254
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Sound:I

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;[BLcom/vlingo/client/core/audio/AudioPlayer$AudioType;)V
    .registers 4
    .parameter
    .parameter "audio"
    .parameter "type"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p3, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    .line 249
    iput-object p2, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Audio:[B

    .line 250
    return-void
.end method


# virtual methods
.method public createPlayer(Z)Landroid/media/MediaPlayer;
    .registers 9
    .parameter "useSCOStream"

    .prologue
    const/4 v6, 0x6

    .line 278
    invoke-virtual {p0}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->isSound()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 279
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    iget v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Sound:I

    invoke-static {v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 280
    .local v3, player:Landroid/media/MediaPlayer;
    if-eqz p1, :cond_16

    .line 281
    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 308
    .end local v3           #player:Landroid/media/MediaPlayer;
    :cond_16
    :goto_16
    return-object v3

    .line 287
    :cond_17
    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$500(Lcom/vlingo/client/core/audio/AudioPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, out:Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Audio:[B

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 289
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 291
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 294
    .restart local v3       #player:Landroid/media/MediaPlayer;
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$500(Lcom/vlingo/client/core/audio/AudioPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, in:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 296
    if-eqz p1, :cond_47

    .line 297
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 299
    :cond_47
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 300
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_4d} :catch_54

    goto :goto_16

    .line 303
    .end local v1           #in:Ljava/io/FileInputStream;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #player:Landroid/media/MediaPlayer;
    :catch_4e
    move-exception v0

    .line 304
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 308
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_52
    const/4 v3, 0x0

    goto :goto_16

    .line 305
    :catch_54
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52
.end method

.method public getContext()Lcom/vlingo/client/core/audio/AudioContext;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Context:Lcom/vlingo/client/core/audio/AudioContext;

    return-object v0
.end method

.method public isMsg()Z
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    sget-object v1, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->MESSAGE_READBACK:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSound()Z
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    sget-object v1, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->SOUND:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTTS()Z
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    sget-object v1, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->TTS_PROMPT:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setContext(Lcom/vlingo/client/core/audio/AudioContext;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->m_Context:Lcom/vlingo/client/core/audio/AudioContext;

    .line 275
    return-void
.end method
