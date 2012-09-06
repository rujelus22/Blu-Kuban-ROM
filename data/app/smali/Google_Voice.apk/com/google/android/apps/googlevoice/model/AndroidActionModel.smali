.class public Lcom/google/android/apps/googlevoice/model/AndroidActionModel;
.super Ljava/lang/Object;
.source "AndroidActionModel.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/ActionModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_COLUMN_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field private static final DB_COLUMN_FLAGS:Ljava/lang/String; = "flags"

.field private static final DB_NAME:Ljava/lang/String; = "model.actions.db"

.field private static final DB_TABLE_ACTIONS:Ljava/lang/String; = "actions"

.field private static final DB_TABLE_SMSACTIONS:Ljava/lang/String; = "sms_actions"

.field private static final DB_VERSION:I = 0x5


# instance fields
.field private actionsByConversationId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Action;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/model/AndroidActionModel;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/util/Map;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->writeToDatabase(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private static writeToDatabase(Landroid/content/Context;Ljava/util/Map;)V
    .registers 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, actionFlagsByConversation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 131
    .local v3, helper:Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    :try_start_c
    const-string v7, "actions"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    const/4 v5, 0x2

    .line 136
    .local v5, numActionValues:I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 137
    .local v6, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 139
    const-string v8, "conversation_id"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v8, "flags"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v7, "actions"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_4c} :catch_4d

    goto :goto_21

    .line 144
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #numActionValues:I
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_4d
    move-exception v1

    .line 145
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AndroidActionModel: failed to save existing actions."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_75

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :goto_6a
    return-void

    .line 143
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #numActionValues:I
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_6b
    :try_start_6b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_6e} :catch_4d

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_6a

    .line 147
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #numActionValues:I
    .end local v6           #values:Landroid/content/ContentValues;
    :catchall_75
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7
.end method


# virtual methods
.method public declared-synchronized addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 6
    .parameter "conversation"
    .parameter "flag"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, conversationId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Action;

    .line 182
    .local v0, action:Lcom/google/android/apps/googlevoice/core/Action;
    if-eqz v0, :cond_1f

    .line 183
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/core/Action;->addFlag(I)Lcom/google/android/apps/googlevoice/core/Action;

    .line 184
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Action;->hasNone()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 185
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_30

    .line 193
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-object v0

    .line 188
    :cond_1f
    :try_start_1f
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Action;

    .end local v0           #action:Lcom/google/android/apps/googlevoice/core/Action;
    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/Action;-><init>()V

    .line 189
    .restart local v0       #action:Lcom/google/android/apps/googlevoice/core/Action;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/core/Action;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 190
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/core/Action;->addFlag(I)Lcom/google/android/apps/googlevoice/core/Action;

    .line 191
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_30

    goto :goto_1d

    .line 180
    .end local v0           #action:Lcom/google/android/apps/googlevoice/core/Action;
    .end local v1           #conversationId:Ljava/lang/String;
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 3
    .parameter "conversationId"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Action;

    return-object v0
.end method

.method public declared-synchronized getActions()[Lcom/google/android/apps/googlevoice/core/Action;
    .registers 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_a

    .line 165
    const-string v1, "VoiceModel.getActions():"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 167
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 168
    .local v0, actions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/googlevoice/core/Action;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/Action;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/googlevoice/core/Action;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v1

    .line 164
    .end local v0           #actions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/googlevoice/core/Action;>;"
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadFromDatabase(Ljava/util/Hashtable;)V
    .registers 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, conversationsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    monitor-enter p0

    :try_start_1
    new-instance v16, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->context:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 52
    .local v16, helper:Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 55
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v20, loadedActionsById:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Action;>;"
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "conversation_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "flags"

    aput-object v5, v4, v3

    .line 58
    .local v4, columns:[Ljava/lang/String;
    const-string v3, "actions"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_c7

    move-result-object v12

    .line 61
    .local v12, cursor:Landroid/database/Cursor;
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 62
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, conversationId:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 65
    .local v15, flags:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 67
    .local v10, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v10, :cond_2d

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/googlevoice/core/Action;

    .line 70
    .local v14, existingAction:Lcom/google/android/apps/googlevoice/core/Action;
    new-instance v19, Lcom/google/android/apps/googlevoice/core/Action;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lcom/google/android/apps/googlevoice/core/Action;-><init>(I)V

    .line 71
    .local v19, loadedAction:Lcom/google/android/apps/googlevoice/core/Action;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/google/android/apps/googlevoice/core/Action;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 74
    if-eqz v14, :cond_68

    .line 75
    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/Action;->getFlags()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/core/Action;->addFlags(I)Lcom/google/android/apps/googlevoice/core/Action;

    .line 77
    :cond_68
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/Action;->hasNone()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 78
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_2d .. :try_end_75} :catchall_d1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_75} :catch_76

    goto :goto_2d

    .line 82
    .end local v10           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v11           #conversationId:Ljava/lang/String;
    .end local v14           #existingAction:Lcom/google/android/apps/googlevoice/core/Action;
    .end local v15           #flags:I
    .end local v19           #loadedAction:Lcom/google/android/apps/googlevoice/core/Action;
    :catch_76
    move-exception v13

    .line 83
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    :try_start_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AndroidActionModel: failed to load existing actions."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_77 .. :try_end_8d} :catchall_d1

    .line 85
    :try_start_8d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :goto_93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_9f
    :goto_9f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 91
    .local v18, key:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catchall {:try_start_8d .. :try_end_c6} :catchall_c7

    goto :goto_9f

    .line 51
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #columns:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #helper:Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #loadedActionsById:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Action;>;"
    :catchall_c7
    move-exception v3

    monitor-exit p0

    throw v3

    .line 85
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #columns:[Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #helper:Lcom/google/android/apps/googlevoice/model/AndroidActionModel$DatabaseHelper;
    .restart local v20       #loadedActionsById:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Action;>;"
    :cond_ca
    :try_start_ca
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_93

    .line 85
    :catchall_d1
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3

    .line 95
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_d9
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_c7

    .line 96
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 6
    .parameter "conversation"
    .parameter "flag"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_a

    .line 199
    const-string v2, "VoiceModel.removeAction():"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 201
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, conversationId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Action;

    .line 203
    .local v0, action:Lcom/google/android/apps/googlevoice/core/Action;
    if-eqz v0, :cond_26

    .line 204
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/core/Action;->removeFlag(I)Lcom/google/android/apps/googlevoice/core/Action;

    .line 205
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Action;->hasNone()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 206
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 209
    :cond_26
    monitor-exit p0

    return-object v0

    .line 198
    .end local v0           #action:Lcom/google/android/apps/googlevoice/core/Action;
    .end local v1           #conversationId:Ljava/lang/String;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized saveToDatabase(Lcom/google/android/apps/googlevoice/BackgroundThread;)V
    .registers 7
    .parameter "backgroundThread"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, actionFlagsByConversation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidActionModel;->actionsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Action;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/googlevoice/core/Action;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Action;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_10

    .line 102
    .end local v0           #actionFlagsByConversation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Action;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3

    .line 108
    .restart local v0       #actionFlagsByConversation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    new-instance v3, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidActionModel$1;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidActionModel;Ljava/util/Map;)V

    invoke-interface {p1, v3}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_32

    .line 114
    monitor-exit p0

    return-void
.end method
