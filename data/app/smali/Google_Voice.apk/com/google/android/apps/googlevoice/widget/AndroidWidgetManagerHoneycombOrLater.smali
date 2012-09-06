.class public Lcom/google/android/apps/googlevoice/widget/AndroidWidgetManagerHoneycombOrLater;
.super Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;
.source "AndroidWidgetManagerHoneycombOrLater.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/widget/BasicAndroidWidgetManager;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public notifyDataChanged(II)V
    .registers 4
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/AndroidWidgetManagerHoneycombOrLater;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 20
    return-void
.end method
