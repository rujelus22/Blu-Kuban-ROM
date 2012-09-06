.class Lcom/google/android/music/athome/AtHomePlaybackActivity$4;
.super Ljava/lang/Object;
.source "AtHomePlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomePlaybackActivity;->updateSubmitterStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFoundMultiSubmitterPhoto:Z

.field final synthetic this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->mFoundMultiSubmitterPhoto:Z

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mMediaList:Lcom/google/android/music/athome/AtHomeSongList;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$800(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/athome/AtHomeSongList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$600(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$700()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/athome/AtHomeSongList;->getSubmitterStatsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 358
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2a

    .line 360
    :try_start_17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 361
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->mFoundMultiSubmitterPhoto:Z
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_2b

    .line 365
    :cond_27
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 368
    :cond_2a
    return-void

    .line 365
    :catchall_2b
    move-exception v1

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasMultiSubmitterPhotos:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$900(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->mFoundMultiSubmitterPhoto:Z

    if-eq v0, v1, :cond_1a

    .line 372
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->mFoundMultiSubmitterPhoto:Z

    #setter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mHasMultiSubmitterPhotos:Z
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$902(Lcom/google/android/music/athome/AtHomePlaybackActivity;Z)Z

    .line 373
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$4;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListView:Lcom/google/android/music/TouchInterceptor;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$500(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/TouchInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/TouchInterceptor;->invalidateViews()V

    .line 375
    :cond_1a
    return-void
.end method
