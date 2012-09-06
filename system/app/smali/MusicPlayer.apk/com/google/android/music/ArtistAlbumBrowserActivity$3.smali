.class Lcom/google/android/music/ArtistAlbumBrowserActivity$3;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 525
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateAllOfflineSelectedStatuses()V

    .line 527
    :cond_11
    return-void
.end method
