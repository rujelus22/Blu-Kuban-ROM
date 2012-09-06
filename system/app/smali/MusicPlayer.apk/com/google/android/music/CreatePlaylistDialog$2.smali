.class Lcom/google/android/music/CreatePlaylistDialog$2;
.super Ljava/lang/Object;
.source "CreatePlaylistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/CreatePlaylistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/CreatePlaylistDialog;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreatePlaylistDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 123
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$200(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_14

    .line 109
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/CreatePlaylistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    #setter for: Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1, v2}, Lcom/google/android/music/CreatePlaylistDialog;->access$202(Lcom/google/android/music/CreatePlaylistDialog;Landroid/widget/Button;)Landroid/widget/Button;

    .line 111
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$200(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 112
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$100(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, newText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    .line 114
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$200(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    .end local v0           #newText:Ljava/lang/String;
    :cond_3e
    :goto_3e
    return-void

    .line 116
    .restart local v0       #newText:Ljava/lang/String;
    :cond_3f
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$2;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$200(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3e
.end method
