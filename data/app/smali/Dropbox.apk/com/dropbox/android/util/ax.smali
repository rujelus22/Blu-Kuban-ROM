.class final enum Lcom/dropbox/android/util/ax;
.super Lcom/dropbox/android/util/aw;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/util/aw;-><init>(Ljava/lang/String;ILcom/dropbox/android/util/av;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 24
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020093

    const v2, 0x7f090199

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/DropboxBrowser;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v2, "EXTRA_CAME_FROM_PROMO"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 32
    const v2, 0x7f09019a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09019b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 37
    return-object v0
.end method
