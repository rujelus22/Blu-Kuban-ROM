.class public Lcom/android/browser/BookmarkAppWidgetConfigure;
.super Landroid/app/Activity;
.source "BookmarkAppWidgetConfigure.java"


# instance fields
.field private bIsEdit:Z

.field private mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field private mDbCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    return-void
.end method

.method private checkWidgetDb(I)V
    .registers 14
    .parameter "appWidgetId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 127
    new-instance v11, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    iget-object v1, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    .line 128
    .local v11, helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    invoke-virtual {v11}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s = ?"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v5, "appWidgetId"

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, selection:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 134
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_2b
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 135
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mDbCount:I

    .line 136
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3f} :catch_45

    .line 141
    if-eqz v0, :cond_44

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 144
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_44
    :goto_44
    return-void

    .line 137
    :catch_45
    move-exception v10

    .line 138
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_47
    iput v1, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mDbCount:I

    .line 139
    const-string v1, "bookmarkwidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_67

    .line 141
    if-eqz v0, :cond_44

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_44

    .line 141
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_67
    move-exception v1

    if-eqz v0, :cond_6d

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6d
    throw v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const-string v3, "BookmarkAppWidgetConfigure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult reqCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "resCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    if-nez v3, :cond_34

    .line 98
    const-string v3, "BookmarkAppWidgetConfigure"

    const-string v4, "onActivityResult mAppWidgetId is INVALID_APPWIDGET_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->finish()V

    .line 103
    :cond_34
    :try_start_34
    const-string v3, "bookmarkwidget"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 104
    .local v0, checkedBookmarkId:[J
    new-instance v2, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    invoke-direct {v2, p0}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    if-ne p2, v6, :cond_67

    .line 107
    iget v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->saveBookmarkWidgetDB(I[JZ)V

    .line 108
    iget v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    invoke-direct {p0, v3}, Lcom/android/browser/BookmarkAppWidgetConfigure;->checkWidgetDb(I)V

    .line 109
    iget v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mDbCount:I

    if-lez v3, :cond_58

    .line 110
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/browser/BookmarkAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 115
    :cond_58
    :goto_58
    invoke-virtual {v2}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->close()V

    .line 116
    iget-boolean v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->bIsEdit:Z

    if-eqz v3, :cond_63

    .line 117
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/browser/BookmarkAppWidgetConfigure;->moveTaskToBack(Z)Z

    .line 118
    :cond_63
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->finish()V

    .line 124
    .end local v0           #checkedBookmarkId:[J
    .end local v2           #helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    :goto_66
    return-void

    .line 111
    .restart local v0       #checkedBookmarkId:[J
    .restart local v2       #helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    :cond_67
    const/4 v3, 0x2

    if-ne p2, v3, :cond_58

    .line 112
    iget v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->saveBookmarkWidgetDB(I[JZ)V

    .line 113
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/browser/BookmarkAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_78} :catch_79

    goto :goto_58

    .line 119
    .end local v0           #checkedBookmarkId:[J
    .end local v2           #helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    :catch_79
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->bIsEdit:Z

    if-eqz v3, :cond_81

    .line 121
    invoke-virtual {p0, v6}, Lcom/android/browser/BookmarkAppWidgetConfigure;->moveTaskToBack(Z)Z

    .line 122
    :cond_81
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->finish()V

    goto :goto_66
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "BookmarkAppWidgetConfigure"

    const-string v1, "onCreate called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1e

    .line 69
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    .line 74
    :cond_1e
    iget v1, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    if-nez v1, :cond_2c

    .line 75
    const-string v1, "BookmarkAppWidgetConfigure"

    const-string v2, "onCreate mAppWidgetId is INVALID_APPWIDGET_ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->finish()V

    .line 79
    :cond_2c
    const-string v1, "BookmarkAppWidgetConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate called with appWidgetID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v0, :cond_7b

    const-string v1, "isEdit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 82
    const-string v1, "isEdit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->bIsEdit:Z

    .line 86
    :goto_5e
    invoke-virtual {p0}, Lcom/android/browser/BookmarkAppWidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BookmarkWidgetPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "widget"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0, v5}, Lcom/android/browser/BookmarkAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void

    .line 84
    :cond_7b
    iput-boolean v4, p0, Lcom/android/browser/BookmarkAppWidgetConfigure;->bIsEdit:Z

    goto :goto_5e
.end method
