.class Lcom/google/android/music/CreatePlaylistDialog$1;
.super Ljava/lang/Object;
.source "CreatePlaylistDialog.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/CreatePlaylistDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private defaultname:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/CreatePlaylistDialog;


# direct methods
.method constructor <init>(Lcom/google/android/music/CreatePlaylistDialog;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->defaultname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #calls: Lcom/google/android/music/CreatePlaylistDialog;->makePlaylistName()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/CreatePlaylistDialog;->access$000(Lcom/google/android/music/CreatePlaylistDialog;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->defaultname:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public taskCompleted()V
    .registers 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$100(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    .line 89
    .local v0, userTypedSomethingIn:Z
    :goto_11
    if-nez v0, :cond_27

    .line 90
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$100(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->defaultname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/google/android/music/CreatePlaylistDialog$1;->this$0:Lcom/google/android/music/CreatePlaylistDialog;

    #getter for: Lcom/google/android/music/CreatePlaylistDialog;->mPlaylistName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/google/android/music/CreatePlaylistDialog;->access$100(Lcom/google/android/music/CreatePlaylistDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 93
    :cond_27
    return-void

    .line 86
    .end local v0           #userTypedSomethingIn:Z
    :cond_28
    const/4 v0, 0x0

    goto :goto_11
.end method
