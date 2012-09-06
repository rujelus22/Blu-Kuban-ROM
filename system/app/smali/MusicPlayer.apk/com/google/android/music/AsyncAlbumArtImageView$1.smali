.class Lcom/google/android/music/AsyncAlbumArtImageView$1;
.super Ljava/lang/Object;
.source "AsyncAlbumArtImageView.java"

# interfaces
.implements Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncAlbumArtImageView;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAlbumArtChanged(J)V
    .registers 7
    .parameter "albumId"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    monitor-enter v1

    .line 450
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$ServiceAlbumMode;

    if-eqz v0, :cond_41

    :cond_17
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    #getter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$700(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-result-object v0

    #calls: Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumId(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J
    invoke-static {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$800(Lcom/google/android/music/AsyncAlbumArtImageView$Mode;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_41

    .line 452
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z
    invoke-static {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$902(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z

    .line 453
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I
    invoke-static {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1002(Lcom/google/android/music/AsyncAlbumArtImageView;I)I

    .line 454
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I
    invoke-static {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->access$1102(Lcom/google/android/music/AsyncAlbumArtImageView;I)I

    .line 455
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView$1;->this$0:Lcom/google/android/music/AsyncAlbumArtImageView;

    new-instance v2, Lcom/google/android/music/AsyncAlbumArtImageView$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/AsyncAlbumArtImageView$1$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_41
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v0
.end method
