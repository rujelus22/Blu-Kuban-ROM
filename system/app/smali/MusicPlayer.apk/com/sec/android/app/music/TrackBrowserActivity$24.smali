.class Lcom/sec/android/app/music/TrackBrowserActivity$24;
.super Ljava/lang/Thread;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1438
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->val$data:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1439
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "selectedList"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 1440
    .local v1, items:[J
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1300(Lcom/sec/android/app/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1441
    .local v4, plid:J
    const-wide/16 v6, -0xb

    cmp-long v6, v4, v6

    if-nez v6, :cond_24

    .line 1442
    sget-wide v4, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    .line 1444
    :cond_24
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v4, v5, v10}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    move-result v3

    .line 1446
    .local v3, numinserted:I
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0009

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1448
    .local v2, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToastMessageHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToastMessageHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1450
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$24;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1451
    return-void
.end method
