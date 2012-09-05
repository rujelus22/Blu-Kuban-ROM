.class final Lcom/android/internal/app/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 394
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 397
    const-wide/16 v1, 0x320

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 398
    const-string v1, "ShutdownThread"

    const-string v2, "Playing sound file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$800()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 400
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$800()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 401
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$800()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_26} :catch_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_26} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_26} :catch_31

    .line 411
    :goto_26
    return-void

    .line 402
    :catch_27
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_26

    .line 405
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2c
    move-exception v0

    .line 406
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 408
    .end local v0           #e:Ljava/io/IOException;
    :catch_31
    move-exception v1

    goto :goto_26
.end method
