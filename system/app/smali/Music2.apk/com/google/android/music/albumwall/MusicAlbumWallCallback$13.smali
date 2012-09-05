.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;
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
    .line 1621
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v1

    #setter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z
    invoke-static {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1702(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z

    .line 1624
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1625
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1626
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/MusicPile;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1627
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-static {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1802(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)Lcom/google/android/music/albumwall/MusicPile;

    .line 1629
    :cond_2b
    return-void
.end method
