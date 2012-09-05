.class public Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
.super Ljava/lang/Object;
.source "PhoneBookManageSim.java"


# static fields
.field static final ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

.field public static final ADN_URI:Landroid/net/Uri;

.field static final DATA_PROJECTION:[Ljava/lang/String;

.field public static final DATA_URI:Landroid/net/Uri;

.field private static isFirstCheck:Z

.field private static mContext:Landroid/content/Context;

.field private static mCurrentSimState:I

.field private static mEmailLength:I

.field private static mEmailMaxIndex:I

.field private static mEmailUsedIndex:I

.field private static mMaxCount:I

.field private static mNameLength:I

.field private static mNumberLength:I

.field private static mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private static mSimType:Ljava/lang/String;

.field private static mTelMan:Landroid/telephony/TelephonyManager;

.field private static mUsedCount:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field public final COPY_SUCCESS:I

.field private final EMAIL:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field public final NULL_CONTACT_ERROR:I

.field private final NUMBER:Ljava/lang/String;

.field public final WRITE_SIM_ERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 65
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.android.contacts/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "is_primary"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 97
    sput-boolean v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 101
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 103
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 104
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 105
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 106
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 107
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 108
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 109
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "tag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NAME:Ljava/lang/String;

    .line 62
    const-string v0, "number"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NUMBER:Ljava/lang/String;

    .line 63
    const-string v0, "emails"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->EMAIL:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->COPY_SUCCESS:I

    .line 112
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NULL_CONTACT_ERROR:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->WRITE_SIM_ERROR:I

    .line 124
    sput-object p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method private deleteItemByContactsId(J)Z
    .registers 7
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 725
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 726
    .local v0, uri:Landroid/net/Uri;
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 727
    const/4 v1, 0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .registers 2
    .parameter "context"

    .prologue
    .line 116
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 119
    :cond_b
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    return-object v0
.end method


# virtual methods
.method public copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 27
    .parameter "contactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "isActionMove"

    .prologue
    .line 415
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 419
    .local v11, dataCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 420
    .local v15, name:Ljava/lang/String;
    const/16 v16, 0x0

    .line 421
    .local v16, number:Ljava/lang/String;
    const/4 v13, 0x0

    .line 423
    .local v13, email:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    const/4 v14, 0x0

    .local v14, i:I
    :goto_25
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v14, v2, :cond_69

    .line 425
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 427
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 435
    :cond_3d
    :goto_3d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 424
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 428
    :cond_43
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 430
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_3d

    .line 431
    :cond_56
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 433
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3d

    .line 437
    :cond_69
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 438
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 439
    const/4 v2, 0x0

    .line 504
    :goto_7f
    return v2

    .line 442
    :cond_80
    const/16 v18, 0x0

    .line 444
    .local v18, results:[Landroid/content/ContentProviderResult;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v10

    .line 446
    .local v10, client:Landroid/content/ContentProviderClient;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v8, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 450
    .local v17, rawContactIdIndex:I
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 452
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p3, :cond_156

    if-eqz p4, :cond_156

    .line 453
    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 454
    const-string v2, "account_type"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 458
    :goto_b3
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    if-eqz v15, :cond_dc

    .line 461
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 462
    const-string v2, "raw_contact_id"

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 463
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 464
    const-string v2, "data2"

    invoke-virtual {v9, v2, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 465
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_dc
    if-eqz v16, :cond_114

    .line 468
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 469
    const-string v2, "raw_contact_id"

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 470
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 471
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 472
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 473
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 474
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_114
    if-eqz v13, :cond_140

    .line 477
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 478
    const-string v2, "raw_contact_id"

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 479
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 480
    const-string v2, "data2"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 481
    const-string v2, "data1"

    invoke-virtual {v9, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 482
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_140
    :try_start_140
    invoke-virtual {v10, v8}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_143} :catch_15d
    .catch Landroid/content/OperationApplicationException; {:try_start_140 .. :try_end_143} :catch_164

    move-result-object v18

    .line 495
    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 496
    .local v19, retId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_16b

    .line 497
    const/4 v2, 0x0

    goto/16 :goto_7f

    .line 456
    .end local v19           #retId:J
    :cond_156
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_b3

    .line 487
    :catch_15d
    move-exception v12

    .line 488
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    .line 489
    const/4 v2, 0x0

    goto/16 :goto_7f

    .line 490
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_164
    move-exception v12

    .line 491
    .local v12, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 492
    const/4 v2, 0x0

    goto/16 :goto_7f

    .line 500
    .end local v12           #e:Landroid/content/OperationApplicationException;
    .restart local v19       #retId:J
    :cond_16b
    if-eqz p5, :cond_170

    .line 501
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 504
    :cond_170
    const/4 v2, 0x1

    goto/16 :goto_7f
.end method

.method public copyToSim(JZ)I
    .registers 30
    .parameter "contactId"
    .parameter "isActionMove"

    .prologue
    .line 199
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 203
    .local v12, dataCursor:Landroid/database/Cursor;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v25, values:Landroid/content/ContentValues;
    const-string v18, ""

    .line 206
    .local v18, name:Ljava/lang/String;
    const-string v20, ""

    .line 207
    .local v20, number:Ljava/lang/String;
    const-string v14, ""

    .line 208
    .local v14, email:Ljava/lang/String;
    const/16 v17, 0x1

    .line 209
    .local v17, isFirst:Z
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2f
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_87

    .line 211
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 213
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 228
    :cond_49
    :goto_49
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 210
    add-int/lit8 v16, v16, 0x1

    goto :goto_2f

    .line 214
    :cond_4f
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 216
    if-eqz v17, :cond_66

    .line 217
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 218
    const/16 v17, 0x0

    goto :goto_49

    .line 220
    :cond_66
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    .line 221
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_49

    .line 224
    :cond_74
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 226
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_49

    .line 230
    :cond_87
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 232
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 233
    const/4 v3, -0x2

    .line 310
    :goto_97
    return v3

    .line 235
    :cond_98
    if-eqz v18, :cond_132

    .line 236
    const-string v3, "PTR"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-string v3, "PCL"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-string v3, "CEL"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-string v3, "MIR"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-string v3, "ILO"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 241
    :cond_e0
    const/16 v21, 0x0

    .line 242
    .local v21, offset:I
    sget v19, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 243
    .local v19, nameLength:I
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, heAlpha:Ljava/lang/String;
    const/16 v16, 0x0

    :goto_f3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_112

    .line 246
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1bb

    .line 247
    const/16 v21, 0x3

    .line 248
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x6

    add-int/lit8 v19, v3, 0x2

    .line 252
    :cond_112
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v19

    if-le v3, v0, :cond_129

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 260
    .end local v15           #heAlpha:Ljava/lang/String;
    .end local v19           #nameLength:I
    .end local v21           #offset:I
    :cond_129
    :goto_129
    const-string v3, "tag"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_132
    if-eqz v20, :cond_152

    .line 265
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 266
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v3, v4, :cond_149

    .line 267
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 270
    :cond_149
    const-string v3, "number"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_152
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_17c

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    if-le v3, v4, :cond_175

    .line 276
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 278
    :cond_175
    const-string v3, "emails"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_17c
    const/16 v22, 0x0

    .line 284
    .local v22, results:[Landroid/content/ContentProviderResult;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11

    .line 286
    .local v11, client:Landroid/content/ContentProviderClient;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v9, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 288
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 289
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :try_start_1a5
    invoke-virtual {v11, v9}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_1a5 .. :try_end_1a8} :catch_1d8
    .catch Landroid/content/OperationApplicationException; {:try_start_1a5 .. :try_end_1a8} :catch_1dc

    move-result-object v22

    .line 300
    const/4 v3, 0x0

    aget-object v3, v22, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 301
    .local v23, retId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v23, v3

    if-gez v3, :cond_1e3

    .line 302
    const/4 v3, -0x1

    goto/16 :goto_97

    .line 244
    .end local v9           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #client:Landroid/content/ContentProviderClient;
    .end local v22           #results:[Landroid/content/ContentProviderResult;
    .end local v23           #retId:J
    .restart local v15       #heAlpha:Ljava/lang/String;
    .restart local v19       #nameLength:I
    .restart local v21       #offset:I
    :cond_1bb
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_f3

    .line 256
    .end local v15           #heAlpha:Ljava/lang/String;
    .end local v19           #nameLength:I
    .end local v21           #offset:I
    :cond_1bf
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    if-le v3, v4, :cond_129

    .line 257
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_129

    .line 292
    .restart local v9       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v10       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #client:Landroid/content/ContentProviderClient;
    .restart local v22       #results:[Landroid/content/ContentProviderResult;
    :catch_1d8
    move-exception v13

    .line 294
    .local v13, e:Landroid/os/RemoteException;
    const/4 v3, -0x1

    goto/16 :goto_97

    .line 295
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1dc
    move-exception v13

    .line 296
    .local v13, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 297
    const/4 v3, -0x1

    goto/16 :goto_97

    .line 306
    .end local v13           #e:Landroid/content/OperationApplicationException;
    .restart local v23       #retId:J
    :cond_1e3
    if-eqz p3, :cond_1e8

    .line 307
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 310
    :cond_1e8
    const/4 v3, 0x1

    goto/16 :goto_97
.end method

.method public copyToSimThrougtIccProvider(JZ)I
    .registers 21
    .parameter "contactId"
    .parameter "isActiveMove"

    .prologue
    .line 128
    const-string v2, "content://icc/adn/expansion"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 129
    .local v15, usim_uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v8, Values:Landroid/content/ContentValues;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 136
    .local v11, dataCursor:Landroid/database/Cursor;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v16, values:Landroid/content/ContentValues;
    const-string v14, ""

    .line 139
    .local v14, name:Ljava/lang/String;
    const-string v9, ""

    .line 140
    .local v9, adn_number:Ljava/lang/String;
    const-string v10, ""

    .line 141
    .local v10, anr_number:Ljava/lang/String;
    const-string v12, ""

    .line 143
    .local v12, email:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    const/4 v13, 0x0

    .local v13, i:I
    :goto_39
    :try_start_39
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_95

    .line 146
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 148
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 161
    :cond_51
    :goto_51
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 145
    add-int/lit8 v13, v13, 0x1

    goto :goto_39

    .line 149
    :cond_57
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 150
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 151
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_51

    .line 152
    :cond_70
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 153
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_51

    .line 155
    :cond_7c
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 157
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 158
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_39 .. :try_end_93} :catchall_f7

    move-result-object v12

    goto :goto_51

    .line 164
    :cond_95
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 165
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 166
    move-object v14, v9

    .line 177
    :cond_a2
    :goto_a2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 180
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d7

    .line 181
    const-string v2, "tag"

    invoke-virtual {v8, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "number"

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "AnrNumber"

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "emails"

    invoke-virtual {v8, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_d7
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v15, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 190
    if-eqz p3, :cond_e5

    .line 191
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 194
    :cond_e5
    const/4 v2, 0x1

    return v2

    .line 168
    :cond_e7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ef

    .line 169
    move-object v14, v10

    goto :goto_a2

    .line 171
    :cond_ef
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 172
    move-object v14, v12

    goto :goto_a2

    .line 164
    :catchall_f7
    move-exception v2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 165
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 166
    move-object v14, v9

    .line 177
    :cond_105
    :goto_105
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 168
    :cond_109
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_111

    .line 169
    move-object v14, v10

    goto :goto_105

    .line 171
    :cond_111
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_105

    .line 172
    move-object v14, v12

    goto :goto_105
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .registers 12
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 350
    new-array v0, v7, [B

    .line 351
    .local v0, byteArrayText:[B
    new-array v1, v7, [B

    .line 352
    .local v1, byteArrayTextTemp:[B
    const/4 v5, 0x0

    .line 353
    .local v5, isEncodable:Z
    const/4 v6, 0x0

    .line 356
    .local v6, thaiLength:I
    const/4 v7, 0x1

    :try_start_8
    invoke-static {p1, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_b
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_8 .. :try_end_b} :catch_5c

    .line 357
    const/4 v5, 0x1

    .line 364
    :goto_c
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_5f

    .line 365
    const-string v7, "PhoneBookManageSim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Curr chracter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xe01

    if-lt v7, v8, :cond_59

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xe5b

    if-gt v7, v8, :cond_59

    .line 367
    add-int/lit8 v6, v6, 0x1

    .line 368
    const-string v7, "PhoneBookManageSim"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Curr thaiLength : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 359
    .end local v4           #i:I
    :catch_5c
    move-exception v3

    .line 360
    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v5, 0x0

    goto :goto_c

    .line 372
    .end local v3           #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v4       #i:I
    :cond_5f
    if-eqz v5, :cond_66

    .line 373
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 396
    :goto_65
    return-object v0

    .line 376
    :cond_66
    :try_start_66
    const-string v7, "ISO-10646-UCS-2"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 379
    const-string v7, "THL"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 380
    if-lez v6, :cond_83

    .line 381
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v7, v6

    new-array v0, v7, [B

    goto :goto_65

    .line 383
    :cond_83
    array-length v7, v1

    add-int/lit8 v7, v7, -0x2

    new-array v0, v7, [B

    goto :goto_65

    .line 386
    :cond_89
    array-length v7, v1

    new-array v0, v7, [B

    .line 387
    const/4 v7, 0x2

    const/4 v8, 0x0

    array-length v9, v1

    add-int/lit8 v9, v9, -0x2

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_94} :catch_95

    goto :goto_65

    .line 391
    :catch_95
    move-exception v2

    .line 393
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method

.method public getEmailLength()I
    .registers 2

    .prologue
    .line 705
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_c

    .line 706
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 707
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 709
    :cond_c
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    return v0
.end method

.method public getNameLength()I
    .registers 2

    .prologue
    .line 689
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_c

    .line 690
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 691
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 693
    :cond_c
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    return v0
.end method

.method public getNumberLength()I
    .registers 2

    .prologue
    .line 697
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_c

    .line 698
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 699
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 701
    :cond_c
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    return v0
.end method

.method public getSimMaxCount()I
    .registers 2

    .prologue
    .line 731
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1a

    .line 732
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 733
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 736
    :cond_17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 738
    :cond_1a
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    return v0
.end method

.method getSimStatus(Ljava/lang/String;)V
    .registers 12
    .parameter "mSimType"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 554
    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 555
    :cond_14
    const-string v4, "PhoneBookManageSim"

    const-string v5, "getSimStatus Start : 2G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v4, 0x5

    new-array v2, v4, [I

    .line 558
    .local v2, recordInfo:[I
    :try_start_1e
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 560
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_30

    .line 561
    const/16 v4, 0x6f3a

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2f} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_2f} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_2f} :catch_5d

    move-result-object v2

    .line 570
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_30
    :goto_30
    if-eqz v2, :cond_43

    .line 571
    const/4 v4, 0x0

    aget v4, v2, v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 572
    aget v4, v2, v6

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 573
    aget v4, v2, v9

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 574
    aget v4, v2, v8

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 608
    .end local v2           #recordInfo:[I
    :cond_43
    :goto_43
    const-string v4, "PhoneBookManageSim"

    const-string v5, "getSimStatus End"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 563
    .restart local v2       #recordInfo:[I
    :catch_4b
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "PhoneBookManageSim"

    const-string v5, "RemoteException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 565
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_54
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "PhoneBookManageSim"

    const-string v5, "SecurityException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 567
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_5d
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "PhoneBookManageSim"

    const-string v5, "NullPointerException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 576
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #recordInfo:[I
    :cond_66
    const-string v4, "2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 577
    const-string v4, "PhoneBookManageSim"

    const-string v5, "getSimStatus Start : 3G"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v3, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 580
    .local v3, usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_start_7a
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 582
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_8a

    .line 583
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_89} :catch_b7
    .catch Ljava/lang/SecurityException; {:try_start_7a .. :try_end_89} :catch_c0

    move-result-object v3

    .line 590
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_43

    .line 591
    invoke-virtual {v3, v6, v6}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 593
    invoke-virtual {v3, v6, v9}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 595
    invoke-virtual {v3, v6, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 597
    invoke-virtual {v3, v7, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 600
    invoke-virtual {v3, v8, v7}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 602
    invoke-virtual {v3, v8, v6}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 604
    invoke-virtual {v3, v8, v9}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    sput v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    goto :goto_43

    .line 585
    :catch_b7
    move-exception v0

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "PhoneBookManageSim"

    const-string v5, "RemoteException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 587
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_c0
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "PhoneBookManageSim"

    const-string v5, "SecurityException occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method public getSimType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 713
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 714
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    return-object v0
.end method

.method public getSimUsedCount()I
    .registers 2

    .prologue
    .line 742
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_15

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 744
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 746
    :cond_12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 748
    :cond_15
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 749
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    return v0
.end method

.method public isEmailFull()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v7

    .line 685
    :goto_a
    return v0

    .line 659
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1f

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v7

    .line 661
    goto :goto_a

    .line 663
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v7

    .line 664
    goto :goto_a

    .line 670
    :cond_1f
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 671
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 675
    .local v6, emailCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_51

    .line 676
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_51
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    if-le v0, v2, :cond_85

    .line 681
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 682
    goto :goto_a

    .line 684
    :cond_85
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 685
    goto/16 :goto_a
.end method

.method public isSimDBReady()Z
    .registers 5

    .prologue
    .line 535
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSimDBReady(Landroid/content/Context;)Z

    move-result v0

    .line 536
    .local v0, simDbReady:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_16

    if-nez v0, :cond_16

    .line 537
    const-string v1, "PhoneBookManageSim"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_15
    return v0

    .line 541
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 542
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 543
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v1, :cond_30

    .line 544
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 545
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 549
    :cond_30
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public isSimEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 510
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 511
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_41

    .line 513
    :cond_18
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 514
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimEnabled() return false < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_40
    return v0

    .line 518
    :cond_41
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v2, v3, :cond_55

    .line 519
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 520
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 523
    :cond_55
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_6b

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdnEditable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 524
    const-string v1, "PhoneBookManageSim"

    const-string v2, "Adn is not editable..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 528
    :cond_6b
    const-string v0, "PhoneBookManageSim"

    const-string v2, "isSimEnabled() return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 529
    goto :goto_40
.end method

.method public isSimFull()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v8

    .line 650
    :goto_a
    return v0

    .line 616
    :cond_b
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1f

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v8

    .line 618
    goto :goto_a

    .line 620
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v8

    .line 621
    goto :goto_a

    .line 628
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 630
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 639
    .local v7, nameCursor:Landroid/database/Cursor;
    :goto_3a
    if-eqz v7, :cond_45

    .line 640
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 641
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_45
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    if-le v0, v1, :cond_8e

    .line 645
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 646
    goto :goto_a

    .line 635
    .end local v7           #nameCursor:Landroid/database/Cursor;
    :cond_79
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .restart local v7       #nameCursor:Landroid/database/Cursor;
    goto :goto_3a

    .line 649
    :cond_8e
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 650
    goto/16 :goto_a
.end method

.method public isSimSupport()Z
    .registers 2

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "text"
    .parameter "length"

    .prologue
    .line 400
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, tmpText:Ljava/lang/StringBuffer;
    const-string v1, ""

    .line 403
    .local v1, returnText:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, p2, :cond_21

    .line 404
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-le p2, v3, :cond_1e

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 409
    :cond_21
    return-object v1
.end method
