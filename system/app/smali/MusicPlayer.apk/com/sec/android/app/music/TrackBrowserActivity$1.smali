.class Lcom/sec/android/app/music/TrackBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
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
    .line 168
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$1;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPlayerStatusListener action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 181
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$1;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$1;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$1;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->updateNowPlayingView()V
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$200(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    .line 191
    :cond_44
    :goto_44
    return-void

    .line 185
    :cond_45
    const-string v1, "com.sec.android.app.music.ADD_TO_PLAYLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$1;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-class v3, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$1;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_44
.end method
