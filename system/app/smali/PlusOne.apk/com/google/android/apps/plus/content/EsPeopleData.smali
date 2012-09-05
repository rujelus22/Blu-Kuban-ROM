.class public Lcom/google/android/apps/plus/content/EsPeopleData;
.super Ljava/lang/Object;
.source "EsPeopleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsPeopleData$5;,
        Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;,
        Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    }
.end annotation


# static fields
.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field private static final SUGGESTED_PEOPLE_COLUMNS:[Ljava/lang/String;

.field private static final sCircleSyncLock:Ljava/lang/Object;

.field private static sHandler:Landroid/os/Handler;

.field private static volatile sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final sPeopleSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 190
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "circle_id"

    aput-object v1, v0, v4

    const-string v1, "circle_name"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "membership_status"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "contact_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "semantic_hints"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->CIRCLES_PROJECTION:[Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sPeopleSyncLock:Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1499
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v4

    const-string v1, "dismissed"

    aput-object v1, v0, v3

    const-string v1, "sort_order"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->SUGGESTED_PEOPLE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    return-void
.end method

.method public static activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 238
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 239
    return-void
.end method

.method private static buildSearchKeysForEmailAddresses(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2069
    .line 2070
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailCount()I

    move-result v1

    .line 2071
    const-string v0, "e:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2072
    if-gtz v1, :cond_f

    if-eqz v0, :cond_57

    .line 2073
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    if-eqz v0, :cond_2c

    .line 2075
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2076
    if-eqz v0, :cond_2c

    .line 2077
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    new-instance v3, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-direct {v3, v5, v0}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    if-ge v0, v1, :cond_57

    .line 2084
    invoke-virtual {p2, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmail(I)Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v3

    .line 2085
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasEmail()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2086
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2087
    if-eqz v3, :cond_54

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2088
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    new-instance v4, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-direct {v4, v5, v3}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 2095
    :cond_57
    return-void
.end method

.method public static changePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2368
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2372
    const-string v1, "profiles"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "plus_one_proto"

    aput-object v3, v2, v8

    const-string v3, "person_id=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v10, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2376
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 2377
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2379
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2381
    if-nez v1, :cond_52

    .line 2382
    invoke-static {p0, p1, v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->getEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2383
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 2384
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2386
    :cond_4f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2389
    :cond_52
    if-nez v1, :cond_77

    .line 2390
    const-string v0, "EsPeopleData"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2391
    const-string v0, "EsPeopleData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlusOne data does not exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    move v0, v8

    .line 2423
    :goto_76
    return v0

    .line 2398
    :cond_77
    :try_start_77
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_7a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_77 .. :try_end_7a} :catch_83

    move-result-object v1

    .line 2404
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v2

    if-ne v2, p4, :cond_86

    move v0, v9

    .line 2405
    goto :goto_76

    .line 2399
    :catch_83
    move-exception v0

    move v0, v8

    .line 2401
    goto :goto_76

    .line 2408
    :cond_86
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v2

    .line 2409
    invoke-virtual {v2, p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2410
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    .line 2411
    if-eqz p4, :cond_c0

    add-int/lit8 v1, v1, 0x1

    :goto_95
    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2412
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2414
    :try_start_9b
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->replacePlusOneProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    .line 2415
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_c3

    .line 2417
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2420
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2422
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v0, v9

    .line 2423
    goto :goto_76

    .line 2411
    :cond_c0
    add-int/lit8 v1, v1, -0x1

    goto :goto_95

    .line 2417
    :catchall_c3
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_c8
    move-object v1, v5

    goto/16 :goto_3c
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x29

    .line 3090
    const-string v0, "contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_my_circles=0  AND blocked=0 AND gaia_id!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "author_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "author_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity_comments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "person_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "person_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "suggested_people"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "author_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "photo_comment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creator_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "photo_shape"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subject_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "photo_shape"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "circle_action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3115
    return-void
.end method

.method private static collectSearchKeysForName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, searchKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;>;"
    const/4 v7, 0x0

    .line 1997
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2019
    :cond_9
    :goto_9
    return-void

    .line 2001
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2002
    .local v4, string:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2003
    .local v3, offset:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 2004
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v2, :cond_33

    .line 2005
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2006
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_30

    .line 2007
    if-le v1, v3, :cond_2e

    .line 2008
    new-instance v5, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    :cond_2e
    add-int/lit8 v3, v1, 0x1

    .line 2004
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2015
    .end local v0           #c:C
    :cond_33
    if-le v2, v3, :cond_9

    .line 2016
    new-instance v5, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public static deleteFromSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1625
    .local p2, personIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1628
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1630
    :try_start_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1631
    .local v2, personId:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 1635
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #personId:Ljava/lang/String;
    :catchall_1f
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1633
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_1f

    .line 1635
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1639
    return-void
.end method

.method private static doCirclesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 829
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 830
    const/4 v1, 0x0

    .line 856
    :goto_8
    return v1

    .line 833
    :cond_9
    const-string v1, "Circles"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcom/google/android/apps/plus/api/GetCirclesOperation;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/GetCirclesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 836
    .local v0, gco:Lcom/google/android/apps/plus/api/GetCirclesOperation;
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 837
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 838
    const-string v1, "EsPeopleData"

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 839
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    doCirclesSync interrupted due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    :cond_4d
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 846
    :cond_5b
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 847
    const-string v1, "EsPeopleData"

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 848
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    doCirclesSync interrupted due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_99
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_ca
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getCircleCount()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 856
    const/4 v1, 0x1

    goto/16 :goto_8
.end method

.method private static doContactsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z
    .registers 34
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 872
    const/4 v4, 0x0

    .line 1013
    :goto_7
    return v4

    .line 875
    :cond_8
    const-string v4, "Contacts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 876
    const/16 v18, 0x0

    .line 877
    .local v18, count:I
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 879
    .local v19, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryPeopleLastUpdateToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v6

    .line 880
    .local v6, token:Ljava/lang/String;
    const/16 v22, 0x0

    .line 881
    .local v22, newToken:Ljava/lang/String;
    const/16 v28, 0x0

    .line 882
    .local v28, syncTypeKnown:Z
    const/4 v7, 0x0

    .line 883
    .local v7, offset:I
    const/16 v24, 0x0

    .line 884
    .local v24, personsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 885
    .local v17, contactsUpdated:Z
    const/4 v12, 0x0

    .line 886
    .local v12, avatarDownloadPaused:Z
    if-nez v6, :cond_2d

    .line 887
    const/4 v12, 0x1

    .line 888
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->pauseAvatarDownloads()V

    .line 892
    :cond_2d
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v16, contactsInCircles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v23, otherContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_37
    :try_start_37
    new-instance v3, Lcom/google/android/apps/plus/api/GetContactsOperation;

    const/16 v8, 0x12c

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/apps/plus/api/GetContactsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 898
    .local v3, gco:Lcom/google/android/apps/plus/api/GetContactsOperation;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/api/GetContactsOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 899
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_92

    .line 900
    const-string v4, "EsPeopleData"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 901
    const-string v4, "EsPeopleData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    doContactsSync interrupted due to exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    :cond_7d
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8b
    .catchall {:try_start_37 .. :try_end_8b} :catchall_8b

    .line 965
    .end local v3           #gco:Lcom/google/android/apps/plus/api/GetContactsOperation;
    :catchall_8b
    move-exception v4

    if-eqz v12, :cond_91

    .line 966
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->resumeAvatarDownloads()V

    .line 965
    :cond_91
    throw v4

    .line 908
    .restart local v3       #gco:Lcom/google/android/apps/plus/api/GetContactsOperation;
    :cond_92
    :try_start_92
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->hasError()Z

    move-result v4

    if-eqz v4, :cond_102

    .line 909
    const-string v4, "EsPeopleData"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 910
    const-string v4, "EsPeopleData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    doContactsSync interrupted due to error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getErrorCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_d1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getErrorCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 918
    :cond_102
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v26

    .line 919
    .local v26, response:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    if-nez v28, :cond_13b

    .line 920
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    move-result-object v27

    .line 921
    .local v27, syncType:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    sget-object v4, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->INCREMENTAL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11a

    .line 922
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryAllPersonIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashSet;

    move-result-object v24

    .line 924
    :cond_11a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getServerTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 925
    const/16 v28, 0x1

    .line 928
    .end local v27           #syncType:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    :cond_13b
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getInvalidIdCount()I

    move-result v4

    if-lez v4, :cond_14f

    .line 929
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getInvalidIdList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 933
    :cond_14f
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactCount()I
    :try_end_152
    .catchall {:try_start_92 .. :try_end_152} :catchall_8b

    move-result v14

    .line 934
    .local v14, contactCount:I
    if-nez v14, :cond_201

    .line 965
    if-eqz v12, :cond_15a

    .line 966
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->resumeAvatarDownloads()V

    .line 971
    :cond_15a
    if-eqz v24, :cond_165

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_165

    .line 972
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 975
    :cond_165
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_177

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 979
    :cond_177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 981
    if-eqz v17, :cond_1a1

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 983
    .local v25, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 984
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 985
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 989
    .end local v25           #resolver:Landroid/content/ContentResolver;
    :cond_1a1
    sget-object v21, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 990
    .local v21, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v21, :cond_1ab

    .line 991
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 992
    const/4 v4, 0x0

    sput-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 995
    :cond_1ab
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 996
    .local v29, values:Landroid/content/ContentValues;
    const-string v4, "people_last_update_token"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v4, "avatars_downloaded"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string v4, "account_status"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1000
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f2

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 1002
    .restart local v25       #resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1003
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1004
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1007
    .end local v25           #resolver:Landroid/content/ContentResolver;
    :cond_1f2
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 1009
    if-eqz v17, :cond_1fe

    .line 1010
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1013
    :cond_1fe
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 938
    .end local v21           #latch:Ljava/util/concurrent/CountDownLatch;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_201
    add-int v18, v18, v14

    .line 940
    :try_start_203
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactList()Ljava/util/List;

    move-result-object v15

    .line 941
    .local v15, contactList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_20b
    :goto_20b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_238

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 942
    .local v13, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v13}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v4

    if-eqz v4, :cond_22e

    .line 943
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :goto_222
    if-eqz v24, :cond_20b

    .line 948
    invoke-virtual {v13}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 945
    :cond_22e
    invoke-virtual {v13}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_222

    .line 952
    .end local v13           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_238
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_264

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 954
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 956
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_264

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 958
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 962
    :cond_264
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getLastContactIndex()I
    :try_end_267
    .catchall {:try_start_203 .. :try_end_267} :catchall_8b

    move-result v7

    .line 963
    goto/16 :goto_37
.end method

.method public static getBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 575
    .local p3, includedPersonIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 578
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 579
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 580
    .local v6, args:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v12, sb:Ljava/lang/StringBuilder;
    const-string v2, "blocked=1"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    array-length v2, v6

    if-lez v2, :cond_47

    .line 583
    const-string v2, " OR person_id IN ("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2e
    array-length v2, v6

    if-ge v10, v2, :cond_39

    .line 585
    const-string v2, "?,"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 587
    :cond_39
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 588
    const-string v2, ")"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .end local v10           #i:I
    :cond_47
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryBlockedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v13

    .line 592
    .local v13, timestamp:J
    const-wide/16 v4, -0x1

    cmp-long v2, v13, v4

    if-nez v2, :cond_ec

    .line 593
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "blocked_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 596
    const-string v2, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 598
    new-instance v11, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v2, v4}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 600
    .local v11, op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->start()V

    .line 601
    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-nez v2, :cond_84

    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 602
    :cond_84
    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 603
    const-string v2, "EsPeopleData"

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 604
    const-string v2, "EsPeopleData"

    const-string v4, "Cannot obtain blocked people"

    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    :cond_9e
    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 609
    const-string v2, "EsPeopleData"

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 610
    const-string v2, "EsPeopleData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot obtain blocked people: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_c9
    const-string v2, "blocked_people_sync_time"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const-string v2, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    const/4 v8, 0x0

    .line 630
    .end local v11           #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_db
    :goto_db
    return-object v8

    .line 619
    .restart local v11       #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_dc
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_db

    .line 621
    .end local v11           #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_ec
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 623
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v13

    const-wide/16 v16, 0x2710

    cmp-long v2, v4, v16

    if-lez v2, :cond_db

    .line 624
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 625
    .restart local v15       #values:Landroid/content/ContentValues;
    const-string v2, "blocked_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 627
    const-string v2, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncBlockedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_db
.end method

.method private static getCircleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3212
    const-string v0, "f."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3215
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static getCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "usageType"
    .parameter "projection"

    .prologue
    .line 246
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "usageType"
    .parameter "projection"
    .parameter "query"
    .parameter "maxResults"

    .prologue
    .line 266
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryCircleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v11

    .line 267
    .local v11, syncTimestamp:J
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_e

    .line 270
    const/4 v1, 0x1

    :try_start_b
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_72

    .line 279
    :cond_e
    packed-switch p2, :pswitch_data_b2

    .line 331
    :pswitch_11
    const/4 v4, 0x0

    .line 335
    .local v4, selection:Ljava/lang/String;
    :goto_12
    if-eqz p4, :cond_49

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(circle_name LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 338
    .local v10, querySql:Ljava/lang/String;
    if-nez v4, :cond_99

    .line 339
    move-object v4, v10

    .line 346
    .end local v10           #querySql:Ljava/lang/String;
    :cond_49
    :goto_49
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 347
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {v7, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 348
    if-eqz p5, :cond_5d

    .line 349
    const-string v1, "limit"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 352
    :cond_5d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "show_order ASC, UPPER(circle_name) ASC"

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 356
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 358
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #builder:Landroid/net/Uri$Builder;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_71
    return-object v8

    .line 271
    :catch_72
    move-exception v9

    .line 272
    .local v9, e:Ljava/io/IOException;
    const-string v1, "EsPeopleData"

    const-string v2, "Error syncing circles"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v8, 0x0

    goto :goto_71

    .line 281
    .end local v9           #e:Ljava/io/IOException;
    :pswitch_7c
    const-string v4, "0"

    .line 282
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 285
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_7f
    const-string v4, "semantic_hints&33=0 AND (type!=10 OR contact_count>0)"

    .line 290
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 293
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_82
    const-string v4, "semantic_hints&2=0"

    .line 295
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 298
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_85
    const-string v4, "type=1 OR circle_id=\'v.whatshot\'"

    .line 301
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 304
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_88
    const-string v4, "type IN (1,-1)"

    .line 306
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 309
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_8b
    const-string v4, "semantic_hints&8=0"

    .line 311
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 314
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_8e
    const-string v4, "semantic_hints&8=0 AND type=1"

    .line 317
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 320
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_91
    const-string v4, "semantic_hints&64!=0 AND type=1"

    .line 323
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 326
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_95
    const-string v4, "show!=0"

    .line 327
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 341
    .restart local v10       #querySql:Ljava/lang/String;
    :cond_99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_49

    .line 279
    nop

    :pswitch_data_b2
    .packed-switch -0x1
        :pswitch_7c
        :pswitch_11
        :pswitch_7f
        :pswitch_82
        :pswitch_88
        :pswitch_85
        :pswitch_8b
        :pswitch_8e
        :pswitch_91
        :pswitch_95
    .end packed-switch
.end method

.method public static getDefaultShowOrder(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 1259
    packed-switch p0, :pswitch_data_16

    .line 1276
    :pswitch_3
    const/16 v0, 0x3c

    .line 1278
    .local v0, showOrder:I
    :goto_5
    return v0

    .line 1261
    .end local v0           #showOrder:I
    :pswitch_6
    const/16 v0, 0x32

    .line 1262
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 1264
    .end local v0           #showOrder:I
    :pswitch_9
    const/16 v0, 0x28

    .line 1265
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 1267
    .end local v0           #showOrder:I
    :pswitch_c
    const/16 v0, 0x14

    .line 1268
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 1270
    .end local v0           #showOrder:I
    :pswitch_f
    const/16 v0, 0x1e

    .line 1271
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 1273
    .end local v0           #showOrder:I
    :pswitch_12
    const/16 v0, 0x3e8

    .line 1274
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 1259
    nop

    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_c
        :pswitch_3
        :pswitch_f
        :pswitch_9
        :pswitch_6
        :pswitch_12
    .end packed-switch
.end method

.method public static getEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    .line 2255
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->retrieveEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2256
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_f

    .line 2257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2259
    :cond_f
    return-object v0
.end method

.method public static getGaiaId(Ljava/lang/String;)J
    .registers 3
    .parameter

    .prologue
    .line 3224
    const-string v0, "g:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3225
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3227
    :goto_11
    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_11
.end method

.method public static getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "excludedCircleId"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 429
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v9

    .line 430
    .local v9, syncTimestamp:J
    const-wide/16 v3, -0x1

    cmp-long v1, v9, v3

    if-nez v1, :cond_28

    .line 431
    sget-object v8, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 434
    .local v8, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v8, :cond_28

    .line 437
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 440
    const-wide/32 v3, 0x15f90

    :try_start_14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_88

    .line 444
    :goto_19
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    .line 446
    const/4 v1, 0x0

    .line 478
    .end local v8           #latch:Ljava/util/concurrent/CountDownLatch;
    :goto_24
    return-object v1

    .line 451
    .restart local v8       #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_25
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postAvatarSyncRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 456
    .end local v8           #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_28
    if-nez p2, :cond_60

    .line 457
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    .line 461
    .local v2, uri:Landroid/net/Uri;
    :goto_2c
    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 462
    if-eqz p3, :cond_51

    .line 463
    if-nez p6, :cond_6f

    .line 464
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 p6, v0

    .end local p6
    const/4 v1, 0x0

    aput-object p3, p6, v1

    .line 472
    .restart local p6
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND person_id NOT IN (SELECT link_person_id FROM circle_contact WHERE link_circle_id=?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 478
    :cond_51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_24

    .line 459
    .end local v2           #uri:Landroid/net/Uri;
    :cond_60
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_2c

    .line 466
    :cond_6f
    move-object/from16 v7, p6

    .line 467
    .local v7, args:[Ljava/lang/String;
    array-length v1, v7

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 p6, v0

    .line 468
    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, v7

    move-object/from16 v0, p6

    invoke-static {v7, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    move-object/from16 v0, p6

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p3, p6, v1

    goto :goto_3c

    .line 441
    .end local v2           #uri:Landroid/net/Uri;
    .end local v7           #args:[Ljava/lang/String;
    .restart local v8       #latch:Ljava/util/concurrent/CountDownLatch;
    :catch_88
    move-exception v1

    goto :goto_19
.end method

.method public static getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2462
    new-instance v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    invoke-direct {v7}, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;-><init>()V

    .line 2463
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2464
    if-eqz p3, :cond_11

    if-nez v0, :cond_14

    .line 2465
    :cond_11
    invoke-static {p0, p1, p2, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->loadProfileAndContactDataFromDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 2470
    :cond_14
    iget-object v1, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    if-nez v1, :cond_1c

    .line 2471
    invoke-static {p0, p1, p2, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->loadProfileAndContactDataFromServer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 2503
    :cond_1b
    :goto_1b
    return-object v7

    .line 2473
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2474
    if-nez p3, :cond_2d

    iget-wide v1, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contactUpdateTime:J

    sub-long v1, v8, v1

    const-wide/32 v3, 0x37d8e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_37

    .line 2475
    :cond_2d
    const-string v1, "contact_update_time"

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    if-nez v0, :cond_81

    .line 2478
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2486
    :cond_37
    :goto_37
    iget-object v0, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    if-eqz v0, :cond_48

    if-nez p3, :cond_48

    iget-wide v0, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileUpdateTime:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    .line 2488
    :cond_48
    const-string v0, "profile_update_time"

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    new-instance v0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2492
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->startThreaded()V

    .line 2495
    :cond_5b
    iget-object v0, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->isPlusPage(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    if-eqz v0, :cond_74

    if-nez p3, :cond_74

    iget-wide v0, v7, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneUpdateTime:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    .line 2498
    :cond_74
    const-string v0, "plus_one_update_time"

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/service/EsService;->getProfilePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    goto :goto_1b

    .line 2480
    :cond_81
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactOperation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2482
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->startThreaded()V

    goto :goto_37
.end method

.method private static getPublicId(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPublicUserName()Ljava/lang/String;

    move-result-object v0

    .line 3237
    if-eqz v0, :cond_13

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3240
    :cond_13
    return-object v0
.end method

.method public static getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2945
    .line 2949
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v1

    if-lez v1, :cond_44

    .line 2950
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 2951
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v6

    .line 2952
    sget-object v7, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_6e

    .line 2966
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_33
    move v3, v2

    move v2, v1

    move v1, v0

    .line 2968
    goto :goto_13

    .line 2955
    :pswitch_37
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2981
    :goto_3b
    return-object v0

    :pswitch_3c
    move v0, v1

    move v2, v3

    move v1, v4

    .line 2959
    goto :goto_33

    :pswitch_40
    move v0, v4

    move v1, v2

    move v2, v3

    .line 2963
    goto :goto_33

    :cond_44
    move v1, v0

    move v2, v0

    move v3, v0

    .line 2971
    :cond_47
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v0

    add-int/2addr v0, v3

    .line 2972
    if-nez v0, :cond_65

    .line 2973
    if-eqz v2, :cond_58

    .line 2974
    const v0, 0x7f070226

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 2975
    :cond_58
    if-eqz v1, :cond_62

    .line 2976
    const v0, 0x7f070227

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 2978
    :cond_62
    const-string v0, ""

    goto :goto_3b

    .line 2981
    :cond_65
    const v0, 0x7f070228

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 2952
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_37
        :pswitch_3c
        :pswitch_40
    .end packed-switch
.end method

.method public static getStringForEmailType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2990
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p1, v0

    .line 3000
    :cond_8
    :goto_8
    return-object p1

    .line 2992
    :cond_9
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2993
    const v0, 0x7f0701ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 2994
    :cond_19
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2995
    const v0, 0x7f0701ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 2996
    :cond_29
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p1, v0

    .line 2998
    goto :goto_8
.end method

.method public static getStringForPhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p1, v0

    .line 3053
    :cond_8
    :goto_8
    return-object p1

    .line 3011
    :cond_9
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3012
    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3013
    :cond_19
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3014
    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3015
    :cond_29
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object p1, v0

    .line 3017
    goto :goto_8

    .line 3018
    :cond_33
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3019
    const v0, 0x7f0701de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3020
    :cond_43
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3021
    const v0, 0x7f0701df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3022
    :cond_53
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3023
    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3024
    :cond_63
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3025
    const v0, 0x7f0701ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3026
    :cond_73
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 3027
    const v0, 0x7f0701e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 3028
    :cond_83
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 3029
    const v0, 0x7f0701e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3030
    :cond_94
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 3031
    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3032
    :cond_a5
    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3033
    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3034
    :cond_b6
    const-string v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3035
    const v0, 0x7f0701e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3036
    :cond_c7
    const-string v0, "13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 3037
    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3038
    :cond_d8
    const-string v0, "14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 3039
    const v0, 0x7f0701e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3040
    :cond_e9
    const-string v0, "15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 3041
    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3042
    :cond_fa
    const-string v0, "16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 3043
    const v0, 0x7f0701e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3044
    :cond_10b
    const-string v0, "17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 3045
    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3046
    :cond_11c
    const-string v0, "18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 3047
    const v0, 0x7f0701ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3048
    :cond_12d
    const-string v0, "19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 3049
    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 3050
    :cond_13e
    const-string v0, "20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3051
    const v0, 0x7f0701eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8
.end method

.method public static getStringForPlusPagePhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3062
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3073
    :cond_7
    :goto_7
    return-object v0

    .line 3064
    :cond_8
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3065
    const v0, 0x7f0701d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 3066
    :cond_18
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3067
    const v0, 0x7f0701dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 3068
    :cond_28
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3069
    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 3070
    :cond_38
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3071
    const v0, 0x7f0701ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "projection"

    .prologue
    .line 495
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 498
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 499
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->querySuggestedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v9

    .line 500
    .local v9, timestamp:J
    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-nez v0, :cond_ac

    .line 501
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 502
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "suggested_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    const-string v0, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 506
    new-instance v8, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v8, p0, p1, v0, v2}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 508
    .local v8, op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->start()V

    .line 509
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_47

    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 510
    :cond_47
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 511
    const-string v0, "EsPeopleData"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 512
    const-string v0, "EsPeopleData"

    const-string v2, "Cannot obtain suggested people"

    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :cond_61
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 517
    const-string v0, "EsPeopleData"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 518
    const-string v0, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot obtain suggested people: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_8c
    const-string v0, "suggested_people_sync_time"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v0, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    const/4 v6, 0x0

    .line 537
    .end local v8           #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_9e
    :goto_9e
    return-object v6

    .line 527
    .restart local v8       #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_9f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_9e

    .line 529
    .end local v8           #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_ac
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 530
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-lez v0, :cond_9e

    .line 531
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 532
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v0, "suggested_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    const-string v0, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 535
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncSuggestedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9e
.end method

.method public static hasCircleActionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1440
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1443
    const-string v3, "SELECT count(*) FROM circle_action WHERE notification_id=?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 1448
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public static hasPublicCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2913
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2915
    const-string v3, "circles"

    const-string v4, "type=9"

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_19

    .line 2932
    :cond_18
    :goto_18
    return v0

    .line 2921
    :cond_19
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryCircleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v3

    .line 2922
    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 2925
    const/4 v3, 0x0

    :try_start_24
    invoke-static {p0, p1, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_35

    .line 2932
    :cond_27
    const-string v3, "circles"

    const-string v4, "type=9"

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_18

    move v0, v1

    goto :goto_18

    .line 2926
    :catch_35
    move-exception v0

    .line 2927
    const-string v2, "EsPeopleData"

    const-string v3, "Error syncing circles"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 2928
    goto :goto_18
.end method

.method public static insertBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p2, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 662
    .local v16, unblockedPeople:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 664
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 666
    :try_start_10
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 667
    .local v17, values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    .line 670
    .local v9, arg:[Ljava/lang/String;
    const-string v2, "contacts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "person_id"

    aput-object v5, v3, v4

    const-string v4, "blocked=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_42

    move-result-object v12

    .line 674
    .local v12, cursor:Landroid/database/Cursor;
    :goto_2c
    :try_start_2c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 675
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3d

    goto :goto_2c

    .line 678
    :catchall_3d
    move-exception v2

    :try_start_3e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 719
    .end local v9           #arg:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v17           #values:Landroid/content/ContentValues;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 678
    .restart local v9       #arg:[Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_47
    :try_start_47
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 681
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_65

    .line 682
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    .line 685
    :cond_65
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 686
    const-string v2, "blocked"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    const-string v2, "last_updated_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_87
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 689
    .local v15, personId:Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v15, v9, v2

    .line 690
    const-string v2, "contacts"

    const-string v3, "person_id=?"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_87

    .line 696
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #personId:Ljava/lang/String;
    :cond_a0
    const/4 v13, 0x0

    :goto_a1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_c6

    .line 697
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 699
    .local v10, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v10, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactRowInTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/contacts/proto/Contact$MobileContact;IILjava/util/ArrayList;)Z

    .line 701
    const-string v2, "circle_contact"

    const-string v3, "link_person_id=?"

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 703
    const-string v2, "contact_search"

    const-string v3, "search_person_id=?"

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 696
    add-int/lit8 v13, v13, 0x1

    goto :goto_a1

    .line 707
    .end local v10           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_c6
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 708
    const-string v2, "contact_count"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    const/4 v2, 0x0

    const-string v3, "15"

    aput-object v3, v9, v2

    .line 710
    const-string v2, "circles"

    const-string v3, "circle_id=?"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 712
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 713
    const-string v2, "blocked_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    const-string v2, "account_status"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_104
    .catchall {:try_start_47 .. :try_end_104} :catchall_42

    .line 719
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 723
    .local v11, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 724
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 725
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 726
    return-void
.end method

.method public static insertCircleActionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1462
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v1

    .line 1463
    if-nez v1, :cond_7

    .line 1497
    :goto_6
    return-void

    .line 1467
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1470
    :try_start_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1473
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1474
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_71

    .line 1475
    invoke-virtual {p3, v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v4

    .line 1476
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1477
    invoke-virtual {p3, v0}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getName(I)Ljava/lang/String;

    move-result-object v7

    .line 1479
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1480
    const-string v8, "person_id"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "g:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v4, "gaia_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1482
    const-string v4, "name"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const-string v4, "contacts"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v2, v4, v7, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1487
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1488
    const-string v4, "notification_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v4, "gaia_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1490
    const-string v4, "circle_action"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1493
    :cond_71
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_74
    .catchall {:try_start_f .. :try_end_74} :catchall_78

    .line 1495
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    :catchall_78
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static insertCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1045
    const-string v2, "EsPeopleData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1046
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_79

    .line 1047
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1048
    const-string v4, "EsPeopleData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> Circle id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", members: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", membership status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    .line 1056
    :cond_79
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1057
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1058
    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 1061
    :cond_96
    const/4 v10, 0x0

    .line 1062
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1064
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1066
    :try_start_a2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    const-string v3, "circles"

    sget-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->CIRCLES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b8
    .catchall {:try_start_a2 .. :try_end_b8} :catchall_e2

    move-result-object v6

    .line 1071
    const/4 v3, 0x0

    move v5, v3

    .line 1073
    :cond_bb
    :goto_bb
    :try_start_bb
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_186

    .line 1074
    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1077
    const/4 v3, -0x1

    if-ne v7, v3, :cond_cc

    .line 1078
    const/4 v3, 0x1

    move v5, v3

    .line 1079
    goto :goto_bb

    .line 1082
    :cond_cc
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1083
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1084
    if-nez v3, :cond_e7

    .line 1085
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catchall {:try_start_bb .. :try_end_dc} :catchall_dd

    goto :goto_bb

    .line 1121
    :catchall_dd
    move-exception v3

    :try_start_de
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_e2
    .catchall {:try_start_de .. :try_end_e2} :catchall_e2

    .line 1183
    :catchall_e2
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1087
    :cond_e7
    :try_start_e7
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1090
    const/4 v4, 0x3

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1091
    const/4 v4, 0x4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1092
    const/4 v4, 0x5

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1094
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v17

    .line 1095
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1096
    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11b

    .line 1097
    const v4, 0x7f0701bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1099
    :cond_11b
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v18

    .line 1100
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v19

    .line 1101
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getSemanticHints()I

    move-result v3

    .line 1103
    move/from16 v0, v17

    if-ne v0, v7, :cond_141

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_141

    move/from16 v0, v18

    if-ne v0, v14, :cond_141

    move/from16 v0, v19

    if-ne v0, v15, :cond_141

    move/from16 v0, v16

    if-eq v3, v0, :cond_bb

    .line 1108
    :cond_141
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1109
    const-string v9, "circle_id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v8, "circle_name"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v4, "type"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string v4, "membership_status"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1113
    const-string v4, "contact_count"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    const-string v4, "semantic_hints"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    const-string v3, "show_order"

    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDefaultShowOrder(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_184
    .catchall {:try_start_e7 .. :try_end_184} :catchall_dd

    goto/16 :goto_bb

    .line 1121
    :cond_186
    :try_start_186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1125
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c3

    .line 1126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    const-string v3, "circle_id IN ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1130
    const-string v8, "?,"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a2

    .line 1133
    :cond_1b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1134
    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string v7, "circles"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v7, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1136
    const/4 v3, 0x1

    .line 1140
    :goto_1d8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_203

    .line 1141
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1142
    const-string v6, "circles"

    const-string v7, "circle_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "circle_id"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1e2

    .line 1146
    :cond_202
    const/4 v3, 0x1

    .line 1150
    :cond_203
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a6

    .line 1151
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1152
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_216
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1153
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1154
    const-string v7, "circle_id"

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v7

    .line 1156
    const-string v8, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    const/16 v8, 0x9

    if-ne v7, v8, :cond_29b

    .line 1159
    const-string v8, "circle_name"

    const v9, 0x7f0701bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :goto_251
    const-string v8, "membership_status"

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    const-string v8, "contact_count"

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    const-string v8, "semantic_hints"

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getSemanticHints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    const-string v3, "show_order"

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDefaultShowOrder(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    const-string v3, "show"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1171
    const-string v3, "circles"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_216

    .line 1162
    :cond_29b
    const-string v8, "circle_name"

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_251

    .line 1173
    :cond_2a5
    const/4 v3, 0x1

    .line 1177
    :cond_2a6
    if-nez v5, :cond_2ad

    .line 1178
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1181
    :cond_2ad
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b0
    .catchall {:try_start_186 .. :try_end_2b0} :catchall_e2

    .line 1183
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1186
    if-eqz v3, :cond_2c2

    .line 1187
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1188
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1190
    :cond_2c2
    return-void

    :cond_2c3
    move v3, v10

    goto/16 :goto_1d8
.end method

.method public static insertContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "contact"

    .prologue
    const/4 v6, 0x0

    .line 1841
    const-string v4, "EsPeopleData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1842
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1845
    :cond_d
    const/4 v0, 0x0

    .line 1846
    .local v0, changed:Z
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1848
    .local v2, personId:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1850
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1852
    :try_start_1d
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactModified(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v0

    .line 1853
    if-eqz v0, :cond_29

    .line 1854
    invoke-static {v1, v2, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1855
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_53

    .line 1858
    :cond_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1861
    if-eqz v0, :cond_52

    .line 1862
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1863
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1865
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1867
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyChange(J)V

    .line 1869
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1871
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_52
    return-void

    .line 1858
    :catchall_53
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public static insertContactAndProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 2657
    const/4 v0, 0x0

    .line 2658
    .local v0, changed:Z
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2660
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2662
    :try_start_d
    iget-object v3, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactModified(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v0

    .line 2663
    if-eqz v0, :cond_1a

    .line 2664
    iget-object v3, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v1, p2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2667
    :cond_1a
    iget-object v3, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    if-eqz v3, :cond_25

    .line 2668
    iget-object v3, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-static {v1, p2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceProfileProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2670
    :cond_25
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_52

    .line 2672
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2675
    if-eqz v0, :cond_51

    .line 2676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2677
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v3, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2679
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-static {v3, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2681
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyChange(J)V

    .line 2683
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 2685
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_51
    return-void

    .line 2672
    :catchall_52
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private static insertContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1690
    .local p2, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    const/4 v7, 0x0

    .line 1692
    .local v7, contactsUpdated:Z
    const-string v0, "EsPeopleData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1693
    const/4 v8, 0x0

    .local v8, i:I
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1d

    .line 1694
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 1695
    .local v6, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1693
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1699
    .end local v6           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v8           #i:I
    :cond_1d
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1702
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 1703
    .local v4, fromIndex:I
    :goto_26
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_44

    .line 1704
    add-int/lit8 v5, v4, 0x4b

    .line 1705
    .local v5, toIndex:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v5, v0, :cond_38

    .line 1706
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :cond_38
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1708
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;II)I

    move-result v9

    .line 1709
    .local v9, updateCount:I
    if-lez v9, :cond_42

    .line 1710
    const/4 v7, 0x1

    .line 1712
    :cond_42
    move v4, v5

    .line 1713
    goto :goto_26

    .line 1715
    .end local v5           #toIndex:I
    .end local v9           #updateCount:I
    :cond_44
    return v7
.end method

.method public static insertFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2897
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2899
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2900
    const-string v2, "domain"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    const-string v2, "icon"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2902
    const-string v2, "favicons"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2906
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2907
    return-void
.end method

.method public static insertNewCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1206
    sget-object v1, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1207
    :try_start_5
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1209
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1210
    const-string v4, "circle_id"

    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v4, "circle_name"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v4, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const-string v4, "membership_status"

    sget-object v5, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->OWNER:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    const-string v4, "contact_count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    const-string v4, "semantic_hints"

    if-eqz p5, :cond_79

    :goto_46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    const-string v0, "show"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    const-string v0, "show_order"

    invoke-static {p4}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDefaultShowOrder(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    const-string v0, "circles"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1223
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_7c

    .line 1225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1226
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1227
    return-void

    .line 1216
    :cond_79
    const/16 v0, 0x40

    goto :goto_46

    .line 1223
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method public static insertNewPerson(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "personName"

    .prologue
    const/4 v4, 0x0

    .line 1663
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1665
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1667
    :try_start_c
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 1668
    .local v0, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {v0, p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 1669
    invoke-virtual {v0, p3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 1670
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1671
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_39

    .line 1673
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1678
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1679
    return-void

    .line 1673
    .end local v0           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static insertPersons(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1321
    .local p2, persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1324
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 1325
    .local v3, size:I
    if-lez v3, :cond_2d

    .line 1327
    :try_start_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1329
    const/4 v0, 0x0

    .line 1330
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 1331
    .local v2, from:I
    :goto_13
    if-ge v2, v3, :cond_25

    .line 1332
    add-int/lit16 v4, v2, 0x1f4

    .line 1333
    .local v4, to:I
    if-le v4, v3, :cond_1a

    .line 1334
    move v4, v3

    .line 1336
    :cond_1a
    invoke-interface {p2, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->replacePersonsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1337
    move v2, v4

    .line 1338
    goto :goto_13

    .line 1340
    .end local v4           #to:I
    :cond_25
    if-eqz v0, :cond_2a

    .line 1341
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_2e

    .line 1344
    :cond_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1347
    .end local v0           #changed:Z
    .end local v2           #from:I
    :cond_2d
    return-void

    .line 1344
    :catchall_2e
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public static insertPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2338
    const-string v0, "EsPeopleData"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2339
    const-string v3, "EsPeopleData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlusOneData for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_70

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_45
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2344
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2346
    :try_start_50
    invoke-static {v3, v2, p4}, Lcom/google/android/apps/plus/content/EsPeopleData;->replacePlusOneProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    .line 2347
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_72

    .line 2349
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2352
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2354
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2355
    return-void

    :cond_70
    move-object v0, v1

    .line 2339
    goto :goto_3a

    .line 2349
    :catchall_72
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static insertProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2143
    const-string v0, "EsPeopleData"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2144
    const-string v2, "EsPeopleData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_63

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_32
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2150
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2152
    :try_start_3d
    invoke-static {v2, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceProfileProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Z

    move-result v0

    .line 2153
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_65

    .line 2155
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2158
    if-eqz v0, :cond_62

    .line 2159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2160
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2162
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2164
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 2166
    :cond_62
    return-void

    :cond_63
    move-object v0, v1

    .line 2144
    goto :goto_27

    .line 2155
    :catchall_65
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static insertSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 1517
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1519
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1522
    :try_start_e
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1523
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1525
    const-string v1, "suggested_people"

    sget-object v2, Lcom/google/android/apps/plus/content/EsPeopleData;->SUGGESTED_PEOPLE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_48

    move-result-object v2

    .line 1528
    :goto_25
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1529
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1530
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4d

    move v1, v9

    .line 1531
    :goto_38
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1532
    if-eqz v1, :cond_4f

    .line 1538
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_43

    goto :goto_25

    .line 1544
    :catchall_43
    move-exception v1

    :try_start_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    .line 1614
    :catchall_48
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_4d
    move v1, v8

    .line 1530
    goto :goto_38

    .line 1540
    :cond_4f
    :try_start_4f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_43

    goto :goto_25

    .line 1544
    :cond_57
    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1547
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_8d

    move v2, v9

    .line 1548
    :goto_65
    if-nez v2, :cond_16e

    move v3, v8

    .line 1549
    :goto_68
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_16e

    .line 1550
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 1551
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1553
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_83
    .catchall {:try_start_57 .. :try_end_83} :catchall_48

    move-result v1

    if-eq v1, v3, :cond_8f

    :cond_86
    move v1, v9

    .line 1560
    :goto_87
    if-nez v1, :cond_93

    .line 1614
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1618
    :goto_8c
    return-void

    :cond_8d
    move v2, v8

    .line 1547
    goto :goto_65

    .line 1549
    :cond_8f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_68

    .line 1564
    :cond_93
    :try_start_93
    const-string v1, "suggested_people"

    const-string v2, "dismissed=0"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1567
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1568
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    move v2, v8

    .line 1569
    :goto_a6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_100

    .line 1570
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 1571
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1572
    invoke-virtual {v11, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 1576
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1569
    :goto_bf
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a6

    .line 1580
    :cond_c3
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1581
    const-string v6, "person_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v6, "gaia_id"

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1583
    const-string v6, "name"

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string v1, "contacts"

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v0, v1, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1587
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1588
    const-string v1, "person_id"

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v1, "sort_order"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    const-string v1, "suggested_people"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_bf

    .line 1594
    :cond_100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1595
    const-string v1, "dismissed!=0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13c

    .line 1597
    const-string v1, " AND person_id NOT IN ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_119
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1599
    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1600
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_119

    .line 1602
    :cond_12e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1603
    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1605
    :cond_13c
    const-string v1, "suggested_people"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1607
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1608
    const-string v1, "suggested_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1610
    const-string v1, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1612
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_160
    .catchall {:try_start_93 .. :try_end_160} :catchall_48

    .line 1614
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_8c

    :cond_16e
    move v1, v2

    goto/16 :goto_87
.end method

.method public static isContactDataAvailable(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2696
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2698
    const-string v3, "SELECT count(*) FROM profiles WHERE person_id=?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method private static isContactDeleted(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z
    .registers 2
    .parameter "contact"

    .prologue
    .line 1830
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isContactModified(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z
    .registers 13
    .parameter "db"
    .parameter "contact"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1929
    const-string v1, "contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "last_updated_time"

    aput-object v0, v2, v10

    const-string v3, "person_id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1934
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1935
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_36

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    move v0, v9

    .line 1938
    :goto_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1941
    :goto_33
    return v0

    :cond_34
    move v0, v10

    .line 1935
    goto :goto_30

    .line 1938
    :catchall_36
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1941
    goto :goto_33
.end method

.method private static isPlusPage(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z
    .registers 4
    .parameter "contact"

    .prologue
    const/4 v1, 0x0

    .line 2510
    if-nez p0, :cond_4

    .line 2515
    :cond_3
    :goto_3
    return v1

    .line 2514
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v0

    .line 2515
    .local v0, type:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
    if-eqz v0, :cond_3

    sget-object v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public static loadProfileAndContactDataFromDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2545
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2548
    const-string v1, "profiles"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_update_time"

    aput-object v3, v2, v6

    const-string v3, "contact_proto"

    aput-object v3, v2, v7

    const-string v3, "profile_update_time"

    aput-object v3, v2, v4

    const-string v3, "profile_proto"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "plus_one_update_time"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "plus_one_proto"

    aput-object v4, v2, v3

    const-string v3, "person_id=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2558
    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2559
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contactUpdateTime:J

    .line 2560
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_87

    move-result-object v0

    .line 2561
    if-eqz v0, :cond_52

    .line 2563
    :try_start_4c
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->parseFrom([B)Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_87
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4c .. :try_end_52} :catch_7e

    .line 2568
    :cond_52
    :goto_52
    const/4 v0, 0x2

    :try_start_53
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileUpdateTime:J

    .line 2569
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_87

    move-result-object v0

    .line 2570
    if-eqz v0, :cond_66

    .line 2572
    :try_start_60
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->parseFrom([B)Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_87
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_60 .. :try_end_66} :catch_8c

    .line 2577
    :cond_66
    :goto_66
    const/4 v0, 0x4

    :try_start_67
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneUpdateTime:J

    .line 2578
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_87

    move-result-object v0

    .line 2579
    if-eqz v0, :cond_7a

    .line 2581
    :try_start_74
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_87
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_74 .. :try_end_7a} :catch_95

    .line 2588
    :cond_7a
    :goto_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2590
    return-void

    .line 2564
    :catch_7e
    move-exception v0

    .line 2565
    :try_start_7f
    const-string v2, "EsPeopleData"

    const-string v3, "Cannot parse contact protobuffer: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_87

    goto :goto_52

    .line 2588
    :catchall_87
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2573
    :catch_8c
    move-exception v0

    .line 2574
    :try_start_8d
    const-string v2, "EsPeopleData"

    const-string v3, "Cannot parse profile protobuffer: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 2582
    :catch_95
    move-exception v0

    .line 2583
    const-string v2, "EsPeopleData"

    const-string v3, "Cannot parse plusOne protobuffer: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_87

    goto :goto_7a
.end method

.method private static loadProfileAndContactDataFromServer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 2601
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2603
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->start()V

    .line 2604
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2605
    const-string v1, "EsPeopleData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2606
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getContactOperation interrupted due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2645
    :cond_3d
    :goto_3d
    return-void

    .line 2610
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2611
    const-string v1, "EsPeopleData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2612
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getContactOperation interrupted due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 2617
    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2620
    new-instance v0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2622
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->start()V

    .line 2623
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_be

    .line 2624
    const-string v1, "EsPeopleData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2625
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getProfileDataOperation interrupted due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 2629
    :cond_be
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 2630
    const-string v1, "EsPeopleData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2631
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getProfileDataOperation interrupted due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 2636
    :cond_fe
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v1

    iput-object v1, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 2637
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getContactAttributes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_122

    .line 2638
    iget-object v1, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->getContactAttributes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setAttributes(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p3, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2644
    :cond_122
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContactAndProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    goto/16 :goto_3d
.end method

.method public static modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1240
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1242
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    const-string v0, "circle_name"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v4, "semantic_hints"

    if-eqz p4, :cond_41

    move v0, v1

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    const-string v0, "circles"

    const-string v4, "circle_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1251
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1252
    return-void

    .line 1244
    :cond_41
    const/16 v0, 0x40

    goto :goto_18
.end method

.method private static normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "email"

    .prologue
    const/4 v2, 0x0

    .line 2120
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 2121
    .local v1, parsed:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_a

    array-length v3, v1

    if-nez v3, :cond_b

    .line 2130
    :cond_a
    :goto_a
    return-object v2

    .line 2125
    :cond_b
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2130
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_a
.end method

.method private static postAvatarSyncRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3184
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$4;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 3194
    return-void
.end method

.method private static postOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 3200
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 3201
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sHandler:Landroid/os/Handler;

    .line 3203
    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3204
    return-void
.end method

.method private static postSyncBlockedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3164
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$3;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 3174
    return-void
.end method

.method private static postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3124
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 3134
    return-void
.end method

.method private static postSyncSuggestedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3144
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$2;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 3154
    return-void
.end method

.method private static printAddressList(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3260
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 3262
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 3264
    :cond_22
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 5
    .parameter

    .prologue
    .line 3244
    const-string v0, "EsPeopleData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Contact id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", other ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getOtherIdList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", display name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", public user name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPublicUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", address list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printAddressList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printEmailList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phone list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printPhoneList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", circle ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packed circle ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPackedCircleIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getGroups()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", in my contacts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getInMyContacts()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", last updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    return-void
.end method

.method private static printEmailList(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Email;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3271
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 3273
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 3275
    :cond_22
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printPhoneList(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Phone;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3282
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 3284
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 3286
    :cond_22
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static queryAllPersonIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashSet;
    .registers 11
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1020
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1021
    .local v9, personIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "person_id"

    aput-object v0, v2, v3

    const-string v3, "in_my_circles!=0"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1026
    .local v8, cursor:Landroid/database/Cursor;
    :goto_1a
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1027
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 1030
    :catchall_29
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1033
    return-object v9
.end method

.method private static queryBlockedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 641
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 644
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT blocked_people_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 648
    :goto_f
    return-wide v2

    .line 647
    :catch_10
    move-exception v1

    .line 648
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static queryCircleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 368
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 371
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT circle_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 375
    :goto_f
    return-wide v2

    .line 374
    :catch_10
    move-exception v1

    .line 375
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static queryPeopleLastUpdateToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 806
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 809
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    const-string v3, "SELECT people_last_update_token  FROM account_status"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_9 .. :try_end_f} :catch_11

    move-result-object v2

    .line 813
    :goto_10
    return-object v2

    .line 812
    :catch_11
    move-exception v1

    .line 813
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_10
.end method

.method private static queryPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 788
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 791
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT people_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 795
    :goto_f
    return-wide v2

    .line 794
    :catch_10
    move-exception v1

    .line 795
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static querySuggestedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 548
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 551
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT suggested_people_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 555
    :goto_f
    return-wide v2

    .line 554
    :catch_10
    move-exception v1

    .line 555
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1799
    .line 1800
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1803
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1805
    :try_start_d
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1806
    const-string v0, "in_my_circles"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1807
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 1808
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1809
    const/4 v8, 0x0

    aput-object v0, v6, v8

    .line 1810
    const-string v0, "contacts"

    const-string v8, "person_id=?"

    invoke-virtual {v4, v0, v5, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1812
    if-eqz v0, :cond_58

    .line 1813
    const-string v0, "circle_contact"

    const-string v3, "link_person_id=?"

    invoke-virtual {v4, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1815
    if-lez v0, :cond_4a

    move v0, v1

    :goto_48
    move v3, v0

    .line 1817
    goto :goto_24

    :cond_4a
    move v0, v2

    .line 1815
    goto :goto_48

    .line 1818
    :cond_4c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catchall {:try_start_d .. :try_end_4f} :catchall_53

    .line 1820
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1823
    return v3

    .line 1820
    :catchall_53
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_58
    move v0, v3

    goto :goto_48
.end method

.method public static removeDeletedCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1290
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1310
    :cond_9
    :goto_9
    return-void

    .line 1294
    :cond_a
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1297
    const-string v0, "circle_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1298
    :goto_1d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_32

    .line 1299
    if-lez v0, :cond_2a

    .line 1300
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    :cond_2a
    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1304
    :cond_32
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v4, "circles"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1309
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    goto :goto_9
.end method

.method protected static removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1646
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1647
    const-string v1, "dismissed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1648
    const-string v1, "suggested_people"

    const-string v2, "person_id=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1650
    return-void
.end method

.method private static replaceCircleMembershipInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2026
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v1

    .line 2028
    if-eqz v1, :cond_77

    .line 2029
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 2030
    aput-object p1, v2, v0

    .line 2031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2032
    :goto_12
    if-ge v0, v1, :cond_28

    .line 2033
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2032
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2036
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2038
    if-nez p3, :cond_53

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM circle_contact WHERE link_person_id=? AND link_circle_id NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2048
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR IGNORE INTO circle_contact(link_person_id,link_circle_id) SELECT ?, circle_id FROM circles WHERE circle_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2055
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2062
    :cond_76
    :goto_76
    return-void

    .line 2056
    :cond_77
    if-nez p3, :cond_76

    .line 2057
    const-string v1, "circle_contact"

    const-string v2, "link_person_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_76
.end method

.method private static replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1892
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactDeleted(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1893
    const-string v0, "contacts"

    const-string v3, "person_id=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1923
    :cond_13
    :goto_13
    return-void

    .line 1898
    :cond_14
    const-string v0, "EsPeopleData"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1899
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1902
    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v0

    if-eqz v0, :cond_69

    move v0, v1

    :goto_2c
    const/4 v4, -0x1

    invoke-static {p0, p2, v0, v4, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactRowInTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/contacts/proto/Contact$MobileContact;IILjava/util/ArrayList;)Z

    move-result v0

    .line 1906
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceCircleMembershipInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)V

    .line 1907
    invoke-static {p0, p1, p2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildSearchKeysForEmailAddresses(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/ArrayList;)V

    .line 1908
    invoke-static {p0, p1, v3, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceSearchKeysInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 1912
    if-nez v0, :cond_13

    .line 1913
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    .line 1914
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_13

    .line 1915
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1916
    const-string v5, "photo_downloaded"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1917
    const-string v5, "large_image"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1918
    const-string v5, "avatars"

    const-string v6, "user_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_13

    :cond_69
    move v0, v2

    .line 1903
    goto :goto_2c
.end method

.method private static replaceContactRowInTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/contacts/proto/Contact$MobileContact;IILjava/util/ArrayList;)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1952
    .line 1953
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1954
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1955
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1956
    if-eqz p2, :cond_15

    .line 1957
    invoke-static {p4, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->collectSearchKeysForName(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1959
    :cond_15
    const-string v5, "name"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string v0, "public_id"

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPublicId(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const-string v0, "last_updated_time"

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1962
    const-string v0, "in_my_circles"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1963
    const/4 v0, -0x1

    if-eq p3, v0, :cond_45

    .line 1964
    const-string v0, "blocked"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1966
    :cond_45
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v0

    .line 1967
    if-eqz v0, :cond_58

    .line 1968
    const-string v5, "profile_type"

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1971
    :cond_58
    const-string v0, "contacts"

    const-string v5, "person_id=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object v3, v6, v2

    invoke-virtual {p0, v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1974
    if-nez v0, :cond_b0

    .line 1976
    const-string v0, "person_id"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v0, "gaia_id"

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1978
    const-string v0, "contacts"

    invoke-virtual {p0, v0, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v0, v1

    .line 1981
    :goto_7e
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1982
    const-string v5, "contact_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1983
    const-string v5, "contact_proto"

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1984
    const-string v5, "profiles"

    const-string v6, "person_id=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1986
    if-nez v1, :cond_af

    .line 1987
    const-string v1, "person_id"

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v1, "profiles"

    invoke-virtual {p0, v1, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1990
    :cond_af
    return v0

    :cond_b0
    move v0, v2

    goto :goto_7e
.end method

.method private static replaceContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;II)I
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 1725
    const/4 v10, 0x0

    .line 1726
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1727
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1729
    :try_start_9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1734
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1735
    const-string v2, "person_id IN ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    .line 1736
    :goto_1f
    move/from16 v0, p5

    if-ge v3, v0, :cond_3b

    .line 1737
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 1738
    const-string v4, "?,"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1f

    .line 1741
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1742
    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    const-string v3, "contacts"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "person_id"

    aput-object v7, v4, v2

    const/4 v2, 0x1

    const-string v7, "last_updated_time"

    aput-object v7, v4, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6c
    .catchall {:try_start_9 .. :try_end_6c} :catchall_8a

    move-result-object v3

    .line 1749
    :goto_6d
    :try_start_6d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1750
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1751
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1752
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_6d .. :try_end_84} :catchall_85

    goto :goto_6d

    .line 1755
    :catchall_85
    move-exception v2

    :try_start_86
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    .line 1779
    :catchall_8a
    move-exception v2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1755
    :cond_8f
    :try_start_8f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v4, v10

    .line 1759
    :goto_93
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_d9

    .line 1760
    invoke-interface/range {p3 .. p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-object v3, v0

    .line 1761
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v5

    .line 1762
    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1763
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1764
    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-ltz v2, :cond_bf

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactDeleted(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 1766
    :cond_bf
    add-int/lit8 v2, v4, 0x1

    .line 1767
    invoke-static {p2, v7, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 1768
    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    .line 1769
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_d5

    .line 1770
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    :cond_d5
    :goto_d5
    add-int/lit8 p4, p4, 0x1

    move v4, v2

    goto :goto_93

    .line 1775
    :cond_d9
    if-lez v4, :cond_de

    .line 1776
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_de
    .catchall {:try_start_8f .. :try_end_de} :catchall_8a

    .line 1779
    :cond_de
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1782
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1783
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyChange(J)V

    goto :goto_e5

    .line 1786
    :cond_fd
    return v4

    :cond_fe
    move v2, v4

    goto :goto_d5
.end method

.method private static replacePersonsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1354
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    const-string v0, "gaia_id IN("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1360
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1361
    const-string v2, "?,"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1365
    :cond_45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1366
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1427
    :goto_59
    return v8

    .line 1372
    :cond_5a
    const-string v1, "contacts"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "gaia_id"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1376
    :goto_7a
    :try_start_7a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1377
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1378
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1379
    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_92

    goto :goto_7a

    .line 1382
    :catchall_92
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1388
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 1389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v8

    :cond_a4
    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1390
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 1391
    :cond_bc
    const-string v1, "EsPeopleData"

    invoke-static {v1, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1392
    const-string v1, "EsPeopleData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Person id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; *** Skip. No gaia id or name"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 1399
    :cond_f5
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1400
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_168

    .line 1401
    const-string v1, "EsPeopleData"

    invoke-static {v1, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 1402
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Inserting person id: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", name: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_135
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1407
    const-string v1, "person_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v1, "gaia_id"

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1409
    const-string v1, "name"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v0, "contacts"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v5, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move v0, v9

    :goto_165
    move v2, v0

    .line 1425
    goto/16 :goto_a4

    .line 1413
    :cond_168
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ca

    .line 1414
    const-string v1, "EsPeopleData"

    invoke-static {v1, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 1415
    const-string v1, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Updating person id: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", name: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_1aa
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1420
    const-string v1, "name"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v0, "contacts"

    const-string v1, "gaia_id=?"

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v9

    .line 1423
    goto :goto_165

    :cond_1c7
    move v8, v2

    .line 1427
    goto/16 :goto_59

    :cond_1ca
    move v0, v2

    goto :goto_165
.end method

.method private static replacePlusOneProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2435
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2436
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2437
    const-string v1, "plus_one_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2438
    const-string v1, "plus_one_proto"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2439
    const-string v1, "profiles"

    const-string v2, "person_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2441
    if-nez v1, :cond_3a

    .line 2442
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    const-string v1, "profiles"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2446
    :cond_3a
    return-void
.end method

.method private static replaceProfileProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Z
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2177
    .line 2179
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->toByteArray()[B

    move-result-object v11

    .line 2181
    const-string v1, "contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "blocked"

    aput-object v0, v2, v9

    const-string v3, "person_id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2185
    :try_start_1c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2186
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_b8

    move-result v0

    if-eqz v0, :cond_b5

    move v1, v8

    .line 2193
    :goto_2a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2197
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getPropertyList()Ljava/util/List;

    move-result-object v0

    .line 2198
    if-eqz v0, :cond_e6

    .line 2199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;

    .line 2200
    sget-object v3, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;->getType()Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/wireless/contacts/proto/Profile$ProfileProperty$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v8

    .line 2207
    :goto_50
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2209
    if-eq v1, v0, :cond_e4

    .line 2210
    const-string v1, "blocked"

    if-eqz v0, :cond_bd

    move v0, v8

    :goto_5c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2211
    const-string v0, "contacts"

    const-string v1, "person_id=?"

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v9

    invoke-virtual {p0, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v10, v8

    .line 2218
    :goto_6f
    const-string v1, "profiles"

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "profile_proto"

    aput-object v0, v2, v9

    const-string v3, "person_id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2222
    :try_start_84
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2224
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_bf

    move-result-object v0

    move v1, v9

    .line 2227
    :goto_90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2230
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 2231
    const-string v2, "profile_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2232
    if-eqz v1, :cond_c4

    .line 2233
    const-string v0, "person_id"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const-string v0, "profile_proto"

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2235
    const-string v0, "profiles"

    invoke-virtual {p0, v0, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2245
    :goto_b4
    return v8

    :cond_b5
    move v1, v9

    .line 2186
    goto/16 :goto_2a

    .line 2193
    :catchall_b8
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_bd
    move v0, v9

    .line 2210
    goto :goto_5c

    .line 2227
    :catchall_bf
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2238
    :cond_c4
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 2239
    const-string v0, "profile_proto"

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move v10, v8

    .line 2242
    :cond_d0
    const-string v0, "profiles"

    const-string v1, "person_id=?"

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v9

    invoke-virtual {p0, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v8, v10

    goto :goto_b4

    .line 2193
    :cond_dd
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_b4

    :cond_e1
    move-object v0, v5

    move v1, v8

    goto :goto_90

    :cond_e4
    move v10, v9

    goto :goto_6f

    :cond_e6
    move v0, v9

    goto/16 :goto_50
.end method

.method private static replaceSearchKeysInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2102
    if-nez p3, :cond_f

    .line 2103
    const-string v0, "contact_search"

    const-string v1, "search_person_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2107
    :cond_f
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2108
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    .line 2109
    const-string v3, "search_person_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const-string v3, "search_key_type"

    iget v4, v0, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;->keyType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2111
    const-string v3, "search_key"

    iget-object v0, v0, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const-string v0, "contact_search"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_18

    .line 2114
    :cond_42
    return-void
.end method

.method private static retrieveEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v8

    .line 2265
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_18

    .line 2266
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "proto"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2321
    :goto_17
    return-object v0

    .line 2269
    :cond_18
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2272
    const-string v1, "profiles"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "plus_one_proto"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "plus_one_update_time"

    aput-object v4, v2, v3

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2276
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2277
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 2278
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2280
    if-eqz v2, :cond_5f

    sub-long v2, v5, v3

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_5f

    move-object v0, v1

    .line 2281
    goto :goto_17

    .line 2285
    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2288
    :try_start_62
    const-string v1, "SELECT profile_type FROM contacts WHERE gaia_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 2293
    const/4 v2, 0x2

    if-eq v1, v2, :cond_93

    .line 2294
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "proto"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_62 .. :try_end_83} :catch_84

    goto :goto_17

    .line 2296
    :catch_84
    move-exception v0

    .line 2298
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "proto"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_17

    .line 2301
    :cond_93
    const-string v1, "plus_one_update_time"

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 2304
    invoke-virtual {v1, v8, v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfilePlusOneData(J)V

    .line 2305
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 2307
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 2308
    const-string v0, "EsPeopleData"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2309
    const-string v0, "EsPeopleData"

    const-string v2, "Cannot obtain +1 data"

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2311
    :cond_bf
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 2314
    :cond_c2
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 2315
    const-string v0, "EsPeopleData"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2316
    const-string v0, "EsPeopleData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot obtain +1 data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_ed
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 2321
    :cond_f0
    const-string v1, "profiles"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "plus_one_proto"

    aput-object v4, v2, v3

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_17
.end method

.method public static setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 2714
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2716
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2718
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2719
    if-eqz p3, :cond_82

    array-length v1, p3

    if-lez v1, :cond_82

    .line 2720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO circle_contact(link_person_id,link_circle_id) SELECT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "circle_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "circles"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " WHERE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "circle_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " IN("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 2727
    :goto_5c
    array-length v4, p3

    if-ge v1, v4, :cond_67

    .line 2728
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2727
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 2730
    :cond_67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2731
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2733
    invoke-static {v2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateMemberCountsInTransaction(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 2734
    invoke-static {v2, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2736
    :cond_82
    if-eqz p4, :cond_e0

    array-length v1, p4

    if-lez v1, :cond_e0

    .line 2737
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM circle_contact WHERE link_person_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "link_circle_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " IN "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    :goto_bd
    array-length v1, p4

    if-ge v0, v1, :cond_c8

    .line 2744
    const-string v1, "?,"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 2746
    :cond_c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2747
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2749
    invoke-static {v2, p4}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateMemberCountsInTransaction(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 2752
    :cond_e0
    invoke-static {v2, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateInMyCirclesFlagAndTimestampInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e6
    .catchall {:try_start_d .. :try_end_e6} :catchall_fc

    .line 2756
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2758
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2759
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2760
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2762
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;Z)V

    .line 2763
    return-void

    .line 2756
    :catchall_fc
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2812
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2815
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2817
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2818
    const-string v2, "blocked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2819
    if-eqz p3, :cond_27

    .line 2820
    const-string v2, "in_my_circles"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2822
    :cond_27
    const-string v2, "contacts"

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2825
    if-eqz p3, :cond_43

    .line 2826
    const-string v0, "circle_contact"

    const-string v2, "link_person_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2831
    :cond_43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_63

    .line 2833
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2836
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2838
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PROFILES_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2840
    invoke-static {p0, p1, v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 2841
    return-void

    .line 2833
    :catchall_63
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static setShowCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x2c

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v7, 0x27

    .line 2851
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2856
    const-string v0, "circle_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IN("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2857
    :goto_1f
    array-length v4, p2

    if-ge v0, v4, :cond_37

    .line 2858
    if-eqz v0, :cond_27

    .line 2859
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2861
    :cond_27
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2857
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2863
    :cond_37
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2866
    const-string v0, "show"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2867
    const-string v0, "circles"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2871
    const-string v0, "circle_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " NOT IN("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2872
    :goto_65
    array-length v5, p2

    if-ge v0, v5, :cond_7d

    .line 2873
    if-eqz v0, :cond_6d

    .line 2874
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2876
    :cond_6d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2872
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 2878
    :cond_7d
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    const-string v0, "show"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2881
    const-string v0, "circles"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2883
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2884
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2885
    return-void
.end method

.method private static syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "requestPeopleSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    sget-object v5, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 388
    :try_start_3
    new-instance v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 389
    .local v2, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v4, "Circle sync"

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 390
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->doCirclesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v1

    .line 391
    .local v1, success:Z
    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 392
    if-eqz v1, :cond_47

    .line 393
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "circle_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 397
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "account_status"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 401
    if-eqz p2, :cond_47

    .line 403
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 406
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_47
    monitor-exit v5

    .line 407
    return-void

    .line 406
    .end local v1           #success:Z
    .end local v2           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v4
.end method

.method public static syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter "listener"
    .parameter "forceSync"
    .parameter "startAvatarSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    sget-object v8, Lcom/google/android/apps/plus/content/EsPeopleData;->sPeopleSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 748
    if-nez p4, :cond_17

    .line 749
    :try_start_5
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v0

    .line 750
    .local v0, circleSyncTimestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    const-wide/32 v11, 0xea60

    cmp-long v7, v9, v11

    if-gez v7, :cond_17

    .line 753
    monitor-exit v8

    .line 779
    .end local v0           #circleSyncTimestamp:J
    :goto_16
    return-void

    .line 758
    :cond_17
    sget-object v9, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_61

    .line 759
    :try_start_1a
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->doCirclesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v5

    .line 760
    .local v5, success:Z
    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_64

    .line 761
    :try_start_1f
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->doContactsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 763
    if-eqz v5, :cond_5f

    .line 764
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 765
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 766
    .local v3, now:J
    const-string v7, "circle_sync_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 767
    const-string v7, "people_sync_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 768
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 770
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "account_status"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 774
    if-eqz p5, :cond_5f

    .line 775
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postAvatarSyncRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 778
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #now:J
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_5f
    monitor-exit v8

    goto :goto_16

    .end local v5           #success:Z
    :catchall_61
    move-exception v7

    monitor-exit v8
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_61

    throw v7

    .line 760
    :catchall_64
    move-exception v7

    :try_start_65
    monitor-exit v9
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v7
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_61
.end method

.method public static updateInMyCirclesFlagAndTimestampInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2776
    const-string v0, "UPDATE contacts SET in_my_circles=(EXISTS (SELECT 1 FROM circle_contact WHERE link_person_id=?)),last_updated_time=last_updated_time + 1 WHERE person_id=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2783
    return-void
.end method

.method private static updateMemberCountsInTransaction(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2789
    if-eqz p1, :cond_1c

    array-length v0, p1

    if-eqz v0, :cond_1c

    .line 2790
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 2791
    array-length v3, p1

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_1c

    aget-object v4, p1, v0

    .line 2792
    const/4 v5, 0x1

    aput-object v4, v2, v5

    aput-object v4, v2, v1

    .line 2793
    const-string v4, "UPDATE circles SET contact_count=(SELECT count(*) FROM circle_contact WHERE link_circle_id=?) WHERE circle_id=?"

    invoke-virtual {p0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2791
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2800
    :cond_1c
    return-void
.end method

.method private static updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2528
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2530
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2531
    const-string v2, "contact_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2532
    const-string v2, "profiles"

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2534
    return-void
.end method
