.class final Lcom/dropbox/android/activity/bY;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/UploadsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/UploadsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/dropbox/android/activity/bY;->a:Lcom/dropbox/android/activity/UploadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/bY;->a:Lcom/dropbox/android/activity/UploadsActivity;

    const-class v2, Lcom/dropbox/android/activity/DropboxWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "TITLE"

    iget-object v2, p0, Lcom/dropbox/android/activity/bY;->a:Lcom/dropbox/android/activity/UploadsActivity;

    const v3, 0x7f090149

    invoke-virtual {v2, v3}, Lcom/dropbox/android/activity/UploadsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/dropbox/android/activity/bY;->a:Lcom/dropbox/android/activity/UploadsActivity;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Lcom/dropbox/android/activity/UploadsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/dropbox/android/activity/bY;->a:Lcom/dropbox/android/activity/UploadsActivity;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/UploadsActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
