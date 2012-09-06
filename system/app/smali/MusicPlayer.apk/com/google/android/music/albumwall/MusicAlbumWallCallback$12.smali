.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1727
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v0

    .line 1728
    .local v0, mode:I
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v2

    #setter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z
    invoke-static {v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1702(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z

    .line 1729
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1730
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1731
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/MusicPile;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1732
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-static {v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1802(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)Lcom/google/android/music/albumwall/MusicPile;

    .line 1734
    :cond_2b
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->initTracker()V
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1735
    return-void
.end method
