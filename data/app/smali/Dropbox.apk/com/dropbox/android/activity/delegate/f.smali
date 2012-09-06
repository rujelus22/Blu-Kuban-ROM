.class final enum Lcom/dropbox/android/activity/delegate/f;
.super Lcom/dropbox/android/activity/delegate/a;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/a;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/b;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x2

    if-ne p4, v0, :cond_25

    .line 102
    invoke-static {}, Lcom/dropbox/android/activity/delegate/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Returned from Settings, account unlinked"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/dropbox/android/util/Z;

    const-string v2, "/"

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    const-string v1, "STORED_UID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    :cond_25
    return-void
.end method
