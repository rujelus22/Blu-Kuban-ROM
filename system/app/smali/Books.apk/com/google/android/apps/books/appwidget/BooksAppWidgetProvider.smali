.class public Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BooksAppWidgetProvider.java"


# static fields
.field private static sWidgetState:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0f0021

    const/high16 v10, 0x800

    const v9, 0x7f0f0023

    const/4 v2, 0x0

    .line 29
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 36
    if-eqz p2, :cond_11

    .line 37
    sput-object p2, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->sWidgetState:Landroid/widget/RemoteViews;

    .line 40
    :cond_11
    array-length v4, p0

    move v1, v2

    :goto_13
    if-ge v1, v4, :cond_94

    aget v5, p0, v1

    .line 42
    sget-object v0, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->sWidgetState:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_84

    .line 43
    sget-object v0, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->sWidgetState:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 52
    :goto_21
    const-string v6, "BooksAppWidget"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 53
    const-string v6, "BooksAppWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update widget with appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_42
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/android/apps/books/appwidget/BooksAppWidgetService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v7, "appWidgetId"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v5, v9, v6}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 62
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    invoke-static {p1, v2, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 66
    invoke-virtual {v0, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    const v7, 0x7f0f0022

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.apps.books.intent.action.READ"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v2, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 73
    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 75
    invoke-virtual {v3, v5, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 45
    :cond_84
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030008

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0, v9, v11}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    goto :goto_21

    .line 77
    :cond_94
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 25
    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/google/android/apps/books/appwidget/BooksAppWidgetProvider;->updateWidgets([ILandroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 26
    return-void
.end method
