.class public Lcom/cooliris/media/PhotoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoDatabaseHelper.java"


# static fields
.field private static final PHOTOS_PROJECTION:[Ljava/lang/String;

.field private static final WIDGETID_PROJECTION:[Ljava/lang/String;

.field private static final WIDGETINFO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "photoBlob"

    aput-object v1, v0, v2

    sput-object v0, Lcom/cooliris/media/PhotoDatabaseHelper;->PHOTOS_PROJECTION:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "appWidgetId"

    aput-object v1, v0, v2

    sput-object v0, Lcom/cooliris/media/PhotoDatabaseHelper;->WIDGETID_PROJECTION:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "folderID"

    aput-object v1, v0, v2

    const-string v1, "folderItems"

    aput-object v1, v0, v3

    sput-object v0, Lcom/cooliris/media/PhotoDatabaseHelper;->WIDGETINFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "picture_frame.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public deleteWidgetFromDB(I)V
    .registers 9
    .parameter "appWidgetId"

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "%s=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appWidgetId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, whereClause:Ljava/lang/String;
    const-string v3, "photos"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 95
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #whereClause:Ljava/lang/String;
    :goto_22
    return-void

    .line 92
    :catch_23
    move-exception v1

    .line 93
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "PhotoDatabaseHelper"

    const-string v4, "Could not delete photo from database"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public getNextPhotoIndex(IZ)I
    .registers 15
    .parameter "appWidgetId"
    .parameter "change"

    .prologue
    .line 205
    const/4 v9, 0x0

    .line 206
    .local v9, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 207
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, -0x1

    .line 209
    .local v11, imageIndex:I
    :try_start_3
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "appWidgetId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, selection:Ljava/lang/String;
    const-string v1, "photos"

    sget-object v2, Lcom/cooliris/media/PhotoDatabaseHelper;->PHOTOS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 213
    if-eqz v9, :cond_3a

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 214
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_35} :catch_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_5b

    move-result v11

    .line 215
    if-eqz p2, :cond_3a

    .line 216
    add-int/lit8 v11, v11, 0x1

    .line 225
    :cond_3a
    if-eqz v9, :cond_3f

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_3f
    if-eqz v0, :cond_44

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 232
    .end local v3           #selection:Ljava/lang/String;
    :cond_44
    :goto_44
    return v11

    .line 218
    :catch_45
    move-exception v10

    .line 219
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_46
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not open database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_71

    .line 225
    if-eqz v9, :cond_55

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_55
    if-eqz v0, :cond_44

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_44

    .line 221
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_5b
    move-exception v10

    .line 222
    .local v10, e:Ljava/lang/Exception;
    :try_start_5c
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Error getNextPhotoIndex!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_71

    .line 225
    if-eqz v9, :cond_6b

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_6b
    if-eqz v0, :cond_44

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_44

    .line 225
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_71
    move-exception v1

    if-eqz v9, :cond_77

    .line 226
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_77
    if-eqz v0, :cond_7c

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7c
    throw v1
.end method

.method public getPhotoUri(I)Ljava/lang/String;
    .registers 16
    .parameter "appWidgetId"

    .prologue
    const/4 v13, 0x0

    .line 172
    const/4 v9, 0x0

    .line 173
    .local v9, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 174
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 176
    .local v11, filePath:Ljava/lang/String;
    :try_start_4
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "appWidgetId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, selection:Ljava/lang/String;
    const-string v1, "photos"

    sget-object v2, Lcom/cooliris/media/PhotoDatabaseHelper;->PHOTOS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 180
    if-eqz v9, :cond_70

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 181
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 182
    .local v12, imageIndex:I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_4d

    .line 183
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "empty widget"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_41} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_92

    .line 194
    if-eqz v9, :cond_46

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_46
    if-eqz v0, :cond_4b

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4b
    move-object v1, v13

    .line 201
    .end local v3           #selection:Ljava/lang/String;
    .end local v12           #imageIndex:I
    :goto_4c
    return-object v1

    .line 186
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v12       #imageIndex:I
    :cond_4d
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.cooliris.media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_6f} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6f} :catch_92

    move-result-object v11

    .line 194
    .end local v12           #imageIndex:I
    :cond_70
    if-eqz v9, :cond_75

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_75
    if-eqz v0, :cond_7a

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local v3           #selection:Ljava/lang/String;
    :cond_7a
    :goto_7a
    move-object v1, v11

    .line 201
    goto :goto_4c

    .line 188
    :catch_7c
    move-exception v10

    .line 189
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_7d
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not open database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_a5

    .line 194
    if-eqz v9, :cond_8c

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_8c
    if-eqz v0, :cond_7a

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7a

    .line 191
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_92
    move-exception v10

    .line 192
    .local v10, e:Ljava/lang/Exception;
    :try_start_93
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Error getPhotoBitmap!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_a5

    .line 194
    if-eqz v9, :cond_9f

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_9f
    if-eqz v0, :cond_7a

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7a

    .line 194
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_a5
    move-exception v1

    if-eqz v9, :cond_ab

    .line 195
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_ab
    if-eqz v0, :cond_b0

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b0
    throw v1
