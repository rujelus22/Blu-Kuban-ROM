.class public Lcom/sec/android/app/snsaccounttw/SnsAccountTwBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SnsAccountTwBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, action:Ljava/lang/String;
    const-string v12, "com.sec.android.app.sns.action.RETRY_LOGIN_TWITTER"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "com.sec.android.app.sns.action.RETRY_LOGIN_TWITTER_BY_APPS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    .line 52
    :cond_14
    const-string v12, "SnsAccountTw"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SnsAccountTwBroadcastReceiver : onReceive() : received~ :action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    move-object v10, v12

    check-cast v10, Landroid/app/NotificationManager;

    .line 57
    .local v10, notiMgr:Landroid/app/NotificationManager;
    const-string v12, "SnsAccountTw"

    const-string v13, "SnsAccountTwBroadcastReceiver : RETRY_LOGIN_NOTIFICATION : spType = 2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v8, 0x0

    .line 64
    .local v8, notiIntent:Landroid/content/Intent;
    :try_start_41
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.sec.android.app.snsaccounttw.RETRY_LOGIN_TWITTER"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_96

    .line 66
    .end local v8           #notiIntent:Landroid/content/Intent;
    .local v9, notiIntent:Landroid/content/Intent;
    const/high16 v12, 0x80

    :try_start_4a
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    const-string v12, "RetryLogin"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 70
    .local v6, launchIntent:Landroid/app/PendingIntent;
    const v11, 0x7f060023

    .line 71
    .local v11, titleID:I
    const v5, 0x7f020002

    .line 73
    .local v5, iconID:I
    new-instance v7, Landroid/app/Notification;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v7, v5, v12, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 75
    .local v7, noti:Landroid/app/Notification;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f060024

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12, v13, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 78
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 79
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v12, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v2, v12}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_95

    .line 80
    const/4 v12, 0x2

    invoke-virtual {v10, v12, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_95} :catch_d1

    .line 98
    .end local v2           #am:Landroid/accounts/AccountManager;
    .end local v5           #iconID:I
    .end local v6           #launchIntent:Landroid/app/PendingIntent;
    .end local v7           #noti:Landroid/app/Notification;
    .end local v9           #notiIntent:Landroid/content/Intent;
    .end local v10           #notiMgr:Landroid/app/NotificationManager;
    .end local v11           #titleID:I
    :cond_95
    :goto_95
    return-void

    .line 82
    .restart local v8       #notiIntent:Landroid/content/Intent;
    .restart local v10       #notiMgr:Landroid/app/NotificationManager;
    :catch_96
    move-exception v4

    .line 83
    .local v4, e:Ljava/lang/Exception;
    :goto_97
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_95

    .line 87
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #notiIntent:Landroid/content/Intent;
    .end local v10           #notiMgr:Landroid/app/NotificationManager;
    :cond_9b
    const-string v12, "com.sec.android.app.sns.action.DEBUG"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_95

    .line 89
    const-string v12, "DebugMode"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 91
    .local v3, debugMode:I
    const-string v12, "SnsAccountTw"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SnsAccountTwBroadcastReceiver : DEBUG - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v12, 0x1

    if-ne v3, v12, :cond_cc

    .line 94
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/sec/android/app/snsaccounttw/util/SnsAccountTwUtil;->setDebugMode(Z)V

    goto :goto_95

    .line 96
    :cond_cc
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/sec/android/app/snsaccounttw/util/SnsAccountTwUtil;->setDebugMode(Z)V

    goto :goto_95

    .line 82
    .end local v3           #debugMode:I
    .restart local v9       #notiIntent:Landroid/content/Intent;
    .restart local v10       #notiMgr:Landroid/app/NotificationManager;
    :catch_d1
    move-exception v4

    move-object v8, v9

    .end local v9           #notiIntent:Landroid/content/Intent;
    .restart local v8       #notiIntent:Landroid/content/Intent;
    goto :goto_97
.end method
