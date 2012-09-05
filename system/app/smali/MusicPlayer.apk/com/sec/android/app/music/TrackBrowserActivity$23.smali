.class Lcom/sec/android/app/music/TrackBrowserActivity$23;
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
    .line 1414
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1417
    new-array v2, v8, [J

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedId:J
    invoke-static {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1500(Lcom/sec/android/app/music/TrackBrowserActivity;)J

    move-result-wide v3

    aput-wide v3, v2, v7

    .line 1420
    .local v2, selectedItem:[J
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->val$data:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5, v7}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    move-result v1

    .line 1422
    .local v1, numinserted:I
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToastMessageHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToastMessageHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1600(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1426
    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$23;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1427
    return-void
.end method
