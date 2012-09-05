.class public Lcom/locationlabs/v3client/WindowShadeService;
.super Landroid/app/IntentService;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    const-string v0, "WindowShadeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    invoke-interface {v1}, Lw;->K()J

    move-result-wide v4

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbp;

    .line 66
    invoke-virtual {p1}, Lbp;->getId()J

    move-result-wide v7

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 67
    invoke-virtual {p1}, Lbp;->getId()J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-lez v0, :cond_e

    .line 69
    invoke-virtual {p1}, Lbp;->getContent()Ljava/util/Map;

    move-result-object v0

    const-string v7, "en"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbo;

    if-nez v0, :cond_11f

    const-string v7, "WindowShade without any en content, will use first available"

    invoke-static {v7}, Li;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbp;->getContent()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbo;

    move-object v7, v0

    :goto_56
    if-nez v7, :cond_5e

    const-string p1, "WindowShade without any content!"

    invoke-static {p1}, Li;->d(Ljava/lang/String;)V

    goto :goto_e

    :cond_5e
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.locationlabs.action.WINDOW_SHADE_SELECTED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lbo;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v9, Lcom/locationlabs/v3client/WindowShadeService;

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v9, "com.locationlabs.extra.EXTRA_APP_ID"

    invoke-virtual {p1}, Lbp;->getApplication()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.locationlabs.extra.EXTRA_SHADE_ID"

    invoke-virtual {p1}, Lbp;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {p0, v9, v8, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    const v10, 0x7f020010

    iput v10, v9, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    invoke-virtual {v7}, Lbo;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lbo;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, p0, v10, v11, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Lbo;->getTicker()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v7, 0x10

    iput v7, v9, Landroid/app/Notification;->flags:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/locationlabs/v3client/SparkleApplication;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lbp;->getApplication()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lbp;->getId()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Lbp;->getApplication()I

    move-result v0

    invoke-virtual {p1}, Lbp;->getId()J

    move-result-wide v9

    new-instance p1, Lcl;

    invoke-direct {p1}, Lcl;-><init>()V

    invoke-virtual {p1, v0}, Lcl;->setApplication(I)V

    invoke-virtual {p1, v9, v10}, Lcl;->setId(J)V

    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    invoke-virtual {p1, v9, v10}, Lcl;->setTime(J)V

    const-string v0, "message_shown"

    invoke-virtual {p1, v0}, Lcl;->setType(Ljava/lang/String;)V

    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lcg;->setTime(J)V

    const/4 v7, 0x1

    new-array v7, v7, [Lcl;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcg;->mergeWindowShadeNotifications(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    goto/16 :goto_e

    .line 74
    :cond_11b
    invoke-interface {v1, v2, v3}, Lw;->i(J)V

    .line 75
    return-void

    :cond_11f
    move-object v7, v0

    goto/16 :goto_56
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 35
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 59
    :cond_e
    :goto_e
    return-void

    .line 36
    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.locationlabs.action.WINDOW_SHADE_SELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 41
    :try_start_30
    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/WindowShadeService;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_30 .. :try_end_33} :catch_4b

    .line 49
    :goto_33
    const-string v0, "com.locationlabs.extra.EXTRA_APP_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    const-string v1, "com.locationlabs.extra.EXTRA_SHADE_ID"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 51
    if-eq v0, v3, :cond_45

    cmp-long v3, v1, v4

    if-nez v3, :cond_52

    .line 52
    :cond_45
    const-string v0, "Unable to find appId or shadeId, will not notify about message triggered"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_e

    .line 46
    :catch_4b
    move-exception v0

    const-string v0, "unable to start intent action"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_33

    .line 54
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Lcl;

    invoke-direct {v5}, Lcl;-><init>()V

    invoke-virtual {v5, v0}, Lcl;->setApplication(I)V

    invoke-virtual {v5, v1, v2}, Lcl;->setId(J)V

    div-long v0, v3, v7

    invoke-virtual {v5, v0, v1}, Lcl;->setTime(J)V

    const-string v0, "message_triggered"

    invoke-virtual {v5, v0}, Lcl;->setType(Ljava/lang/String;)V

    new-instance v0, Lcg;

    invoke-direct {v0}, Lcg;-><init>()V

    div-long v1, v3, v7

    invoke-virtual {v0, v1, v2}, Lcg;->setTime(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcl;

    aput-object v5, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcg;->mergeWindowShadeNotifications(Ljava/util/Collection;)V

    invoke-static {p0, v0, v6}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    goto :goto_e
.end method
