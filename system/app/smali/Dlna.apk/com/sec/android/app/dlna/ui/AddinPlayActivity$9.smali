.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

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
    .line 525
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 528
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    const/4 v1, 0x1

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->isSeekable()Z

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$9;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->handleSeek(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$900(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V

    .line 522
    :cond_1f
    return-void
.end method
