.class Lcom/sec/android/app/music/TrackBrowserActivity$22$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackBrowserActivity$22;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity$22;)V
    .registers 2
    .parameter

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$22$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$22;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$22$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$22;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$22;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v5, [J

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    aput-wide v2, v1, v4

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/music/MusicUtils;->deletePlaylists(Landroid/content/Context;[JZ)V

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$22$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$22;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$22;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$22$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$22;

    iget-object v0, v0, Lcom/sec/android/app/music/TrackBrowserActivity$22;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1310
    return-void
.end method
