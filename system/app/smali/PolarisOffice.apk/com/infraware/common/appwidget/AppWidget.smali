.class public Lcom/infraware/common/appwidget/AppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget.java"


# instance fields
.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/appwidget/AppWidget;->mAppWidgetId:I

    .line 11
    return-void
.end method

.method static deleteTitlePref(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 90
    const-string v2, "AppWidgetPref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public static getExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fileName"

    .prologue
    .line 98
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    .local v0, nIndex:I
    if-lez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    if-le v0, v1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 101
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 103
    .end local p0
    :cond_1e
    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fullFilepath"

    .prologue
    .line 108
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 109
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 111
    return-object p0
.end method

.method static loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v3, "AppWidgetPref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, strPath:Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 85
    .end local v1           #strPath:Ljava/lang/String;
    :goto_1b
    return-object v1

    .restart local v1       #strPath:Ljava/lang/String;
    :cond_1c
    move-object v1, v2

    goto :goto_1b
.end method

.method static saveTitlePref(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "strPath"

    .prologue
    .line 73
    const-string v2, "AppWidgetPref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method static updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "strPath"

    .prologue
    const v7, 0x7f0c0044

    .line 36
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03000a

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 37
    .local v4, remoteView:Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/infraware/polarisoffice/OfficeLauncherActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "INTCMD"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v5, "key_filename"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v5, "key_caller_pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/high16 v5, 0x800

    invoke-static {p0, p2, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 43
    .local v3, pi:Landroid/app/PendingIntent;
    if-eqz p3, :cond_4e

    .line 44
    invoke-static {p3}, Lcom/infraware/common/appwidget/AppWidget;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, ext:Ljava/lang/String;
    invoke-static {p3}, Lcom/infraware/common/appwidget/AppWidget;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, name:Ljava/lang/String;
    const-string v5, "doc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_55

    .line 47
    const v5, 0x7f0200de

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 65
    :cond_48
    :goto_48
    const v5, 0x7f0c0045

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 67
    .end local v0           #ext:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_4e
    invoke-virtual {v4, v7, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 68
    invoke-virtual {p1, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 69
    return-void

    .line 48
    .restart local v0       #ext:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_55
    const-string v5, "docx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_64

    .line 49
    const v5, 0x7f0200b2

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 50
    :cond_64
    const-string v5, "ppt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_73

    .line 51
    const v5, 0x7f0200c9

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 52
    :cond_73
    const-string v5, "pptx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_82

    .line 53
    const v5, 0x7f0200cc

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 54
    :cond_82
    const-string v5, "xls"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_91

    .line 55
    const v5, 0x7f0200d1

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 56
    :cond_91
    const-string v5, "xlsx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a0

    .line 57
    const v5, 0x7f0200e1

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 58
    :cond_a0
    const-string v5, "txt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_af

    .line 59
    const v5, 0x7f0200d6

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 60
    :cond_af
    const-string v5, "pdf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_be

    .line 61
    const v5, 0x7f0200c6

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_48

    .line 62
    :cond_be
    const-string v5, "hwp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_48

    .line 63
    const v5, 0x7f0200bd

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_48
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 29
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    aget v0, p2, v0

    invoke-static {p1, v0}, Lcom/infraware/common/appwidget/AppWidget;->deleteTitlePref(Landroid/content/Context;I)V

    .line 31
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 32
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p3

    if-lt v0, v3, :cond_8

    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 24
    return-void

    .line 18
    :cond_8
    aget v2, p3, v0

    .line 19
    .local v2, widgetId:I
    invoke-static {p1, v2}, Lcom/infraware/common/appwidget/AppWidget;->loadTitlePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, strPath:Ljava/lang/String;
    invoke-static {p1, p2, v2, v1}, Lcom/infraware/common/appwidget/AppWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