.end method

.method public getWidgetInfo(I)Landroid/os/Bundle;
    .registers 17
    .parameter "appWidgetId"

    .prologue
    .line 236
    const/4 v9, 0x0

    .line 237
    .local v9, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 238
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v10, data:Landroid/os/Bundle;
    const-wide/16 v12, -0x1

    .line 240
    .local v12, folderID:J
    const/4 v14, 0x0

    .line 242
    .local v14, folderItems:Ljava/lang/String;
    :try_start_a
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 243
    const-string v1, "%s=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "appWidgetId"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, selection:Ljava/lang/String;
    const-string v1, "photos"

    sget-object v2, Lcom/cooliris/media/PhotoDatabaseHelper;->WIDGETINFO_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 246
    if-eqz v9, :cond_4c

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 247
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 248
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 249
    const-string v1, "folderID"

    invoke-virtual {v10, v1, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const-string v1, "folderItems"

    invoke-virtual {v10, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_4c} :catch_57
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4c} :catch_6d

    .line 259
    :cond_4c
    if-eqz v9, :cond_51

    .line 260
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_51
    if-eqz v0, :cond_56

    .line 263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 266
    .end local v3           #selection:Ljava/lang/String;
    :cond_56
    :goto_56
    return-object v10

    .line 252
    :catch_57
    move-exception v11

    .line 253
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    :try_start_58
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not open database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_83

    .line 259
    if-eqz v9, :cond_67

    .line 260
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_67
    if-eqz v0, :cond_56

    .line 263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_56

    .line 255
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :catch_6d
    move-exception v11

    .line 256
    .local v11, e:Ljava/lang/Exception;
    :try_start_6e
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Error getWidgetFolderPath!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_83

    .line 259
    if-eqz v9, :cond_7d

    .line 260
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_7d
    if-eqz v0, :cond_56

    .line 263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_56

    .line 259
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_83
    move-exception v1

    if-eqz v9, :cond_89

    .line 260
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_89
    if-eqz v0, :cond_8e

    .line 263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8e
    throw v1
.end method

