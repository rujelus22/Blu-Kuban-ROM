.class Lcom/sec/android/app/music/TrackBrowserActivity$17$1;
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

.field final synthetic val$albumId:J

.field final synthetic val$list:[J


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity$17;J[J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iput-wide p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->val$albumId:J

    iput-object p4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->val$list:[J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1138
    iget-wide v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->val$albumId:J

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v1, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->val$list:[J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->removePlayListItem(Landroid/content/Context;J[J)V

    .line 1145
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1147
    return-void

    .line 1142
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$17;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->val$albumId:J

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;->val$list:[J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->removePlayListItem(Landroid/content/Context;J[J)V

    goto :goto_17
.end method
