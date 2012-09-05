.class Lcom/sec/android/app/music/TrackBrowserActivity$28;
.super Ljava/lang/Thread;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

.field final synthetic val$li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;

.field final synthetic val$plid:J


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;JLcom/sec/android/app/music/TrackListView$ListItemInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-wide p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->val$plid:J

    iput-object p4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->val$li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1892
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/music/MusicContentListView;->setAutoReQuery(Z)V

    .line 1893
    iget-wide v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->val$plid:J

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v1, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    new-array v3, v7, [J

    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->val$li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    iget-wide v4, v4, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->itemId:J

    aput-wide v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->removePlayListItem(Landroid/content/Context;J[J)V

    .line 1904
    :goto_26
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1905
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1906
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1908
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1700(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1909
    return-void

    .line 1899
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->val$plid:J

    new-array v3, v7, [J

    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$28;->val$li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    iget-wide v4, v4, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->itemId:J

    aput-wide v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->removePlayListItem(Landroid/content/Context;J[J)V

    goto :goto_26
.end method
