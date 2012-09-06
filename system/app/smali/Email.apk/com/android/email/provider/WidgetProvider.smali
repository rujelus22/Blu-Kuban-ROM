.class public Lcom/android/email/provider/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/WidgetProvider$WidgetService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 65
    const-string v0, "EmailWidget"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_f
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/widget/WidgetManager;->deleteWidgets(Landroid/content/Context;[I)V

    .line 68
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 69
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 47
    const-string v0, "EmailWidget"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 50
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 39
    const-string v0, "EmailWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_f
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 74
    const-string v0, "EmailWidget"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 56
    const-string v0, "EmailWidget"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 59
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/email/widget/WidgetManager;->updateWidgets(Landroid/content/Context;[I)V

    .line 60
    return-void
.end method
