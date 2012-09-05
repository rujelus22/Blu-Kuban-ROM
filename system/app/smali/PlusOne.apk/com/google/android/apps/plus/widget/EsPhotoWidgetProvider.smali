.class public Lcom/google/android/apps/plus/widget/EsPhotoWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "EsPhotoWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0d01ad

    const/4 v5, 0x1

    const v4, 0x7f0d01b1

    .line 80
    const-string v0, "EsPhotoWidgetProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 81
    const-string v0, "EsPhotoWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureWidget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2e
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0300b5

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/plus/widget/EsPhotoWidgetService;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {v2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v1, p2, v4, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 97
    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 98
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadSeenSync(Landroid/content/Context;I)Z

    move-result v0

    .line 99
    if-eqz v0, :cond_98

    const v0, 0x7f0701c2

    :goto_60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/plus/widget/EsPhotoWidgetProvider;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v3, "com.google.android.apps.plus.widget.PHOTO_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {v2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 113
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->configureWidgetAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/RemoteViews;)V

    .line 115
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 116
    return-void

    .line 99
    :cond_98
    const v0, 0x7f0701c1

    goto :goto_60
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    const-string v2, "EsPhotoWidgetProvider"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 53
    const-string v2, "EsPhotoWidgetProvider"

    const-string v4, "onReceive"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 57
    .local v17, action:Ljava/lang/String;
    const-string v2, "com.google.android.apps.plus.widget.PHOTO_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    .line 59
    .local v3, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v3, :cond_6e

    .line 60
    const-string v2, "com.google.android.apps.plus.widget.PHOTO_ID"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 61
    .local v18, photoExtra:J
    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_72

    const/4 v12, 0x0

    .line 62
    .local v12, photoId:Ljava/lang/Long;
    :goto_35
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v20

    .line 69
    .local v20, photoViewIntent:Landroid/content/Intent;
    const-string v2, "album_name"

    const v4, 0x7f07006e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const v2, 0x10008000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v3           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v12           #photoId:Ljava/lang/Long;
    .end local v18           #photoExtra:J
    .end local v20           #photoViewIntent:Landroid/content/Intent;
    :cond_6e
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    return-void

    .line 61
    .restart local v3       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v18       #photoExtra:J
    :cond_72
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_35
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 36
    const-string v2, "EsPhotoWidgetProvider"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 37
    const-string v2, "EsPhotoWidgetProvider"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_10
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 41
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v2, p3

    if-ge v1, v2, :cond_20

    .line 42
    aget v2, p3, v1

    invoke-static {p1, v0, v2}, Lcom/google/android/apps/plus/widget/EsPhotoWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 44
    :cond_20
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 45
    return-void
.end method
