.class public Lcom/google/android/apps/plus/content/EsPeopleData;
.super Ljava/lang/Object;
.source "EsPeopleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsPeopleData$5;,
        Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;,
        Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;,
        Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;,
        Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;
    }
.end annotation


# static fields
.field public static final ADDRESS_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CIRCLES_PROJECTION:[Ljava/lang/String;

.field public static final CONTACT_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final PROFILE_COLUMNS:[Ljava/lang/String;

.field private static final SUGGESTED_PEOPLE_COLUMNS:[Ljava/lang/String;

.field private static final sCircleSyncLock:Ljava/lang/Object;

.field public static sHandler:Landroid/os/Handler;

.field private static volatile sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

.field private static final sMyProfileSyncLock:Ljava/lang/Object;

.field private static final sPeopleSyncLock:Ljava/lang/Object;

.field private static sProfileFetchLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "circle_id"

    aput-object v1, v0, v5

    const-string v1, "circle_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "membership_status"

    aput-object v1, v0, v7

    const-string v1, "contact_count"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "semantic_hints"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->CIRCLES_PROJECTION:[Ljava/lang/String;

    .line 290
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "profile_state"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "profile_type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 374
    const-class v0, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/EsJson;->getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->ADDRESS_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 389
    const-class v0, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/google/api/services/plusi/model/DataEmailJson;->getInstance()Lcom/google/api/services/plusi/model/DataEmailJson;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "emails"

    aput-object v2, v1, v4

    invoke-static {}, Lcom/google/api/services/plusi/model/DataPhoneJson;->getInstance()Lcom/google/api/services/plusi/model/DataPhoneJson;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "phones"

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/apps/plus/content/EsPeopleData;->ADDRESS_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "addresses"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/json/EsJson;->buildJson(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/google/android/apps/plus/json/EsJson;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->CONTACT_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    .line 427
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "profile_state"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "last_updated_time"

    aput-object v1, v0, v6

    const-string v1, "contact_update_time"

    aput-object v1, v0, v7

    const-string v1, "contact_proto"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "profile_update_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "profile_proto"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "plus_one_update_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "plus_one_proto"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->PROFILE_COLUMNS:[Ljava/lang/String;

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sPeopleSyncLock:Ljava/lang/Object;

    .line 451
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sMyProfileSyncLock:Ljava/lang/Object;

    .line 458
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2271
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v5

    const-string v1, "dismissed"

    aput-object v1, v0, v4

    const-string v1, "sort_order"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->SUGGESTED_PEOPLE_COLUMNS:[Ljava/lang/String;

    .line 3591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sProfileFetchLocks:Ljava/util/HashMap;

    return-void
.end method

.method public static activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 464
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 465
    return-void
.end method

.method public static buildCircleId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleId;
    .registers 3
    .parameter "circleId"

    .prologue
    .line 4334
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleId;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleId;-><init>()V

    .line 4335
    .local v0, id:Lcom/google/api/services/plusi/model/DataCircleId;
    const-string v1, "f."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4336
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataCircleId;->focusId:Ljava/lang/String;

    .line 4340
    :goto_14
    return-object v0

    .line 4338
    :cond_15
    iput-object p0, v0, Lcom/google/api/services/plusi/model/DataCircleId;->focusId:Ljava/lang/String;

    goto :goto_14
.end method

.method public static buildPersonFromPersonIdAndName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 5
    .parameter "personId"
    .parameter "name"

    .prologue
    const/4 v2, 0x2

    .line 4349
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 4350
    .local v0, personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    const-string v1, "g:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4351
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 4357
    :cond_14
    :goto_14
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 4358
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    return-object v1

    .line 4352
    :cond_1c
    const-string v1, "e:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4353
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_14

    .line 4354
    :cond_2c
    const-string v1, "p:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4355
    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_14
.end method

.method private static buildSearchKeysForEmailAddresses(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/ArrayList;)V
    .registers 12
    .parameter "db"
    .parameter "personId"
    .parameter "contact"
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
    .local p3, searchKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;>;"
    const/4 v7, 0x1

    .line 3104
    const/4 v4, 0x0

    .line 3105
    .local v4, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailCount()I

    move-result v3

    .line 3106
    .local v3, emailCount:I
    const-string v6, "e:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 3107
    .local v2, emailBasedId:Z
    if-gtz v3, :cond_10

    if-eqz v2, :cond_58

    .line 3108
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3109
    .restart local v4       #emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2d

    .line 3110
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3111
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 3112
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3113
    new-instance v6, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-direct {v6, v7, v0}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    .end local v0           #address:Ljava/lang/String;
    :cond_2d
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2e
    if-ge v5, v3, :cond_58

    .line 3119
    invoke-virtual {p2, v5}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmail(I)Lcom/google/wireless/contacts/proto/Contact$Email;

    move-result-object v1

    .line 3120
    .local v1, email:Lcom/google/wireless/contacts/proto/Contact$Email;
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$Email;->hasEmail()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 3121
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3122
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_55

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 3123
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3124
    new-instance v6, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-direct {v6, v7, v0}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    .end local v0           #address:Ljava/lang/String;
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 3130
    .end local v1           #email:Lcom/google/wireless/contacts/proto/Contact$Email;
    .end local v5           #i:I
    :cond_58
    return-void
.end method

.method private static buildStreamViewSelection(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 619
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/ArrayList;

    move-result-object v0

    .line 621
    .local v0, circleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "circle_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 624
    if-eqz v1, :cond_1c

    .line 625
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    :cond_1c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 629
    :cond_28
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static changePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Z
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "plusOnedBySelf"

    .prologue
    .line 3509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3511
    .local v14, id:Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3514
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 3515
    .local v16, proto:[B
    const-string v3, "profiles"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "plus_one_proto"

    aput-object v6, v4, v5

    const-string v5, "profile_person_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3519
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 3520
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 3522
    :cond_43
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3524
    if-nez v16, :cond_5e

    .line 3525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lcom/google/android/apps/plus/content/EsPeopleData;->getEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3526
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3527
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 3529
    :cond_5b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3532
    :cond_5e
    if-nez v16, :cond_83

    .line 3533
    const-string v3, "EsPeopleData"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 3534
    const-string v3, "EsPeopleData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PlusOne data does not exist for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_81
    const/4 v3, 0x0

    .line 3565
    :goto_82
    return v3

    .line 3541
    :cond_83
    :try_start_83
    invoke-static/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_86
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_83 .. :try_end_86} :catch_91

    move-result-object v15

    .line 3547
    .local v15, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_94

    .line 3548
    const/4 v3, 0x1

    goto :goto_82

    .line 3542
    .end local v15           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :catch_91
    move-exception v13

    .line 3544
    .local v13, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const/4 v3, 0x0

    goto :goto_82

    .line 3551
    .end local v13           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v15       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_94
    invoke-static {v15}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v10

    .line 3552
    .local v10, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 3553
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v11

    .line 3554
    .local v11, count:I
    if-eqz p3, :cond_ca

    add-int/lit8 v3, v11, 0x1

    :goto_a5
    invoke-virtual {v10, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 3555
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3557
    :try_start_ab
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    invoke-static {v2, v14, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replacePlusOneProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    .line 3558
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_cd

    .line 3560
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3562
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 3563
    .local v17, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v3, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3565
    const/4 v3, 0x1

    goto :goto_82

    .line 3554
    .end local v17           #resolver:Landroid/content/ContentResolver;
    :cond_ca
    add-int/lit8 v3, v11, -0x1

    goto :goto_a5

    .line 3560
    :catchall_cd
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "db"
    .parameter "account"

    .prologue
    const/16 v3, 0x29

    .line 4214
    const-string v0, "contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in_my_circles=0  AND blocked=0 AND gaia_id!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4239
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

    .line 2989
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3011
    :cond_9
    :goto_9
    return-void

    .line 2993
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2994
    .local v4, string:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2995
    .local v3, offset:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 2996
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v2, :cond_33

    .line 2997
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2998
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_30

    .line 2999
    if-le v1, v3, :cond_2e

    .line 3000
    new-instance v5, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3003
    :cond_2e
    add-int/lit8 v3, v1, 0x1

    .line 2996
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 3007
    .end local v0           #c:C
    :cond_33
    if-le v2, v3, :cond_9

    .line 3008
    new-instance v5, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public static convertAudienceToSharingRoster(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/api/services/plusi/model/SharingRoster;
    .registers 13
    .parameter "audience"

    .prologue
    .line 4372
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4374
    .local v6, sharingTargetList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/SharingTargetId;>;"
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 4375
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    new-instance v4, Lcom/google/api/services/plusi/model/SharingTargetId;

    invoke-direct {v4}, Lcom/google/api/services/plusi/model/SharingTargetId;-><init>()V

    .line 4377
    .local v4, shareTarget:Lcom/google/api/services/plusi/model/SharingTargetId;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v7

    .line 4378
    .local v7, type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    sget-object v9, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-ne v7, v9, :cond_2e

    .line 4379
    const-string v9, "3"

    iput-object v9, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->groupType:Ljava/lang/String;

    .line 4394
    :goto_2a
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 4380
    :cond_2e
    sget-object v9, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-ne v7, v9, :cond_37

    .line 4381
    const-string v9, "4"

    iput-object v9, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->groupType:Ljava/lang/String;

    goto :goto_2a

    .line 4382
    :cond_37
    sget-object v9, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-ne v7, v9, :cond_40

    .line 4383
    const-string v9, "2"

    iput-object v9, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->groupType:Ljava/lang/String;

    goto :goto_2a

    .line 4384
    :cond_40
    sget-object v9, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    if-ne v7, v9, :cond_49

    .line 4385
    const-string v9, "1"

    iput-object v9, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->groupType:Ljava/lang/String;

    goto :goto_2a

    .line 4387
    :cond_49
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4388
    .local v1, circleId:Ljava/lang/String;
    const-string v9, "f."

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 4389
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->circleId:Ljava/lang/String;

    goto :goto_2a

    .line 4391
    :cond_5d
    iput-object v1, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->circleId:Ljava/lang/String;

    goto :goto_2a

    .line 4397
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v1           #circleId:Ljava/lang/String;
    .end local v4           #shareTarget:Lcom/google/api/services/plusi/model/SharingTargetId;
    .end local v7           #type:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    :cond_60
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 4398
    .local v8, user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    new-instance v4, Lcom/google/api/services/plusi/model/SharingTargetId;

    invoke-direct {v4}, Lcom/google/api/services/plusi/model/SharingTargetId;-><init>()V

    .line 4399
    .restart local v4       #shareTarget:Lcom/google/api/services/plusi/model/SharingTargetId;
    new-instance v3, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/DataCircleMemberId;-><init>()V

    .line 4402
    .local v3, personId:Lcom/google/api/services/plusi/model/DataCircleMemberId;
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v9

    if-eqz v9, :cond_90

    .line 4403
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/google/api/services/plusi/model/DataCircleMemberId;->obfuscatedGaiaId:Ljava/lang/String;

    .line 4414
    :goto_8a
    iput-object v3, v4, Lcom/google/api/services/plusi/model/SharingTargetId;->personId:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    .line 4415
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 4404
    :cond_90
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 4405
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/google/api/services/plusi/model/DataCircleMemberId;->email:Ljava/lang/String;

    goto :goto_8a

    .line 4408
    :cond_9d
    const-string v9, "EsPeopleData"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 4409
    const-string v10, "EsPeopleData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid user: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v9

    if-eqz v9, :cond_c9

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_bd
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_c9
    const-string v9, ""

    goto :goto_bd

    .line 4418
    .end local v3           #personId:Lcom/google/api/services/plusi/model/DataCircleMemberId;
    .end local v4           #shareTarget:Lcom/google/api/services/plusi/model/SharingTargetId;
    .end local v8           #user:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_cc
    new-instance v5, Lcom/google/api/services/plusi/model/SharingRoster;

    invoke-direct {v5}, Lcom/google/api/services/plusi/model/SharingRoster;-><init>()V

    .line 4419
    .local v5, sharingRoster:Lcom/google/api/services/plusi/model/SharingRoster;
    iput-object v6, v5, Lcom/google/api/services/plusi/model/SharingRoster;->sharingTargetId:Ljava/util/List;

    .line 4421
    return-object v5
.end method

.method private static convertMobileContactToContactInfo(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    .registers 13
    .parameter "contact"

    .prologue
    .line 4425
    new-instance v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    invoke-direct {v6}, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;-><init>()V

    .line 4427
    .local v6, info:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailCount()I

    move-result v10

    if-lez v10, :cond_5c

    .line 4428
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->emails:Ljava/util/List;

    .line 4429
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getEmailList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 4430
    .local v4, email:Lcom/google/wireless/contacts/proto/Contact$Email;
    new-instance v2, Lcom/google/api/services/plusi/model/DataEmail;

    invoke-direct {v2}, Lcom/google/api/services/plusi/model/DataEmail;-><init>()V

    .line 4431
    .local v2, dataEmail:Lcom/google/api/services/plusi/model/DataEmail;
    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Contact$Email;->getType()Ljava/lang/String;

    move-result-object v8

    .line 4432
    .local v8, type:Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    const-string v10, "2"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    const-string v10, "3"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 4433
    :cond_47
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v2, Lcom/google/api/services/plusi/model/DataEmail;->standardTag:Ljava/lang/Integer;

    .line 4437
    :goto_4d
    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/google/api/services/plusi/model/DataEmail;->value:Ljava/lang/String;

    .line 4438
    iget-object v10, v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->emails:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 4435
    :cond_59
    iput-object v8, v2, Lcom/google/api/services/plusi/model/DataEmail;->customTag:Ljava/lang/String;

    goto :goto_4d

    .line 4442
    .end local v2           #dataEmail:Lcom/google/api/services/plusi/model/DataEmail;
    .end local v4           #email:Lcom/google/wireless/contacts/proto/Contact$Email;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #type:Ljava/lang/String;
    :cond_5c
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneCount()I

    move-result v10

    if-lez v10, :cond_af

    .line 4443
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->phones:Ljava/util/List;

    .line 4444
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getPhoneList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 4445
    .local v7, phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    new-instance v3, Lcom/google/api/services/plusi/model/DataPhone;

    invoke-direct {v3}, Lcom/google/api/services/plusi/model/DataPhone;-><init>()V

    .line 4446
    .local v3, dataPhone:Lcom/google/api/services/plusi/model/DataPhone;
    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getType()Ljava/lang/String;

    move-result-object v8

    .line 4447
    .restart local v8       #type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 4448
    .local v9, typeValue:Ljava/lang/Integer;
    if-eqz v8, :cond_8d

    .line 4450
    :try_start_89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_8c} :catch_106

    move-result-object v9

    .line 4456
    :cond_8d
    :goto_8d
    if-eqz v9, :cond_ac

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_ac

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x14

    if-gt v10, v11, :cond_ac

    .line 4457
    iput-object v9, v3, Lcom/google/api/services/plusi/model/DataPhone;->standardTag:Ljava/lang/Integer;

    .line 4462
    :goto_a0
    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/google/api/services/plusi/model/DataPhone;->value:Ljava/lang/String;

    .line 4463
    iget-object v10, v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->phones:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 4459
    :cond_ac
    iput-object v8, v3, Lcom/google/api/services/plusi/model/DataPhone;->customTag:Ljava/lang/String;

    goto :goto_a0

    .line 4467
    .end local v3           #dataPhone:Lcom/google/api/services/plusi/model/DataPhone;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #typeValue:Ljava/lang/Integer;
    :cond_af
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressCount()I

    move-result v10

    if-lez v10, :cond_108

    .line 4468
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->addresses:Ljava/util/List;

    .line 4469
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAddressList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_108

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 4470
    .local v0, address:Lcom/google/wireless/contacts/proto/Contact$Address;
    new-instance v1, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;

    invoke-direct {v1}, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;-><init>()V

    .line 4471
    .local v1, dataAddress:Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getType()Ljava/lang/String;

    move-result-object v8

    .line 4472
    .restart local v8       #type:Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f1

    const-string v10, "2"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f1

    const-string v10, "3"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_103

    .line 4473
    :cond_f1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v1, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;->standardTag:Ljava/lang/Integer;

    .line 4477
    :goto_f7
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;->value:Ljava/lang/String;

    .line 4478
    iget-object v10, v6, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;->addresses:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 4475
    :cond_103
    iput-object v8, v1, Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;->customTag:Ljava/lang/String;

    goto :goto_f7

    .line 4451
    .end local v0           #address:Lcom/google/wireless/contacts/proto/Contact$Address;
    .end local v1           #dataAddress:Lcom/google/android/apps/plus/content/EsPeopleData$AddressInfo;
    .restart local v3       #dataPhone:Lcom/google/api/services/plusi/model/DataPhone;
    .restart local v7       #phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    .restart local v9       #typeValue:Ljava/lang/Integer;
    :catch_106
    move-exception v10

    goto :goto_8d

    .line 4482
    .end local v3           #dataPhone:Lcom/google/api/services/plusi/model/DataPhone;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #phone:Lcom/google/wireless/contacts/proto/Contact$Phone;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #typeValue:Ljava/lang/Integer;
    :cond_108
    return-object v6
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
    .line 2409
    .local p2, personIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2412
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2414
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

    .line 2415
    .local v2, personId:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 2419
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #personId:Ljava/lang/String;
    :catchall_1f
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2417
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_1f

    .line 2419
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2423
    return-void
.end method

.method public static deserializeContactInfo([B)Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;
    .registers 2
    .parameter "contactBytes"

    .prologue
    .line 3393
    if-nez p0, :cond_4

    .line 3394
    const/4 v0, 0x0

    .line 3397
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->CONTACT_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/json/EsJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    goto :goto_3
.end method

.method private static deserializeProfile([B)Lcom/google/api/services/plusi/model/SimpleProfile;
    .registers 2
    .parameter "profileBytes"

    .prologue
    .line 3371
    if-nez p0, :cond_4

    .line 3372
    const/4 v0, 0x0

    .line 3375
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Lcom/google/api/services/plusi/model/SimpleProfileJson;->getInstance()Lcom/google/api/services/plusi/model/SimpleProfileJson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/services/plusi/model/SimpleProfileJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plusi/model/SimpleProfile;

    goto :goto_3
.end method

.method private static doCirclesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z
    .registers 10
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
    .line 1238
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1239
    const/4 v1, 0x0

    .line 1267
    :goto_7
    return v1

    .line 1243
    :cond_8
    const-string v1, "Circles"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1244
    new-instance v0, Lcom/google/android/apps/plus/api/GetCirclesOperation;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/GetCirclesOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1246
    .local v0, gco:Lcom/google/android/apps/plus/api/GetCirclesOperation;
    new-instance v1, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 1247
    const-string v1, "EsPeopleData"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->logAndThrowExceptionIfFailed(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->getCircleCount()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 1267
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private static doContactsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z
    .registers 5
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
    .line 1283
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->doContactsSyncUsingTacoTruck(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v0

    return v0
.end method

.method private static doContactsSyncUsingTacoTruck(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z
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
    .line 1292
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1293
    const/4 v4, 0x0

    .line 1422
    :goto_7
    return v4

    .line 1296
    :cond_8
    const-string v4, "Contacts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1297
    const/16 v18, 0x0

    .line 1298
    .local v18, count:I
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 1300
    .local v19, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryPeopleLastUpdateToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v6

    .line 1301
    .local v6, token:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1302
    .local v22, newToken:Ljava/lang/String;
    const/16 v28, 0x0

    .line 1303
    .local v28, syncTypeKnown:Z
    const/4 v7, 0x0

    .line 1304
    .local v7, offset:I
    const/16 v24, 0x0

    .line 1305
    .local v24, personsToDelete:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 1306
    .local v17, contactsUpdated:Z
    const/4 v12, 0x0

    .line 1307
    .local v12, avatarDownloadPaused:Z
    if-nez v6, :cond_2d

    .line 1308
    const/4 v12, 0x1

    .line 1309
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->pauseAvatarDownloads()V

    .line 1313
    :cond_2d
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v16, contactsInCircles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1317
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

    .line 1319
    .local v3, gco:Lcom/google/android/apps/plus/api/GetContactsOperation;
    new-instance v4, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v4}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/android/apps/plus/api/GetContactsOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 1320
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getErrorCode()I
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_17d

    move-result v4

    const/16 v5, 0x194

    if-ne v4, v5, :cond_f8

    .line 1374
    :cond_59
    if-eqz v12, :cond_5e

    .line 1375
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->resumeAvatarDownloads()V

    .line 1380
    :cond_5e
    if-eqz v24, :cond_69

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    .line 1381
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1384
    :cond_69
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 1385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 1388
    :cond_7b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 1390
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateMemberCounts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1392
    if-eqz v17, :cond_a0

    .line 1393
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 1394
    .local v25, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1395
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1399
    .end local v25           #resolver:Landroid/content/ContentResolver;
    :cond_a0
    sget-object v21, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1400
    .local v21, latch:Ljava/util/concurrent/CountDownLatch;
    if-eqz v21, :cond_aa

    .line 1401
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1402
    const/4 v4, 0x0

    sput-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1405
    :cond_aa
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1406
    .local v29, values:Landroid/content/ContentValues;
    const-string v4, "people_last_update_token"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v4, "avatars_downloaded"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v4, "account_status"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1410
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e9

    .line 1411
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 1412
    .restart local v25       #resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1413
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1416
    .end local v25           #resolver:Landroid/content/ContentResolver;
    :cond_e9
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 1418
    if-eqz v17, :cond_f5

    .line 1419
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1422
    :cond_f5
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1325
    .end local v21           #latch:Ljava/util/concurrent/CountDownLatch;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_f8
    :try_start_f8
    const-string v4, "EsPeopleData"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/api/GetContactsOperation;->logAndThrowExceptionIfFailed(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/GetContactsOperation;->getResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v26

    .line 1328
    .local v26, response:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    if-nez v28, :cond_136

    .line 1329
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    move-result-object v27

    .line 1330
    .local v27, syncType:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    sget-object v4, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->INCREMENTAL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_115

    .line 1331
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryAllPersonIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashSet;

    move-result-object v24

    .line 1333
    :cond_115
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

    .line 1334
    const/16 v28, 0x1

    .line 1337
    .end local v27           #syncType:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    :cond_136
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getInvalidIdCount()I

    move-result v4

    if-lez v4, :cond_14a

    .line 1338
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getInvalidIdList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 1342
    :cond_14a
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactCount()I

    move-result v14

    .line 1343
    .local v14, contactCount:I
    if-eqz v14, :cond_59

    .line 1347
    add-int v18, v18, v14

    .line 1349
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactList()Ljava/util/List;

    move-result-object v15

    .line 1350
    .local v15, contactList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_15a
    :goto_15a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 1351
    .local v13, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v13}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v4

    if-eqz v4, :cond_184

    .line 1352
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :goto_171
    if-eqz v24, :cond_15a

    .line 1357
    invoke-virtual {v13}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_17c
    .catchall {:try_start_f8 .. :try_end_17c} :catchall_17d

    goto :goto_15a

    .line 1374
    .end local v3           #gco:Lcom/google/android/apps/plus/api/GetContactsOperation;
    .end local v13           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v14           #contactCount:I
    .end local v15           #contactList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v26           #response:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    :catchall_17d
    move-exception v4

    if-eqz v12, :cond_183

    .line 1375
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->resumeAvatarDownloads()V

    :cond_183
    throw v4

    .line 1354
    .restart local v3       #gco:Lcom/google/android/apps/plus/api/GetContactsOperation;
    .restart local v13       #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .restart local v14       #contactCount:I
    .restart local v15       #contactList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v26       #response:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    :cond_184
    :try_start_184
    invoke-virtual {v13}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_171

    .line 1361
    .end local v13           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_18e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_1ba

    .line 1362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 1363
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1365
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ba

    .line 1366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z

    move-result v4

    or-int v17, v17, v4

    .line 1367
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1371
    :cond_1ba
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getLastContactIndex()I
    :try_end_1bd
    .catchall {:try_start_184 .. :try_end_1bd} :catchall_17d

    move-result v7

    .line 1372
    goto/16 :goto_37
.end method

.method private static doSyncMyProfileUsingTacoTruck(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
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
    .line 1084
    const-string v1, "MyProfile"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1085
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactOperation;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 1087
    .local v0, gco:Lcom/google/android/apps/plus/api/GetContactOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->start()V

    .line 1088
    const-string v1, "EsPeopleData"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/GetContactOperation;->logAndThrowExceptionIfFailed(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 1090
    return-void
.end method

.method public static ensurePeopleSynced(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 10
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v3, 0x1

    .line 782
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->sInitialSyncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 783
    .local v0, latch:Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_6

    .line 810
    :cond_5
    :goto_5
    return v3

    .line 787
    :cond_6
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v1

    .line 788
    .local v1, syncTimestamp:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_5

    .line 794
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 797
    const-wide/32 v4, 0x15f90

    :try_start_16
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_2b

    .line 801
    :goto_1b
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_27

    .line 803
    const/4 v3, 0x0

    goto :goto_5

    .line 808
    :cond_27
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postAvatarSyncRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_5

    .line 798
    :catch_2b
    move-exception v4

    goto :goto_1b
.end method

.method public static extractGaiaId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "personId"

    .prologue
    .line 4640
    if-eqz p0, :cond_10

    const-string v0, "g:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4641
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4643
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
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
    .line 896
    .local p3, includedPersonIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 899
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 900
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 901
    .local v6, args:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .local v12, sb:Ljava/lang/StringBuilder;
    const-string v2, "blocked=1"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    array-length v2, v6

    if-lez v2, :cond_47

    .line 904
    const-string v2, " OR person_id IN ("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2e
    array-length v2, v6

    if-ge v10, v2, :cond_39

    .line 906
    const-string v2, "?,"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 908
    :cond_39
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 909
    const-string v2, ")"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .end local v10           #i:I
    :cond_47
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryBlockedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v13

    .line 913
    .local v13, timestamp:J
    const-wide/16 v4, -0x1

    cmp-long v2, v13, v4

    if-nez v2, :cond_a6

    .line 914
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 915
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "blocked_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 917
    const-string v2, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 919
    new-instance v11, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v2, v4}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 921
    .local v11, op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->start()V

    .line 922
    invoke-virtual {v11}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 923
    const-string v2, "EsPeopleData"

    invoke-virtual {v11, v2}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->logError(Ljava/lang/String;)V

    .line 925
    const-string v2, "blocked_people_sync_time"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    const-string v2, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 927
    const/4 v8, 0x0

    .line 941
    .end local v11           #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_95
    :goto_95
    return-object v8

    .line 930
    .restart local v11       #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_96
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_95

    .line 932
    .end local v11           #op:Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 934
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v13

    const-wide/16 v16, 0x2710

    cmp-long v2, v4, v16

    if-lez v2, :cond_95

    .line 935
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .restart local v15       #values:Landroid/content/ContentValues;
    const-string v2, "blocked_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 938
    const-string v2, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 939
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncBlockedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_95
.end method

.method private static getCircleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "circleId"

    .prologue
    .line 4326
    const-string v0, "f."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4329
    .end local p0
    :goto_8
    return-object p0

    .restart local p0
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

.method public static getCircleMemberId(Ljava/lang/String;)Lcom/google/api/services/plusi/model/DataCircleMemberId;
    .registers 4
    .parameter "personId"

    .prologue
    const/4 v2, 0x2

    .line 4623
    new-instance v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/DataCircleMemberId;-><init>()V

    .line 4625
    .local v0, memberId:Lcom/google/api/services/plusi/model/DataCircleMemberId;
    const-string v1, "g:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4626
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;->obfuscatedGaiaId:Ljava/lang/String;

    .line 4632
    :cond_14
    :goto_14
    return-object v0

    .line 4627
    :cond_15
    const-string v1, "e:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4628
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;->email:Ljava/lang/String;

    goto :goto_14

    .line 4629
    :cond_24
    const-string v1, "p:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4630
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/DataCircleMemberId;->phone:Ljava/lang/String;

    goto :goto_14
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
    .line 492
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryCircleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v11

    .line 493
    .local v11, syncTimestamp:J
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_e

    .line 496
    const/4 v1, 0x1

    :try_start_b
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_72

    .line 505
    :cond_e
    packed-switch p2, :pswitch_data_c4

    .line 581
    :pswitch_11
    const/4 v4, 0x0

    .line 585
    .local v4, selection:Ljava/lang/String;
    :goto_12
    if-eqz p4, :cond_49

    .line 586
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

    .line 588
    .local v10, querySql:Ljava/lang/String;
    if-nez v4, :cond_ab

    .line 589
    move-object v4, v10

    .line 596
    .end local v10           #querySql:Ljava/lang/String;
    :cond_49
    :goto_49
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 597
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {v7, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 598
    if-eqz p5, :cond_5d

    .line 599
    const-string v1, "limit"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 602
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

    .line 606
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 608
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #builder:Landroid/net/Uri$Builder;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_71
    return-object v8

    .line 497
    :catch_72
    move-exception v9

    .line 498
    .local v9, e:Ljava/io/IOException;
    const-string v1, "EsPeopleData"

    const-string v2, "Error syncing circles"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    const/4 v8, 0x0

    goto :goto_71

    .line 507
    .end local v9           #e:Ljava/io/IOException;
    :pswitch_7c
    const-string v4, "0"

    .line 508
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 511
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_7f
    const-string v4, "semantic_hints&33=0 AND (type!=10 OR contact_count>0)"

    .line 516
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 519
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_82
    const-string v4, "semantic_hints&2=0"

    .line 521
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 524
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_85
    const-string v4, "type=1 OR circle_id=\'v.whatshot\'"

    .line 527
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 530
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_88
    const-string v4, "type IN (1,-1)"

    .line 532
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 535
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_8b
    const-string v4, "semantic_hints&8=0"

    .line 537
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 540
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_8e
    const-string v4, "semantic_hints&8=0 AND type NOT IN (9,8)"

    .line 545
    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_12

    .line 548
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_91
    const-string v4, "semantic_hints&8=0 AND type=1"

    .line 551
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 554
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_95
    const-string v4, "semantic_hints&64!=0 AND type=1"

    .line 557
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 560
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_99
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildStreamViewSelection(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v4

    .line 561
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 564
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_9f
    const-string v4, "semantic_hints&8=0"

    .line 566
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 569
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_a3
    const-string v4, "semantic_hints&8=0"

    .line 571
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 574
    .end local v4           #selection:Ljava/lang/String;
    :pswitch_a7
    const-string v4, "semantic_hints&33=0"

    .line 577
    .restart local v4       #selection:Ljava/lang/String;
    goto/16 :goto_12

    .line 591
    .restart local v10       #querySql:Ljava/lang/String;
    :cond_ab
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

    .line 505
    nop

    :pswitch_data_c4
    .packed-switch -0x1
        :pswitch_7c
        :pswitch_11
        :pswitch_7f
        :pswitch_82
        :pswitch_88
        :pswitch_85
        :pswitch_8b
        :pswitch_91
        :pswitch_95
        :pswitch_99
        :pswitch_8e
        :pswitch_9f
        :pswitch_a3
        :pswitch_a7
    .end packed-switch
.end method

.method public static getDefaultShowOrder(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 2032
    packed-switch p0, :pswitch_data_16

    .line 2049
    :pswitch_3
    const/16 v0, 0x3c

    .line 2051
    .local v0, showOrder:I
    :goto_5
    return v0

    .line 2034
    .end local v0           #showOrder:I
    :pswitch_6
    const/16 v0, 0x32

    .line 2035
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 2037
    .end local v0           #showOrder:I
    :pswitch_9
    const/16 v0, 0x28

    .line 2038
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 2040
    .end local v0           #showOrder:I
    :pswitch_c
    const/16 v0, 0x14

    .line 2041
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 2043
    .end local v0           #showOrder:I
    :pswitch_f
    const/16 v0, 0x1e

    .line 2044
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 2046
    .end local v0           #showOrder:I
    :pswitch_12
    const/16 v0, 0x3e8

    .line 2047
    .restart local v0       #showOrder:I
    goto :goto_5

    .line 2032
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

.method private static getDisplayName(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;
    .registers 2
    .parameter "profile"

    .prologue
    .line 4651
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsLocalPageData;->isLocalPage(Lcom/google/api/services/plusi/model/SimpleProfile;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4652
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsLocalPageData;->getTitle(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v0

    .line 4658
    :goto_a
    return-object v0

    .line 4653
    :cond_b
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/User;->name:Lcom/google/api/services/plusi/model/Name;

    if-eqz v0, :cond_1c

    .line 4654
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->user:Lcom/google/api/services/plusi/model/User;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/User;->name:Lcom/google/api/services/plusi/model/Name;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Name;->display:Ljava/lang/String;

    goto :goto_a

    .line 4655
    :cond_1c
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/CommonContent;->nickname:Lcom/google/api/services/plusi/model/NickName;

    if-eqz v0, :cond_2d

    .line 4656
    iget-object v0, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/CommonContent;->nickname:Lcom/google/api/services/plusi/model/NickName;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/NickName;->value:Ljava/lang/String;

    goto :goto_a

    .line 4658
    :cond_2d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    .line 3407
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->retrieveEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3408
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_f

    .line 3409
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3411
    :cond_f
    return-object v0
.end method

.method public static getName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    const/4 v8, 0x0

    .line 750
    const/4 v7, 0x0

    .line 752
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x2

    :try_start_5
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "gaia_id"

    aput-object v1, v4, v0

    const-string v5, "gaia_id=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 761
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 762
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 763
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_3e

    move-result-object v0

    .line 767
    if-eqz v7, :cond_36

    .line 768
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_36
    :goto_36
    return-object v0

    .line 767
    :cond_37
    if-eqz v7, :cond_3c

    .line 768
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    move-object v0, v8

    .line 771
    goto :goto_36

    .line 767
    :catchall_3e
    move-exception v0

    if-eqz v7, :cond_44

    .line 768
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
.end method

.method public static getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "excludedCircleId"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 701
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->ensurePeopleSynced(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 728
    :goto_8
    return-object v5

    .line 706
    :cond_9
    if-nez p2, :cond_39

    .line 707
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    .line 711
    .local v1, uri:Landroid/net/Uri;
    :goto_d
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 712
    if-eqz p3, :cond_2d

    .line 713
    if-nez p6, :cond_48

    .line 714
    const/4 v0, 0x1

    new-array p6, v0, [Ljava/lang/String;

    .end local p6
    aput-object p3, p6, v2

    .line 722
    .restart local p6
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND person_id NOT IN (SELECT link_person_id FROM circle_contact WHERE link_circle_id=?)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 728
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_8

    .line 709
    .end local v1           #uri:Landroid/net/Uri;
    :cond_39
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_d

    .line 716
    :cond_48
    move-object v6, p6

    .line 717
    .local v6, args:[Ljava/lang/String;
    array-length v0, v6

    add-int/lit8 v0, v0, 0x1

    new-array p6, v0, [Ljava/lang/String;

    .line 718
    array-length v0, v6

    invoke-static {v6, v2, p6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 719
    array-length v0, p6

    add-int/lit8 v0, v0, -0x1

    aput-object p3, p6, v0

    goto :goto_1a
.end method

.method public static getProfileAndContactData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "fullProfileNeeded"

    .prologue
    .line 3606
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;-><init>()V

    .line 3609
    .local v0, data:Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;
    sget-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->sProfileFetchLocks:Ljava/util/HashMap;

    monitor-enter v4

    .line 3610
    :try_start_8
    sget-object v3, Lcom/google/android/apps/plus/content/EsPeopleData;->sProfileFetchLocks:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3611
    .local v2, lock:Ljava/lang/Object;
    if-nez v2, :cond_1a

    .line 3612
    new-instance v2, Ljava/lang/Object;

    .end local v2           #lock:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3613
    .restart local v2       #lock:Ljava/lang/Object;
    sget-object v3, Lcom/google/android/apps/plus/content/EsPeopleData;->sProfileFetchLocks:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3615
    :cond_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_40

    .line 3617
    monitor-enter v2

    .line 3618
    :try_start_1c
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->loadProfileAndContactDataFromDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 3619
    iget v3, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    if-eqz v3, :cond_29

    if-eqz p3, :cond_35

    iget-object v3, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    if-nez v3, :cond_35

    .line 3621
    :cond_29
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3622
    .local v1, gaiaId:Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 3623
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->loadProfileFromServer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3624
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->loadProfileAndContactDataFromDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V

    .line 3627
    .end local v1           #gaiaId:Ljava/lang/String;
    :cond_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_43

    .line 3629
    sget-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->sProfileFetchLocks:Ljava/util/HashMap;

    monitor-enter v4

    .line 3630
    :try_start_39
    sget-object v3, Lcom/google/android/apps/plus/content/EsPeopleData;->sProfileFetchLocks:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_46

    .line 3633
    return-object v0

    .line 3615
    .end local v2           #lock:Ljava/lang/Object;
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v3

    .line 3627
    .restart local v2       #lock:Ljava/lang/Object;
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v3

    .line 3631
    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3
.end method

.method public static getProfileState(Lcom/google/api/services/plusi/model/SimpleProfile;)I
    .registers 3
    .parameter "profile"

    .prologue
    .line 4665
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/CommonConfig;->profileState:Lcom/google/api/services/plusi/model/ProfileState;

    if-eqz v1, :cond_38

    .line 4666
    iget-object v1, p0, Lcom/google/api/services/plusi/model/SimpleProfile;->config:Lcom/google/api/services/plusi/model/CommonConfig;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/CommonConfig;->profileState:Lcom/google/api/services/plusi/model/ProfileState;

    iget-object v0, v1, Lcom/google/api/services/plusi/model/ProfileState;->value:Ljava/lang/String;

    .line 4667
    .local v0, value:Ljava/lang/String;
    const-string v1, "ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4668
    const/4 v1, 0x2

    .line 4677
    .end local v0           #value:Ljava/lang/String;
    :goto_19
    return v1

    .line 4669
    .restart local v0       #value:Ljava/lang/String;
    :cond_1a
    const-string v1, "DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4670
    const/4 v1, 0x3

    goto :goto_19

    .line 4671
    :cond_24
    const-string v1, "BLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4672
    const/4 v1, 0x5

    goto :goto_19

    .line 4673
    :cond_2e
    const-string v1, "PRIVATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4674
    const/4 v1, 0x4

    goto :goto_19

    .line 4677
    .end local v0           #value:Ljava/lang/String;
    :cond_38
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public static getShortAudienceDescription(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "audience"

    .prologue
    .line 3980
    const/4 v1, 0x0

    .line 3981
    .local v1, circleCount:I
    const/4 v4, 0x0

    .line 3982
    .local v4, extendedCircles:Z
    const/4 v6, 0x0

    .line 3984
    .local v6, myCircles:Z
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v7

    if-lez v7, :cond_38

    .line 3985
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 3986
    .local v0, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    .line 3987
    .local v2, circleType:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    sget-object v7, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Circles$MobileCircle$Type:[I

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_60

    .line 4001
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3990
    :pswitch_2f
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4016
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v2           #circleType:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .end local v5           #i$:Ljava/util/Iterator;
    :goto_33
    return-object v7

    .line 3993
    .restart local v0       #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .restart local v2       #circleType:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .restart local v5       #i$:Ljava/util/Iterator;
    :pswitch_34
    const/4 v4, 0x1

    .line 3994
    goto :goto_11

    .line 3997
    :pswitch_36
    const/4 v6, 0x1

    .line 3998
    goto :goto_11

    .line 4006
    .end local v0           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v2           #circleType:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_38
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v7

    add-int v3, v7, v1

    .line 4007
    .local v3, count:I
    if-nez v3, :cond_57

    .line 4008
    if-eqz v4, :cond_4a

    .line 4009
    const v7, 0x7f0802d6

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_33

    .line 4010
    :cond_4a
    if-eqz v6, :cond_54

    .line 4011
    const v7, 0x7f0802d7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_33

    .line 4013
    :cond_54
    const-string v7, ""

    goto :goto_33

    .line 4016
    :cond_57
    const v7, 0x7f0802d8

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_33

    .line 3987
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method public static getStringForAddress(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 4184
    if-nez p1, :cond_4

    .line 4197
    :cond_3
    :goto_3
    return-object v0

    .line 4188
    :cond_4
    const-string v1, "HOME"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4189
    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4190
    :cond_16
    const-string v1, "WORK"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4191
    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4192
    :cond_28
    const-string v1, "OTHER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4194
    const-string v1, "CUSTOM"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4195
    iget-object v0, p1, Lcom/google/api/services/plusi/model/ContactTag;->customTag:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getStringForEmailType(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 4025
    if-nez p1, :cond_4

    .line 4038
    :cond_3
    :goto_3
    return-object v0

    .line 4029
    :cond_4
    const-string v1, "HOME"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4030
    const v0, 0x7f08029a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4031
    :cond_16
    const-string v1, "WORK"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4032
    const v0, 0x7f08029b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4033
    :cond_28
    const-string v1, "OTHER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4035
    const-string v1, "CUSTOM"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4036
    iget-object v0, p1, Lcom/google/api/services/plusi/model/ContactTag;->customTag:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getStringForPhoneType(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 4100
    if-nez p1, :cond_4

    .line 4147
    :cond_3
    :goto_3
    return-object v0

    .line 4104
    :cond_4
    const-string v1, "HOME"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4105
    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4106
    :cond_16
    const-string v1, "WORK"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4107
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4108
    :cond_28
    const-string v1, "OTHER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4110
    const-string v1, "HOME_FAX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 4111
    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4112
    :cond_44
    const-string v1, "WORK_FAX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 4113
    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4114
    :cond_56
    const-string v1, "MOBILE"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 4115
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4116
    :cond_68
    const-string v1, "PAGER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 4117
    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4118
    :cond_7a
    const-string v1, "OTHER_FAX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 4119
    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4120
    :cond_8d
    const-string v1, "COMPANY_MAIN"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 4121
    const v0, 0x7f08028e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4122
    :cond_a0
    const-string v1, "ASSISTANT"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 4123
    const v0, 0x7f08028f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4124
    :cond_b3
    const-string v1, "CAR"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 4125
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4126
    :cond_c6
    const-string v1, "RADIO"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 4127
    const v0, 0x7f080291

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4128
    :cond_d9
    const-string v1, "ISDN"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 4129
    const v0, 0x7f080292

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4130
    :cond_ec
    const-string v1, "CALLBACK"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 4131
    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4132
    :cond_ff
    const-string v1, "TELEX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 4133
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4134
    :cond_112
    const-string v1, "TTY_TDD"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 4135
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4136
    :cond_125
    const-string v1, "WORK_MOBILE"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 4137
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4138
    :cond_138
    const-string v1, "WORK_PAGER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 4139
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4140
    :cond_14b
    const-string v1, "MAIN"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 4141
    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4142
    :cond_15e
    const-string v1, "GRAND_CENTRAL"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 4143
    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 4144
    :cond_171
    const-string v1, "CUSTOM"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4145
    iget-object v0, p1, Lcom/google/api/services/plusi/model/ContactTag;->customTag:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static getStringForPhoneType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 4047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p1, v0

    .line 4091
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 4049
    .restart local p1
    :cond_9
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4050
    const v0, 0x7f080286

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4051
    :cond_19
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4052
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4053
    :cond_29
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object p1, v0

    .line 4055
    goto :goto_8

    .line 4056
    :cond_33
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4057
    const v0, 0x7f08028b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4058
    :cond_43
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 4059
    const v0, 0x7f08028c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4060
    :cond_53
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4061
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4062
    :cond_63
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 4063
    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4064
    :cond_73
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 4065
    const v0, 0x7f08028d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 4066
    :cond_83
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 4067
    const v0, 0x7f08028e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4068
    :cond_94
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 4069
    const v0, 0x7f08028f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4070
    :cond_a5
    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 4071
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4072
    :cond_b6
    const-string v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 4073
    const v0, 0x7f080291

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4074
    :cond_c7
    const-string v0, "13"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 4075
    const v0, 0x7f080292

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4076
    :cond_d8
    const-string v0, "14"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 4077
    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4078
    :cond_e9
    const-string v0, "15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 4079
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4080
    :cond_fa
    const-string v0, "16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 4081
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4082
    :cond_10b
    const-string v0, "17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 4083
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4084
    :cond_11c
    const-string v0, "18"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 4085
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4086
    :cond_12d
    const-string v0, "19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 4087
    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    .line 4088
    :cond_13e
    const-string v0, "20"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4089
    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8
.end method

.method public static getStringForPlusPagePhoneType(Landroid/content/Context;Lcom/google/api/services/plusi/model/ContactTag;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 4156
    if-nez p1, :cond_4

    .line 4175
    :cond_3
    :goto_3
    return-object v0

    .line 4160
    :cond_4
    const-string v1, "HOME"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "WORK"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "OTHER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4163
    :cond_22
    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4164
    :cond_2a
    const-string v1, "HOME_FAX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "WORK_FAX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "OTHER_FAX"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4167
    :cond_48
    const v0, 0x7f08028a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4168
    :cond_50
    const-string v1, "MOBILE"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 4169
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4170
    :cond_62
    const-string v1, "PAGER"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 4171
    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4172
    :cond_74
    const-string v1, "CUSTOM"

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ContactTag;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4173
    iget-object v0, p1, Lcom/google/api/services/plusi/model/ContactTag;->customTag:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "projection"

    .prologue
    .line 826
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 829
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 830
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->querySuggestedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v9

    .line 831
    .local v9, timestamp:J
    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-nez v0, :cond_66

    .line 832
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 833
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "suggested_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 835
    const-string v0, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 837
    new-instance v8, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v8, p0, p1, v0, v2}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 839
    .local v8, op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->start()V

    .line 840
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 841
    const-string v0, "EsPeopleData"

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;->logError(Ljava/lang/String;)V

    .line 843
    const-string v0, "suggested_people_sync_time"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string v0, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 845
    const/4 v6, 0x0

    .line 858
    .end local v8           #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_58
    :goto_58
    return-object v6

    .line 848
    .restart local v8       #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_58

    .line 850
    .end local v8           #op:Lcom/google/android/apps/plus/api/GetSuggestedPeopleOperation;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 851
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-lez v0, :cond_58

    .line 852
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v0, "suggested_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 855
    const-string v0, "account_status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 856
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncSuggestedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_58
.end method

.method public static hasCircleActionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2213
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2216
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT count(*) FROM circle_action WHERE notification_id=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p2, v6, v4

    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 2221
    .local v1, storedCount:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1b

    :goto_1a
    return v3

    :cond_1b
    move v3, v4

    goto :goto_1a
.end method

.method public static hasPublicCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 10
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3943
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3945
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "circles"

    const-string v7, "type=9"

    invoke-static {v0, v6, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_15

    .line 3962
    :cond_14
    :goto_14
    return v4

    .line 3951
    :cond_15
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryCircleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v2

    .line 3952
    .local v2, syncTimestamp:J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_23

    .line 3955
    const/4 v6, 0x0

    :try_start_20
    invoke-static {p0, p1, v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2f

    .line 3962
    :cond_23
    const-string v6, "circles"

    const-string v7, "type=9"

    invoke-static {v0, v6, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_14

    move v4, v5

    goto :goto_14

    .line 3956
    :catch_2f
    move-exception v1

    .line 3957
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EsPeopleData"

    const-string v6, "Error syncing circles"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 3958
    goto :goto_14
.end method

.method public static insertBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 23
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
    .line 971
    .local p2, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 973
    .local v18, unblockedPeople:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 975
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 977
    :try_start_10
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 978
    .local v19, values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 981
    .local v11, arg:[Ljava/lang/String;
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

    move-result-object v14

    .line 985
    .local v14, cursor:Landroid/database/Cursor;
    :goto_2c
    :try_start_2c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 986
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3d

    goto :goto_2c

    .line 989
    :catchall_3d
    move-exception v2

    :try_start_3e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 1035
    .end local v11           #arg:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v19           #values:Landroid/content/ContentValues;
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 989
    .restart local v11       #arg:[Ljava/lang/String;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_47
    :try_start_47
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 992
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_65

    .line 993
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 992
    add-int/lit8 v15, v15, 0x1

    goto :goto_4b

    .line 996
    :cond_65
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 997
    const-string v2, "blocked"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string v2, "last_updated_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_87
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1000
    .local v17, personId:Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v11, v2

    .line 1001
    const-string v2, "contacts"

    const-string v3, "person_id=?"

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_87

    .line 1007
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #personId:Ljava/lang/String;
    :cond_a0
    const/4 v15, 0x0

    :goto_a1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_e2

    .line 1008
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 1010
    .local v12, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    sget-object v2, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const/4 v7, 0x2

    .line 1012
    .local v7, profileType:I
    :goto_bc
    const/4 v2, 0x0

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactRowInTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;Ljava/lang/String;Ljava/lang/String;JIIILjava/util/ArrayList;)Z

    .line 1017
    const-string v2, "circle_contact"

    const-string v3, "link_person_id=?"

    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1019
    const-string v2, "contact_search"

    const-string v3, "search_person_id=?"

    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1007
    add-int/lit8 v15, v15, 0x1

    goto :goto_a1

    .line 1010
    .end local v7           #profileType:I
    :cond_e0
    const/4 v7, 0x1

    goto :goto_bc

    .line 1023
    .end local v12           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_e2
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 1024
    const-string v2, "contact_count"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1025
    const/4 v2, 0x0

    const-string v3, "15"

    aput-object v3, v11, v2

    .line 1026
    const-string v2, "circles"

    const-string v3, "circle_id=?"

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1028
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 1029
    const-string v2, "blocked_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1031
    const-string v2, "account_status"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1033
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_120
    .catchall {:try_start_47 .. :try_end_120} :catchall_42

    .line 1035
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1038
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1039
    .local v13, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1040
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1041
    return-void
.end method

.method public static insertCircleActionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"
    .parameter "circleActionData"

    .prologue
    .line 2235
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v0

    .line 2236
    .local v0, count:I
    if-nez v0, :cond_7

    .line 2269
    :goto_6
    return-void

    .line 2240
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2243
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2246
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2247
    .local v5, values:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_65

    .line 2248
    invoke-virtual {p3, v3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v2

    .line 2249
    .local v2, gaiaId:Ljava/lang/String;
    invoke-virtual {p3, v3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getName(I)Ljava/lang/String;

    move-result-object v4

    .line 2251
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2252
    const-string v6, "person_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-string v6, "gaia_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    const-string v6, "name"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    const-string v6, "contacts"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v1, v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2259
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2260
    const-string v6, "notification_id"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    const-string v6, "gaia_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    const-string v6, "circle_action"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2247
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2265
    .end local v2           #gaiaId:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_65
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_68
    .catchall {:try_start_f .. :try_end_68} :catchall_6c

    .line 2267
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    .end local v3           #i:I
    .end local v5           #values:Landroid/content/ContentValues;
    :catchall_6c
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public static insertCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 38
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
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1625
    .local p2, circles:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Circles$MobileCircle;>;"
    const-string v3, "EsPeopleData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1626
    const/16 v18, 0x0

    .local v18, i:I
    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_7c

    .line 1627
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1628
    .local v12, circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    const-string v3, "EsPeopleData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> Circle id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", members: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", membership status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1636
    .end local v12           #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .end local v18           #i:I
    :cond_7c
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1637
    .local v21, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/contacts/proto/Circles$MobileCircle;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_85
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1638
    .restart local v12       #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 1641
    .end local v12           #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    :cond_9b
    const/4 v11, 0x0

    .line 1642
    .local v11, changed:Z
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1644
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1646
    :try_start_a7
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v33, updates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    .local v16, deletedCircles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "circles"

    sget-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->CIRCLES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_bd
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_eb

    move-result-object v15

    .line 1651
    .local v15, cursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 1653
    .local v17, haveVirtualCirles:Z
    :cond_c0
    :goto_c0
    :try_start_c0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 1654
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1657
    .local v14, circleType:I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_d1

    .line 1658
    const/16 v17, 0x1

    .line 1659
    goto :goto_c0

    .line 1662
    :cond_d1
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1663
    .local v13, circleId:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1664
    .restart local v12       #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    if-nez v12, :cond_f0

    .line 1665
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_e6

    goto :goto_c0

    .line 1701
    .end local v12           #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .end local v13           #circleId:Ljava/lang/String;
    .end local v14           #circleType:I
    :catchall_e6
    move-exception v3

    :try_start_e7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_eb

    .line 1762
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #deletedCircles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #haveVirtualCirles:Z
    .end local v33           #updates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catchall_eb
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1667
    .restart local v12       #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .restart local v13       #circleId:Ljava/lang/String;
    .restart local v14       #circleType:I
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v16       #deletedCircles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #haveVirtualCirles:Z
    .restart local v33       #updates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_f0
    :try_start_f0
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1670
    .local v24, name:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1671
    .local v23, membershipStatus:I
    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1672
    .local v22, memberCount:I
    const/4 v3, 0x5

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1674
    .local v31, semanticHints:I
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v29

    .line 1675
    .local v29, newType:I
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1676
    .local v27, newName:Ljava/lang/String;
    const/16 v3, 0x9

    move/from16 v0, v29

    if-ne v0, v3, :cond_124

    .line 1677
    const v3, 0x7f08026d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1679
    :cond_124
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v26

    .line 1680
    .local v26, newMembershipStatus:I
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v25

    .line 1681
    .local v25, newMemberCount:I
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getSemanticHints()I

    move-result v28

    .line 1683
    .local v28, newSemanticHints:I
    move/from16 v0, v29

    if-ne v0, v14, :cond_154

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_154

    move/from16 v0, v26

    move/from16 v1, v23

    if-ne v0, v1, :cond_154

    move/from16 v0, v25

    move/from16 v1, v22

    if-ne v0, v1, :cond_154

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_c0

    .line 1688
    :cond_154
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 1689
    .local v34, values:Landroid/content/ContentValues;
    const-string v3, "circle_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v3, "circle_name"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const-string v3, "type"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1692
    const-string v3, "membership_status"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1693
    const-string v3, "contact_count"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1694
    const-string v3, "semantic_hints"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    const-string v3, "show_order"

    invoke-static/range {v29 .. v29}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDefaultShowOrder(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a7
    .catchall {:try_start_f0 .. :try_end_1a7} :catchall_e6

    goto/16 :goto_c0

    .line 1701
    .end local v12           #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .end local v13           #circleId:Ljava/lang/String;
    .end local v14           #circleType:I
    .end local v22           #memberCount:I
    .end local v23           #membershipStatus:I
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #newMemberCount:I
    .end local v26           #newMembershipStatus:I
    .end local v27           #newName:Ljava/lang/String;
    .end local v28           #newSemanticHints:I
    .end local v29           #newType:I
    .end local v31           #semanticHints:I
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_1a9
    :try_start_1a9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1705
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_205

    .line 1706
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1707
    .local v30, sb:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v10, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "circle_id IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1c7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1710
    .local v20, id:Ljava/lang/String;
    const-string v3, "?,"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c7

    .line 1713
    .end local v20           #id:Ljava/lang/String;
    :cond_1e0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1714
    const-string v3, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    const-string v4, "circles"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1716
    const/4 v11, 0x1

    .line 1720
    .end local v10           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30           #sb:Ljava/lang/StringBuilder;
    :cond_205
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_234

    .line 1721
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_20f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_233

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/ContentValues;

    .line 1722
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v3, "circles"

    const-string v4, "circle_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "circle_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_20f

    .line 1726
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_233
    const/4 v11, 0x1

    .line 1730
    :cond_234
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e1

    .line 1731
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 1732
    .restart local v34       #values:Landroid/content/ContentValues;
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_247
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    .line 1733
    .restart local v12       #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    invoke-virtual/range {v34 .. v34}, Landroid/content/ContentValues;->clear()V

    .line 1734
    const-string v3, "circle_id"

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v32

    .line 1736
    .local v32, type:I
    const-string v3, "type"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1738
    const/16 v3, 0x9

    move/from16 v0, v32

    if-ne v0, v3, :cond_2d4

    .line 1739
    const-string v3, "circle_name"

    const v4, 0x7f08026d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    :goto_28a
    const-string v3, "membership_status"

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMembershipStatus()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1747
    const-string v3, "contact_count"

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getMemberCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1748
    const-string v3, "semantic_hints"

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getSemanticHints()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1749
    const-string v3, "show_order"

    invoke-static/range {v32 .. v32}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDefaultShowOrder(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1750
    const-string v3, "circles"

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_247

    .line 1742
    :cond_2d4
    const-string v3, "circle_name"

    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28a

    .line 1752
    .end local v12           #circle:Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .end local v32           #type:I
    :cond_2e0
    const/4 v11, 0x1

    .line 1756
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_2e1
    if-nez v17, :cond_2e8

    .line 1757
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1760
    :cond_2e8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2eb
    .catchall {:try_start_1a9 .. :try_end_2eb} :catchall_eb

    .line 1762
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1765
    if-eqz v11, :cond_2fd

    .line 1766
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1767
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 1769
    :cond_2fd
    return-void
.end method

.method public static insertContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 2732
    const-string v4, "EsPeopleData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2733
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2736
    :cond_c
    const/4 v0, 0x0

    .line 2737
    .local v0, changed:Z
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2739
    .local v2, personId:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2741
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2743
    :try_start_1c
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v5

    invoke-static {v1, v4, v5, v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactModified(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    .line 2744
    if-eqz v0, :cond_30

    .line 2745
    invoke-static {v1, v2, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2746
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_52

    .line 2749
    :cond_30
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2752
    if-eqz v0, :cond_51

    .line 2753
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2754
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2757
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/service/ImageCache;->notifyAvatarChange(Ljava/lang/String;)V

    .line 2759
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 2761
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_51
    return-void

    .line 2749
    :catchall_52
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
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
    .line 2473
    .local p2, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    const/4 v7, 0x0

    .line 2475
    .local v7, contactsUpdated:Z
    const-string v0, "EsPeopleData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2476
    const/4 v8, 0x0

    .local v8, i:I
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1d

    .line 2477
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2478
    .local v6, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2476
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 2482
    .end local v6           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v8           #i:I
    :cond_1d
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2485
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 2486
    .local v4, fromIndex:I
    :goto_26
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_44

    .line 2487
    add-int/lit8 v5, v4, 0x4b

    .line 2488
    .local v5, toIndex:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v5, v0, :cond_38

    .line 2489
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    :cond_38
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 2491
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;II)I

    move-result v9

    .line 2492
    .local v9, updateCount:I
    if-lez v9, :cond_42

    .line 2493
    const/4 v7, 0x1

    .line 2495
    :cond_42
    move v4, v5

    .line 2496
    goto :goto_26

    .line 2498
    .end local v5           #toIndex:I
    .end local v9           #updateCount:I
    :cond_44
    return v7
.end method

.method public static insertFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "domain"
    .parameter "imageData"

    .prologue
    const/4 v5, 0x0

    .line 3927
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3929
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3930
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "domain"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3931
    const-string v3, "icon"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3932
    const-string v3, "favicons"

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 3935
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3936
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->FAVICONS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3937
    return-void
.end method

.method public static insertNewCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1980
    sget-object v3, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1981
    :try_start_5
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1983
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1984
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "circle_id"

    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v4, "circle_name"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1987
    const-string v4, "membership_status"

    sget-object v5, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->OWNER:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;

    invoke-virtual {v5}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$UserMembershipStatus;->getNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    const-string v4, "contact_count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1990
    const-string v4, "semantic_hints"

    if-eqz p4, :cond_71

    :goto_47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1992
    const-string v2, "show_order"

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDefaultShowOrder(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1994
    const-string v2, "circles"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1996
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_74

    .line 1998
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1999
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 2000
    return-void

    .line 1990
    :cond_71
    const/16 v2, 0x40

    goto :goto_47

    .line 1996
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public static insertNewPerson(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "personName"

    .prologue
    .line 2447
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2449
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2451
    :try_start_b
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 2452
    .local v0, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {v0, p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2453
    invoke-virtual {v0, p3}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 2454
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2455
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_30

    .line 2457
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2461
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 2462
    return-void

    .line 2457
    .end local v0           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    :catchall_30
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
    .line 2094
    .local p2, persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2097
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2098
    .local v3, size:I
    if-lez v3, :cond_2d

    .line 2100
    :try_start_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2102
    const/4 v0, 0x0

    .line 2103
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 2104
    .local v2, from:I
    :goto_13
    if-ge v2, v3, :cond_25

    .line 2105
    add-int/lit16 v4, v2, 0x1f4

    .line 2106
    .local v4, to:I
    if-le v4, v3, :cond_1a

    .line 2107
    move v4, v3

    .line 2109
    :cond_1a
    invoke-interface {p2, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->replacePersonsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2110
    move v2, v4

    .line 2111
    goto :goto_13

    .line 2113
    .end local v4           #to:I
    :cond_25
    if-eqz v0, :cond_2a

    .line 2114
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_2e

    .line 2117
    :cond_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2120
    .end local v0           #changed:Z
    .end local v2           #from:I
    :cond_2d
    return-void

    .line 2117
    :catchall_2e
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public static insertPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "plusOneData"

    .prologue
    const/4 v4, 0x0

    .line 3480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "g:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3481
    .local v1, id:Ljava/lang/String;
    const-string v3, "EsPeopleData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3482
    const-string v5, "EsPeopleData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlusOneData for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_67

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_45
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3487
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3489
    :try_start_50
    invoke-static {v0, v1, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replacePlusOneProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    .line 3490
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_69

    .line 3492
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3494
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3495
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3497
    return-void

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_67
    move-object v3, v4

    .line 3482
    goto :goto_3a

    .line 3492
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_69
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static insertProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/api/services/plusi/model/SimpleProfile;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "profile"

    .prologue
    const/4 v4, 0x0

    .line 3213
    const-string v1, "EsPeopleData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3214
    const-string v2, "EsPeopleData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_9c

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3219
    .local v10, personId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3220
    .local v7, changed:Z
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 3225
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_6e

    invoke-static {p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDisplayName(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6e

    .line 3226
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactInfoOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 3228
    .local v0, gcio:Lcom/google/android/apps/plus/api/GetContactInfoOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->start()V

    .line 3229
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 3230
    const-string v1, "EsPeopleData"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->logError(Ljava/lang/String;)V

    .line 3245
    .end local v0           #gcio:Lcom/google/android/apps/plus/api/GetContactInfoOperation;
    :cond_6e
    :goto_6e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3247
    :try_start_71
    invoke-static {v8, v10, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceProfileProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/api/services/plusi/model/SimpleProfile;)Z

    move-result v7

    .line 3248
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_cf

    .line 3250
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3253
    if-eqz v7, :cond_98

    .line 3254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 3255
    .local v11, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v1, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3258
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    invoke-static {v10}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyAvatarChange(Ljava/lang/String;)V

    .line 3260
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 3265
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :cond_98
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncBlockedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3266
    return-void

    .end local v7           #changed:Z
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #personId:Ljava/lang/String;
    :cond_9c
    move-object v1, v4

    .line 3214
    goto :goto_27

    .line 3232
    .restart local v0       #gcio:Lcom/google/android/apps/plus/api/GetContactInfoOperation;
    .restart local v7       #changed:Z
    .restart local v8       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #personId:Ljava/lang/String;
    :cond_9e
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactInfoOperation;->getPerson()Lcom/google/api/services/plusi/model/DataCirclePerson;

    move-result-object v9

    .line 3233
    .local v9, person:Lcom/google/api/services/plusi/model/DataCirclePerson;
    if-eqz v9, :cond_6e

    iget-object v1, v9, Lcom/google/api/services/plusi/model/DataCirclePerson;->memberProperties:Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 3234
    iget-object v1, p3, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    if-nez v1, :cond_b5

    .line 3235
    new-instance v1, Lcom/google/api/services/plusi/model/CommonContent;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/CommonContent;-><init>()V

    iput-object v1, p3, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    .line 3237
    :cond_b5
    iget-object v1, p3, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/CommonContent;->nickname:Lcom/google/api/services/plusi/model/NickName;

    if-nez v1, :cond_c4

    .line 3238
    iget-object v1, p3, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    new-instance v2, Lcom/google/api/services/plusi/model/NickName;

    invoke-direct {v2}, Lcom/google/api/services/plusi/model/NickName;-><init>()V

    iput-object v2, v1, Lcom/google/api/services/plusi/model/CommonContent;->nickname:Lcom/google/api/services/plusi/model/NickName;

    .line 3240
    :cond_c4
    iget-object v1, p3, Lcom/google/api/services/plusi/model/SimpleProfile;->content:Lcom/google/api/services/plusi/model/CommonContent;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/CommonContent;->nickname:Lcom/google/api/services/plusi/model/NickName;

    iget-object v2, v9, Lcom/google/api/services/plusi/model/DataCirclePerson;->memberProperties:Lcom/google/api/services/plusi/model/DataCircleMemberProperties;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/DataCircleMemberProperties;->displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/api/services/plusi/model/NickName;->value:Ljava/lang/String;

    goto :goto_6e

    .line 3250
    .end local v0           #gcio:Lcom/google/android/apps/plus/api/GetContactInfoOperation;
    .end local v9           #person:Lcom/google/api/services/plusi/model/DataCirclePerson;
    :catchall_cf
    move-exception v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static insertSuggestedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;)V
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "suggestionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;",
            "Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2289
    .local p2, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2291
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2294
    :try_start_b
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2295
    .local v11, currentSuggestedPeople:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 2297
    .local v17, markedAsDeleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "suggested_people"

    sget-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->SUGGESTED_PEOPLE_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_45

    move-result-object v12

    .line 2300
    .local v12, cursor:Landroid/database/Cursor;
    :goto_22
    :try_start_22
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2301
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2302
    .local v18, personId:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v13, 0x1

    .line 2303
    .local v13, deleted:Z
    :goto_35
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2304
    .local v21, sortOrder:I
    if-eqz v13, :cond_4c

    .line 2310
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_40

    goto :goto_22

    .line 2316
    .end local v13           #deleted:Z
    .end local v18           #personId:Ljava/lang/String;
    .end local v21           #sortOrder:I
    :catchall_40
    move-exception v3

    :try_start_41
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 2398
    .end local v11           #currentSuggestedPeople:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v17           #markedAsDeleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_45
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2302
    .restart local v11       #currentSuggestedPeople:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v17       #markedAsDeleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #personId:Ljava/lang/String;
    :cond_4a
    const/4 v13, 0x0

    goto :goto_35

    .line 2312
    .restart local v13       #deleted:Z
    .restart local v21       #sortOrder:I
    :cond_4c
    :try_start_4c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_40

    goto :goto_22

    .line 2316
    .end local v13           #deleted:Z
    .end local v18           #personId:Ljava/lang/String;
    .end local v21           #sortOrder:I
    :cond_56
    :try_start_56
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2319
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_92

    const/16 v22, 0x1

    .line 2320
    .local v22, updateNeeded:Z
    :goto_65
    if-nez v22, :cond_8c

    .line 2321
    const/4 v14, 0x0

    .local v14, i:I
    :goto_68
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_8c

    .line 2322
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2323
    .local v10, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v10}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v18

    .line 2324
    .restart local v18       #personId:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 2325
    .local v19, position:Ljava/lang/Integer;
    if-eqz v19, :cond_8a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I
    :try_end_87
    .catchall {:try_start_56 .. :try_end_87} :catchall_45

    move-result v3

    if-eq v3, v14, :cond_95

    .line 2326
    :cond_8a
    const/16 v22, 0x1

    .line 2332
    .end local v10           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v14           #i:I
    .end local v18           #personId:Ljava/lang/String;
    .end local v19           #position:Ljava/lang/Integer;
    :cond_8c
    if-nez v22, :cond_98

    .line 2398
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2402
    :goto_91
    return-void

    .line 2319
    .end local v22           #updateNeeded:Z
    :cond_92
    const/16 v22, 0x0

    goto :goto_65

    .line 2321
    .restart local v10       #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .restart local v14       #i:I
    .restart local v18       #personId:Ljava/lang/String;
    .restart local v19       #position:Ljava/lang/Integer;
    .restart local v22       #updateNeeded:Z
    :cond_95
    add-int/lit8 v14, v14, 0x1

    goto :goto_68

    .line 2336
    .end local v10           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v14           #i:I
    .end local v18           #personId:Ljava/lang/String;
    .end local v19           #position:Ljava/lang/Integer;
    :cond_98
    :try_start_98
    const-string v3, "suggested_people"

    const-string v4, "dismissed=0"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2339
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 2340
    .local v16, keepDeleted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2341
    .local v23, values:Landroid/content/ContentValues;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_ab
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_13c

    .line 2342
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2343
    .restart local v10       #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v10}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v18

    .line 2344
    .restart local v18       #personId:Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 2348
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2341
    :goto_ca
    add-int/lit8 v14, v14, 0x1

    goto :goto_ab

    .line 2352
    :cond_cd
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 2353
    const-string v3, "person_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    const-string v3, "gaia_id"

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    const-string v3, "name"

    invoke-virtual {v10}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v3, "contacts"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2359
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 2360
    const-string v3, "person_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const-string v3, "sort_order"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2362
    sget-object v3, Lcom/google/android/apps/plus/content/EsPeopleData$5;->$SwitchMap$com$google$wireless$contacts$proto$Contact$SuggestionType$Type:[I

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1be

    .line 2369
    const-string v3, "suggestion_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2374
    :goto_126
    const-string v3, "suggested_people"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_ca

    .line 2364
    :pswitch_12f
    const-string v3, "suggestion_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_126

    .line 2378
    .end local v10           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v18           #personId:Ljava/lang/String;
    :cond_13c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 2379
    .local v20, sb:Ljava/lang/StringBuilder;
    const-string v3, "dismissed!=0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_186

    .line 2381
    const-string v3, " AND person_id NOT IN ("

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_159
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_174

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2383
    .restart local v18       #personId:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2384
    const/16 v3, 0x2c

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_159

    .line 2386
    .end local v18           #personId:Ljava/lang/String;
    :cond_174
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2387
    const/16 v3, 0x29

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2389
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_186
    const-string v3, "suggested_people"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2391
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 2392
    const-string v3, "suggested_people_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2394
    const-string v3, "account_status"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2396
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1ae
    .catchall {:try_start_98 .. :try_end_1ae} :catchall_45

    .line 2398
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->SUGGESTED_PEOPLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_91

    .line 2362
    nop

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_12f
    .end packed-switch
.end method

.method public static isContactDataAvailable(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3758
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3760
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT count(*) FROM contacts WHERE person_id=?"

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1b

    :goto_1a
    return v1

    :cond_1b
    move v1, v2

    goto :goto_1a
.end method

.method private static isContactDeleted(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z
    .registers 2
    .parameter "contact"

    .prologue
    .line 2721
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

.method private static isContactModified(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .registers 15
    .parameter "db"
    .parameter "personId"
    .parameter "lastUpdatedTime"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2856
    const-string v1, "contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "last_updated_time"

    aput-object v0, v2, v10

    const-string v3, "person_id=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2861
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2862
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_33

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_2c

    move v0, v9

    .line 2865
    :goto_28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2868
    :goto_2b
    return v0

    :cond_2c
    move v0, v10

    .line 2862
    goto :goto_28

    .line 2865
    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2868
    goto :goto_2b

    .line 2865
    :catchall_33
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPersonInList(Lcom/google/wireless/tacotruck/proto/Data$Person;Ljava/util/List;)Z
    .registers 5
    .parameter "person"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4552
    .local p1, personList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 4553
    .local v1, iter:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static {v1, p0}, Lcom/google/android/apps/plus/content/EsPeopleData;->isSamePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4554
    const/4 v2, 0x1

    .line 4557
    .end local v1           #iter:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public static isSamePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;Lcom/google/wireless/tacotruck/proto/Data$Person;)Z
    .registers 5
    .parameter "person1"
    .parameter "person2"

    .prologue
    const/4 v0, 0x1

    .line 4566
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4567
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4578
    :cond_1b
    :goto_1b
    return v0

    .line 4572
    :cond_1c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4573
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4578
    :cond_36
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static loadProfileAndContactDataFromDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "data"

    .prologue
    .line 3693
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    .line 3695
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3698
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "contacts LEFT OUTER JOIN profiles ON (contacts.person_id=profiles.profile_person_id)"

    sget-object v3, Lcom/google/android/apps/plus/content/EsPeopleData;->PROFILE_COLUMNS:[Ljava/lang/String;

    const-string v4, "profiles.profile_person_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3702
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3703
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->gaiaId:Ljava/lang/String;

    .line 3704
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p3

    iput v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileState:I

    .line 3705
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p3

    iput-wide v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->lastUpdatedTime:J

    .line 3706
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->displayName:Ljava/lang/String;

    .line 3707
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p3

    iput-wide v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contactUpdateTime:J

    .line 3708
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 3709
    .local v9, contactProto:[B
    if-eqz v9, :cond_61

    .line 3710
    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->deserializeContactInfo([B)Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->contact:Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    .line 3712
    :cond_61
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p3

    iput-wide v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profileUpdateTime:J

    .line 3713
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 3714
    .local v13, profileProto:[B
    if-eqz v13, :cond_79

    .line 3715
    invoke-static {v13}, Lcom/google/android/apps/plus/content/EsPeopleData;->deserializeProfile([B)Lcom/google/api/services/plusi/model/SimpleProfile;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->profile:Lcom/google/api/services/plusi/model/SimpleProfile;

    .line 3717
    :cond_79
    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p3

    iput-wide v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneUpdateTime:J

    .line 3718
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_87
    .catchall {:try_start_20 .. :try_end_87} :catchall_9f

    move-result-object v12

    .line 3719
    .local v12, plusOneProto:[B
    if-eqz v12, :cond_92

    .line 3721
    :try_start_8a
    invoke-static {v12}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/google/android/apps/plus/content/EsPeopleData$ProfileAndContactData;->plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_9f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8a .. :try_end_92} :catch_96

    .line 3728
    .end local v9           #contactProto:[B
    .end local v12           #plusOneProto:[B
    .end local v13           #profileProto:[B
    :cond_92
    :goto_92
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3730
    return-void

    .line 3722
    .restart local v9       #contactProto:[B
    .restart local v12       #plusOneProto:[B
    .restart local v13       #profileProto:[B
    :catch_96
    move-exception v11

    .line 3723
    .local v11, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_97
    const-string v2, "EsPeopleData"

    const-string v3, "Cannot parse plusOne protobuffer: "

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_9f

    goto :goto_92

    .line 3728
    .end local v9           #contactProto:[B
    .end local v11           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v12           #plusOneProto:[B
    .end local v13           #profileProto:[B
    :catchall_9f
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static loadProfileFromServer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    const/4 v5, 0x0

    .line 3740
    new-instance v0, Lcom/google/android/apps/plus/api/GetProfileOperation;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetProfileOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3742
    .local v0, gpo:Lcom/google/android/apps/plus/api/GetProfileOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileOperation;->start()V

    .line 3743
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetProfileOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3744
    const-string v1, "EsPeopleData"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/GetProfileOperation;->logError(Ljava/lang/String;)V

    .line 3747
    :cond_19
    return-void
.end method

.method public static modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"

    .prologue
    const/4 v3, 0x0

    .line 2013
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2015
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2016
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "circle_name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    const-string v4, "semantic_hints"

    if-eqz p4, :cond_41

    move v2, v3

    :goto_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2020
    const-string v2, "circles"

    const-string v4, "circle_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2023
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2024
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 2025
    return-void

    .line 2017
    :cond_41
    const/16 v2, 0x40

    goto :goto_18
.end method

.method private static normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "email"

    .prologue
    const/4 v2, 0x0

    .line 3190
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 3191
    .local v1, parsed:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_a

    array-length v3, v1

    if-nez v3, :cond_b

    .line 3200
    :cond_a
    :goto_a
    return-object v2

    .line 3195
    :cond_b
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3196
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3200
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_a
.end method

.method private static postAvatarSyncRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 4308
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$4;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->postOnServiceThread(Ljava/lang/Runnable;)V

    .line 4318
    return-void
.end method

.method private static postSyncBlockedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 4288
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$3;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->postOnServiceThread(Ljava/lang/Runnable;)V

    .line 4298
    return-void
.end method

.method private static postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 4248
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->postOnServiceThread(Ljava/lang/Runnable;)V

    .line 4258
    return-void
.end method

.method private static postSyncSuggestedPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 4268
    new-instance v0, Lcom/google/android/apps/plus/content/EsPeopleData$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData$2;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->postOnServiceThread(Ljava/lang/Runnable;)V

    .line 4278
    return-void
.end method

.method private static printAddressList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
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
    .line 4767
    .local p0, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$Address;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4768
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4769
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Address;

    .line 4770
    .local v0, address:Lcom/google/wireless/contacts/proto/Contact$Address;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 4772
    .end local v0           #address:Lcom/google/wireless/contacts/proto/Contact$Address;
    :cond_22
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4774
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 5
    .parameter "contact"

    .prologue
    .line 4752
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

    .line 4764
    return-void
.end method

.method private static printEmailList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
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
    .line 4778
    .local p0, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$Email;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4779
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4780
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Email;

    .line 4781
    .local v0, address:Lcom/google/wireless/contacts/proto/Contact$Email;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Email;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 4783
    .end local v0           #address:Lcom/google/wireless/contacts/proto/Contact$Email;
    :cond_22
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4785
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static printPhoneList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
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
    .line 4789
    .local p0, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$Phone;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4790
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4791
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$Phone;

    .line 4792
    .local v0, address:Lcom/google/wireless/contacts/proto/Contact$Phone;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$Phone;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 4794
    .end local v0           #address:Lcom/google/wireless/contacts/proto/Contact$Phone;
    :cond_22
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4796
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
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

    .line 1600
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1601
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

    .line 1606
    .local v8, cursor:Landroid/database/Cursor;
    :goto_1a
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1607
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 1610
    :catchall_29
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1613
    return-object v9
.end method

.method private static queryBlockedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 952
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 955
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT blocked_people_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 959
    :goto_f
    return-wide v2

    .line 958
    :catch_10
    move-exception v1

    .line 959
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static queryCircleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 643
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT circle_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 647
    :goto_f
    return-wide v2

    .line 646
    :catch_10
    move-exception v1

    .line 647
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "db"
    .parameter "table"
    .parameter "where"

    .prologue
    .line 3967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static queryPeopleLastUpdateToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 1215
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1218
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    const-string v3, "SELECT people_last_update_token  FROM account_status"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_9 .. :try_end_f} :catch_11

    move-result-object v2

    .line 1222
    :goto_10
    return-object v2

    .line 1221
    :catch_11
    move-exception v1

    .line 1222
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_10
.end method

.method private static queryPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1197
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1200
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT people_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 1204
    :goto_f
    return-wide v2

    .line 1203
    :catch_10
    move-exception v1

    .line 1204
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method private static querySuggestedPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 869
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 872
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT suggested_people_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 876
    :goto_f
    return-wide v2

    .line 875
    :catch_10
    move-exception v1

    .line 876
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method public static refreshProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3645
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3646
    .local v0, gaiaId:Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 3647
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->loadProfileFromServer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 3648
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3649
    new-instance v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3652
    :cond_18
    return-void
.end method

.method private static removeContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)Z
    .registers 14
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
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, personIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2690
    const/4 v5, 0x0

    .line 2691
    .local v5, removed:Z
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2694
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2696
    :try_start_e
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2697
    .local v6, values:Landroid/content/ContentValues;
    const-string v9, "in_my_circles"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2698
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 2699
    .local v0, args:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2700
    .local v4, personId:Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v4, v0, v9

    .line 2701
    const-string v9, "contacts"

    const-string v10, "person_id=?"

    invoke-virtual {v2, v9, v6, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2703
    .local v1, count:I
    if-eqz v1, :cond_24

    .line 2704
    const-string v9, "circle_contact"

    const-string v10, "link_person_id=?"

    invoke-virtual {v2, v9, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2706
    if-lez v1, :cond_49

    move v5, v7

    :goto_48
    goto :goto_24

    :cond_49
    move v5, v8

    goto :goto_48

    .line 2709
    .end local v1           #count:I
    .end local v4           #personId:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_52

    .line 2711
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2714
    return v5

    .line 2711
    .end local v0           #args:[Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #values:Landroid/content/ContentValues;
    :catchall_52
    move-exception v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method

.method public static removeDeletedCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V
    .registers 9
    .parameter "context"
    .parameter "account"
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
    .line 2063
    .local p2, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 2083
    :cond_8
    :goto_8
    return-void

    .line 2067
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2069
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2070
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "circle_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 2072
    if-lez v1, :cond_29

    .line 2073
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2075
    :cond_29
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2071
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2077
    :cond_31
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    const-string v4, "circles"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2081
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2082
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    goto :goto_8
.end method

.method protected static removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "personId"

    .prologue
    const/4 v3, 0x1

    .line 2430
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2431
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "dismissed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2432
    const-string v1, "suggested_people"

    const-string v2, "person_id=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2434
    return-void
.end method

.method private static replaceCircleMembershipInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)V
    .registers 12
    .parameter "db"
    .parameter "personId"
    .parameter "contact"
    .parameter "newContact"

    .prologue
    const/4 v7, 0x0

    .line 3018
    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v1

    .line 3020
    .local v1, circleIdCount:I
    if-eqz v1, :cond_78

    .line 3021
    add-int/lit8 v4, v1, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 3022
    .local v0, args:[Ljava/lang/String;
    aput-object p1, v0, v7

    .line 3023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3024
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v1, :cond_29

    .line 3025
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->getCircleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 3024
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3028
    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3030
    if-nez p3, :cond_54

    .line 3032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM circle_contact WHERE link_person_id=? AND link_circle_id NOT IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3040
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR IGNORE INTO circle_contact(link_person_id,link_circle_id) SELECT ?, circle_id FROM circles WHERE circle_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3047
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3054
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_77
    :goto_77
    return-void

    .line 3048
    :cond_78
    if-nez p3, :cond_77

    .line 3049
    const-string v4, "circle_contact"

    const-string v5, "link_person_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v7

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_77
.end method

.method private static replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V
    .registers 16
    .parameter "db"
    .parameter "personId"
    .parameter "contact"

    .prologue
    .line 2782
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactDeleted(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2783
    const-string v0, "contacts"

    const-string v1, "person_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2817
    :cond_13
    :goto_13
    return-void

    .line 2788
    :cond_14
    const-string v0, "EsPeopleData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2789
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->printContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2792
    :cond_20
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2793
    .local v9, searchKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;>;"
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->PLUSPAGE:Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v6, 0x2

    .line 2795
    .local v6, profileType:I
    :goto_32
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->convertMobileContactToContactInfo(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v0

    if-eqz v0, :cond_81

    const/4 v7, 0x1

    :goto_45
    const/4 v8, -0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactRowInTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;Ljava/lang/String;Ljava/lang/String;JIIILjava/util/ArrayList;)Z

    move-result v11

    .line 2800
    .local v11, newContact:Z
    invoke-static {p0, p1, p2, v11}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceCircleMembershipInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Z)V

    .line 2801
    invoke-static {p0, p1, p2, v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->buildSearchKeysForEmailAddresses(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;Ljava/util/ArrayList;)V

    .line 2802
    invoke-static {p0, p1, v9, v11}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceSearchKeysInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 2806
    if-nez v11, :cond_13

    .line 2807
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2808
    .local v10, gaiaId:Ljava/lang/String;
    if-eqz v10, :cond_13

    .line 2809
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2810
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "photo_downloaded"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2811
    const-string v0, "large_image"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2812
    const-string v0, "avatars"

    const-string v1, "user_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p0, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_13

    .line 2793
    .end local v6           #profileType:I
    .end local v10           #gaiaId:Ljava/lang/String;
    .end local v11           #newContact:Z
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_7f
    const/4 v6, 0x1

    goto :goto_32

    .line 2795
    .restart local v6       #profileType:I
    :cond_81
    const/4 v7, 0x0

    goto :goto_45
.end method

.method private static replaceContactRowInTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;Ljava/lang/String;Ljava/lang/String;JIIILjava/util/ArrayList;)Z
    .registers 20
    .parameter "db"
    .parameter "contact"
    .parameter "personId"
    .parameter "displayName"
    .parameter "lastUpdatedTime"
    .parameter "profileType"
    .parameter "inCircles"
    .parameter "blocked"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2880
    .local p9, searchKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;>;"
    const/4 v3, 0x0

    .line 2881
    .local v3, newContact:Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2882
    .local v5, values:Landroid/content/ContentValues;
    if-eqz p7, :cond_d

    .line 2883
    move-object/from16 v0, p9

    invoke-static {v0, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->collectSearchKeysForName(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2885
    :cond_d
    const-string v6, "name"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    const-string v6, "last_updated_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2889
    const-string v6, "in_my_circles"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2890
    const/4 v6, -0x1

    move/from16 v0, p8

    if-eq v0, v6, :cond_32

    .line 2891
    const-string v6, "blocked"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2893
    :cond_32
    const-string v6, "profile_type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2895
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2897
    .local v2, gaiaId:Ljava/lang/String;
    if-eqz p8, :cond_a1

    .line 2898
    const-string v6, "profile_state"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2903
    :cond_4b
    :goto_4b
    const-string v6, "contacts"

    const-string v7, "person_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {p0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2906
    .local v1, contactCount:I
    if-nez v1, :cond_6c

    .line 2907
    const/4 v3, 0x1

    .line 2908
    const-string v6, "person_id"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    const-string v6, "gaia_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    const-string v6, "contacts"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2913
    :cond_6c
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2914
    const-string v6, "contact_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2915
    const-string v6, "contact_proto"

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->serializeContactInfo(Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2916
    const-string v6, "profiles"

    const-string v7, "profile_person_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {p0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2918
    .local v4, profileCount:I
    if-nez v4, :cond_a0

    .line 2919
    const-string v6, "profile_person_id"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    const-string v6, "profiles"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2922
    :cond_a0
    return v3

    .line 2899
    .end local v1           #contactCount:I
    .end local v4           #profileCount:I
    :cond_a1
    if-eqz p7, :cond_4b

    if-nez v2, :cond_4b

    .line 2900
    const-string v6, "profile_state"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4b
.end method

.method private static replaceContacts(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;II)I
    .registers 32
    .parameter "context"
    .parameter "account"
    .parameter "db"
    .parameter
    .parameter "fromIndex"
    .parameter "toIndex"
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
    .line 2508
    .local p3, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    const/16 v25, 0x0

    .line 2509
    .local v25, updateCount:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .local v11, avatarsToRefresh:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2512
    :try_start_a
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 2516
    .local v21, personIdToTimestampMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 2517
    .local v22, sb:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2518
    .local v10, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "person_id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    move/from16 v15, p4

    .local v15, i:I
    :goto_22
    move/from16 v0, p5

    if-ge v15, v0, :cond_3f

    .line 2520
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2521
    .local v12, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    const-string v2, "?,"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    add-int/lit8 v15, v15, 0x1

    goto :goto_22

    .line 2524
    .end local v12           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_3f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2525
    const-string v2, ")"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    const-string v3, "contacts"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "person_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "last_updated_time"

    aput-object v5, v4, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_75
    .catchall {:try_start_a .. :try_end_75} :catchall_97

    move-result-object v13

    .line 2532
    .local v13, cursor:Landroid/database/Cursor;
    :goto_76
    :try_start_76
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 2533
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2534
    .local v20, personId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 2535
    .local v23, timestamp:J
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_76 .. :try_end_91} :catchall_92

    goto :goto_76

    .line 2538
    .end local v20           #personId:Ljava/lang/String;
    .end local v23           #timestamp:J
    :catchall_92
    move-exception v2

    :try_start_93
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_97

    .line 2562
    .end local v10           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #i:I
    .end local v21           #personIdToTimestampMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :catchall_97
    move-exception v2

    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 2538
    .restart local v10       #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v15       #i:I
    .restart local v21       #personIdToTimestampMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    :cond_9c
    :try_start_9c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2542
    move/from16 v15, p4

    :goto_a1
    move/from16 v0, p5

    if-ge v15, v0, :cond_e4

    .line 2543
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 2544
    .restart local v12       #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getLastUpdatedTime()J

    move-result-wide v18

    .line 2545
    .local v18, lastUpdatedTime:J
    invoke-virtual {v12}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v20

    .line 2546
    .restart local v20       #personId:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 2547
    .local v17, lastSyncedTime:Ljava/lang/Long;
    if-eqz v17, :cond_cf

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-ltz v2, :cond_cf

    invoke-static {v12}, Lcom/google/android/apps/plus/content/EsPeopleData;->isContactDeleted(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 2549
    :cond_cf
    add-int/lit8 v25, v25, 0x1

    .line 2550
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Lcom/google/android/apps/plus/content/EsPeopleData;->replaceContactInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 2551
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2552
    .local v14, gaiaId:Ljava/lang/String;
    if-eqz v14, :cond_e1

    .line 2553
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2542
    .end local v14           #gaiaId:Ljava/lang/String;
    :cond_e1
    add-int/lit8 v15, v15, 0x1

    goto :goto_a1

    .line 2558
    .end local v12           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .end local v17           #lastSyncedTime:Ljava/lang/Long;
    .end local v18           #lastUpdatedTime:J
    .end local v20           #personId:Ljava/lang/String;
    :cond_e4
    if-lez v25, :cond_e9

    .line 2559
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e9
    .catchall {:try_start_9c .. :try_end_e9} :catchall_97

    .line 2562
    :cond_e9
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2565
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_f0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2566
    .restart local v14       #gaiaId:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/google/android/apps/plus/service/ImageCache;->notifyAvatarChange(Ljava/lang/String;)V

    goto :goto_f0

    .line 2569
    .end local v14           #gaiaId:Ljava/lang/String;
    :cond_104
    return v25
.end method

.method private static replacePersonsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z
    .registers 22
    .parameter "db"
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
    .line 2127
    .local p1, persons:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 2129
    .local v18, userNames:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2130
    .local v17, sb:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2131
    .local v14, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "gaia_id IN("

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 2133
    .local v16, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    const-string v2, "?,"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2135
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2138
    .end local v16           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_41
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2139
    const-string v2, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2142
    const/4 v10, 0x0

    .line 2200
    :cond_5a
    return v10

    .line 2145
    :cond_5b
    const-string v3, "contacts"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "gaia_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "name"

    aput-object v5, v4, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2149
    .local v11, cursor:Landroid/database/Cursor;
    :goto_80
    :try_start_80
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 2150
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2151
    .local v12, gaiaId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2152
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_80 .. :try_end_95} :catchall_96

    goto :goto_80

    .line 2155
    .end local v12           #gaiaId:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    :catchall_96
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_9b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2158
    const/4 v10, 0x0

    .line 2161
    .local v10, changed:Z
    new-instance v19, Landroid/content/ContentValues;

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2162
    .local v19, values:Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_ab
    :goto_ab
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 2163
    .restart local v16       #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasGaiaId()Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v2

    if-eqz v2, :cond_c9

    :cond_c3
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasName()Z

    move-result v2

    if-nez v2, :cond_103

    .line 2164
    :cond_c9
    const-string v2, "EsPeopleData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2165
    const-string v2, "EsPeopleData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Person id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; *** Skip. No gaia id or name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 2172
    :cond_103
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v12

    .line 2173
    .restart local v12       #gaiaId:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17f

    .line 2174
    const-string v2, "EsPeopleData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 2175
    const-string v2, "EsPeopleData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Inserting person id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_142
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 2180
    const-string v2, "person_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const-string v2, "gaia_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    const-string v2, "name"

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    const-string v2, "contacts"

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2185
    const/4 v10, 0x1

    goto/16 :goto_ab

    .line 2186
    :cond_17f
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 2187
    const-string v2, "EsPeopleData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 2188
    const-string v2, "EsPeopleData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Updating person id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_1c4
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 2193
    const-string v2, "name"

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string v2, "contacts"

    const-string v3, "gaia_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2196
    const/4 v10, 0x1

    goto/16 :goto_ab
.end method

.method private static replacePlusOneProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 9
    .parameter "db"
    .parameter "id"
    .parameter "plusOneData"

    .prologue
    .line 3577
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3578
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3579
    const-string v2, "plus_one_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3580
    const-string v2, "plus_one_proto"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3581
    const-string v2, "profiles"

    const-string v3, "profile_person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3583
    .local v0, profileCount:I
    if-nez v0, :cond_3a

    .line 3584
    const-string v2, "profile_person_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    const-string v2, "profiles"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 3588
    :cond_3a
    return-void
.end method

.method private static replaceProfileProtoInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/api/services/plusi/model/SimpleProfile;)Z
    .registers 26
    .parameter "db"
    .parameter "personId"
    .parameter "profile"

    .prologue
    .line 3277
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getProfileState(Lcom/google/api/services/plusi/model/SimpleProfile;)I

    move-result v20

    .line 3278
    .local v20, profileState:I
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->getDisplayName(Lcom/google/api/services/plusi/model/SimpleProfile;)Ljava/lang/String;

    move-result-object v12

    .line 3279
    .local v12, name:Ljava/lang/String;
    const-string v2, "PLUSPAGE"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/api/services/plusi/model/SimpleProfile;->profileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const/16 v21, 0x2

    .line 3282
    .local v21, profileType:I
    :goto_16
    const/4 v13, 0x1

    .line 3283
    .local v13, newContact:Z
    const/16 v18, -0x1

    .line 3284
    .local v18, oldProfileState:I
    const/16 v19, -0x1

    .line 3285
    .local v19, oldProfileType:I
    const/16 v16, 0x0

    .line 3287
    .local v16, oldName:Ljava/lang/String;
    const-string v3, "contacts"

    sget-object v4, Lcom/google/android/apps/plus/content/EsPeopleData;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v5, "person_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3290
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_32
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3291
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 3292
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3293
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_108

    move-result v19

    .line 3294
    const/4 v13, 0x0

    .line 3297
    :cond_48
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3300
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 3302
    .local v22, values:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 3303
    .local v10, changed:Z
    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_65

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_a3

    .line 3305
    :cond_65
    const/4 v10, 0x1

    .line 3306
    const-string v2, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    const-string v2, "profile_state"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3308
    const-string v2, "profile_type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3310
    if-eqz v13, :cond_10d

    .line 3311
    const-string v2, "person_id"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const-string v2, "gaia_id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    const-string v2, "contacts"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3321
    :cond_a3
    :goto_a3
    const/4 v14, 0x1

    .line 3322
    .local v14, newProfile:Z
    const/16 v17, 0x0

    .line 3323
    .local v17, oldProfileProto:[B
    const-string v3, "profiles"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "profile_proto"

    aput-object v5, v4, v2

    const-string v5, "profile_person_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3327
    :try_start_c1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 3328
    const/4 v14, 0x0

    .line 3329
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_cc
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_11f

    move-result-object v17

    .line 3332
    :cond_cd
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3335
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->serializeProfile(Lcom/google/api/services/plusi/model/SimpleProfile;)[B

    move-result-object v15

    .line 3337
    .local v15, newProfileProto:[B
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 3338
    const-string v2, "profile_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3339
    if-eqz v14, :cond_124

    .line 3340
    const-string v2, "profile_person_id"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    const-string v2, "profile_proto"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3342
    const-string v2, "profiles"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3343
    const/4 v10, 0x1

    .line 3353
    :goto_103
    return v10

    .line 3279
    .end local v10           #changed:Z
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #newContact:Z
    .end local v14           #newProfile:Z
    .end local v15           #newProfileProto:[B
    .end local v16           #oldName:Ljava/lang/String;
    .end local v17           #oldProfileProto:[B
    .end local v18           #oldProfileState:I
    .end local v19           #oldProfileType:I
    .end local v21           #profileType:I
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_104
    const/16 v21, 0x1

    goto/16 :goto_16

    .line 3297
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v13       #newContact:Z
    .restart local v16       #oldName:Ljava/lang/String;
    .restart local v18       #oldProfileState:I
    .restart local v19       #oldProfileType:I
    .restart local v21       #profileType:I
    :catchall_108
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3316
    .restart local v10       #changed:Z
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_10d
    const-string v2, "contacts"

    const-string v3, "person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a3

    .line 3332
    .restart local v14       #newProfile:Z
    .restart local v17       #oldProfileProto:[B
    :catchall_11f
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3345
    .restart local v15       #newProfileProto:[B
    :cond_124
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_134

    .line 3346
    const-string v2, "profile_proto"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3347
    const/4 v10, 0x1

    .line 3349
    :cond_134
    const-string v2, "profiles"

    const-string v3, "profile_person_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_103
.end method

.method private static replaceSearchKeysInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 11
    .parameter "db"
    .parameter "personId"
    .parameter
    .parameter "newContact"
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
    .line 3172
    .local p2, searchKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;>;"
    if-nez p3, :cond_f

    .line 3173
    const-string v3, "contact_search"

    const-string v4, "search_person_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3177
    :cond_f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3178
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;

    .line 3179
    .local v1, searchKey:Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;
    const-string v3, "search_person_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    const-string v3, "search_key_type"

    iget v4, v1, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;->keyType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3181
    const-string v3, "search_key"

    iget-object v4, v1, Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    const-string v3, "contact_search"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_18

    .line 3184
    .end local v1           #searchKey:Lcom/google/android/apps/plus/content/EsPeopleData$SearchKey;
    :cond_42
    return-void
.end method

.method private static retrieveEntityPlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 24
    .parameter "context"
    .parameter "account"
    .parameter "personId"

    .prologue
    .line 3416
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3417
    .local v13, gaiaId:Ljava/lang/String;
    if-nez v13, :cond_14

    .line 3418
    new-instance v11, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "proto"

    aput-object v6, v4, v5

    invoke-direct {v11, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3464
    :cond_13
    :goto_13
    return-object v11

    .line 3421
    :cond_14
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3424
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "profiles"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "plus_one_proto"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "plus_one_update_time"

    aput-object v7, v5, v6

    const-string v6, "profile_person_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3428
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 3429
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 3430
    .local v20, proto:[B
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3431
    .local v14, lastUpdated:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3432
    .local v16, now:J
    if-eqz v20, :cond_59

    sub-long v4, v16, v14

    const-wide/32 v6, 0x2bf20

    cmp-long v4, v4, v6

    if-ltz v4, :cond_13

    .line 3437
    .end local v14           #lastUpdated:J
    .end local v16           #now:J
    .end local v20           #proto:[B
    :cond_59
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3440
    :try_start_5c
    const-string v4, "SELECT profile_type FROM contacts WHERE gaia_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v19, v0

    .line 3445
    .local v19, profileType:I
    const/4 v4, 0x2

    move/from16 v0, v19

    if-eq v0, v4, :cond_91

    .line 3446
    new-instance v11, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .end local v11           #cursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "proto"

    aput-object v6, v4, v5

    invoke-direct {v11, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_5c .. :try_end_81} :catch_82

    goto :goto_13

    .line 3448
    .end local v19           #profileType:I
    :catch_82
    move-exception v12

    .line 3450
    .local v12, ex:Landroid/database/sqlite/SQLiteDoneException;
    new-instance v11, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "proto"

    aput-object v6, v4, v5

    invoke-direct {v11, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_13

    .line 3453
    .end local v12           #ex:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v19       #profileType:I
    :cond_91
    const-string v4, "plus_one_update_time"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    new-instance v18, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 3456
    .local v18, po:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getProfilePlusOneData(Ljava/lang/String;)V

    .line 3457
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 3459
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 3460
    const-string v4, "EsPeopleData"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->logError(Ljava/lang/String;)V

    .line 3461
    const/4 v11, 0x0

    goto/16 :goto_13

    .line 3464
    :cond_c1
    const-string v4, "profiles"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "plus_one_proto"

    aput-object v7, v5, v6

    const-string v6, "profile_person_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_13
.end method

.method private static serializeContactInfo(Lcom/google/android/apps/plus/content/EsPeopleData$ContactInfo;)[B
    .registers 2
    .parameter "contactInfo"

    .prologue
    .line 3382
    if-nez p0, :cond_4

    .line 3383
    const/4 v0, 0x0

    .line 3386
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/android/apps/plus/content/EsPeopleData;->CONTACT_INFO_JSON:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/json/EsJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_3
.end method

.method private static serializeProfile(Lcom/google/api/services/plusi/model/SimpleProfile;)[B
    .registers 2
    .parameter "profile"

    .prologue
    .line 3360
    if-nez p0, :cond_4

    .line 3361
    const/4 v0, 0x0

    .line 3364
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Lcom/google/api/services/plusi/model/SimpleProfileJson;->getInstance()Lcom/google/api/services/plusi/model/SimpleProfileJson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/services/plusi/model/SimpleProfileJson;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_3
.end method

.method public static setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "circlesToAdd"
    .parameter "circlesToRemove"

    .prologue
    const/4 v6, 0x0

    .line 3776
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3778
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3780
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3781
    .local v3, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_81

    array-length v4, p3

    if-lez v4, :cond_81

    .line 3782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR IGNORE INTO circle_contact(link_person_id,link_circle_id) SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "circle_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "circles"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "circle_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3789
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    array-length v4, p3

    if-ge v1, v4, :cond_66

    .line 3790
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3789
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 3792
    :cond_66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3793
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3795
    invoke-static {v0, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateMemberCountsInTransaction(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 3796
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeFromSuggestedPeopleInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3798
    .end local v1           #i:I
    :cond_81
    if-eqz p4, :cond_e0

    array-length v4, p4

    if-lez v4, :cond_e0

    .line 3799
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM circle_contact WHERE link_person_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "link_circle_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_bd
    array-length v4, p4

    if-ge v1, v4, :cond_c8

    .line 3806
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    add-int/lit8 v1, v1, 0x1

    goto :goto_bd

    .line 3808
    :cond_c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3809
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3810
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3811
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateMemberCountsInTransaction(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 3814
    .end local v1           #i:I
    :cond_e0
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateInMyCirclesFlagAndTimestampInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3816
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e6
    .catchall {:try_start_c .. :try_end_e6} :catchall_fc

    .line 3818
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3820
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3821
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3822
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3824
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;Z)V

    .line 3825
    return-void

    .line 3818
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catchall_fc
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public static setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "blocked"

    .prologue
    .line 3882
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3885
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3887
    :try_start_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3888
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "blocked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3889
    if-eqz p3, :cond_25

    .line 3890
    const-string v4, "in_my_circles"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3892
    :cond_25
    const-string v4, "contacts"

    const-string v5, "person_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3895
    if-eqz p3, :cond_41

    .line 3896
    const-string v4, "circle_contact"

    const-string v5, "link_person_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3901
    :cond_41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_5a

    .line 3903
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3906
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->CONTACT_BY_PERSON_ID_URI:Landroid/net/Uri;

    invoke-static {v4, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3911
    const/4 v4, 0x0

    :try_start_56
    invoke-static {p0, p1, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5f

    .line 3915
    :goto_59
    return-void

    .line 3903
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_5a
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 3912
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_5f
    move-exception v1

    .line 3913
    .local v1, e:Ljava/io/IOException;
    const-string v4, "EsPeopleData"

    const-string v5, "Could not sync circles after blocking a person"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
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
    .line 659
    sget-object v5, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 660
    :try_start_3
    new-instance v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 661
    .local v2, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    const-string v4, "Circle sync"

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 662
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->doCirclesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v1

    .line 663
    .local v1, success:Z
    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 664
    if-eqz v1, :cond_47

    .line 665
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "circle_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 669
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "account_status"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 673
    if-eqz p2, :cond_47

    .line 675
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postSyncPeopleRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 678
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_47
    monitor-exit v5

    .line 679
    return-void

    .line 678
    .end local v1           #success:Z
    .end local v2           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v4
.end method

.method public static syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
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
    .line 1053
    sget-object v5, Lcom/google/android/apps/plus/content/EsPeopleData;->sMyProfileSyncLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1056
    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    move-result-object v0

    .line 1060
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_b
    const-string v4, "SELECT contact_update_time  FROM profiles  WHERE profile_person_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v4, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_32
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_b .. :try_end_1a} :catch_29

    move-result-wide v1

    .line 1069
    .local v1, lastSyncTime:J
    :goto_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/32 v8, 0xea60

    cmp-long v4, v6, v8

    if-gez v4, :cond_2d

    .line 1070
    monitor-exit v5

    .line 1079
    :goto_28
    return-void

    .line 1065
    .end local v1           #lastSyncTime:J
    :catch_29
    move-exception v3

    .line 1066
    .local v3, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, 0x0

    .restart local v1       #lastSyncTime:J
    goto :goto_1b

    .line 1074
    .end local v3           #noData:Landroid/database/sqlite/SQLiteDoneException;
    :cond_2d
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->doSyncMyProfileUsingTacoTruck(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 1078
    monitor-exit v5

    goto :goto_28

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #lastSyncTime:J
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_32

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
    .line 1156
    sget-object v8, Lcom/google/android/apps/plus/content/EsPeopleData;->sPeopleSyncLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1157
    if-nez p4, :cond_17

    .line 1158
    :try_start_5
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->queryPeopleSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v0

    .line 1159
    .local v0, circleSyncTimestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    const-wide/32 v11, 0xea60

    cmp-long v7, v9, v11

    if-gez v7, :cond_17

    .line 1162
    monitor-exit v8

    .line 1188
    .end local v0           #circleSyncTimestamp:J
    :goto_16
    return-void

    .line 1167
    :cond_17
    sget-object v9, Lcom/google/android/apps/plus/content/EsPeopleData;->sCircleSyncLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_61

    .line 1168
    :try_start_1a
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->doCirclesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v5

    .line 1169
    .local v5, success:Z
    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_64

    .line 1170
    :try_start_1f
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->doContactsSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 1172
    if-eqz v5, :cond_5f

    .line 1173
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1174
    .local v6, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1175
    .local v3, now:J
    const-string v7, "circle_sync_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1176
    const-string v7, "people_sync_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1177
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1179
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "account_status"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1183
    if-eqz p5, :cond_5f

    .line 1184
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->postAvatarSyncRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1187
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

    .line 1169
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
    .parameter "db"
    .parameter "personId"

    .prologue
    .line 3838
    const-string v0, "UPDATE contacts SET in_my_circles=(EXISTS (SELECT 1 FROM circle_contact WHERE link_person_id=?)),last_updated_time=last_updated_time + 1 WHERE person_id=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3845
    return-void
.end method

.method private static updateMemberCounts(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 3865
    const-string v0, "UPDATE circles SET contact_count=(SELECT count(*) FROM circle_contact WHERE link_circle_id=circle_id) WHERE type=1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3870
    return-void
.end method

.method private static updateMemberCountsInTransaction(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .registers 9
    .parameter "db"
    .parameter "circleIds"

    .prologue
    .line 3851
    if-eqz p1, :cond_1d

    array-length v5, p1

    if-eqz v5, :cond_1d

    .line 3852
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    .line 3853
    .local v0, args:[Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_1d

    aget-object v2, v1, v3

    .line 3854
    .local v2, circleId:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-object v2, v0, v6

    aput-object v2, v0, v5

    .line 3855
    const-string v5, "UPDATE circles SET contact_count=(SELECT count(*) FROM circle_contact WHERE link_circle_id=?) WHERE circle_id=?"

    invoke-virtual {p0, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3853
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3862
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #circleId:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1d
    return-void
.end method

.method private static updateProfileTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "columnName"

    .prologue
    .line 3664
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3666
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsPeopleData;->updateProfileTimestamp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    return-void
.end method

.method private static updateProfileTimestamp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "db"
    .parameter "personId"
    .parameter "columnName"

    .prologue
    .line 3678
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3679
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3680
    const-string v1, "profiles"

    const-string v2, "profile_person_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3682
    return-void
.end method
