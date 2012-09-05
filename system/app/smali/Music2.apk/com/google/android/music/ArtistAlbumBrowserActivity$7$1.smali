.class Lcom/google/android/music/ArtistAlbumBrowserActivity$7$1;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$7;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$7;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$7$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$7$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$7;

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$7;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1228
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$7$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$7;

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$7;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 1230
    :cond_15
    return-void
.end method
