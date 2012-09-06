.class final Lcom/dropbox/android/activity/af;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryPickerFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dropbox/android/activity/af;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/android/activity/af;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/GalleryPickerFragment;->X:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0x7f0900cb

    .line 124
    :goto_d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dropbox/android/activity/af;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "PROMPT"

    iget-object v3, p0, Lcom/dropbox/android/activity/af;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    const v4, 0x7f0900c9

    invoke-virtual {v3, v4}, Lcom/dropbox/android/activity/GalleryPickerFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "PICK_DIR"

    iget-object v3, p0, Lcom/dropbox/android/activity/af;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v3, v0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/dropbox/android/activity/af;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/activity/GalleryPickerFragment;->a(Landroid/content/Intent;I)V

    .line 129
    return-void

    .line 123
    :cond_3f
    const v0, 0x7f0900ca

    goto :goto_d
.end method
