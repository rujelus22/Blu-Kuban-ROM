.class Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/PersistentHitStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataBaseHelper"
.end annotation


# instance fields
.field private final databaseVersion:I

.field private final store:Lcom/google/android/apps/analytics/PersistentHitStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/analytics/PersistentHitStore;)V
    .registers 5

    const-string v0, "google_analytics.db"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/apps/analytics/PersistentHitStore;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/apps/analytics/PersistentHitStore;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput p3, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->databaseVersion:I

    iput-object p4, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->store:Lcom/google/android/apps/analytics/PersistentHitStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/analytics/PersistentHitStore;)V
    .registers 5

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/apps/analytics/PersistentHitStore;)V

    return-void
.end method

.method private createECommerceTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS transaction_events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS item_events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createHitTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS hits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createReferrerTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS referrer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private fixReferrerTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_4
    const-string v1, "referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_10} :catch_c9

    move-result-object v6

    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    move v2, v10

    move v0, v10

    move v1, v10

    :goto_18
    array-length v4, v3

    if-ge v2, v4, :cond_35

    aget-object v4, v3, v2

    const-string v5, "referrer_index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v1, v8

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    aget-object v4, v3, v2

    const-string v5, "referrer_visit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v0, v8

    goto :goto_26

    :cond_35
    if-eqz v1, :cond_39

    if-nez v0, :cond_b0

    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_fc

    const-string v0, "referrer_visit"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "referrer_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/google/android/apps/analytics/Referrer;

    const-string v1, "referrer"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp_referrer"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    if-ne v4, v11, :cond_bf

    move v4, v8

    :goto_64
    if-ne v5, v11, :cond_c4

    move v5, v8

    :goto_67
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/Referrer;-><init>(Ljava/lang/String;JII)V

    :goto_6a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createReferrerTable(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_ad

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "referrer"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/Referrer;->getReferrerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp_referrer"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/Referrer;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "referrer_visit"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/Referrer;->getVisit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer_index"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/Referrer;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "referrer"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_ad
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b0
    .catchall {:try_start_11 .. :try_end_b0} :catchall_f4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_b0} :catch_f9

    :cond_b0
    if-eqz v6, :cond_b5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_be

    #calls: Lcom/google/android/apps/analytics/PersistentHitStore;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {p1}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$900(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_be
    :goto_be
    return-void

    :cond_bf
    :try_start_bf
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_64

    :cond_c4
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_f4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_c7} :catch_f9

    move-result v5

    goto :goto_67

    :catch_c9
    move-exception v0

    move-object v1, v9

    :goto_cb
    :try_start_cb
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_cb .. :try_end_d4} :catchall_f6

    if-eqz v1, :cond_d9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_be

    #calls: Lcom/google/android/apps/analytics/PersistentHitStore;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {p1}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$900(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_be

    :catchall_e3
    move-exception v0

    move-object v6, v9

    :goto_e5
    if-eqz v6, :cond_ea

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ea
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_f3

    #calls: Lcom/google/android/apps/analytics/PersistentHitStore;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {p1}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$900(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_f3
    throw v0

    :catchall_f4
    move-exception v0

    goto :goto_e5

    :catchall_f6
    move-exception v0

    move-object v6, v1

    goto :goto_e5

    :catch_f9
    move-exception v0

    move-object v1, v6

    goto :goto_cb

    :cond_fc
    move-object v0, v9

    goto/16 :goto_6a
.end method

