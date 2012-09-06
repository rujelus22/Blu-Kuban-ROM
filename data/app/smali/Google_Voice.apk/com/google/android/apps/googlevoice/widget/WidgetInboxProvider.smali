.class public Lcom/google/android/apps/googlevoice/widget/WidgetInboxProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetInboxProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 9
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 23
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_9

    .line 24
    const-string v4, "VoiceAppWidgetProvider.onUpdated: called"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 26
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 27
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 28
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getWidgetRenderer()Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    move-result-object v1

    .line 29
    .local v1, renderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getWidgetState()Lcom/google/android/apps/googlevoice/widget/WidgetState;

    move-result-object v3

    .line 30
    .local v3, widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    .line 31
    .local v2, voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-interface {v1, p1, v3, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;->render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 32
    return-void
.end method
