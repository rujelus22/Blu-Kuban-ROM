.class Lcom/google/android/music/TrackBrowserActivity$3;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->updateContainerOfflineStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enabled:Z

.field selectedForOffline:Z

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 5

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->containsRemoteItems(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->enabled:Z

    .line 608
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/store/IStoreService;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->selectedForOffline:Z

    .line 610
    return-void
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 615
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->selectedForOffline:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 616
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$3;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity$3;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    .line 618
    :cond_26
    return-void
.end method
