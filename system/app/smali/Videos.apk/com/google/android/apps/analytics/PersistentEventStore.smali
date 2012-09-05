.class Lcom/google/android/apps/analytics/PersistentEventStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/EventStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;
    }
.end annotation


# instance fields
.field private compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

.field private databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

.field private numStoredEvents:I

.field private sessionUpdated:Z

.field private storeId:I

.field private timestampCurrent:J

.field private timestampFirst:J

.field private timestampPrevious:J

.field private useStoredVisitorVars:Z

.field private visits:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    iput-object p1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method public deleteEvent(J)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_13
    iget-object v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    const-string v2, "custom_variables"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method getCustomVariables(J)Lcom/google/android/apps/analytics/CustomVariableBuffer;
    .registers 13

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v9}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "custom_variables"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_29} :catch_81

    move-result-object v1

    :goto_2a
    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Lcom/google/android/apps/analytics/CustomVariable;

    const-string v2, "cv_index"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "cv_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cv_value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cv_scope"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->setCustomVariable(Lcom/google/android/apps/analytics/CustomVariable;)V
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_60} :catch_61

    goto :goto_2a

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    const-string v2, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_7f

    if-eqz v1, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_70
    :goto_70
    return-object v9

    :cond_71
    if-eqz v1, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_70

    :catchall_77
    move-exception v0

    move-object v1, v8

    :goto_79
    if-eqz v1, :cond_7e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v0

    :catchall_7f
    move-exception v0

    goto :goto_79

    :catch_81
    move-exception v0

    move-object v1, v8

    goto :goto_62
.end method

.method public getNumStoredEvents()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT COUNT(*) from events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_17} :catch_1a

    move-result-wide v0

    long-to-int v0, v0

    :goto_19
    return v0

    :catch_1a
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getReferrer()Ljava/lang/String;
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "install_referrer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "referrer"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_19} :catch_2b

    move-result-object v1

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_24} :catch_47

    move-result-object v0

    :goto_25
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2a
    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    move-object v1, v8

    :goto_2d
    :try_start_2d
    const-string v2, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_44

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    move-object v0, v8

    goto :goto_2a

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0

    :catchall_44
    move-exception v0

    move-object v8, v1

    goto :goto_3e

    :catch_47
    move-exception v0

    goto :goto_2d

    :cond_49
    move-object v0, v8

    goto :goto_25
.end method

.method public getStoreId()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    return v0
.end method

.method getVisitorVarBuffer()Lcom/google/android/apps/analytics/CustomVariableBuffer;
    .registers 10

    new-instance v8, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v8}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "custom_var_cache"

    const/4 v2, 0x0

    const-string v3, "cv_scope=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v1, Lcom/google/android/apps/analytics/CustomVariable;

    const-string v2, "cv_index"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "cv_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cv_value"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cv_scope"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->setCustomVariable(Lcom/google/android/apps/analytics/CustomVariable;)V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_18

    :catch_4f
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-object v8

    :cond_5a
    :try_start_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5d} :catch_4f

    goto :goto_59
.end method

