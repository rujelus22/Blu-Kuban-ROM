.class final Lcom/dropbox/android/activity/delegate/E;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/E;->b:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/E;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/E;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/E;->b:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    return-void

    .line 77
    :cond_24
    const/4 v0, 0x0

    goto :goto_20
.end method
