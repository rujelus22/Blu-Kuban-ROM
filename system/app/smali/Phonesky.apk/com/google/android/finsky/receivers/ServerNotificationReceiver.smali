.class public Lcom/google/android/finsky/receivers/ServerNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServerNotificationReceiver.java"


# static fields
.field private static sNotificationManager:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static initialize(Lcom/google/android/finsky/utils/Notifier;)V
    .registers 1
    .parameter "notificationManager"

    .prologue
    .line 44
    sput-object p0, Lcom/google/android/finsky/receivers/ServerNotificationReceiver;->sNotificationManager:Lcom/google/android/finsky/utils/Notifier;

    .line 45
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "google.com"

    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "SERVER_NOTIFICATION"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 76
    :cond_26
    :goto_26
    return-void

    .line 56
    :cond_27
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/ServerNotificationReceiver;->setResultCode(I)V

    .line 59
    const-string v4, "server_notification_message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, notificationMessage:Ljava/lang/String;
    const-string v4, "server_dialog_message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, dialogMessage:Ljava/lang/String;
    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    .line 67
    const-string v4, "server_notification_status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    const-string v4, "server_notification_status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, notificationStatus:Ljava/lang/String;
    :goto_49
    const-string v4, "server_notification_title"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    const-string v4, "server_notification_title"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, notificationTitle:Ljava/lang/String;
    :goto_57
    sget-object v4, Lcom/google/android/finsky/receivers/ServerNotificationReceiver;->sNotificationManager:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4, v3, v2, v1}, Lcom/google/android/finsky/utils/Notifier;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 67
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v3           #notificationTitle:Ljava/lang/String;
    :cond_5d
    const v4, 0x7f0701ae

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 70
    .restart local v2       #notificationStatus:Ljava/lang/String;
    :cond_65
    const v4, 0x7f0701af

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_57
.end method
