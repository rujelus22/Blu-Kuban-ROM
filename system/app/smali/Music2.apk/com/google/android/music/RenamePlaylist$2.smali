.class Lcom/google/android/music/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 107
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 128
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 110
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_14

    .line 114
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    iget-object v2, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/RenamePlaylist;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    #setter for: Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1, v2}, Lcom/google/android/music/RenamePlaylist;->access$302(Lcom/google/android/music/RenamePlaylist;Landroid/widget/Button;)Landroid/widget/Button;

    .line 116
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 117
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, newText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    .line 119
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    .end local v0           #newText:Ljava/lang/String;
    :cond_3e
    :goto_3e
    return-void

    .line 121
    .restart local v0       #newText:Ljava/lang/String;
    :cond_3f
    iget-object v1, p0, Lcom/google/android/music/RenamePlaylist$2;->this$0:Lcom/google/android/music/RenamePlaylist;

    #getter for: Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/RenamePlaylist;->access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3e
.end method
