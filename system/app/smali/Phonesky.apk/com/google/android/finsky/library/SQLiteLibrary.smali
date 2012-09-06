.class public Lcom/google/android/finsky/library/SQLiteLibrary;
.super Ljava/lang/Object;
.source "SQLiteLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mQueryContains:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

.field private mQuerySize:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "library_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "doc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "doc_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "offer_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "document_hash"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_certificate_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "app_refund_pre_delivery_endtime_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "app_refund_post_delivery_window_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "subs_auto_renewing"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "subs_initiation_time"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "subs_valid_until_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "subs_trial_until_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/library/SQLiteLibrary;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mContext:Landroid/content/Context;

    .line 188
    return-void
.end method

.method private static bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 5
    .parameter "statement"
    .parameter "entry"

    .prologue
    .line 347
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 348
    const/4 v0, 0x2

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 349
    const/4 v0, 0x3

    iget v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 350
    const/4 v0, 0x4

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 351
    const/4 v0, 0x5

    iget v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 352
    const/4 v0, 0x6

    iget v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 353
    return-void
.end method

.method private static getFullContentValues(Lcom/google/android/finsky/library/LibraryEntry;)Landroid/content/ContentValues;
    .registers 7
    .parameter "entry"

    .prologue
    .line 157
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "library_id"

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->libraryId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "backend"

    iget v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->backendId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v3, "doc_id"

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "doc_type"

    iget v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v3, "offer_type"

    iget v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->offerType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v3, "document_hash"

    iget-wide v4, p0, Lcom/google/android/finsky/library/LibraryEntry;->documentHash:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    instance-of v3, p0, Lcom/google/android/finsky/library/LibraryAppEntry;

    if-eqz v3, :cond_6b

    move-object v0, p0

    .line 166
    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    .line 167
    .local v0, appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    const-string v3, "app_certificate_hash"

    iget-object v4, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->certificateHash:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "app_refund_pre_delivery_endtime_ms"

    iget-wide v4, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v3, "app_refund_post_delivery_window_ms"

    iget-wide v4, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    .end local v0           #appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    :cond_6a
    :goto_6a
    return-object v1

    .line 172
    :cond_6b
    instance-of v3, p0, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    if-eqz v3, :cond_6a

    move-object v2, p0

    .line 173
    check-cast v2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 174
    .local v2, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    const-string v3, "subs_auto_renewing"

    iget-boolean v4, v2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 175
    const-string v3, "subs_initiation_time"

    iget-wide v4, v2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->initiationTimestampMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v3, "subs_valid_until_time"

    iget-wide v4, v2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->validUntilTimestampMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-string v3, "subs_trial_until_time"

    iget-wide v4, v2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6a
.end method

.method public static getVersion()I
    .registers 1

    .prologue
    .line 191
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 6
    .parameter "entry"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->getFullContentValues(Lcom/google/android/finsky/library/LibraryEntry;)Landroid/content/ContentValues;

    move-result-object v0

    .line 221
    .local v0, contentValues:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ownership"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 222
    monitor-exit p0

    return-void

    .line 220
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/android/finsky/library/LibraryEntry;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    .line 228
    :try_start_6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    .line 229
    .local v0, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/SQLiteLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 233
    .end local v0           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1a
    move-exception v2

    :try_start_1b
    iget-object v3, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 226
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .line 231
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_1a

    .line 233
    :try_start_29
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_21

    .line 235
    monitor-exit p0

    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 209
    return-void
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .registers 6
    .parameter "entry"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v2, p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 214
    iget-object v2, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_17

    move-result-wide v0

    .line 215
    .local v0, contains:J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_13
    monitor-exit p0

    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_13

    .line 213
    .end local v0           #contains:J
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ownership"

    sget-object v2, Lcom/google/android/finsky/library/SQLiteLibrary;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 265
    .local v8, all:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;

    invoke-direct {v0, p0, v8}, Lcom/google/android/finsky/library/SQLiteLibrary$1;-><init>(Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/database/Cursor;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 264
    .end local v8           #all:Landroid/database/Cursor;
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .registers 3
    .parameter "entry"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary;->bindPartialStatement(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 241
    monitor-exit p0

    return-void

    .line 239
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reopen()V
    .registers 4

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, helper:Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
    invoke-virtual {v0}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 197
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM ownership WHERE account=? AND library_id=? AND backend=? AND doc_id=? AND doc_type=? AND offer_type=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryContains:Landroid/database/sqlite/SQLiteStatement;

    .line 198
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM ownership WHERE account=? AND library_id=? AND backend=? AND doc_id=? AND doc_type=? AND offer_type=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryRemove:Landroid/database/sqlite/SQLiteStatement;

    .line 199
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM ownership WHERE account=? AND library_id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    .line 200
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(*) FROM ownership"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    .line 201
    return-void
.end method

.method public declared-synchronized resetAccountLibrary(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6
    .parameter "account"
    .parameter "libraryId"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQueryResetAccountLibraryId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 260
    monitor-exit p0

    return-void

    .line 257
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetKeepOnlyAccounts(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 332
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 333
    if-lez v2, :cond_19

    .line 334
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    :cond_19
    const/16 v4, 0x3f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 339
    :cond_2b
    iget-object v4, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ownership"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account NOT IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 341
    .local v3, numDeleted:I
    if-lez v3, :cond_61

    .line 342
    const-string v4, "Removed %d obsolete library rows."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_61
    return-void
.end method

.method public size()I
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary;->mQuerySize:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
