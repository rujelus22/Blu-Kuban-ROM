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

    .line 125
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 45
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 46
    const-string v0, "EmailWidget"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/provider/WidgetProvider$WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 49
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 54
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 55
    const-string v0, "EmailWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_e
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 63
    .local v3, extras:Landroid/os/Bundle;
    const-string v9, "EmailWidgetProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v9, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    if-eqz v3, :cond_3e

    .line 65
    const-string v9, "appWidgetIds"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 66
    .local v1, appWidgetIds:[I
    if-eqz v1, :cond_3d

    array-length v9, v1

    if-lez v9, :cond_3d

    .line 67
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v9

    invoke-virtual {v9, p1, v1}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidgets(Landroid/content/Context;[I)V

    .line 118
    .end local v1           #appWidgetIds:[I
    :cond_3d
    :goto_3d
    return-void

    .line 69
    :cond_3e
    const-string v9, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    if-eqz v3, :cond_64

    const-string v9, "appWidgetId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 71
    const-string v9, "appWidgetId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 73
    .local v8, widgetId:I
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v7

    .line 74
    .local v7, widget:Lcom/android/email/widget/EmailWidget;
    if-eqz v7, :cond_3d

    .line 76
    invoke-virtual {v7}, Lcom/android/email/widget/EmailWidget;->onDeleted()V

    goto :goto_3d

    .line 79
    .end local v7           #widget:Lcom/android/email/widget/EmailWidget;
    .end local v8           #widgetId:I
    :cond_64
    const-string v9, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 80
    const-string v9, "widgetId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 81
    .restart local v8       #widgetId:I
    const/4 v9, 0x1

    new-array v1, v9, [I

    aput v8, v1, v12

    .line 82
    .restart local v1       #appWidgetIds:[I
    if-gez v8, :cond_93

    .line 83
    const-string v9, "EmailWidgetProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid widgetId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 86
    :cond_93
    const-string v9, "widgetspanx"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 87
    .local v5, spanX:I
    const-string v9, "widgetspany"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 88
    .local v6, spanY:I
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/widget/WidgetManager;->getCreatedWidgetSize()I

    move-result v2

    .line 89
    .local v2, createdWidgetSize:I
    if-lez v2, :cond_e1

    .line 90
    invoke-static {p1, v8, v5, v6}, Lcom/android/email/widget/EmailWidget;->storeSizeInformation(Landroid/content/Context;III)Z

    move-result v4

    .line 91
    .local v4, needUpdate:Z
    if-eqz v4, :cond_d5

    if-eqz v1, :cond_d5

    array-length v9, v1

    if-lez v9, :cond_d5

    .line 92
    const-string v9, "EmailWidgetProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIDGET_RESIZE called and created widgetSize is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v9

    invoke-virtual {v9, p1, v1}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidgets(Landroid/content/Context;[I)V

    goto/16 :goto_3d

    .line 95
    :cond_d5
    const-string v9, "EmailWidgetProvider"

    const-string v10, "WIDGET_RESIZE called and don\'t need to update\'"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3d

    .line 99
    .end local v4           #needUpdate:Z
    :cond_e1
    const-string v9, "EmailWidgetProvider"

    const-string v10, "WIDGET_RESIZE called and created widgetSize is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3d

    .line 116
    .end local v1           #appWidgetIds:[I
    .end local v2           #createdWidgetSize:I
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    .end local v8           #widgetId:I
    :cond_ed
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3d
.end method
