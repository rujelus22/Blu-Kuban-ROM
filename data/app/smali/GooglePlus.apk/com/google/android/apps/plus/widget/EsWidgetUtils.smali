.class public Lcom/google/android/apps/plus/widget/EsWidgetUtils;
.super Ljava/lang/Object;
.source "EsWidgetUtils.java"


# direct methods
.method public static configureWidgetAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/RemoteViews;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "rv"

    .prologue
    const v4, 0x7f09029e

    .line 45
    if-nez p1, :cond_1e

    .line 46
    const v2, 0x7f080273

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 49
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    .line 50
    .local v1, streamActivityIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 52
    .local v0, clickIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 54
    .end local v0           #clickIntent:Landroid/app/PendingIntent;
    .end local v1           #streamActivityIntent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method public static deleteCircleId(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 106
    const-string v1, "com.google.android.apps.plus.widget.EsWidgetUtils"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleName_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seenSync_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_57

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    :goto_56
    return-void

    .line 114
    :cond_57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_56
.end method

.method public static getAllWidgetCircleIds(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v7, widgetCircleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v8, widgetCircleIdsSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 123
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/google/android/apps/plus/widget/EsWidgetProvider;

    invoke-direct {v9, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 125
    .local v1, appWidgetIds:[I
    array-length v9, v1

    if-lez v9, :cond_38

    .line 126
    move-object v3, v1

    .local v3, arr$:[I
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1f
    if-ge v5, v6, :cond_38

    aget v0, v3, v5

    .line 127
    .local v0, appWidgetId:I
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, circleId:Ljava/lang/String;
    if-eqz v4, :cond_35

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    .line 129
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 134
    .end local v0           #appWidgetId:I
    .end local v3           #arr$:[I
    .end local v4           #circleId:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_38
    return-object v7
.end method

.method public static loadCircleId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 83
    const-string v2, "com.google.android.apps.plus.widget.EsWidgetUtils"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, prefs:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "circleId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, circleId:Ljava/lang/String;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 86
    const/4 v0, 0x0

    .line 88
    :cond_28
    return-object v0
.end method

.method public static loadCircleName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 92
    const-string v2, "com.google.android.apps.plus.widget.EsWidgetUtils"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    .local v1, prefs:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "circleName_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, circleName:Ljava/lang/String;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 95
    const/4 v0, 0x0

    .line 97
    :cond_28
    return-object v0
.end method

.method public static saveCircleInfo(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "circleId"
    .parameter "circleName"

    .prologue
    .line 58
    const-string v1, "com.google.android.apps.plus.widget.EsWidgetUtils"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_22

    const-string p2, ""

    .end local p2
    :cond_22
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleName_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_3c

    const-string p3, ""

    .end local p3
    :cond_3c
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_49

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    :goto_48
    return-void

    .line 67
    :cond_49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_48
.end method

.method public static saveSeenSync(Landroid/content/Context;IZ)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "seenSync"

    .prologue
    .line 72
    const-string v1, "com.google.android.apps.plus.widget.EsWidgetUtils"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seenSync_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_2b

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :goto_2a
    return-void

    .line 78
    :cond_2b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2a
.end method

.method public static updateAllWidgets(Landroid/content/Context;Z)V
    .registers 10
    .parameter "context"
    .parameter "onSyncComplete"

    .prologue
    .line 138
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 139
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/google/android/apps/plus/widget/EsWidgetProvider;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 141
    .local v1, appWidgetIds:[I
    array-length v6, v1

    if-lez v6, :cond_28

    .line 142
    if-eqz p1, :cond_22

    .line 143
    move-object v3, v1

    .local v3, arr$:[I
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_17
    if-ge v4, v5, :cond_22

    aget v0, v3, v4

    .line 144
    .local v0, appWidgetId:I
    const/4 v6, 0x1

    invoke-static {p0, v0, v6}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->saveSeenSync(Landroid/content/Context;IZ)V

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 147
    .end local v0           #appWidgetId:I
    .end local v3           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_22
    const v6, 0x7f09029d

    invoke-virtual {v2, v1, v6}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 149
    :cond_28
    return-void
.end method