.method private migrateEventsToHits(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->store:Lcom/google/android/apps/analytics/PersistentHitStore;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore;->loadExistingSession(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->store:Lcom/google/android/apps/analytics/PersistentHitStore;

    iget-object v2, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->store:Lcom/google/android/apps/analytics/PersistentHitStore;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/analytics/PersistentHitStore;->getVisitorVarBuffer(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/CustomVariableBuffer;

    move-result-object v2

    #setter for: Lcom/google/android/apps/analytics/PersistentHitStore;->visitorCVCache:Lcom/google/android/apps/analytics/CustomVariableBuffer;
    invoke-static {v0, v2}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$702(Lcom/google/android/apps/analytics/PersistentHitStore;Lcom/google/android/apps/analytics/CustomVariableBuffer;)Lcom/google/android/apps/analytics/CustomVariableBuffer;

    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->store:Lcom/google/android/apps/analytics/PersistentHitStore;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/apps/analytics/PersistentHitStore;->peekEvents(ILandroid/database/sqlite/SQLiteDatabase;I)[Lcom/google/android/apps/analytics/Event;

    move-result-object v2

    move v0, v1

    :goto_1a
    array-length v3, v2

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->store:Lcom/google/android/apps/analytics/PersistentHitStore;

    aget-object v4, v2, v0

    #calls: Lcom/google/android/apps/analytics/PersistentHitStore;->putEvent(Lcom/google/android/apps/analytics/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$800(Lcom/google/android/apps/analytics/PersistentHitStore;Lcom/google/android/apps/analytics/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_27
    const-string v0, "DELETE from events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE from item_events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE from transaction_events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE from custom_variables;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private migratePreV4Referrer(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15

    const/4 v8, 0x0

    :try_start_1
    const-string v1, "install_referrer"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "referrer"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_88
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_14} :catch_72

    move-result-object v9

    const-wide/16 v10, 0x0

    :try_start_17
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "session"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_2e} :catch_9e

    move-result-object v1

    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_3a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "referrer"

    invoke-virtual {v0, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "timestamp_referrer"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "referrer_visit"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer_index"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_67
    .catchall {:try_start_2f .. :try_end_67} :catchall_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_67} :catch_a2

    :goto_67
    if-eqz v9, :cond_6c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6c
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_71
    :goto_71
    return-void

    :catch_72
    move-exception v0

    move-object v1, v8

    :goto_74
    :try_start_74
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_9b

    if-eqz v8, :cond_82

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_82
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_71

    :catchall_88
    move-exception v0

    move-object v1, v8

    move-object v9, v8

    :goto_8b
    if-eqz v9, :cond_90

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_90
    if-eqz v1, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v0

    :catchall_96
    move-exception v0

    move-object v1, v8

    goto :goto_8b

    :catchall_99
    move-exception v0

    goto :goto_8b

    :catchall_9b
    move-exception v0

    move-object v9, v8

    goto :goto_8b

    :catch_9e
    move-exception v0

    move-object v1, v8

    move-object v8, v9

    goto :goto_74

    :catch_a2
    move-exception v0

    move-object v8, v9

    goto :goto_74

    :cond_a5
    move-wide v2, v10

    goto :goto_3a

    :cond_a7
    move-object v1, v8

    goto :goto_67
.end method


# virtual methods
.method createCustomVariableTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    const-string v0, "DROP TABLE IF EXISTS custom_variables;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS custom_var_cache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_19
    const/4 v1, 0x5

    if-gt v0, v1, :cond_56

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_56
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "DROP TABLE IF EXISTS events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS install_referrer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS session;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->databaseVersion:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    invoke-virtual {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createCustomVariableTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2a
    iget v0, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->databaseVersion:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_32

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createECommerceTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_32
    iget v0, p0, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->databaseVersion:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3d

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createHitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createReferrerTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3d
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14

    const/4 v2, 0x0

    const-string v0, "GoogleAnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrading database version from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not recommended."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/PersistentHitStore;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v1, "custom_var_cache"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_55
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string v0, "cv_index"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_db
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_6c} :catch_6d

    goto :goto_55

    :catch_6d
    move-exception v0

    :try_start_6e
    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on downgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_6e .. :try_end_8a} :catchall_db

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_8d
    const/4 v0, 0x1

    move v1, v0

    :goto_8f
    const/4 v0, 0x5

    if-gt v1, v0, :cond_fe

    :try_start_92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_92 .. :try_end_d3} :catch_e0

    :cond_d3
    :goto_d3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8f

    :cond_d7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8d

    :catchall_db
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_e0
    move-exception v0

    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inserting custom variable on downgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    :cond_fe
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Warning: Need to update database, but it\'s read only."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->fixReferrerTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_d
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const/4 v2, 0x3

    const/4 v1, 0x2

    if-le p2, p3, :cond_8

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-ge p2, v1, :cond_10

    const/4 v0, 0x1

    if-le p3, v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createCustomVariableTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    if-ge p2, v2, :cond_17

    if-le p3, v1, :cond_17

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createECommerceTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_17
    const/4 v0, 0x4

    if-ge p2, v0, :cond_7

    if-le p3, v2, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createHitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->createReferrerTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->migrateEventsToHits(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/PersistentHitStore$DataBaseHelper;->migratePreV4Referrer(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7
.end method
