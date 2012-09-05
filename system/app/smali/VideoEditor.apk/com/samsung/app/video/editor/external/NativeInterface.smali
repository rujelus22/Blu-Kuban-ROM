.class public Lcom/samsung/app/video/editor/external/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;,
        Lcom/samsung/app/video/editor/external/NativeInterface$playerState;,
        Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;
    }
.end annotation


# static fields
.field public static final VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:I = 0x9

.field public static final VT_PREVIEW_PLAYER_CLOSED:I = 0x4

.field public static final VT_PREVIEW_PLAYER_CREATED:I = 0x0

.field public static final VT_PREVIEW_PLAYER_DAM_CONFIGURE:I = 0xb

.field public static final VT_PREVIEW_PLAYER_DAM_DISPLAY:I = 0xc

.field public static final VT_PREVIEW_PLAYER_DAM_UNREGISTER:I = 0xd

.field public static final VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:I = 0xa

.field public static final VT_PREVIEW_PLAYER_PAUSED:I = 0x5

.field public static final VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:I = 0x2

.field public static final VT_PREVIEW_PLAYER_PLAYING:I = 0x1

.field public static final VT_PREVIEW_PLAYER_RESUMED:I = 0x6

.field public static final VT_PREVIEW_PLAYER_STOPED:I = 0x3

.field public static final VT_PREVIEW_PLAYER_STOPED_ON_ERROR:I = 0x7

.field public static final VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:I = 0x8

.field public static isInitFIMC:Z

.field private static nativeInterface:Lcom/samsung/app/video/editor/external/NativeInterface;


# instance fields
.field public mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

