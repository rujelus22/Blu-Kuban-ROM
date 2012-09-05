.class public final Lcom/yamaha/android/media/MediaYamahaPostProcess;
.super Ljava/lang/Object;
.source "MediaYamahaPostProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;,
        Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;,
        Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;
    }
.end annotation


# static fields
.field private static final MEDIA_CHANGE:I = 0xa

.field private static final MEDIA_NOP:I = 0x0

.field public static final MODE_OFF:I = 0x0

.field public static final MODE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaYamahaPP"

.field private static mPostProcess:Lcom/yamaha/android/media/MediaYamahaPostProcess;


# instance fields
.field private mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

.field private mNativeContext:I

.field private mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "mediayamaha_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mPostProcess:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    return-void
.end method

.method private constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yamaha/android/media/MediaYamahaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 67
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1c

    .line 68
    new-instance v1, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;-><init>(Lcom/yamaha/android/media/MediaYamahaPostProcess;Lcom/yamaha/android/media/MediaYamahaPostProcess;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    .line 78
    :goto_11
    iput-object v2, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;

    .line 83
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/yamaha/android/media/MediaYamahaPostProcess;->native_setup(Ljava/lang/Object;)V

    .line 84
    return-void

    .line 70
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2a

    .line 72
    new-instance v1, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;-><init>(Lcom/yamaha/android/media/MediaYamahaPostProcess;Lcom/yamaha/android/media/MediaYamahaPostProcess;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    goto :goto_11

    .line 74
    :cond_2a
    iput-object v2, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    goto :goto_11
.end method

.method private native _release()V
.end method

.method static synthetic access$000(Lcom/yamaha/android/media/MediaYamahaPostProcess;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Lcom/yamaha/android/media/MediaYamahaPostProcess;)Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;

    return-object v0
.end method

.method public static create()Lcom/yamaha/android/media/MediaYamahaPostProcess;
    .registers 6

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, postproc:Lcom/yamaha/android/media/MediaYamahaPostProcess;
    :try_start_1
    new-instance v2, Lcom/yamaha/android/media/MediaYamahaPostProcess;

    invoke-direct {v2}, Lcom/yamaha/android/media/MediaYamahaPostProcess;-><init>()V
    :try_end_6
    .catch Lcom/yamaha/android/media/MediaYamahaException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v1           #postproc:Lcom/yamaha/android/media/MediaYamahaPostProcess;
    .local v2, postproc:Lcom/yamaha/android/media/MediaYamahaPostProcess;
    move-object v1, v2

    .line 95
    .end local v2           #postproc:Lcom/yamaha/android/media/MediaYamahaPostProcess;
    .restart local v1       #postproc:Lcom/yamaha/android/media/MediaYamahaPostProcess;
    :goto_7
    return-object v1

    .line 91
    :catch_8
    move-exception v0

    .line 92
    .local v0, e:Lcom/yamaha/android/media/MediaYamahaException;
    const-string v3, "MediaYamahaPP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/yamaha/android/media/MediaYamahaException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yamaha/android/media/MediaYamahaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {v0}, Lcom/yamaha/android/media/MediaYamahaException;->printStackTrace()V

    goto :goto_7
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yamaha/android/media/MediaYamahaException;
        }
    .end annotation
.end method

.method private static postPostProcessEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "MediaYamahaPostProcess_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 177
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yamaha/android/media/MediaYamahaPostProcess;

    .line 178
    .local v1, mypp:Lcom/yamaha/android/media/MediaYamahaPostProcess;
    if-nez v1, :cond_b

    .line 186
    :cond_a
    :goto_a
    return-void

    .line 182
    :cond_b
    iget-object v2, v1, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    if-eqz v2, :cond_a

    .line 183
    iget-object v2, v1, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mEventHandler:Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;

    invoke-virtual {v2, v0}, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/yamaha/android/media/MediaYamahaPostProcess;->native_finalize()V

    .line 124
    return-void
.end method

.method public native getCurrentName()Ljava/lang/String;
.end method

.method public native getMode()I
.end method

.method public release()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;

    .line 102
    invoke-direct {p0}, Lcom/yamaha/android/media/MediaYamahaPostProcess;->_release()V

    .line 103
    return-void
.end method

.method public native reset()V
.end method

.method public native setMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/yamaha/android/media/MediaYamahaException;
        }
    .end annotation
.end method

.method public setOnChangeListener(Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess;->mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;

    .line 196
    return-void
.end method

.method public native setParameter(Ljava/lang/String;Lcom/yamaha/android/media/MediaYamahaPostProcess$Parameter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/yamaha/android/media/MediaYamahaException;
        }
    .end annotation
.end method
