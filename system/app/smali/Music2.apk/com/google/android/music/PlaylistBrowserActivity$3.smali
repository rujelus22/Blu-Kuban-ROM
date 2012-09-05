.class Lcom/google/android/music/PlaylistBrowserActivity$3;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 526
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 527
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v0

    .line 528
    .local v0, albumId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2c

    .line 530
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2, v0, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$302(Lcom/google/android/music/PlaylistBrowserActivity;J)J

    .line 531
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #calls: Lcom/google/android/music/PlaylistBrowserActivity;->requestReconfig()V
    invoke-static {v2}, Lcom/google/android/music/PlaylistBrowserActivity;->access$400(Lcom/google/android/music/PlaylistBrowserActivity;)V

    .line 534
    .end local v0           #albumId:J
    :cond_2c
    return-void
.end method
