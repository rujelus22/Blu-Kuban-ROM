.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 300
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$300(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$202(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->bufferingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$200(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 305
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 5
    .parameter "seekBar"

    .prologue
    const/4 v2, 0x1

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->isSeekable()Z

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    #calls: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->handleSeek(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$100(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$10;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    .line 296
    :cond_1f
    return-void
.end method
