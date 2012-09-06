.class final enum Lcom/dropbox/android/util/aD;
.super Lcom/dropbox/android/util/aw;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
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
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 143
    if-eqz p2, :cond_c

    const-string v0, "ARG_NUM_UPLOADS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 144
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upload done notification needs args."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_14
    const-string v0, "ARG_NUM_UPLOADS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    if-ne v0, v2, :cond_48

    .line 150
    const v0, 0x7f0901a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_23
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020093

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 160
    const-string v2, "ACTION_UPLOADS_TAB"

    invoke-static {p1, v2}, Lcom/dropbox/android/util/aw;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 161
    const v3, 0x7f0901a5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 165
    const/16 v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 167
    return-object v1

    .line 152
    :cond_48
    const v1, 0x7f0901a7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method
