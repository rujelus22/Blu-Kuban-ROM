.class final enum Lcom/dropbox/android/activity/delegate/K;
.super Lcom/dropbox/android/activity/delegate/I;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/I;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/J;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/DropboxWebViewActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v1, "TITLE"

    const v2, 0x7f090149

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {p2, v0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 32
    return-void
.end method
