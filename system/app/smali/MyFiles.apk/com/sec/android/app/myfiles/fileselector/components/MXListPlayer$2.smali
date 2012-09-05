.class Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;
.super Landroid/os/Handler;
.source "MXListPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 363
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x14

    const/high16 v2, 0x3f80

    const/4 v3, 0x5

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_2b

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    iget v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setVolume(FF)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->start()V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mListPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->access$300(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 384
    :cond_2b
    :goto_2b
    return-void

    .line 375
    :cond_2c
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    .line 376
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4d

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mListPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->access$300(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 381
    :goto_43
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    iget v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setVolume(FF)V

    goto :goto_2b

    .line 379
    :cond_4d
    iput v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;->mCurrentVolume:F

    goto :goto_43
.end method
