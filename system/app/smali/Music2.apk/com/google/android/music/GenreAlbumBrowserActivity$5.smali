.class Lcom/google/android/music/GenreAlbumBrowserActivity$5;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 573
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 574
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v0

    .line 575
    .local v0, albumId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2c

    .line 577
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2, v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$302(Lcom/google/android/music/GenreAlbumBrowserActivity;J)J

    .line 578
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #calls: Lcom/google/android/music/GenreAlbumBrowserActivity;->requestReconfig()V
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$400(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    .line 581
    .end local v0           #albumId:J
    :cond_2c
    return-void
.end method
