.class final enum Lcom/dropbox/android/util/az;
.super Lcom/dropbox/android/util/aw;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/util/aw;-><init>(Ljava/lang/String;ILcom/dropbox/android/util/av;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f090197

    const/4 v5, 0x0

    .line 61
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020093

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 65
    const-string v1, "ACTION_CAMERA_UPLOAD_DETAILS"

    invoke-static {p1, v1}, Lcom/dropbox/android/util/aw;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 66
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 67
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090198

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 72
    return-object v0
.end method
