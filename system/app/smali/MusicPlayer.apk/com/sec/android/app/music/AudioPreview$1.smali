.class Lcom/sec/android/app/music/AudioPreview$1;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlingHandler handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    .line 548
    :goto_24
    return-void

    .line 519
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->showFlingAnimation(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$100(Lcom/sec/android/app/music/AudioPreview;I)V

    goto :goto_24

    .line 522
    :pswitch_2b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->showFlingAnimation(I)V
    invoke-static {v0, v4}, Lcom/sec/android/app/music/AudioPreview;->access$100(Lcom/sec/android/app/music/AudioPreview;I)V

    goto :goto_24

    .line 525
    :pswitch_31
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsReadyForFling:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/music/AudioPreview;->access$202(Lcom/sec/android/app/music/AudioPreview;Z)Z

    goto :goto_24

    .line 528
    :pswitch_37
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsMusidPrepared:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/music/AudioPreview;->access$302(Lcom/sec/android/app/music/AudioPreview;Z)Z

    goto :goto_24

    .line 533
    :pswitch_3d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsMusidPrepared:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$302(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 542
    :goto_55
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/AudioPreview;->playWithFilePath(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->access$600(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$702(Lcom/sec/android/app/music/AudioPreview;Z)Z

    goto :goto_24

    .line 539
    :cond_64
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$1;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_55

    .line 517
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
        :pswitch_31
        :pswitch_3d
        :pswitch_37
    .end packed-switch
.end method
