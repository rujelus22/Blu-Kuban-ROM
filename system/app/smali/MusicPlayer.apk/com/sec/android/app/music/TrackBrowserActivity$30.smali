.class Lcom/sec/android/app/music/TrackBrowserActivity$30;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2158
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x7

    .line 2161
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeReorderPlayListItem(Landroid/content/Context;)V

    .line 2162
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1300(Lcom/sec/android/app/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2163
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    sget-wide v3, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    invoke-static {v2, v0, v1, v3, v4}, Lcom/sec/android/app/music/MusicUtils;->movePlayList(Landroid/content/Context;JJ)[J

    .line 2165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2166
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mTabFrom:I
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1900(Lcom/sec/android/app/music/TrackBrowserActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2167
    const-string v2, "tabFrom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2168
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mKeyWord:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1300(Lcom/sec/android/app/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2169
    const-string v1, "mode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    const-string v1, "selectMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2171
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$30;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2173
    return-void
.end method
