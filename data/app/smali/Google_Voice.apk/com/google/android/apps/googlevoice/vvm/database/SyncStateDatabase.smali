.class public Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;
.super Ljava/lang/Object;
.source "SyncStateDatabase.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/database/SyncState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$1;,
        Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONVERSATIONS_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE conversations (conversation_id TEXT PRIMARY KEY NOT NULL, read_state INTEGER NOT NULL DEFAULT 0);"

.field private static final CONVERSATIONS_TABLE_NAME:Ljava/lang/String; = "conversations"

.field private static final CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field private static final READ_STATE:Ljava/lang/String; = "read_state"

.field private static syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$1;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    .line 79
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAllConversations()V
    .registers 5

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteConversation(Ljava/lang/String;)V
    .registers 7
    .parameter "conversationId"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete conversation with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const-string v2, "conversation_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 103
    monitor-exit p0

    return-void

    .line 100
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertConversation(Ljava/lang/String;Z)V
    .registers 8
    .parameter "conversationId"
    .parameter "isRead"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert conversation with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", read status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "read_state"

    if-eqz p2, :cond_46

    const/4 v1, 0x1

    :goto_30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conversations"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_48

    .line 115
    monitor-exit p0

    return-void

    .line 112
    :cond_46
    const/4 v1, 0x0

    goto :goto_30

    .line 109
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isConversationAlreadyInserted(Ljava/lang/String;)Z
    .registers 13
    .parameter "conversationId"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 83
    monitor-enter p0

    const/4 v8, 0x0

    .line 86
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_4
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const/4 v2, 0x0

    const-string v3, "conversation_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    if-eqz v8, :cond_2c

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2e

    move-result v0

    if-lez v0, :cond_2c

    move v0, v9

    .line 91
    :goto_25
    if-eqz v8, :cond_2a

    .line 92
    :try_start_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    :cond_2a
    monitor-exit p0

    return v0

    :cond_2c
    move v0, v10

    .line 89
    goto :goto_25

    .line 91
    :catchall_2e
    move-exception v0

    if-eqz v8, :cond_34

    .line 92
    :try_start_31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_34
    throw v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    .line 83
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInsertedConversationRead(Ljava/lang/String;)Z
    .registers 13
    .parameter "conversationId"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 125
    monitor-enter p0

    const/4 v8, 0x0

    .line 128
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_4
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "read_state"

    aput-object v4, v2, v3

    const-string v3, "conversation_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 132
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_44

    .line 133
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    const-string v0, "read_state"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_4b

    move-result v0

    if-ne v0, v9, :cond_42

    move v0, v9

    .line 139
    :goto_3b
    if-eqz v8, :cond_40

    .line 140
    :try_start_3d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_52

    :cond_40
    :goto_40
    monitor-exit p0

    return v0

    :cond_42
    move v0, v10

    .line 134
    goto :goto_3b

    .line 139
    :cond_44
    if-eqz v8, :cond_49

    .line 140
    :try_start_46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_49
    move v0, v10

    goto :goto_40

    .line 139
    :catchall_4b
    move-exception v0

    if-eqz v8, :cond_51

    .line 140
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_52

    .line 125
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateConversationIsRead(Ljava/lang/String;Z)V
    .registers 9
    .parameter "conversationId"
    .parameter "isRead"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    monitor-enter p0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update read status for conversation with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 148
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v2, contentValues:Landroid/content/ContentValues;
    const-string v3, "conversation_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "read_state"

    if-eqz p2, :cond_4e

    :goto_31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase;->syncStateDatabaseHelper:Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncStateDatabase$SyncStateDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const-string v3, "conversation_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_50

    .line 154
    monitor-exit p0

    return-void

    :cond_4e
    move v0, v1

    .line 150
    goto :goto_31

    .line 147
    .end local v2           #contentValues:Landroid/content/ContentValues;
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method
