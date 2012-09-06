.class public Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;
.super Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0b00c0

    const/4 v5, 0x0

    .line 46
    const-string v0, "ok"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_3d

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02012a

    invoke-virtual {p0, v6}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v0, 0x0

    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b01ef

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/c2dm/C2dmReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v0, -0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 50
    :cond_3d
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscription registration error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 39
    return-void
.end method
