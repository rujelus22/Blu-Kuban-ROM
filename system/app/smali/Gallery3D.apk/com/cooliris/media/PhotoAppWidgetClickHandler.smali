.class public Lcom/cooliris/media/PhotoAppWidgetClickHandler;
.super Landroid/app/Activity;
.source "PhotoAppWidgetClickHandler.java"


# static fields
.field private static appWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 31
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 46
    const-string v4, "PhotoAppWidgetClickHandler"

    const-string v5, "PhotoAppWidgetClickHandler onActivityResult"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_195

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 49
    .local v24, mSelectTotal:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectedItemNum"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 50
    .local v23, mInitSelected:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "folderID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 51
    .local v6, mFolderID:J
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "folderItems"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, mFolderItems:Ljava/lang/String;
    const-string v4, "PhotoAppWidgetClickHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSelectTotal:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v4, "PhotoAppWidgetClickHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFolderID:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v4, "PhotoAppWidgetClickHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFolderItems : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-gtz v24, :cond_9c

    .line 57
    const/16 p2, 0x0

    .line 58
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v25, resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    sget v5, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->finish()V

    .line 64
    .end local v25           #resultValue:Landroid/content/Intent;
    :cond_9c
    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_d9

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0600c5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f06007e

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_d9
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v3, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    :try_start_e0
    sget v4, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/cooliris/media/PhotoDatabaseHelper;->setWidgetInfoAtDB(IIJLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 74
    const/16 p2, -0x1

    .line 76
    new-instance v9, Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct {v9}, Lcom/cooliris/media/PhotoAppWidgetProvider;-><init>()V

    .line 77
    .local v9, provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    const/4 v13, 0x0

    .line 78
    .local v13, spanX:I
    const/4 v14, 0x0

    .line 79
    .local v14, spanY:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_10a

    .line 80
    const-string v4, "widgetspanx"

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 82
    const-string v4, "widgetspany"

    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 85
    :cond_10a
    sget v11, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    move-object/from16 v10, p0

    move-object v12, v3

    invoke-virtual/range {v9 .. v14}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v26

    .line 87
    .local v26, views:Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v21

    .line 88
    .local v21, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v10, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    aput v10, v4, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V
    :try_end_126
    .catchall {:try_start_e0 .. :try_end_126} :catchall_190
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e0 .. :try_end_126} :catch_173

    .line 108
    .end local v9           #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    .end local v21           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v26           #views:Landroid/widget/RemoteViews;
    :cond_126
    :goto_126
    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    .line 123
    .end local v6           #mFolderID:J
    .end local v8           #mFolderItems:Ljava/lang/String;
    .end local v23           #mInitSelected:I
    .end local v24           #mSelectTotal:I
    :goto_129
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 124
    .restart local v25       #resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    sget v5, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->finish()V

    .line 127
    return-void

    .line 93
    .end local v25           #resultValue:Landroid/content/Intent;
    .restart local v6       #mFolderID:J
    .restart local v8       #mFolderItems:Ljava/lang/String;
    .restart local v23       #mInitSelected:I
    .restart local v24       #mSelectTotal:I
    :cond_144
    if-gtz v24, :cond_126

    .line 94
    :try_start_146
    sget v4, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    invoke-virtual {v3, v4}, Lcom/cooliris/media/PhotoDatabaseHelper;->deleteWidgetFromDB(I)V

    .line 95
    new-instance v9, Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct {v9}, Lcom/cooliris/media/PhotoAppWidgetProvider;-><init>()V

    .line 96
    .restart local v9       #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    sget v17, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    const/16 v19, 0x2

    const/16 v20, 0x2

    move-object v15, v9

    move-object/from16 v16, p0

    move-object/from16 v18, v3

    invoke-virtual/range {v15 .. v20}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v26

    .line 97
    .restart local v26       #views:Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v21

    .line 98
    .restart local v21       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v10, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    aput v10, v4, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V
    :try_end_172
    .catchall {:try_start_146 .. :try_end_172} :catchall_190
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_146 .. :try_end_172} :catch_173

    goto :goto_126

    .line 103
    .end local v9           #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    .end local v21           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v26           #views:Landroid/widget/RemoteViews;
    :catch_173
    move-exception v22

    .line 104
    .local v22, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_174
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->finish()V
    :try_end_18c
    .catchall {:try_start_174 .. :try_end_18c} :catchall_190

    .line 108
    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    goto :goto_129

    .end local v22           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_190
    move-exception v4

    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    throw v4

    .line 111
    .end local v3           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    .end local v6           #mFolderID:J
    .end local v8           #mFolderItems:Ljava/lang/String;
    .end local v23           #mInitSelected:I
    .end local v24           #mSelectTotal:I
    :cond_195
    const/16 p2, -0x1

    .line 112
    const-string v4, "PhotoAppWidgetClickHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAppWidgetId : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v10, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 114
    .restart local v3       #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    new-instance v9, Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct {v9}, Lcom/cooliris/media/PhotoAppWidgetProvider;-><init>()V

    .line 115
    .restart local v9       #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    sget v17, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    const/16 v19, 0x2

    const/16 v20, 0x2

    move-object v15, v9

    move-object/from16 v16, p0

    move-object/from16 v18, v3

    invoke-virtual/range {v15 .. v20}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v26

    .line 116
    .restart local v26       #views:Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v21

    .line 117
    .restart local v21       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v10, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    aput v10, v4, v5

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_129
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedState"

    .prologue
    const/4 v9, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 22
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 24
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_f

    .line 42
    :goto_e
    return-void

    .line 28
    :cond_f
    const-string v5, "APPWIDGET_ID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    .line 29
    const-string v5, "PhotoAppWidgetClickHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "My CLICK_IMAGE AppWidgetId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v2, Lcom/cooliris/media/PhotoDatabaseHelper;

    invoke-direct {v2, p0}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 32
    .local v2, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    sget v5, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    invoke-virtual {v2, v5}, Lcom/cooliris/media/PhotoDatabaseHelper;->getWidgetInfo(I)Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, data:Landroid/os/Bundle;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MULTIPLE_PICK"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .local v4, pickIntent:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v5, "APPWIDGET_ID"

    sget v6, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->appWidgetId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string v5, "folderID"

    const-string v6, "folderID"

    const-wide/16 v7, -0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 38
    const-string v5, "folderItems"

    const-string v6, "folderItems"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v5, "return-data"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    const-string v5, "from-widget"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    const/16 v5, 0xc8

    invoke-virtual {p0, v4, v5}, Lcom/cooliris/media/PhotoAppWidgetClickHandler;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e
.end method
