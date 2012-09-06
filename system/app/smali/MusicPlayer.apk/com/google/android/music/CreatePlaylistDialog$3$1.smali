.class Lcom/google/android/music/CreatePlaylistDialog$3$1;
.super Ljava/lang/Object;
.source "CreatePlaylistDialog.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreatePlaylistDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlaylistId:J

.field private mPlaylistName:Ljava/lang/String;

.field private mSongsAddedCount:I

.field final synthetic this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreatePlaylistDialog$3;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iput-object p2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mSongsAddedCount:I

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 6

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->val$name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistName:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v1, v1, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->val$name:Ljava/lang/String;

    #calls: Lcom/google/android/music/CreatePlaylistDialog;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/google/android/music/CreatePlaylistDialog;->access$300(Lcom/google/android/music/CreatePlaylistDialog;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistId:J

    .line 204
    iget-wide v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_40

    .line 213
    :goto_19
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v1, v1, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$400(Lcom/google/android/music/CreatePlaylistDialog;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 214
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v1, v1, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$400(Lcom/google/android/music/CreatePlaylistDialog;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-virtual {v2}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistId:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mSongsAddedCount:I

    .line 217
    :cond_3f
    return-void

    .line 208
    :cond_40
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v1, v1, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-virtual {v1}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists;->createPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistId:J

    goto :goto_19
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mAddToPlaylist:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/CreatePlaylistDialog;->access$400(Lcom/google/android/music/CreatePlaylistDialog;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    if-nez v2, :cond_35

    .line 222
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-virtual {v2}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0068

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, toastformat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-virtual {v2}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 230
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastformat:Ljava/lang/String;
    :goto_34
    return-void

    .line 227
    :cond_35
    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->this$1:Lcom/google/android/music/CreatePlaylistDialog$3;

    iget-object v2, v2, Lcom/google/android/music/CreatePlaylistDialog$3;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-virtual {v2}, Lcom/google/android/music/CreatePlaylistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mSongsAddedCount:I

    iget-object v4, p0, Lcom/google/android/music/CreatePlaylistDialog$3$1;->mPlaylistName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_34
.end method
