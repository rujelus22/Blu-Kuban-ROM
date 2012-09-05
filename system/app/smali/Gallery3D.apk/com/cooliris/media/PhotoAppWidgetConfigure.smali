.class public Lcom/cooliris/media/PhotoAppWidgetConfigure;
.super Landroid/app/Activity;
.source "PhotoAppWidgetConfigure.java"


# instance fields
.field private mApp:Lcom/cooliris/app/App;

.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mApp:Lcom/cooliris/app/App;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 25
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 95
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_12a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12a

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 98
    .local v18, mSelectTotal:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectedItemNum"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 99
    .local v17, mInitSelected:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "folderID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 100
    .local v6, mFolderID:J
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "folderItems"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, mFolderItems:Ljava/lang/String;
    if-lez v18, :cond_3c

    const-wide/16 v4, -0x1

    cmp-long v4, v6, v4

    if-nez v4, :cond_5a

    .line 102
    :cond_3c
    const/16 p2, 0x0

    .line 103
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v19, resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->finish()V

    .line 109
    .end local v19           #resultValue:Landroid/content/Intent;
    :cond_5a
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_97

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0600c5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->getResources()Landroid/content/res/Resources;

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

    .line 115
    :cond_97
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 117
    .local v3, helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    :try_start_9e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/cooliris/media/PhotoDatabaseHelper;->setWidgetInfoAtDB(IIJLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 119
    const/16 p2, -0x1

    .line 121
    new-instance v9, Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct {v9}, Lcom/cooliris/media/PhotoAppWidgetProvider;-><init>()V

    .line 122
    .local v9, provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    const/4 v13, 0x0

    .line 123
    .local v13, spanX:I
    const/4 v14, 0x0

    .line 124
    .local v14, spanY:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_ca

    .line 125
    const-string v4, "widgetspanx"

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 127
    const-string v4, "widgetspany"

    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 130
    :cond_ca
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    move-object/from16 v10, p0

    move-object v12, v3

    invoke-virtual/range {v9 .. v14}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v20

    .line 132
    .local v20, views:Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 133
    .local v15, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    aput v10, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v15, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V
    :try_end_e8
    .catchall {:try_start_9e .. :try_end_e8} :catchall_125
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9e .. :try_end_e8} :catch_108

    .line 142
    .end local v9           #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    .end local v15           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v20           #views:Landroid/widget/RemoteViews;
    :cond_e8
    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    .line 174
    .end local v3           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    .end local v6           #mFolderID:J
    .end local v8           #mFolderItems:Ljava/lang/String;
    .end local v17           #mInitSelected:I
    .end local v18           #mSelectTotal:I
    :goto_eb
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local v19       #resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->finish()V

    .line 178
    return-void

    .line 137
    .end local v19           #resultValue:Landroid/content/Intent;
    .restart local v3       #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    .restart local v6       #mFolderID:J
    .restart local v8       #mFolderItems:Ljava/lang/String;
    .restart local v17       #mInitSelected:I
    .restart local v18       #mSelectTotal:I
    :catch_108
    move-exception v16

    .line 138
    .local v16, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_109
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060078

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->finish()V
    :try_end_121
    .catchall {:try_start_109 .. :try_end_121} :catchall_125

    .line 142
    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    goto :goto_eb

    .end local v16           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_125
    move-exception v4

    invoke-virtual {v3}, Lcom/cooliris/media/PhotoDatabaseHelper;->close()V

    throw v4

    .line 144
    .end local v3           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    .end local v6           #mFolderID:J
    .end local v8           #mFolderItems:Ljava/lang/String;
    .end local v17           #mInitSelected:I
    .end local v18           #mSelectTotal:I
    :cond_12a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17e

    .line 145
    const/16 p2, -0x1

    .line 146
    new-instance v3, Lcom/cooliris/media/PhotoDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cooliris/media/PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 147
    .restart local v3       #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    new-instance v9, Lcom/cooliris/media/PhotoAppWidgetProvider;

    invoke-direct {v9}, Lcom/cooliris/media/PhotoAppWidgetProvider;-><init>()V

    .line 148
    .restart local v9       #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    const/4 v13, 0x0

    .line 149
    .restart local v13       #spanX:I
    const/4 v14, 0x0

    .line 150
    .restart local v14       #spanY:I
    if-eqz p3, :cond_17b

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_17b

    .line 151
    const-string v4, "widgetspanx"

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 153
    const-string v4, "widgetspany"

    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 159
    :goto_15b
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    move-object/from16 v10, p0

    move-object v12, v3

    invoke-virtual/range {v9 .. v14}, Lcom/cooliris/media/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/cooliris/media/PhotoDatabaseHelper;II)Landroid/widget/RemoteViews;

    move-result-object v20

    .line 160
    .restart local v20       #views:Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 161
    .restart local v15       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    aput v10, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v15, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto/16 :goto_eb

    .line 156
    .end local v15           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v20           #views:Landroid/widget/RemoteViews;
    :cond_17b
    const/4 v13, 0x4

    .line 157
    const/4 v14, 0x2

    goto :goto_15b

    .line 165
    .end local v3           #helper:Lcom/cooliris/media/PhotoDatabaseHelper;
    .end local v9           #provider:Lcom/cooliris/media/PhotoAppWidgetProvider;
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    :cond_17e
    const/16 p2, 0x0

    .line 166
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 167
    .restart local v19       #resultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 169
    const-string v4, "Unable to set picture frame"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->finish()V

    goto/16 :goto_eb
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v3, Lcom/cooliris/app/App;

    invoke-direct {v3, p0}, Lcom/cooliris/app/App;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mApp:Lcom/cooliris/app/App;

    .line 44
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_1d

    .line 46
    invoke-virtual {p0, v7}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->finish()V

    .line 50
    :cond_1d
    const-string v3, "AddPicture"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 51
    .local v0, AddPicture:Z
    if-eqz v0, :cond_9d

    .line 52
    const-string v3, "APPWIDGET_ID"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    .line 57
    :goto_2d
    const-string v3, "PhotoAppWidgetConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New config start by widget_id["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], add_picture["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v3, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    if-ne v3, v6, :cond_61

    .line 61
    invoke-virtual {p0, v7}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->finish()V

    .line 65
    :cond_61
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MULTIPLE_PICK"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v3, "APPWIDGET_ID"

    iget v4, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v3, "return-data"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v3, "widgetspanx"

    const-string v4, "widgetspanx"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v3, "widgetspany"

    const-string v4, "widgetspany"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v3, "from-widget"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const/16 v3, 0xc8

    invoke-virtual {p0, v2, v3}, Lcom/cooliris/media/PhotoAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void

    .line 54
    .end local v2           #intent:Landroid/content/Intent;
    :cond_9d
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mAppWidgetId:I

    goto :goto_2d
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->shutdown()V

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onPause()V

    .line 85
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/cooliris/media/PhotoAppWidgetConfigure;->mApp:Lcom/cooliris/app/App;

    invoke-virtual {v0}, Lcom/cooliris/app/App;->onResume()V

    .line 79
    return-void
.end method
