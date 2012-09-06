.class final Lcom/dropbox/android/activity/P;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/FavoritesActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/FavoritesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dropbox/android/activity/P;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/P;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    const-class v2, Lcom/dropbox/android/activity/DropboxWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v1, "TITLE"

    iget-object v2, p0, Lcom/dropbox/android/activity/P;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    const v3, 0x7f090149

    invoke-virtual {v2, v3}, Lcom/dropbox/android/activity/FavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/dropbox/android/activity/P;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Lcom/dropbox/android/activity/FavoritesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/dropbox/android/activity/P;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/FavoritesActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
