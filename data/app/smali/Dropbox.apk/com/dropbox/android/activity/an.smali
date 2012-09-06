.class final Lcom/dropbox/android/activity/an;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dropbox/android/activity/an;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/android/activity/an;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0x7f0900cb

    .line 225
    :goto_d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dropbox/android/activity/an;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "PROMPT"

    iget-object v3, p0, Lcom/dropbox/android/activity/an;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    const v4, 0x7f0900c9

    invoke-virtual {v3, v4}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "PICK_DIR"

    iget-object v3, p0, Lcom/dropbox/android/activity/an;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-virtual {v3, v0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v0, p0, Lcom/dropbox/android/activity/an;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a(Landroid/content/Intent;I)V

    .line 230
    return-void

    .line 224
    :cond_3f
    const v0, 0x7f0900ca

    goto :goto_d
.end method
