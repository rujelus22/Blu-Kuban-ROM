.class public Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 13

    const/16 v10, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SCH-I405"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_1f
    if-lt v0, v5, :cond_71

    :cond_21
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_91

    move v0, v1

    :goto_2f
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v1, :cond_93

    :goto_3b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->v(Landroid/content/Context;)Z

    move-result v2

    if-eqz v0, :cond_43

    if-nez v1, :cond_61

    :cond_43
    if-nez v2, :cond_61

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-T839"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-T849"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_70

    :cond_61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sdgtl.mediahub.spr.widget.retry"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_70
    return-void

    :cond_71
    aget v6, v4, v0

    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/widget/ClassicWidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030061

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v8, 0x7f0d0146

    invoke-virtual {v7, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f0d0158

    invoke-virtual {v7, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v3, v6, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_91
    move v0, v2

    goto :goto_2f

    :cond_93
    move v1, v2

    goto :goto_3b
.end method
