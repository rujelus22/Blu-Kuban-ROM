.class final Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/content/Intent;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appWidgetIds:[I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nowPlaying:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;[ILandroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$appWidgetIds:[I

    iput-object p3, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$nowPlaying:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 127
    iget-object v8, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 131
    .local v3, gm:Landroid/appwidget/AppWidgetManager;
    iget-object v0, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$appWidgetIds:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_a
    if-ge v4, v5, :cond_48

    aget v6, v0, v4

    .line 133
    .local v6, nextWidgetId:I
    :try_start_e
    iget-object v8, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->getWidgetConfig(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    invoke-static {v8, v6}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->access$000(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    move-result-object v1

    .line 134
    .local v1, config:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    if-eqz v1, :cond_26

    .line 135
    iget-object v8, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider$1;->val$nowPlaying:Landroid/content/Intent;

    invoke-static {v8, v9, v1}, Lcom/google/android/music/NowPlayingRemoteViewUtils;->createViews(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 137
    .local v7, views:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_23

    .line 138
    invoke-virtual {v3, v6, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 131
    .end local v1           #config:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    .end local v7           #views:Landroid/widget/RemoteViews;
    :cond_23
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 142
    .restart local v1       #config:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    :cond_26
    const-string v8, "NowPlayingWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find config for widget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_3f

    goto :goto_23

    .line 144
    .end local v1           #config:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    :catch_3f
    move-exception v2

    .line 145
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "NowPlayingWidget"

    const-string v9, "Failed to create views for Music widget"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 148
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v6           #nextWidgetId:I
    :cond_48
    return-void
.end method
