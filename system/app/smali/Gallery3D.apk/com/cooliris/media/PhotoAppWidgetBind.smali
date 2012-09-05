.class public Lcom/cooliris/media/PhotoAppWidgetBind;
.super Landroid/app/Activity;
.source "PhotoAppWidgetBind.java"


# instance fields
.field private mApp:Lcom/cooliris/app/App;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetBind;->mApp:Lcom/cooliris/app/App;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 19
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v4, Lcom/cooliris/app/App;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/cooliris/app/App;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/PhotoAppWidgetBind;->mApp:Lcom/cooliris/app/App;

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetBind;->finish()V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetBind;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 50
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 52
    .local v13, extras:Landroid/os/Bundle;
    if-nez v13, :cond_23

    .line 53
    const-string v4, "PhotoAppWidgetBind"

    const-string v5, "Problem parsing extras to bind widget"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_22
    return-void

    .line 57
    :cond_23
    const-string v4, "appWidgetIds"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 58
    .local v9, appWidgetIds:[I
    const-string v4, "com.android.camera.appwidgetbitmaps"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 60
    .local v11, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz v9, :cond_3a

    if-eqz v11, :cond_3a

    array-length v4, v9

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_42

    .line 61
    :cond_3a
    const-string v4, "PhotoAppWidgetBind"

    const-string v5, "Problem parsing photo widget bind request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 65
    :cond_42
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 66
    .local v10, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Lcom/cooliris/media/PhotoDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4e
    array-length v4, v9

    if-ge v14, v4, :cond_98

    .line 69
    aget v2, v9, v14

    .line 70
    .local v2, appWidgetId:I
    invoke-virtual {v1, v2}, Lcom/cooliris/media/PhotoDatabaseHelper;->getWidgetInfo(I)Landroid/os/Bundle;

    move-result-object v12

    .line 71
    .local v12, data:Landroid/os/Bundle;
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/cooliris/media/PhotoDatabaseHelper;->getNextPhotoIndex(IZ)I

    move-result v3

    const-string v4, "folderID"

    const-wide/16 v5, -0x1

    invoke-virtual {v12, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "folderItems"

    invoke-virtual {v12, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/cooliris/media/PhotoDatabaseHelper;->setWidgetInfoAtDB(IIJLjava/lang/String;)Z

    .line 75
    new-instance v3, Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct {v3}, Lcom/cooliris/media/PhotoAppWidgetProvider;-><init>()V

    .line 76
    .local v3, provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    const/4 v7, 0x0

    .line 77
    .local v7, spanX:I
    const/4 v8, 0x0

    .line 78
    .local v8, spanY:I
    const-string v4, "widgetspanx"

    const/4 v5, 0x4

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 79
    const-string v4, "widgetspany"

    const/4 v5, 0x2

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v4, p0

    move v5, v2

    move-object v6, v1

    .line 81
    invoke-virtual/range {v3 .. v8}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 83
    .local v16, views:Landroid/widget/RemoteViews;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v10, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 67
    add-int/lit8 v14, v14, 0x1

    goto :goto_4e

    .line 87
    .end local v2           #appWidgetId:I
    .end local v3           #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    .end local v12           #data:Landroid/os/Bundle;
    .end local v16           #views:Landroid/widget/RemoteViews;
    :cond_98
    invoke-virtual {v1}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    goto :goto_22
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetBind;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->shutdown()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetBind;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetBind;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onResume()V

    .line 100
    return-void
.end method
