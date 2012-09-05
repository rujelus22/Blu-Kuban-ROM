.class Lcom/google/android/music/TrackBrowserActivity$1$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/TrackBrowserActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->val$mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v1, v1, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 225
    :cond_e
    :goto_e
    return-void

    .line 222
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->val$mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 223
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->val$mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v1, v1, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->refreshMetaData(Landroid/content/Context;)V

    goto :goto_e
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->val$mSavedMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v1, v1, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 233
    :goto_e
    return-void

    .line 231
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->setTitle()V
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$100(Lcom/google/android/music/TrackBrowserActivity;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$1$1;->this$1:Lcom/google/android/music/TrackBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$1;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$200(Lcom/google/android/music/TrackBrowserActivity;)V

    goto :goto_e
.end method
