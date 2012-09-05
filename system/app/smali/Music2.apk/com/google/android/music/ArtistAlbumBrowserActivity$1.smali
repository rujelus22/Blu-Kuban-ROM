.class Lcom/google/android/music/ArtistAlbumBrowserActivity$1;
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
    .line 235
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 238
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 239
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v0

    .line 240
    .local v0, albumId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2c

    .line 242
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2, v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$102(Lcom/google/android/music/ArtistAlbumBrowserActivity;J)J

    .line 243
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #calls: Lcom/google/android/music/ArtistAlbumBrowserActivity;->requestReconfig()V
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    .line 246
    .end local v0           #albumId:J
    :cond_2c
    return-void
.end method
