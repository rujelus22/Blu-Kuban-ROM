.class Lcom/google/android/music/RenamePlaylist$3;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/google/android/music/RenamePlaylist;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 179
    new-instance v1, Lcom/google/android/music/RenamePlaylist$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/RenamePlaylist$3$1;-><init>(Lcom/google/android/music/RenamePlaylist$3;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 209
    :cond_1e
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$3;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-virtual {v1}, Lcom/google/android/music/RenamePlaylist;->dismiss()V

    .line 210
    return-void
.end method
