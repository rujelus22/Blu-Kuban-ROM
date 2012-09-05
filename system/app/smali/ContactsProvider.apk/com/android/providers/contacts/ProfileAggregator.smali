.class public Lcom/android/providers/contacts/ProfileAggregator;
.super Lcom/android/providers/contacts/ContactAggregator;
.source "ProfileAggregator.java"


# instance fields
.field private mContactId:J


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V
    .registers 6
    .parameter "contactsProvider"
    .parameter "contactsDatabaseHelper"
    .parameter "photoPriorityResolver"
    .parameter "nameSplitter"
    .parameter "commonNicknameCache"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    .line 37
    return-void
.end method


# virtual methods
.method public aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 9
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 71
    const-string v2, "SELECT _id FROM contacts ORDER BY _id LIMIT 1"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 77
    .local v1, profileContactIdLookup:Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->mContactId:J

    .line 78
    iget-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->mContactId:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/providers/contacts/ProfileAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_25
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_6 .. :try_end_11} :catch_1a

    .line 83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 85
    :goto_14
    iget-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->mContactId:J

    invoke-virtual {p0, p3, p4, v2, v3}, Lcom/android/providers/contacts/ProfileAggregator;->setContactId(JJ)V

    .line 86
    return-void

    .line 79
    :catch_1a
    move-exception v0

    .line 81
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1b
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/ProfileAggregator;->insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->mContactId:J
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    .line 83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_14

    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "txContext"
    .parameter "db"

    .prologue
    .line 63
    return-void
.end method

.method protected appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "sb"
    .parameter "accountTypeWithDataSet"
    .parameter "accountName"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "displayName"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method public computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .registers 5
    .parameter "db"
    .parameter "contactId"

    .prologue
    .line 41
    const-string v0, "profile"

    return-object v0
.end method

.method public onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 7
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ProfileAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 57
    iget-wide v0, p0, Lcom/android/providers/contacts/ProfileAggregator;->mContactId:J

    return-wide v0
.end method