.method public isWidgetIdListExist(Ljava/util/LinkedList;)Z
    .registers 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, appWidgetList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 271
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 272
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x1

    .line 274
    .local v13, listExist:Z
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/PhotoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v14

    .line 276
    .local v14, widgetListSize:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_c
    if-ge v12, v14, :cond_14

    .line 277
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 276
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 280
    :cond_14
    const-string v2, "photos"

    sget-object v3, Lcom/cooliris/media/PhotoDatabaseHelper;->WIDGETID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 281
    if-eqz v10, :cond_40

    .line 282
    const-string v2, "PhotoDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWidgetIdList query count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_40
    if-eqz v10, :cond_67

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 287
    :cond_48
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 288
    .local v15, wigetId:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_59} :catch_69
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_59} :catch_80

    move-result v2

    if-nez v2, :cond_48

    .line 302
    .end local v15           #wigetId:I
    :goto_5c
    if-eqz v10, :cond_61

    .line 303
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_61
    if-eqz v1, :cond_66

    .line 306
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 309
    .end local v12           #i:I
    .end local v14           #widgetListSize:I
    :cond_66
    :goto_66
    return v13

    .line 291
    .restart local v12       #i:I
    .restart local v14       #widgetListSize:I
    :cond_67
    const/4 v13, 0x0

    goto :goto_5c

    .line 293
    .end local v12           #i:I
    .end local v14           #widgetListSize:I
    :catch_69
    move-exception v11

    .line 294
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6a
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Could not open database!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_97

    .line 296
    const/4 v13, 0x0

    .line 302
    if-eqz v10, :cond_7a

    .line 303
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_7a
    if-eqz v1, :cond_66

    .line 306
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_66

    .line 297
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :catch_80
    move-exception v11

    .line 298
    .local v11, e:Ljava/lang/Exception;
    :try_start_81
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Error getWidgetIdList!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_97

    .line 300
    const/4 v13, 0x0

    .line 302
    if-eqz v10, :cond_91

    .line 303
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_91
    if-eqz v1, :cond_66

    .line 306
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_66

    .line 302
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_97
    move-exception v2

    if-eqz v10, :cond_9d

    .line 303
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_9d
    if-eqz v1, :cond_a2

    .line 306
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a2
    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 59
    :try_start_0
    const-string v1, "CREATE TABLE photos (appWidgetId INTEGER PRIMARY KEY,photoBlob INTEGER,folderID INTEGER,folderItems TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 65
    :goto_5
    return-void

    .line 62
    :catch_6
    move-exception v0

    .line 63
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "SQLiteException..... Could not exec database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x4

    .line 69
    move v1, p2

    .line 70
    .local v1, version:I
    if-eq v1, v4, :cond_1d

    .line 71
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x3

    if-ge v1, v2, :cond_16

    .line 74
    :try_start_e
    const-string v2, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/cooliris/media/PhotoDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    :cond_16
    if-ge v1, v4, :cond_1d

    .line 78
    const-string v2, "ALTER TABLE photos ADD COLUMN folderItems TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 84
    :cond_1d
    :goto_1d
    return-void

    .line 80
    :catch_1e
    move-exception v0

    .line 81
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "SQLiteException..... Could not exec database"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public setWidgetInfoAtDB(IIJLjava/lang/String;)Z
    .registers 15
    .parameter "appWidgetId"
    .parameter "index"
    .parameter "id"
    .parameter "items"

    .prologue
    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, success:Z
    const/4 v0, 0x0

    .line 101
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v5, values:Landroid/content/ContentValues;
    new-instance v3, Lcom/cooliris/media/PhotoAppWidgetController;

    invoke-direct {v3}, Lcom/cooliris/media/PhotoAppWidgetController;-><init>()V

    .line 103
    .local v3, mController:Lcom/cooliris/media/PhotoAppWidgetController;
    invoke-virtual {v3, p1}, Lcom/cooliris/media/PhotoAppWidgetController;->getItemsNum(I)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_f} :catch_89
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_9a

    move-result v2

    .line 104
    .local v2, itemsInFolder:I
    if-nez v2, :cond_17

    .line 105
    const/4 v6, 0x0

    .line 125
    if-eqz v0, :cond_16

    .line 126
    throw v0

    .line 131
    .end local v2           #itemsInFolder:I
    .end local v3           #mController:Lcom/cooliris/media/PhotoAppWidgetController;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_16
    :goto_16
    return v6

    .line 106
    .restart local v2       #itemsInFolder:I
    .restart local v3       #mController:Lcom/cooliris/media/PhotoAppWidgetController;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_17
    if-lt p2, v2, :cond_1a

    .line 107
    const/4 p2, 0x0

    .line 108
    :cond_1a
    :try_start_1a
    const-string v6, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v6, "photoBlob"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-eqz v6, :cond_3b

    .line 111
    const-string v6, "folderID"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    :cond_3b
    if-eqz p5, :cond_42

    .line 113
    const-string v6, "folderItems"

    invoke-virtual {v5, v6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_42
    const-string v6, "PhotoDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/cooliris/media/PhotoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    const-string v6, "photos"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_78
    .catchall {:try_start_1a .. :try_end_78} :catchall_ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_78} :catch_89
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_78} :catch_9a

    .line 117
    const/4 v4, 0x1

    .line 125
    if-eqz v0, :cond_7e

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    .end local v2           #itemsInFolder:I
    .end local v3           #mController:Lcom/cooliris/media/PhotoAppWidgetController;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_7e
    :goto_7e
    if-nez v4, :cond_87

    .line 129
    const-string v6, "PhotoDatabaseHelper"

    const-string v7, "setPhoto fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    move v6, v4

    .line 131
    goto :goto_16

    .line 118
    :catch_89
    move-exception v1

    .line 119
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_8a
    const-string v6, "PhotoDatabaseHelper"

    const-string v7, "Could not open database!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_ab

    .line 125
    if-eqz v0, :cond_7e

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7e

    .line 121
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_9a
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    :try_start_9b
    const-string v6, "PhotoDatabaseHelper"

    const-string v7, "Error setPhotoIndex!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_ab

    .line 125
    if-eqz v0, :cond_7e

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7e

    .line 125
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_ab
    move-exception v6

    if-eqz v0, :cond_b1

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b1
    throw v6
.end method
