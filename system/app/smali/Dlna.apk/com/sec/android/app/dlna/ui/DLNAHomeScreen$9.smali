.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isSuspended:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$200(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$300(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    :cond_13
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isSuspended:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Z)Z

    .line 332
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 5
    .parameter "seekBar"

    .prologue
    const/4 v2, 0x1

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->isSeekable()Z

    move-result v0

    if-ne v0, v2, :cond_25

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    #calls: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->handleSeek(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$100(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;I)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$9;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isSuspended:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$202(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Z)Z

    .line 323
    :cond_25
    return-void
.end method
