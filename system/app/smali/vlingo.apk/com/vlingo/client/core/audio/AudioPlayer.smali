.class public Lcom/vlingo/client/core/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;,
        Lcom/vlingo/client/core/audio/AudioPlayer$Server;,
        Lcom/vlingo/client/core/audio/AudioPlayer$Audio;,
        Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;,
        Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    }
.end annotation


# static fields
.field public static final AUDIO_TYPE_AMR:Ljava/lang/String; = "AMR"

.field public static final AUDIO_TYPE_MP3:Ljava/lang/String; = "MP3"

.field private static final PHONE_PAUSE:I = 0x8000

.field public static final PLAY_MODE_QUEUE:I = 0x0

.field public static final PLAY_MODE_QUEUE_HIGH_PRIORITY:I = 0x1

.field private static final RESUME_DELAY:I = 0x1388

.field private static volatile sm_Instance:Lcom/vlingo/client/core/audio/AudioPlayer;


# instance fields
.field private final m_AudioFile:Ljava/lang/String;

.field private final m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

.field private m_Handler:Landroid/os/Handler;

.field private final m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

.field private final s_Accelerometer:Landroid/hardware/Sensor;

.field private final s_SensorMgr:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v5, Lcom/vlingo/client/core/audio/AudioPlayer$1;

    invoke-direct {v5, p0}, Lcom/vlingo/client/core/audio/AudioPlayer$1;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V

    iput-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;

    .line 70
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;

    .line 71
    iget-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->s_Accelerometer:Landroid/hardware/Sensor;

    .line 72
    new-instance v5, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    invoke-direct {v5, p0, v7}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;Lcom/vlingo/client/core/audio/AudioPlayer$1;)V

    iput-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    .line 73
    new-instance v5, Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    invoke-direct {v5, p0, v7}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;Lcom/vlingo/client/core/audio/AudioPlayer$1;)V

    iput-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, audioFilePath:Ljava/lang/String;
    :try_start_31
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    const-string v6, "AudioPlayer"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/VlingoApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 77
    .local v1, dir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "TTS.mp3"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 80
    :cond_4c
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_4f} :catch_81
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4f} :catch_86

    move-result-object v0

    .line 86
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #f:Ljava/io/File;
    :goto_50
    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioFile:Ljava/lang/String;

    .line 87
    iget-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    invoke-virtual {v5}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->start()V

    .line 88
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 89
    .local v4, mgr:Landroid/telephony/TelephonyManager;
    const-class v6, Lcom/vlingo/client/core/audio/AudioPlayer;

    monitor-enter v6

    .line 90
    :try_start_66
    new-instance v5, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;Lcom/vlingo/client/core/audio/AudioPlayer$1;)V

    const/16 v7, 0x20

    invoke-virtual {v4, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 91
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_7f

    .line 94
    iget-object v5, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    const v7, 0x8000

    invoke-virtual {v5, v7}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->pause(I)V

    .line 96
    :cond_7f
    monitor-exit v6
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_8b

    .line 97
    return-void

    .line 81
    .end local v4           #mgr:Landroid/telephony/TelephonyManager;
    :catch_81
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_50

    .line 83
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_86
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 96
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #mgr:Landroid/telephony/TelephonyManager;
    :catchall_8b
    move-exception v5

    :try_start_8c
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v5
.end method

.method static synthetic access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/core/audio/AudioPlayer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/SensorManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->s_SensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/hardware/Sensor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->s_Accelerometer:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$Server;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    return-object v0
.end method

.method public static getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;
    .registers 2

    .prologue
    .line 538
    const-class v1, Lcom/vlingo/client/core/audio/AudioPlayer;

    monitor-enter v1

    .line 539
    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/audio/AudioPlayer;->sm_Instance:Lcom/vlingo/client/core/audio/AudioPlayer;

    if-nez v0, :cond_e

    .line 540
    new-instance v0, Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-direct {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/audio/AudioPlayer;->sm_Instance:Lcom/vlingo/client/core/audio/AudioPlayer;

    .line 541
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 542
    sget-object v0, Lcom/vlingo/client/core/audio/AudioPlayer;->sm_Instance:Lcom/vlingo/client/core/audio/AudioPlayer;

    return-object v0

    .line 541
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static useSCOStream()Z
    .registers 1

    .prologue
    .line 512
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public pause(I)V
    .registers 5
    .parameter "component"

    .prologue
    .line 106
    const/4 v0, 0x1

    .line 107
    .local v0, discard:Z
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_b

    .line 108
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    :cond_b
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_15

    .line 110
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_15
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->pause(I)V

    .line 114
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->cancel(Z)V

    .line 115
    return-void
.end method

.method public playAudio([BLcom/vlingo/client/core/audio/AudioPlayer$AudioType;Lcom/vlingo/client/core/audio/AudioContext;)V
    .registers 6
    .parameter "audioBytes"
    .parameter "type"
    .parameter "context"

    .prologue
    .line 100
    new-instance v0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    invoke-direct {v0, p0, p1, p2}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;[BLcom/vlingo/client/core/audio/AudioPlayer$AudioType;)V

    .line 101
    .local v0, audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    invoke-virtual {v0, p3}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->setContext(Lcom/vlingo/client/core/audio/AudioContext;)V

    .line 102
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->add(Lcom/vlingo/client/core/audio/AudioPlayer$Audio;)V

    .line 103
    return-void
.end method

.method public playSound(I)V
    .registers 5
    .parameter "ID"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    new-instance v1, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->add(Lcom/vlingo/client/core/audio/AudioPlayer$Audio;)V

    .line 135
    return-void
.end method

.method public playSound(ILcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 5
    .parameter "ID"
    .parameter "callback"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume(I)V
    .registers 6
    .parameter "what"

    .prologue
    .line 120
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    :cond_c
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    .line 124
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->resume(I)V

    .line 126
    :cond_16
    return-void
.end method

.method public silenced()Z
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public skip()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->cancel(Z)V

    .line 150
    return-void
.end method

.method public speedBump()V
    .registers 4

    .prologue
    .line 153
    :goto_0
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->access$400(Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1f

    .line 155
    const-wide/16 v1, 0x7530

    :try_start_10
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_0

    .line 156
    :catch_14
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1f
    return-void
.end method

.method public stopPlayback(Z)V
    .registers 3
    .parameter "clearQueue"

    .prologue
    .line 140
    if-eqz p1, :cond_7

    .line 141
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->clear()V

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->cancel(Z)V

    .line 144
    return-void
.end method
