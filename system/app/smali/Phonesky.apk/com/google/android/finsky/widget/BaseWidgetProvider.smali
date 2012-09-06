.class public abstract Lcom/google/android/finsky/widget/BaseWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BaseWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method protected static getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 11
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 193
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v9

    const-string v5, "androidmarket"

    invoke-static {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->createAddAccountOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    move-object v1, v0

    move-object v4, v0

    move-object v6, v0

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 202
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p0, v9, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected static getBoundingBoxes(Landroid/content/Context;I)[I
    .registers 10
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const v3, 0x7f0b008a

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    const/4 v2, 0x4

    new-array v1, v2, [I

    invoke-static {p0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v4

    const v2, 0x7f0b008b

    invoke-static {p0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v5

    invoke-static {p0, v3}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0b008b

    invoke-static {p0, v2}, Lcom/google/android/finsky/widget/WidgetUtils;->getDips(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v7

    .line 66
    .local v1, results:[I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2f

    .line 76
    :goto_2e
    return-object v1

    .line 71
    :cond_2f
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, result:Landroid/os/Bundle;
    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 73
    const-string v2, "appWidgetMinHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 74
    const-string v2, "appWidgetMaxWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v6

    .line 75
    const-string v2, "appWidgetMaxHeight"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    goto :goto_2e
.end method

.method private sendAnalytics(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 158
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    .line 161
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "widget"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "num"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 167
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 169
    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 170
    invoke-static {p1, v1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getBoundingBoxes(Landroid/content/Context;I)[I

    move-result-object v2

    .line 171
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v3

    const-class v4, Lcom/google/android/finsky/widget/BaseWidgetProvider;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v3, "widgetType"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    const-string v1, "appWidgetMinWidth"

    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    const-string v1, "appWidgetMinHeight"

    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    const-string v1, "appWidgetMaxWidth"

    const/4 v3, 0x2

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    const-string v1, "appWidgetMaxHeight"

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    :cond_90
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    invoke-interface {v1, v6, v6, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static varargs update(Landroid/content/Context;Ljava/lang/Class;[I)V
    .registers 5
    .parameter "context"
    .parameter
    .parameter "appWidgetIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;[I)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    return-void
.end method


# virtual methods
.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .parameter "context"

    .prologue
    .line 47
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onDefaultConfiguration(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;I)V
    .registers 9
    .parameter "context"
    .parameter "manager"
    .parameter "intent"
    .parameter "appWidgetId"

    .prologue
    .line 145
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v1

    .line 146
    .local v1, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    const-string v2, "type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, backend:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, p4, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->put(Ljava/lang/Class;ILjava/lang/String;)V

    .line 148
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p4, v2, v3

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 149
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 9
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 129
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v4

    .line 130
    .local v4, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_15

    aget v0, v1, v2

    .line 131
    .local v0, appWidgetId:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/finsky/widget/WidgetTypeMap;->delete(Ljava/lang/Class;I)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 133
    .end local v0           #appWidgetId:I
    :cond_15
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 84
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string v7, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    const-string v7, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 89
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->sendAnalytics(Landroid/content/Context;Landroid/content/Intent;)V

    .line 92
    :cond_2f
    const-string v7, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 93
    const-string v7, "appWidgetId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, appWidgetId:I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, p2, v1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->onDefaultConfiguration(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;I)V

    .line 99
    .end local v1           #appWidgetId:I
    :cond_44
    const-string v7, "com.android.vending.action.APPWIDGET_UPDATE_CONSUMPTION_DATA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 100
    const-string v7, "backendId"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 102
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v6

    .line 103
    .local v6, typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    const-string v7, "backendId"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, backendId:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v3}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v4

    .line 106
    .local v4, backendWidgetIds:[I
    invoke-virtual {p0, p1, v2, v4}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "all"

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/widget/WidgetTypeMap;->getWidgetsOfExactType(Ljava/lang/Class;Ljava/lang/String;)[I

    move-result-object v5

    .line 109
    .local v5, multiCorpusWidgetIds:[I
    invoke-virtual {p0, p1, v2, v5}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 115
    .end local v3           #backendId:I
    .end local v4           #backendWidgetIds:[I
    .end local v5           #multiCorpusWidgetIds:[I
    .end local v6           #typeMap:Lcom/google/android/finsky/widget/WidgetTypeMap;
    :cond_7a
    :goto_7a
    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a7

    const-string v7, "appWidgetIds"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a7

    .line 118
    sget-object v7, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    invoke-virtual {p0, p1, v2, v7}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 125
    :cond_a7
    :goto_a7
    return-void

    .line 111
    :cond_a8
    const-string v7, "No backend specified for update!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7a

    .line 122
    :cond_b0
    const-string v7, "Refusing to update all widgets; need to narrow scope"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a7
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/BaseWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 138
    return-void
.end method

.method protected varargs abstract updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end method