.method public peekEvents()[Lcom/google/android/apps/analytics/Event;
    .registers 2

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/PersistentEventStore;->peekEvents(I)[Lcom/google/android/apps/analytics/Event;

    move-result-object v0

    return-object v0
.end method

.method public peekEvents(I)[Lcom/google/android/apps/analytics/Event;
    .registers 22

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "event_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_1e} :catch_ec

    move-result-object v18

    :goto_1f
    :try_start_1f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    new-instance v2, Lcom/google/android/apps/analytics/Event;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v12, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xa

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-direct/range {v2 .. v17}, Lcom/google/android/apps/analytics/Event;-><init>(JILjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const-string v3, "event_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/analytics/PersistentEventStore;->getCustomVariables(J)Lcom/google/android/apps/analytics/CustomVariableBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/analytics/Event;->setCustomVariableBuffer(Lcom/google/android/apps/analytics/CustomVariableBuffer;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catchall {:try_start_1f .. :try_end_b2} :catchall_e6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_b2} :catch_b4

    goto/16 :goto_1f

    :catch_b4
    move-exception v2

    move-object/from16 v3, v18

    :goto_b7
    :try_start_b7
    const-string v4, "googleanalytics"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/apps/analytics/Event;
    :try_end_c3
    .catchall {:try_start_b7 .. :try_end_c3} :catchall_e8

    if-eqz v3, :cond_c8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c8
    :goto_c8
    return-object v2

    :cond_c9
    if-eqz v18, :cond_ce

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_ce
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/apps/analytics/Event;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/apps/analytics/Event;

    goto :goto_c8

    :catchall_dd
    move-exception v2

    move-object/from16 v18, v11

    :goto_e0
    if-eqz v18, :cond_e5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_e5
    throw v2

    :catchall_e6
    move-exception v2

    goto :goto_e0

    :catchall_e8
    move-exception v2

    move-object/from16 v18, v3

    goto :goto_e0

    :catch_ec
    move-exception v2

    move-object v3, v11

    goto :goto_b7
.end method

.method putCustomVariables(Lcom/google/android/apps/analytics/Event;J)V
    .registers 13

    const/4 v8, 0x5

    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Event;->getCustomVariableBuffer()Lcom/google/android/apps/analytics/CustomVariableBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->useStoredVisitorVars:Z

    if-eqz v2, :cond_36

    if-nez v1, :cond_1a

    new-instance v1, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/apps/analytics/Event;->setCustomVariableBuffer(Lcom/google/android/apps/analytics/CustomVariableBuffer;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/PersistentEventStore;->getVisitorVarBuffer()Lcom/google/android/apps/analytics/CustomVariableBuffer;

    move-result-object v4

    move v2, v0

    :goto_1f
    if-gt v2, v8, :cond_33

    invoke-virtual {v4, v2}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->getCustomVariableAt(I)Lcom/google/android/apps/analytics/CustomVariable;

    move-result-object v5

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->getCustomVariableAt(I)Lcom/google/android/apps/analytics/CustomVariable;

    move-result-object v6

    if-eqz v5, :cond_30

    if-nez v6, :cond_30

    invoke-virtual {v1, v5}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->setCustomVariable(Lcom/google/android/apps/analytics/CustomVariable;)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->useStoredVisitorVars:Z

    :cond_36
    if-eqz v1, :cond_af

    :goto_38
    if-gt v0, v8, :cond_af

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->isIndexAvailable(I)Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->getCustomVariableAt(I)Lcom/google/android/apps/analytics/CustomVariable;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cv_index"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/CustomVariable;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cv_name"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/CustomVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cv_scope"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/CustomVariable;->getScope()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cv_value"

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/CustomVariable;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "custom_variables"

    const-string v6, "event_id"

    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v5, "custom_var_cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cv_index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/CustomVariable;->getIndex()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_a2} :catch_a5

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catch_a5
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    return-void
.end method

.method public putEvent(Lcom/google/android/apps/analytics/Event;)V
    .registers 12

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_f

    const-string v0, "googleanalytics"

    const-string v1, "Store full. Not storing last event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->sessionUpdated:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/PersistentEventStore;->storeUpdatedSession()V

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_10a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_1b} :catch_116

    move-result-object v0

    :try_start_1c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "user_id"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "account_id"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->accountId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "random_val"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x41dfffffffc00000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "timestamp_first"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timestamp_previous"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timestamp_current"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "visits"

    iget v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "category"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "label"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen_width"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->screenWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen_height"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->screenHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "events"

    const-string v3, "event_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ee

    iget v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    const-string v1, "events"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "event_id DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/apps/analytics/PersistentEventStore;->putCustomVariables(Lcom/google/android/apps/analytics/Event;J)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e7
    .catchall {:try_start_1c .. :try_end_e7} :catchall_111
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_e7} :catch_f6

    :goto_e7
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_e

    :cond_ee
    :try_start_ee
    const-string v1, "PersistentEventStore/putEvent"

    const-string v2, "Error when attempting to add event to database."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_111
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_f5} :catch_f6

    goto :goto_e7

    :catch_f6
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_fa
    :try_start_fa
    const-string v2, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_10a

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_e

    :catchall_10a
    move-exception v0

    :goto_10b
    if-eqz v1, :cond_110

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_110
    throw v0

    :catchall_111
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_10b

    :catch_116
    move-exception v0

    goto :goto_fa
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "referrer"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "install_referrer"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public startNewVisit()V
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->sessionUpdated:Z

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->useStoredVisitorVars:Z

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/PersistentEventStore;->getNumStoredEvents()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    :try_start_d
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "session"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_1e} :catch_cf

    move-result-object v1

    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_8d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    iput-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "timestamp_first"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp_previous"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "timestamp_current"

    iget-wide v4, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "visits"

    iget v4, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "store_id"

    iget v4, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "session"

    const-string v4, "timestamp_first"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_87
    .catchall {:try_start_1f .. :try_end_87} :catchall_cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_87} :catch_b5

    :goto_87
    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    const/4 v0, 0x0

    :try_start_8e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I
    :try_end_b4
    .catchall {:try_start_8e .. :try_end_b4} :catchall_cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8e .. :try_end_b4} :catch_b5

    goto :goto_87

    :catch_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    const-string v2, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_cd

    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8c

    :catchall_c5
    move-exception v0

    move-object v1, v8

    :goto_c7
    if-eqz v1, :cond_cc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_cc
    throw v0

    :catchall_cd
    move-exception v0

    goto :goto_c7

    :catch_cf
    move-exception v0

    move-object v1, v8

    goto :goto_b6
.end method

.method storeUpdatedSession()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "timestamp_previous"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timestamp_current"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "visits"

    iget v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "session"

    const-string v3, "timestamp_first=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->sessionUpdated:Z
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string v1, "googleanalytics"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method
