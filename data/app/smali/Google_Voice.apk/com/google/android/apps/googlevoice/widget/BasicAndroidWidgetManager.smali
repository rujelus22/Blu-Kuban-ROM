.class public Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;
.super Ljava/lang/Object;
.source "BasicAndroidWidgetManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetManager;


# instance fields
.field protected appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->context:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 23
    return-void
.end method


# virtual methods
.method public getRemoteViews(I)Landroid/widget/RemoteViews;
    .registers 4
    .parameter "layoutId"

    .prologue
    .line 27
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public loadMessage(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/googlevoice/widget/WidgetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.LOAD_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.LOAD_MESSAGE_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    return-void
.end method

.method public notifyDataChanged(II)V
    .registers 3
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 38
    return-void
.end method

.method public updateViews(Ljava/lang/Class;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter
    .parameter "remoteViews"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, widgetProvider:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, thisWidget:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 34
    return-void
.end method
