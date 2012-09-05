.class public Lcom/google/android/finsky/local/MigrationAsyncTask;
.super Landroid/os/AsyncTask;
.source "MigrationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/finsky/local/AutoUpdateState;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final COLUMN_AUTO_UPDATE:Ljava/lang/String;

.field private final COLUMN_PACKAGE_NAME:Ljava/lang/String;

.field private final DATABASE_NAME:Ljava/lang/String;

.field private final TABLE_NAME:Ljava/lang/String;

.field private final mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/local/AssetStore;)V
    .registers 4
    .parameter "context"
    .parameter "assetStore"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const-string v0, "assets14.db"

    iput-object v0, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->DATABASE_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "assets10"

    iput-object v0, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->TABLE_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->COLUMN_PACKAGE_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "auto_update"

    iput-object v0, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->COLUMN_AUTO_UPDATE:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/local/MigrationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .registers 19
    .parameter "voids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/local/AutoUpdateState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 45
    .local v12, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/local/MigrationAsyncTask;->mContext:Landroid/content/Context;

    const-string v3, "assets14.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 49
    .local v13, dbFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 94
    :goto_14
    return-object v12

    .line 54
    :cond_15
    :try_start_15
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_1e} :catch_68

    move-result-object v1

    .line 60
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "Legacy database found."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string v2, "assets10"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "package_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "auto_update"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 66
    .local v11, cursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 68
    .local v16, packageNameIdx:I
    const/4 v10, 0x1

    .line 71
    .local v10, autoUpdateIdx:I
    :goto_42
    :try_start_42
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 72
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, packageName:Ljava/lang/String;
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_80

    .line 84
    :goto_55
    :pswitch_55
    invoke-static {}, Lcom/google/android/finsky/local/AutoUpdateState;->values()[Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v2

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v9, v2, v3

    .line 86
    .local v9, autoUpdate:Lcom/google/android/finsky/local/AutoUpdateState;
    invoke-interface {v12, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_63

    goto :goto_42

    .line 89
    .end local v9           #autoUpdate:Lcom/google/android/finsky/local/AutoUpdateState;
    .end local v15           #packageName:Ljava/lang/String;
    :catchall_63
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 56
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #autoUpdateIdx:I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #packageNameIdx:I
    :catch_68
    move-exception v14

    .line 57
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_14

    .line 78
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #autoUpdateIdx:I
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v15       #packageName:Ljava/lang/String;
    .restart local v16       #packageNameIdx:I
    :pswitch_6a
    :try_start_6a
    sget-object v2, Lcom/google/android/finsky/local/AutoUpdateState;->DISABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-interface {v12, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    .line 81
    :pswitch_70
    sget-object v2, Lcom/google/android/finsky/local/AutoUpdateState;->ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-interface {v12, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_63

    goto :goto_55

    .line 89
    .end local v15           #packageName:Ljava/lang/String;
    :cond_76
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 92
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 93
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto :goto_14

    .line 73
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_55
        :pswitch_6a
        :pswitch_70
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/local/MigrationAsyncTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/local/AutoUpdateState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, legacyMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/local/MigrationAsyncTask;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v3, v2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 102
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/AutoUpdateState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 103
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-interface {v0, v3}, Lcom/google/android/finsky/local/LocalAsset;->setAutoUpdateState(Lcom/google/android/finsky/local/AutoUpdateState;)V

    goto :goto_8

    .line 107
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_32
    return-void
.end method
