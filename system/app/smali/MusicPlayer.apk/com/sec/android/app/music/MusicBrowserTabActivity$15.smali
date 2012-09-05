.class Lcom/sec/android/app/music/MusicBrowserTabActivity$15;
.super Ljava/lang/Thread;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1158
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->val$data:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1159
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "selectedList"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 1160
    .local v1, items:[J
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    invoke-interface {v7}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, keyword:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1163
    .local v5, plid:J
    const-wide/16 v7, -0xb

    cmp-long v7, v5, v7

    if-nez v7, :cond_2e

    .line 1164
    sget-wide v5, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    .line 1166
    :cond_2e
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v5, v6, v11}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    move-result v4

    .line 1168
    .local v4, numinserted:I
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0009

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToastMessageHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1800(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToastMessageHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1800(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #getter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1900(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1173
    return-void
.end method
