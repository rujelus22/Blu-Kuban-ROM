.class final Lcom/dropbox/android/activity/delegate/D;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/D;->a:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/D;->a:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/D;->a:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    invoke-static {v1, v0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->a(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;Ljava/lang/String;)Lcom/dropbox/android/activity/delegate/F;

    move-result-object v1

    .line 54
    iget-object v0, v1, Lcom/dropbox/android/activity/delegate/F;->a:Lcom/dropbox/android/activity/delegate/G;

    sget-object v2, Lcom/dropbox/android/activity/delegate/G;->a:Lcom/dropbox/android/activity/delegate/G;

    if-ne v0, v2, :cond_2c

    .line 55
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/D;->a:Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;->b(Lcom/dropbox/android/activity/delegate/NewLocalFolderDialogFragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/delegate/H;

    iget-object v1, v1, Lcom/dropbox/android/activity/delegate/F;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/delegate/H;->d(Landroid/net/Uri;)V

    .line 61
    :goto_2b
    return-void

    .line 56
    :cond_2c
    iget-object v0, v1, Lcom/dropbox/android/activity/delegate/F;->a:Lcom/dropbox/android/activity/delegate/G;

    sget-object v1, Lcom/dropbox/android/activity/delegate/G;->b:Lcom/dropbox/android/activity/delegate/G;

    if-ne v0, v1, :cond_3d

    .line 57
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v0

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/aU;->a(I)V

    goto :goto_2b

    .line 59
    :cond_3d
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v0

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/aU;->a(I)V

    goto :goto_2b
.end method
