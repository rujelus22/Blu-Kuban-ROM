.class Lcom/google/android/music/RenamePlaylist$3$1;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RenamePlaylist$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field final synthetic this$1:Lcom/google/android/music/RenamePlaylist$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/RenamePlaylist$3;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 183
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/google/android/music/RenamePlaylist;->access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 185
    iput-object v2, p0, Lcom/google/android/music/RenamePlaylist$3$1;->mName:Ljava/lang/String;

    .line 186
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    iget-object v6, p0, Lcom/google/android/music/RenamePlaylist$3$1;->mName:Ljava/lang/String;

    #calls: Lcom/google/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/google/android/music/RenamePlaylist;->access$500(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    .line 187
    .local v0, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_2d

    .line 199
    .end local v0           #id:J
    :cond_2c
    :goto_2c
    return-void

    .line 191
    .restart local v0       #id:J
    :cond_2d
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v5}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 192
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 193
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v5, v5, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mPlaylistId:J
    invoke-static {v5}, Lcom/google/android/music/RenamePlaylist;->access$000(Lcom/google/android/music/RenamePlaylist;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v2}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, toastformat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist$3$1;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$3$1;->this$1:Lcom/google/android/music/RenamePlaylist$3;

    iget-object v2, v2, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v2}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 206
    return-void
.end method
