.class Lcom/sec/android/app/music/TrackBrowserActivity$38;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->registerNowPlayingButtons()V
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
    .line 2338
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$38;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    .line 2342
    invoke-static {}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$38;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRewindLongPress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2302(Lcom/sec/android/app/music/TrackBrowserActivity;Z)Z

    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$38;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.rew.down"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2346
    const/4 v0, 0x0

    return v0
.end method
