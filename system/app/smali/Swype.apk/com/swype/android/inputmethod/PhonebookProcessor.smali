.class public Lcom/swype/android/inputmethod/PhonebookProcessor;
.super Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;
.source "PhonebookProcessor.java"


# static fields
.field private static final BATCH_WAIT_PERIOD:I = 0x1388

.field private static final CONTACT_ID_INDEX:I = 0x1

.field private static final EVERY_DAY:J = 0x15180L

.field private static final FAMILY_NAME_INDEX:I = 0x3

.field private static final GIVEN_NAME_INDEX:I = 0x2

.field private static final MAX_TEXT_LENGTH:I = 0x50

.field public static final PHONEBOOK_PROCESSING_TIMEOUT_SECONDS:J = 0x15180L

.field private static final PROCESS_BATCH_SIZE:I = 0x14

.field private static final VISIBLE_ID_INDEX:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;-><init>()V

    return-void
.end method

.method private addContacts(Lcom/swype/android/jni/SwypeCore;)I
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    .line 143
    invoke-direct {p0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getVisibleContacts()Landroid/database/Cursor;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_6f

    .line 146
    :try_start_7
    invoke-direct {p0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getStructuredNames()Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_5f

    move-result-object v1

    .line 147
    if-eqz v1, :cond_6d

    .line 149
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 150
    :cond_10
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_64

    .line 152
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 156
    :cond_21
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_30

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_21

    .line 158
    :cond_30
    cmp-long v3, v5, v3

    if-nez v3, :cond_10

    .line 160
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getSafeString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_44

    .line 162
    invoke-virtual {p1, v3}, Lcom/swype/android/jni/SwypeCore;->importGivenName(Ljava/lang/String;)V

    .line 165
    :cond_44
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getSafeString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_54

    .line 167
    invoke-virtual {p1, v3}, Lcom/swype/android/jni/SwypeCore;->importFamilyName(Ljava/lang/String;)V

    .line 169
    :cond_54
    add-int/lit8 v2, v2, 0x1

    .line 170
    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/PhonebookProcessor;->handleSleep(I)V
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_5a

    goto :goto_10

    .line 174
    :catchall_5a
    move-exception v2

    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .line 178
    :catchall_5f
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 174
    :cond_64
    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_5f

    move v1, v2

    .line 178
    :goto_68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 181
    :goto_6c
    return v0

    :cond_6d
    move v1, v2

    goto :goto_68

    :cond_6f
    move v0, v2

    goto :goto_6c
.end method

.method private addDictionaryWords(Lcom/swype/android/jni/SwypeCore;)I
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 187
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 188
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "word"

    aput-object v0, v2, v6

    .line 191
    const-string v5, "word COLLATE LOCALIZED ASC"

    .line 197
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_37

    move v1, v6

    .line 201
    :goto_19
    :try_start_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 202
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getSafeString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1, v2}, Lcom/swype/android/jni/SwypeCore;->importDictionaryWord(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    .line 205
    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/PhonebookProcessor;->handleSleep(I)V
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_2d

    goto :goto_19

    .line 208
    :catchall_2d
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 211
    :goto_36
    return v0

    :cond_37
    move v0, v6

    goto :goto_36
.end method

.method private static getSafeString(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 5
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/16 v2, 0x50

    .line 216
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_13

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_13
    return-object v0
.end method

.method private getStructuredNames()Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 109
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "contact_id"

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string v6, "data2"

    aput-object v6, v2, v0

    const/4 v0, 0x3

    const-string v6, "data3"

    aput-object v6, v2, v0

    .line 115
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mimetype=? AND (data2 NOTNULL OR data3 NOTNULL)"

    .line 118
    .local v3, selection:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/name"

    aput-object v0, v4, v7

    .line 121
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v5, "contact_id ASC"

    .line 123
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getVisibleContacts()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 93
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v0

    .line 98
    const-string v5, "_id ASC"

    .line 102
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private handleSleep(I)V
    .registers 4
    .parameter

    .prologue
    .line 131
    rem-int/lit8 v0, p1, 0x14

    if-nez v0, :cond_9

    .line 134
    const-wide/16 v0, 0x1388

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    .line 138
    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method public getRunPeriodMsec()J
    .registers 3

    .prologue
    .line 49
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string v0, "PhonebookProcessor"

    return-object v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 61
    const-string v0, "Swype"

    const-string v1, "PhonebookProcessor: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_7
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 64
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onCreateDefault()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_5f

    .line 68
    :try_start_14
    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->addContacts(Lcom/swype/android/jni/SwypeCore;)I

    move-result v1

    .line 69
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhonebookProcessor: contacts processed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/PhonebookProcessor;->addDictionaryWords(Lcom/swype/android/jni/SwypeCore;)I

    move-result v1

    .line 71
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhonebookProcessor: dictionary words processed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->flushUserDatabase()V
    :try_end_4f
    .catchall {:try_start_14 .. :try_end_4f} :catchall_5a

    .line 75
    :try_start_4f
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_5f

    .line 80
    :goto_52
    const-string v0, "Swype"

    const-string v1, "PhonebookProcessor: end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 75
    :catchall_5a
    move-exception v1

    :try_start_5b
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    throw v1
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5f} :catch_5f

    .line 79
    :catch_5f
    move-exception v0

    .line 78
    const-string v1, "Swype"

    const-string v2, "PhonebookProcessor: error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52
.end method
