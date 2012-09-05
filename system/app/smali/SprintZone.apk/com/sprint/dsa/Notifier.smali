.class public Lcom/sprint/dsa/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone_Notifier"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Lcom/sprint/dsa/data/Alert;)V
    .registers 4
    .parameter "context"
    .parameter "alert"

    .prologue
    .line 113
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    check-cast v0, Landroid/app/NotificationManager;

    .line 114
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lcom/sprint/dsa/data/Alert;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 115
    return-void
.end method

.method public static sendNotification(Landroid/content/Context;Lcom/sprint/dsa/data/Alerts;Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 8
    .parameter "context"
    .parameter "alerts"
    .parameter "db"

    .prologue
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v2, zoneList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/Alert;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, otherList:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/Alert;>;"
    invoke-virtual {p1}, Lcom/sprint/dsa/data/Alerts;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 42
    const v3, 0x7f020014

    const/4 v4, 0x0

    invoke-static {p0, v2, p2, v3, v4}, Lcom/sprint/dsa/Notifier;->sendNotification(Landroid/content/Context;Ljava/util/List;Lcom/sprint/dsa/data/DbAdapter;IZ)V

    .line 44
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2e

    .line 46
    const v3, 0x7f020002

    const/4 v4, 0x1

    invoke-static {p0, v1, p2, v3, v4}, Lcom/sprint/dsa/Notifier;->sendNotification(Landroid/content/Context;Ljava/util/List;Lcom/sprint/dsa/data/DbAdapter;IZ)V

    .line 48
    :cond_2e
    return-void

    .line 32
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/Alert;

    .line 33
    .local v0, alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/Alert;->getPackId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 36
    :cond_3f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public static sendNotification(Landroid/content/Context;Ljava/util/List;Lcom/sprint/dsa/data/DbAdapter;IZ)V
    .registers 19
    .parameter "context"
    .parameter
    .parameter "db"
    .parameter "iconId"
    .parameter "forPacks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/data/Alert;",
            ">;",
            "Lcom/sprint/dsa/data/DbAdapter;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, alerts:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/Alert;>;"
    const/4 v4, 0x0

    .line 52
    .local v4, intent:Landroid/content/Intent;
    const/4 v6, -0x1

    .line 57
    .local v6, notificationId:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 58
    .local v2, alertCount:I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_77

    .line 60
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/Alert;

    .line 61
    .local v1, alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getId()I

    move-result v6

    .line 62
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getUri()Ljava/lang/String;

    move-result-object v11

    .line 63
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getExtra()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getPackId()Ljava/lang/String;

    move-result-object v13

    .line 62
    invoke-static {p0, v10, v11, v12, v13}, Lcom/sprint/dsa/Action;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 64
    const-string v10, "com.sprint.extra.launchedFromNotification"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getCampaign()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/sprint/dsa/Reporting;->reportAlertReceived(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, title:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 88
    .end local v1           #alert:Lcom/sprint/dsa/data/Alert;
    .local v3, description:Ljava/lang/String;
    :cond_3f
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 90
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 93
    .local v7, notify:Landroid/app/Notification;
    move/from16 v0, p3

    iput v0, v7, Landroid/app/Notification;->icon:I

    .line 95
    invoke-virtual {v7, p0, v9, v3, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 96
    const/16 v10, 0x10

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Landroid/app/Notification;->when:J

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_68

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v7, Landroid/app/Notification;->number:I

    .line 104
    :cond_68
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 103
    check-cast v5, Landroid/app/NotificationManager;

    .line 105
    .local v5, nm:Landroid/app/NotificationManager;
    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 106
    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 109
    return-void

    .line 73
    .end local v3           #description:Ljava/lang/String;
    .end local v5           #nm:Landroid/app/NotificationManager;
    .end local v7           #notify:Landroid/app/Notification;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #title:Ljava/lang/String;
    :cond_77
    const/4 v6, 0x0

    .line 74
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-class v10, Lcom/sprint/dsa/PageAlerts;

    invoke-direct {v4, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v10, "com.sprint.extra.forPacks"

    move/from16 v0, p4

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const v10, 0x7f08003e

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 81
    .restart local v9       #title:Ljava/lang/String;
    const v10, 0x7f08003d

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .restart local v3       #description:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/data/Alert;

    .line 84
    .restart local v1       #alert:Lcom/sprint/dsa/data/Alert;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/Alert;->getCampaign()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/sprint/dsa/Reporting;->reportAlertReceived(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;)V

    goto :goto_a6
.end method
