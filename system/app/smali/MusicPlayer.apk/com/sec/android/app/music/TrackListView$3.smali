.class Lcom/sec/android/app/music/TrackListView$3;
.super Landroid/os/Handler;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackListView;)V
    .registers 2
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$3;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 952
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView$3;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/TrackListView$3;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNowplayingProgressUpdateHandler.......... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$3;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$3;->this$0:Lcom/sec/android/app/music/TrackListView;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackListView;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/music/TrackListView$3;->this$0:Lcom/sec/android/app/music/TrackListView;

    #calls: Lcom/sec/android/app/music/TrackListView;->updateNowPlayingProgressBar()V
    invoke-static {v0}, Lcom/sec/android/app/music/TrackListView;->access$900(Lcom/sec/android/app/music/TrackListView;)V

    .line 957
    :cond_4b
    return-void
.end method
