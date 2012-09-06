.class public Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;
.super Lcom/google/android/finsky/widget/BaseWidgetProvider;
.source "RecommendedWidgetProvider.java"


# static fields
.field private static final VIEW_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->VIEW_IDS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x9ft 0x1t 0x8t 0x7ft
        0xcct 0x1t 0x8t 0x7ft
        0x93t 0x1t 0x8t 0x7ft
        0xcet 0x1t 0x8t 0x7ft
        0xcdt 0x1t 0x8t 0x7ft
        0xd0t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/widget/BaseWidgetProvider;-><init>()V

    return-void
.end method

.method private static varargs getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;
    .registers 9
    .parameter "context"
    .parameter "visibleIds"

    .prologue
    .line 122
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0400e2

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v4, views:Landroid/widget/RemoteViews;
    const v5, 0x7f080196

    const v6, 0x7f0200a5

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 125
    const v5, 0x7f080197

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    sget-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->VIEW_IDS:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v2, :cond_2d

    aget v3, v0, v1

    .line 128
    .local v3, viewId:I
    const/16 v5, 0x8

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 131
    .end local v3           #viewId:I
    :cond_2d
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v2, :cond_3b

    aget v3, v0, v1

    .line 132
    .restart local v3       #viewId:I
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 135
    .end local v3           #viewId:I
    :cond_3b
    return-object v4
.end method

.method private static getWidgetWithTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0801cc

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v4, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 107
    const v1, 0x7f0801cd

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsViewService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://market/factory/for/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 115
    const v1, 0x7f080197

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    :cond_4c
    return-object v0
.end method

.method private static showAccountsNeeded(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getAddAccountIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 93
    .local v0, operation:Landroid/app/PendingIntent;
    const v1, 0x7f0700ff

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V

    .line 94
    return-void
.end method

.method private static showConfigurationNeeded(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;

    invoke-static {p0, v0, p1}, Lcom/google/android/finsky/widget/TrampolineActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 88
    const v1, 0x7f070243

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V

    .line 89
    return-void
.end method

.method public static showData(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "title"

    .prologue
    .line 75
    invoke-static {p0, p2, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getWidgetWithTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 76
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 77
    return-void
.end method

.method public static showError(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "errorMessage"

    .prologue
    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f08019f

    aput v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 81
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f080040

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 83
    return-void
.end method

.method private static showInteractiveError(Landroid/content/Context;IILandroid/app/PendingIntent;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "errorMsgResId"
    .parameter "operation"

    .prologue
    .line 98
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 100
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0801cf

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    const v1, 0x7f080193

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 103
    return-void

    .line 98
    :array_22
    .array-data 0x4
        0xcet 0x1t 0x8t 0x7ft
        0x93t 0x1t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "newOptions"

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 46
    const v0, 0x7f0801cc

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 47
    return-void
.end method

.method protected varargs updateWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 53
    array-length v3, p3

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_3e

    aget v4, p3, v0

    .line 54
    if-nez v2, :cond_17

    .line 55
    invoke-static {p1, v4}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showAccountsNeeded(Landroid/content/Context;I)V

    .line 53
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 59
    :cond_17
    invoke-static {p1}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Landroid/content/Context;)Lcom/google/android/finsky/widget/WidgetTypeMap;

    move-result-object v5

    const-class v6, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/finsky/widget/WidgetTypeMap;->get(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v5

    .line 61
    if-nez v5, :cond_27

    .line 62
    invoke-static {p1, v4}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showConfigurationNeeded(Landroid/content/Context;I)V

    goto :goto_14

    .line 65
    :cond_27
    invoke-static {v5}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v5

    .line 67
    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0x7f0801d0

    aput v7, v6, v1

    invoke-static {p1, v6}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->getBaseWithVisibleViews(Landroid/content/Context;[I)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 68
    invoke-virtual {p2, v4, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 70
    invoke-static {p1, v4, v5}, Lcom/google/android/finsky/services/LoadRecommendationsService;->load(Landroid/content/Context;II)V

    goto :goto_14

    .line 72
    :cond_3e
    return-void
.end method
