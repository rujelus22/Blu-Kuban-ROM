.class Lcom/sec/android/app/music/TrackBrowserActivity$17$2;
.super Ljava/lang/Thread;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity$17;)V
    .registers 2
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1164
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v1, v1, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getSelectedItemId()[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(I)V

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1170
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1171
    return-void
.end method