.field public mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeInterface:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 51
    const-string v0, "videieditor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    const-string v0, "ve_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_18

    .line 62
    new-instance v1, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;-><init>(Lcom/samsung/app/video/editor/external/NativeInterface;Lcom/samsung/app/video/editor/external/NativeInterface;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    .line 70
    :goto_10
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->currentBinaryType(I)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_setup()V

    .line 72
    return-void

    .line 63
    :cond_18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 64
    new-instance v1, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;-><init>(Lcom/samsung/app/video/editor/external/NativeInterface;Lcom/samsung/app/video/editor/external/NativeInterface;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    goto :goto_10

    .line 66
    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    goto :goto_10
.end method

.method public static destroyNativeInterface()V
    .registers 2

    .prologue
    .line 124
    const-string v0, "calling preview player start"

    const-string v1, "resumePreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeInterface:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 127
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;
    .registers 2

    .prologue
    .line 148
    const-class v1, Lcom/samsung/app/video/editor/external/NativeInterface;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeInterface:Lcom/samsung/app/video/editor/external/NativeInterface;

    if-nez v0, :cond_13

    .line 149
    const-string v0, "NativeInterface Null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/samsung/app/video/editor/external/NativeInterface;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;-><init>()V

    sput-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeInterface:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 152
    :cond_13
    sget-object v0, Lcom/samsung/app/video/editor/external/NativeInterface;->nativeInterface:Lcom/samsung/app/video/editor/external/NativeInterface;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "vt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 131
    move-object v0, p0

    check-cast v0, Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 132
    .local v0, c:Lcom/samsung/app/video/editor/external/NativeInterface;
    if-nez v0, :cond_b

    .line 133
    const-string v2, "Object reference is NULL"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 141
    :cond_a
    :goto_a
    return-void

    .line 136
    :cond_b
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    if-eqz v2, :cond_a

    .line 137
    const-string v2, "posting message"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 138
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 139
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mEventHandler:Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public native FindIfJPEG(Ljava/lang/String;)I
.end method

.method public synchronized native declared-synchronized GetCodecFileProperties(Ljava/lang/String;)I
.end method

.method public native GetEstimatedTime()I
.end method

.method public native Height()I
.end method

.method public native ImageHeight()I
.end method

.method public native ImageWidth()I
.end method

.method public native JpegtoRGB565(Ljava/lang/String;II)[B
.end method

.method public synchronized native declared-synchronized PinchDeInit(Ljava/lang/String;)V
.end method

.method public synchronized native declared-synchronized PinchInit(Ljava/lang/String;)I
.end method

.method public synchronized native declared-synchronized PinchVEGetFrameRGB565Buffer(III)[B
.end method

.method public synchronized native declared-synchronized PlayerDeinitImage(Ljava/lang/String;)V
.end method

.method public synchronized native declared-synchronized PlayerInitImage(Ljava/lang/String;)V
.end method

.method public native ReadJpegHeader(Ljava/lang/String;)I
.end method

.method public native StopVEEditExportFunction()V
.end method

.method public native VEEdit(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;)I
.end method

.method public native VEGetFrameRGB565Buffer(Ljava/lang/String;III)[B
.end method

.method public synchronized native declared-synchronized VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B
.end method

.method public native Width()I
.end method

.method public declared-synchronized _native_initfimc()V
    .registers 2

    .prologue
    .line 560
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/samsung/app/video/editor/external/NativeInterface;->isInitFIMC:Z

    if-nez v0, :cond_10

    .line 561
    const-string v0, " <<<<<<<<<<<< INIT FIMC >>>>>>>>>>"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_initfimc()V

    .line 563
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/app/video/editor/external/NativeInterface;->isInitFIMC:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 565
    :cond_10
    monitor-exit p0

    return-void

    .line 560
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _native_terminate()V
    .registers 2

    .prologue
    .line 568
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/samsung/app/video/editor/external/NativeInterface;->isInitFIMC:Z

    if-eqz v0, :cond_10

    .line 569
    const-string v0, " <<<<<<<<<<<< DE-INIT FIMC >>>>>>>>>>"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->native_terminate()V

    .line 571
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/app/video/editor/external/NativeInterface;->isInitFIMC:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 573
    :cond_10
    monitor-exit p0

    return-void

    .line 568
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synchronized native declared-synchronized applyEffectToVideoThumbnail([BIIII)[B
.end method

.method public synchronized native declared-synchronized createPreviewPlayer()V
.end method

.method public synchronized native declared-synchronized currentBinaryType(I)V
.end method

.method public synchronized native declared-synchronized denit()V
.end method

.method public final getCurrentPosition()I
    .registers 4

    .prologue
    .line 91
    const-string v1, "calling preview player start"

    const-string v2, "getCurrentPositionPreviewPlayer "

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPositionOfPreviewPlayer()I

    move-result v0

    .line 93
    .local v0, currentPosition:I
    return v0
.end method

.method public synchronized native declared-synchronized getCurrentPositionOfPreviewPlayer()I
.end method

.method public native getEstimatedSize(Lcom/samsung/app/video/editor/external/TranscodeElement;II)J
.end method

.method public synchronized native declared-synchronized getMetadataOfPreviewPlayer()I
.end method

.method public native getVideoType()I
.end method

.method public final native native_initfimc()V
.end method

.method public final synchronized native declared-synchronized native_setup()V
.end method

.method public final native native_terminate()V
.end method

.method public final pause()V
    .registers 3

    .prologue
    .line 97
    const-string v0, "calling preview player start"

    const-string v1, "pausePreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->pausePreviewPlayer()V

    .line 99
    return-void
.end method

.method public synchronized native declared-synchronized pausePreviewPlayer()V
.end method

.method public final synchronized native declared-synchronized playbackCompleted()V
.end method

.method public synchronized native declared-synchronized previewFrame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;III)V
.end method

.method public native release()I
.end method

.method public final resume()V
    .registers 3

    .prologue
    .line 118
    const-string v0, "calling preview player start"

    const-string v1, "resumePreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->resumePreviewPlayer()V

    .line 120
    return-void
.end method

.method public synchronized native declared-synchronized resumePreviewPlayer()V
.end method

.method public final seek(I)V
    .registers 4
    .parameter "seektime"

    .prologue
    .line 102
    if-lez p1, :cond_d

    .line 103
    :goto_2
    const-string v0, "calling preview player start"

    const-string v1, "seekPreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/app/video/editor/external/NativeInterface;->seekPreviewPlayer(I)V

    .line 105
    return-void

    .line 102
    :cond_d
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public synchronized native declared-synchronized seekPreviewPlayer(I)V
.end method

.method public synchronized native declared-synchronized setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
.end method

.method public final synchronized native declared-synchronized setPreviewDisplay(Landroid/view/Surface;)V
.end method

.method public final declared-synchronized setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    const-string v0, "Assigning msurface in preview player"

    const-string v1, "Set msurface"

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSurface:Landroid/view/Surface;

    .line 77
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStackStateListener(Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 86
    const-string v0, "setStackStateListener"

    const-string v1, "Setting mStackStateListener"

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/NativeInterface;->mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    .line 88
    return-void
.end method

.method public final start()V
    .registers 3

    .prologue
    .line 81
    const-string v0, "calling preview player start"

    const-string v1, "startPreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->startPreviewPlayer()V

    .line 83
    return-void
.end method

.method public final synchronized native declared-synchronized startPreviewPlayer()V
.end method

.method public final stop()V
    .registers 3

    .prologue
    .line 113
    const-string v0, "case calling preview player start"

    const-string v1, "terminatePreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->stopPreviewPlayer()V

    .line 115
    return-void
.end method

.method public synchronized native declared-synchronized stopPreviewPlayer()V
.end method

.method public synchronized native declared-synchronized surfaceDestroyed()V
.end method

.method public final terminate()V
    .registers 3

    .prologue
    .line 108
    const-string v0, "case calling preview player start"

    const-string v1, "terminatePreviewPlayer "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminatePreviewPlayer()V

    .line 110
    return-void
.end method

.method public synchronized native declared-synchronized terminatePreviewPlayer()V
.end method

.method public native updatePreviewDisplay(Lcom/samsung/app/video/editor/external/Element;I)V
.end method

.method public synchronized native declared-synchronized ve_appexitfromJNI()V
.end method
