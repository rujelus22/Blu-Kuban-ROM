.class Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;
.super Ljava/lang/Object;
.source "AutoPlaylists.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

.field final synthetic val$playlistsToShow:[J


# direct methods
.method constructor <init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;[J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    iput-object p2, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->val$playlistsToShow:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 200
    iget-object v5, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    #getter for: Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->mClosed:Z
    invoke-static {v5}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->access$100(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 208
    :goto_9
    return-void

    .line 203
    :cond_a
    iget-object v5, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    invoke-virtual {v5, v7}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->beginTransaction(Z)V

    .line 204
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->val$playlistsToShow:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v2, :cond_25

    aget-wide v3, v0, v1

    .line 205
    .local v3, playlistToShow:J
    iget-object v5, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    iget-object v6, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->createAutoPlaylistRow(J)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->addRow([Ljava/lang/Object;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 207
    .end local v3           #playlistToShow:J
    :cond_25
    iget-object v5, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$3;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    invoke-virtual {v5, v7}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->endTrancation(Z)V

    goto :goto_9
.end method
