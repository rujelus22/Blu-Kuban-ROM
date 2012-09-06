.class public Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;
.super Ljava/lang/Object;
.source "AndroidSmsPersistenceManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_COLUMN_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field private static final DB_COLUMN_EXCEPTION_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final DB_COLUMN_LOCAL_CONVERSATION_ID:Ljava/lang/String; = "local_id"

.field private static final DB_COLUMN_PHONECALL:Ljava/lang/String; = "phonecall"

.field private static final DB_COLUMN_PHONECALL_ID:Ljava/lang/String; = "sms_phonecall_id"

.field private static final DB_COLUMN_REQUEST_ID:Ljava/lang/String; = "request_id"

.field private static final DB_COLUMN_STATE:Ljava/lang/String; = "state"

.field private static final DB_COLUMN_VOICE_MODEL_CONVERSATION_ID:Ljava/lang/String; = "voice_model_id"

.field private static final DB_NAME:Ljava/lang/String; = "sms.outbox.db"

.field private static final DB_QUERY_CONVERSATION_ID:Ljava/lang/String; = null

.field private static final DB_QUERY_PHONECALL_ID:Ljava/lang/String; = null

.field private static final DB_TABLE_CONVERSATION_MAPPINGS:Ljava/lang/String; = "mappings"

.field private static final DB_TABLE_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final DB_TABLE_OUTBOXES:Ljava/lang/String; = "outboxes"

.field private static final DB_TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final DB_VERSION:I = 0x3


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "conversation_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->DB_QUERY_CONVERSATION_ID:Ljava/lang/String;

    .line 60
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "sms_phonecall_id"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->DB_QUERY_PHONECALL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 3
    .parameter "context"
    .parameter "executor"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->executor:Ljava/util/concurrent/Executor;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->writeOutboxes([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->writeUpdatedOutboxState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/util/Map;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->writeConversationMappings(Ljava/util/Map;)V

    return-void
.end method

.method private insertExceptionIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .registers 8
    .parameter "database"
    .parameter "smsPhoneCallId"
    .parameter "exceptionStatus"

    .prologue
    .line 179
    const/4 v1, 0x2

    .line 180
    .local v1, numExceptionValues:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 181
    .local v0, exceptionValues:Landroid/content/ContentValues;
    const-string v2, "sms_phonecall_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "status_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string v2, "exceptions"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 184
    return-void
.end method

.method private insertMappingIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "db"
    .parameter "localConversationId"
    .parameter "voiceModelConversationId"

    .prologue
    .line 192
    const/4 v1, 0x2

    .line 193
    .local v1, numMappingValues:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 194
    .local v0, mappingValues:Landroid/content/ContentValues;
    const-string v2, "local_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "voice_model_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "mappings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 197
    return-void
.end method

.method private insertOutboxInformationIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .registers 8
    .parameter "database"
    .parameter "conversationId"
    .parameter "outboxState"

    .prologue
    .line 155
    const/4 v0, 0x2

    .line 156
    .local v0, numOutboxValues:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 157
    .local v1, outboxValues:Landroid/content/ContentValues;
    const-string v2, "conversation_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v2, "outboxes"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    return-void
.end method

.method private insertSmsIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;)V
    .registers 9
    .parameter "database"
    .parameter "conversationId"
    .parameter "sms"

    .prologue
    .line 165
    const/4 v0, 0x2

    .line 166
    .local v0, numSmsValues:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 167
    .local v1, smsValues:Landroid/content/ContentValues;
    const-string v2, "conversation_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "phonecall"

    iget-object v3, p3, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->phoneCall:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 169
    const-string v2, "request_id"

    iget-wide v3, p3, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v2, "sms"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 171
    return-void
.end method

.method private declared-synchronized writeConversationMappings(Ljava/util/Map;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, localConversationIdsByVoiceModelConversationId:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_59

    .line 235
    .local v0, databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    const/4 v1, 0x0

    .line 237
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_10} :catch_40

    .line 240
    :try_start_10
    const-string v5, "mappings"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 243
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->insertMappingIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_3b

    goto :goto_1f

    .line 247
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_3b
    move-exception v5

    :try_start_3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_40} :catch_40

    .line 249
    :catch_40
    move-exception v2

    .line 250
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_41
    const-string v5, "SmsOutboxPersistenceManager: failed to save mappings."

    invoke-static {v5, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_5c

    .line 252
    if-eqz v1, :cond_4b

    .line 253
    :try_start_48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_59

    .line 256
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-void

    .line 245
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_3b

    .line 247
    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_53} :catch_40

    .line 252
    if-eqz v1, :cond_4b

    .line 253
    :try_start_55
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_4b

    .line 234
    .end local v0           #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_59
    move-exception v5

    monitor-exit p0

    throw v5

    .line 252
    .restart local v0       #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_5c
    move-exception v5

    if-eqz v1, :cond_62

    .line 253
    :try_start_5f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_62
    throw v5
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_59
.end method

