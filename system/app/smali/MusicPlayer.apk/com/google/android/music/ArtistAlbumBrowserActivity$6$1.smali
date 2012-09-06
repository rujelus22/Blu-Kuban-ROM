.class Lcom/google/android/music/ArtistAlbumBrowserActivity$6$1;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$6;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$6;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$6;)V
    .registers 2
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$6;

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1132
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$6;

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 1134
    :cond_15
    return-void
.end method
