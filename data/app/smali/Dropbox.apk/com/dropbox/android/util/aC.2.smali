.class final enum Lcom/dropbox/android/util/aC;
.super Lcom/dropbox/android/util/aw;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/util/aw;-><init>(Ljava/lang/String;ILcom/dropbox/android/util/av;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0901a2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    if-eqz p2, :cond_f

    const-string v0, "ARG_NUM_UPLOADS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 115
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "In progress upload notification needs args."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_17
    new-instance v1, Landroid/app/Notification;

    const v0, 0x7f020093

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 123
    const-string v0, "ARG_NUM_UPLOADS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    if-ne v0, v6, :cond_46

    .line 125
    const v0, 0x7f0901a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_34
    const-string v2, "ACTION_UPLOADS_TAB"

    invoke-static {p1, v2}, Lcom/dropbox/android/util/aw;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 132
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 137
    return-object v1

    .line 127
    :cond_46
    const v2, 0x7f0901a4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method