.method private declared-synchronized writeOutboxes([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
    .registers 16
    .parameter "outboxes"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    new-instance v2, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->context:Landroid/content/Context;

    invoke-direct {v2, v11}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_75

    .line 116
    .local v2, databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    const/4 v3, 0x0

    .line 118
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_10} :catch_69

    .line 122
    :try_start_10
    const-string v11, "outboxes"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    const-string v11, "sms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    const-string v11, "exceptions"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_29
    if-ge v6, v7, :cond_57

    aget-object v9, v0, v6

    .line 128
    .local v9, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    iget-object v11, v9, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->conversationId:Ljava/lang/String;

    iget v12, v9, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->state:I

    invoke-direct {p0, v3, v11, v12}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->insertOutboxInformationIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 131
    iget-object v1, v9, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->pendingSmses:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;

    .local v1, arr$:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_38
    if-ge v5, v8, :cond_53

    aget-object v10, v1, v5

    .line 132
    .local v10, sms:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
    iget-object v11, v9, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;->conversationId:Ljava/lang/String;

    invoke-direct {p0, v3, v11, v10}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->insertSmsIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;)V

    .line 134
    iget-object v11, v10, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->exceptionStatus:Ljava/lang/Integer;

    if-eqz v11, :cond_50

    .line 135
    iget-object v11, v10, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->messageId:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;->exceptionStatus:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v3, v11, v12}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->insertExceptionIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 131
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 126
    .end local v10           #sms:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
    :cond_53
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_29

    .line 139
    .end local v1           #arr$:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$PendingSmsData;
    .end local v8           #len$:I
    .end local v9           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    :cond_57
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_10 .. :try_end_5a} :catchall_64

    .line 141
    :try_start_5a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5d} :catch_69

    .line 146
    if-eqz v3, :cond_62

    .line 147
    :try_start_5f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_75

    .line 150
    .end local v6           #i$:I
    :cond_62
    :goto_62
    monitor-exit p0

    return-void

    .line 141
    :catchall_64
    move-exception v11

    :try_start_65
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_69} :catch_69

    .line 143
    :catch_69
    move-exception v4

    .line 144
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6a
    const-string v11, "SmsOutboxPersistenceManager: failed to save outboxes."

    invoke-static {v11, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_78

    .line 146
    if-eqz v3, :cond_62

    .line 147
    :try_start_71
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_62

    .line 115
    .end local v2           #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_75
    move-exception v11

    monitor-exit p0

    throw v11

    .line 146
    .restart local v2       #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_78
    move-exception v11

    if-eqz v3, :cond_7e

    .line 147
    :try_start_7b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7e
    throw v11
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_75
.end method

.method private declared-synchronized writeUpdatedOutboxState(Ljava/lang/String;I)V
    .registers 11
    .parameter "conversationId"
    .parameter "state"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4a

    .line 205
    .local v0, databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    const/4 v1, 0x0

    .line 207
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_10} :catch_3e

    .line 210
    const/4 v6, 0x1

    :try_start_11
    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 211
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    .line 212
    .local v3, numOutboxValues:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 213
    .local v4, outboxValues:Landroid/content/ContentValues;
    const-string v6, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v6, "outboxes"

    sget-object v7, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->DB_QUERY_CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_39

    .line 217
    :try_start_2f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_32} :catch_3e

    .line 222
    if-eqz v1, :cond_37

    .line 223
    :try_start_34
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4a

    .line 226
    .end local v3           #numOutboxValues:I
    .end local v4           #outboxValues:Landroid/content/ContentValues;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    .line 217
    :catchall_39
    move-exception v6

    :try_start_3a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 219
    :catch_3e
    move-exception v2

    .line 220
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3f
    const-string v6, "SmsOutboxPersistenceManager: failed to update the outbox state."

    invoke-static {v6, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4d

    .line 222
    if-eqz v1, :cond_37

    .line 223
    :try_start_46
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_37

    .line 204
    .end local v0           #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_4a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 222
    .restart local v0       #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4d
    move-exception v6

    if-eqz v1, :cond_53

    .line 223
    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_53
    throw v6
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_4a
.end method


# virtual methods
.method public declared-synchronized loadConversationMappingsFromDatabase()Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 333
    monitor-enter p0

    :try_start_2
    new-instance v8, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_5b

    .line 334
    .local v8, databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    const/4 v0, 0x0

    .line 336
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 337
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v11, localConversationIdsByVoiceModelConversationIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "local_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "voice_model_id"

    aput-object v3, v2, v1

    .line 341
    .local v2, mappingsColumns:[Ljava/lang/String;
    const-string v1, "mappings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_2a} :catch_44

    move-result-object v12

    .line 344
    .local v12, mappingsCursor:Landroid/database/Cursor;
    :goto_2b
    :try_start_2b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 345
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, localConversationId:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 348
    .local v13, voiceModelConversationId:Ljava/lang/String;
    invoke-virtual {v11, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_3f

    goto :goto_2b

    .line 352
    .end local v10           #localConversationId:Ljava/lang/String;
    .end local v13           #voiceModelConversationId:Ljava/lang/String;
    :catchall_3f
    move-exception v1

    :try_start_40
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_44} :catch_44

    .line 355
    .end local v2           #mappingsColumns:[Ljava/lang/String;
    .end local v11           #localConversationIdsByVoiceModelConversationIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #mappingsCursor:Landroid/database/Cursor;
    :catch_44
    move-exception v9

    .line 356
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_45
    const-string v1, "SmsOutboxPersistenceManager: failed to load existing mappings."

    invoke-static {v1, v9}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_5e

    .line 358
    if-eqz v0, :cond_4f

    .line 359
    :try_start_4c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5b

    :cond_4f
    move-object v11, v14

    .line 362
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :cond_50
    :goto_50
    monitor-exit p0

    return-object v11

    .line 352
    .restart local v2       #mappingsColumns:[Ljava/lang/String;
    .restart local v11       #localConversationIdsByVoiceModelConversationIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12       #mappingsCursor:Landroid/database/Cursor;
    :cond_52
    :try_start_52
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_55} :catch_44

    .line 358
    if-eqz v0, :cond_50

    .line 359
    :try_start_57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_50

    .line 333
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #mappingsColumns:[Ljava/lang/String;
    .end local v8           #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    .end local v11           #localConversationIdsByVoiceModelConversationIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #mappingsCursor:Landroid/database/Cursor;
    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 358
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    :catchall_5e
    move-exception v1

    if-eqz v0, :cond_64

    .line 359
    :try_start_61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_64
    throw v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_5b
.end method

.method public declared-synchronized loadOutboxesFromDatabase()[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .registers 39

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    new-instance v23, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->context:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_152

    .line 262
    .local v23, databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    const/4 v4, 0x0

    .line 264
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_d
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 266
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 268
    .local v30, outboxes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;>;"
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "conversation_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "state"

    aput-object v7, v6, v5

    .line 269
    .local v6, outboxColumns:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/4 v5, 0x0

    const-string v7, "phonecall"

    aput-object v7, v35, v5

    const/4 v5, 0x1

    const-string v7, "request_id"

    aput-object v7, v35, v5

    .line 270
    .local v35, smsColumns:[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const-string v7, "status_code"

    aput-object v7, v26, v5

    .line 273
    .local v26, exceptionColumns:[Ljava/lang/String;
    const-string v5, "outboxes"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_14b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_46} :catch_138

    move-result-object v29

    .line 276
    .local v29, outboxCursor:Landroid/database/Cursor;
    :goto_47
    :try_start_47
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_147

    .line 277
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 278
    .local v22, conversationId:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 279
    .local v37, state:I
    new-instance v28, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;-><init>(Ljava/lang/String;)V

    .line 280
    .local v28, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->setState(I)V

    .line 281
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v22, v11, v5

    .line 285
    .local v11, smsWhereArgs:[Ljava/lang/String;
    const-string v8, "sms"

    sget-object v10, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->DB_QUERY_CONVERSATION_ID:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v4

    move-object/from16 v9, v35

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_85
    .catchall {:try_start_47 .. :try_end_85} :catchall_133
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_85} :catch_109

    move-result-object v36

    .line 288
    .local v36, smsCursor:Landroid/database/Cursor;
    :goto_86
    :try_start_86
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 289
    new-instance v21, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 290
    .local v21, bais:Ljava/io/ByteArrayInputStream;
    invoke-static/range {v21 .. v21}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v20

    .line 291
    .local v20, apiPhoneCall:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    new-instance v34, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;-><init>(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)V

    .line 292
    .local v34, sms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 293
    .local v32, requestId:J
    new-instance v31, Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-wide/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/sms/PendingSms;-><init>(Lcom/google/android/apps/googlevoice/core/PhoneCall;J)V

    .line 294
    .local v31, pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->addSms(Lcom/google/android/apps/googlevoice/sms/PendingSms;)V

    .line 297
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v16, v5

    .line 298
    .local v16, exceptionWhereArgs:[Ljava/lang/String;
    const-string v13, "exceptions"

    sget-object v15, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->DB_QUERY_PHONECALL_ID:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v4

    move-object/from16 v14, v26

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_dc
    .catchall {:try_start_86 .. :try_end_dc} :catchall_104

    move-result-object v27

    .line 301
    .local v27, exceptionCursor:Landroid/database/Cursor;
    :try_start_dd
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_100

    .line 302
    new-instance v25, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;-><init>(Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V

    .line 304
    .local v25, exception:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->addExceptionForSms(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_100
    .catchall {:try_start_dd .. :try_end_100} :catchall_129

    .line 307
    .end local v25           #exception:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :cond_100
    :try_start_100
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    goto :goto_86

    .line 311
    .end local v16           #exceptionWhereArgs:[Ljava/lang/String;
    .end local v20           #apiPhoneCall:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .end local v21           #bais:Ljava/io/ByteArrayInputStream;
    .end local v27           #exceptionCursor:Landroid/database/Cursor;
    .end local v31           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v32           #requestId:J
    .end local v34           #sms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :catchall_104
    move-exception v5

    :try_start_105
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_109
    .catchall {:try_start_105 .. :try_end_109} :catchall_133
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_109} :catch_109

    .line 314
    .end local v11           #smsWhereArgs:[Ljava/lang/String;
    .end local v22           #conversationId:Ljava/lang/String;
    .end local v28           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v36           #smsCursor:Landroid/database/Cursor;
    .end local v37           #state:I
    :catch_109
    move-exception v24

    .line 315
    .local v24, e:Ljava/io/IOException;
    :try_start_10a
    const-string v5, "SmsOutboxPersistenceManager: failed to load existing outboxes."

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_111
    .catchall {:try_start_10a .. :try_end_111} :catchall_133

    .line 317
    :try_start_111
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 319
    .end local v24           #e:Ljava/io/IOException;
    :goto_114
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :try_end_122
    .catchall {:try_start_111 .. :try_end_122} :catchall_14b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_111 .. :try_end_122} :catch_138

    .line 323
    if-eqz v4, :cond_127

    .line 324
    :try_start_124
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_152

    .line 327
    .end local v6           #outboxColumns:[Ljava/lang/String;
    .end local v26           #exceptionColumns:[Ljava/lang/String;
    .end local v29           #outboxCursor:Landroid/database/Cursor;
    .end local v30           #outboxes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;>;"
    .end local v35           #smsColumns:[Ljava/lang/String;
    :cond_127
    :goto_127
    monitor-exit p0

    return-object v5

    .line 307
    .restart local v6       #outboxColumns:[Ljava/lang/String;
    .restart local v11       #smsWhereArgs:[Ljava/lang/String;
    .restart local v16       #exceptionWhereArgs:[Ljava/lang/String;
    .restart local v20       #apiPhoneCall:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .restart local v21       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v22       #conversationId:Ljava/lang/String;
    .restart local v26       #exceptionColumns:[Ljava/lang/String;
    .restart local v27       #exceptionCursor:Landroid/database/Cursor;
    .restart local v28       #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .restart local v29       #outboxCursor:Landroid/database/Cursor;
    .restart local v30       #outboxes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;>;"
    .restart local v31       #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .restart local v32       #requestId:J
    .restart local v34       #sms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .restart local v35       #smsColumns:[Ljava/lang/String;
    .restart local v36       #smsCursor:Landroid/database/Cursor;
    .restart local v37       #state:I
    :catchall_129
    move-exception v5

    :try_start_12a
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_12e
    .catchall {:try_start_12a .. :try_end_12e} :catchall_104

    .line 311
    .end local v16           #exceptionWhereArgs:[Ljava/lang/String;
    .end local v20           #apiPhoneCall:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .end local v21           #bais:Ljava/io/ByteArrayInputStream;
    .end local v27           #exceptionCursor:Landroid/database/Cursor;
    .end local v31           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v32           #requestId:J
    .end local v34           #sms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_12e
    :try_start_12e
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_133
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_109

    goto/16 :goto_47

    .line 317
    .end local v11           #smsWhereArgs:[Ljava/lang/String;
    .end local v22           #conversationId:Ljava/lang/String;
    .end local v28           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v36           #smsCursor:Landroid/database/Cursor;
    .end local v37           #state:I
    :catchall_133
    move-exception v5

    :try_start_134
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_138
    .catchall {:try_start_134 .. :try_end_138} :catchall_14b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_134 .. :try_end_138} :catch_138

    .line 320
    .end local v6           #outboxColumns:[Ljava/lang/String;
    .end local v26           #exceptionColumns:[Ljava/lang/String;
    .end local v29           #outboxCursor:Landroid/database/Cursor;
    .end local v30           #outboxes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;>;"
    .end local v35           #smsColumns:[Ljava/lang/String;
    :catch_138
    move-exception v24

    .line 321
    .local v24, e:Landroid/database/sqlite/SQLiteException;
    :try_start_139
    const-string v5, "SmsOutboxPersistenceManager: failed to load existing outboxes."

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_14b

    .line 323
    if-eqz v4, :cond_145

    .line 324
    :try_start_142
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_152

    .line 327
    :cond_145
    const/4 v5, 0x0

    goto :goto_127

    .line 317
    .end local v24           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v6       #outboxColumns:[Ljava/lang/String;
    .restart local v26       #exceptionColumns:[Ljava/lang/String;
    .restart local v29       #outboxCursor:Landroid/database/Cursor;
    .restart local v30       #outboxes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;>;"
    .restart local v35       #smsColumns:[Ljava/lang/String;
    :cond_147
    :try_start_147
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_14b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_147 .. :try_end_14a} :catch_138

    goto :goto_114

    .line 323
    .end local v6           #outboxColumns:[Ljava/lang/String;
    .end local v26           #exceptionColumns:[Ljava/lang/String;
    .end local v29           #outboxCursor:Landroid/database/Cursor;
    .end local v30           #outboxes:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;>;"
    .end local v35           #smsColumns:[Ljava/lang/String;
    :catchall_14b
    move-exception v5

    if-eqz v4, :cond_151

    .line 324
    :try_start_14e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_151
    throw v5
    :try_end_152
    .catchall {:try_start_14e .. :try_end_152} :catchall_152

    .line 261
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #databaseHelper:Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$DatabaseHelper;
    :catchall_152
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public saveConversationMappingsToDatabase(Ljava/util/Map;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, localConversationIdsByVoiceModelConversationId:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_c

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$3;-><init>(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    :cond_c
    return-void
.end method

.method public saveOutboxesToDatabase([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V
    .registers 4
    .parameter "outboxes"

    .prologue
    .line 73
    if-eqz p1, :cond_c

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$1;-><init>(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    :cond_c
    return-void
.end method

.method public updateOutboxState(Ljava/lang/String;I)V
    .registers 5
    .parameter "conversationId"
    .parameter "state"

    .prologue
    .line 85
    if-eqz p1, :cond_c

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager$2;-><init>(Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    :cond_c
    return-void
.end method
