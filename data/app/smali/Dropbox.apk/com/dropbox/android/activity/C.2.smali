.class final Lcom/dropbox/android/activity/C;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/DropboxCreateShortcut;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/DropboxCreateShortcut;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 65
    iget-object v0, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    iget-object v1, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->i()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    iget-object v3, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-virtual {v3}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->i()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02005d

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->a(Lcom/dropbox/android/activity/DropboxCreateShortcut;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/dropbox/android/activity/C;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->finish()V

    .line 70
    :cond_31
    return-void
.end method
