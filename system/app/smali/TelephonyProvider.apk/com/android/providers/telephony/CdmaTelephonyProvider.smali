.class public Lcom/android/providers/telephony/CdmaTelephonyProvider;
.super Landroid/content/ContentProvider;
.source "CdmaTelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final s_currentNullMap:Landroid/content/ContentValues;

.field private static final s_currentSetMap:Landroid/content/ContentValues;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 70
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony_cdma"

    const-string v2, "cdma_carriers"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony_cdma"

    const-string v2, "cdma_carriers/current"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony_cdma"

    const-string v2, "cdma_carriers/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony_cdma"

    const-string v2, "cdma_carriers/restore"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony_cdma"

    const-string v2, "cdma_carriers/prefercdmadataconnection"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    .line 77
    sget-object v1, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v2, "current"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    .line 80
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    const-string v1, "current"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 83
    return-void
.end method

.method private checkPermission()V
    .registers 4

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CDMA_CARRIER_SETTINGS"

    const-string v2, "No permission to write CDMA carrier settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private getPreferredApnId()J
    .registers 5

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-cdmadataconnection"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "cdmadataconnection_id"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private restoreDefaultAPN()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v1, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 548
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "cdmacarriers"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 549
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 550
    iget-object v1, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    check-cast v1, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 551
    return-void
.end method

.method private setPreferredApnId(Ljava/lang/Long;)V
    .registers 7
    .parameter "id"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-cdmadataconnection"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 252
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "cdmadataconnection_id"

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_17
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    return-void

    .line 253
    :cond_1e
    const-wide/16 v2, 0x1

    goto :goto_17
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->checkPermission()V

    .line 426
    iget-object v3, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 427
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 428
    .local v2, match:I
    packed-switch v2, :pswitch_data_6c

    .line 463
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :pswitch_2b
    const-string v3, "cdmacarriers"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, count:I
    :goto_31
    if-lez v0, :cond_41

    .line 468
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 471
    :cond_41
    return v0

    .line 438
    .end local v0           #count:I
    :pswitch_42
    const-string v3, "cdmacarriers"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 439
    .restart local v0       #count:I
    goto :goto_31

    .line 444
    .end local v0           #count:I
    :pswitch_49
    const-string v3, "cdmacarriers"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 446
    .restart local v0       #count:I
    goto :goto_31

    .line 450
    .end local v0           #count:I
    :pswitch_5c
    const/4 v0, 0x1

    .line 451
    .restart local v0       #count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->restoreDefaultAPN()V

    goto :goto_31

    .line 457
    .end local v0           #count:I
    :pswitch_61
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 458
    const/4 v0, 0x1

    .line 459
    .restart local v0       #count:I
    goto :goto_31

    .line 428
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_42
        :pswitch_49
        :pswitch_5c
        :pswitch_61
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 307
    sget-object v0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 318
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/telephony-cdma-carrier"

    .line 315
    :goto_24
    return-object v0

    .line 312
    :pswitch_25
    const-string v0, "vnd.android.cursor.item/telephony-cdma-carrier"

    goto :goto_24

    .line 315
    :pswitch_28
    const-string v0, "vnd.android.cursor.item/telephony-cdma-carrier"

    goto :goto_24

    .line 307
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_9
        :pswitch_25
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 16
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 325
    const/4 v4, 0x0

    .line 327
    .local v4, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->checkPermission()V

    .line 329
    iget-object v9, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 331
    .local v1, match:I
    const/4 v2, 0x0

    .line 332
    .local v2, notify:Z
    packed-switch v1, :pswitch_data_116

    .line 412
    :cond_14
    :goto_14
    :pswitch_14
    if-eqz v2, :cond_24

    .line 413
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 416
    :cond_24
    return-object v4

    .line 337
    :pswitch_25
    if-eqz p2, :cond_b4

    .line 338
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 345
    .local v8, values:Landroid/content/ContentValues;
    :goto_2c
    const-string v9, "name"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3b

    .line 346
    const-string v9, "name"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_3b
    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4a

    .line 349
    const-string v9, "user"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_4a
    const-string v9, "password"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_59

    .line 352
    const-string v9, "password"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_59
    const-string v9, "auth"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_68

    .line 355
    const-string v9, "auth"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_68
    const-string v9, "proxy"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_77

    .line 361
    const-string v9, "proxy"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_77
    const-string v9, "port"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_86

    .line 364
    const-string v9, "port"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_86
    const-string v9, "cdmacarriers"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 368
    .local v5, rowID:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_9a

    .line 370
    sget-object v9, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 371
    const/4 v2, 0x1

    .line 374
    :cond_9a
    const-string v9, "CdmaTelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inserted xxx, rowID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 340
    .end local v5           #rowID:J
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_b4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto/16 :goto_2c

    .line 381
    .end local v8           #values:Landroid/content/ContentValues;
    :pswitch_bb
    const-string v9, "cdmacarriers"

    sget-object v10, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v11, "current IS NOT NULL"

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    const-string v9, "numeric"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, numeric:Ljava/lang/String;
    const-string v9, "cdmacarriers"

    sget-object v10, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "numeric = \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 387
    .local v7, updated:I
    if-lez v7, :cond_f8

    .line 390
    const-string v9, "CdmaTelephonyProvider"

    const-string v10, "Setting numeric \'xxx\' to be the current operator"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 395
    :cond_f8
    const-string v9, "CdmaTelephonyProvider"

    const-string v10, "Failed setting numeric \'xxx\' to the current operator"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 402
    .end local v3           #numeric:Ljava/lang/String;
    .end local v7           #updated:I
    :pswitch_101
    if-eqz p2, :cond_14

    .line 403
    const-string v9, "cdmadataconnection_id"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 404
    const-string v9, "cdmadataconnection_id"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    goto/16 :goto_14

    .line 332
    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_25
        :pswitch_bb
        :pswitch_14
        :pswitch_14
        :pswitch_101
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x1

    .line 241
    new-instance v0, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/CdmaTelephonyProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 243
    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getPreferredApnId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 247
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v5, 0x0

    .line 265
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 266
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "cdmacarriers"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 268
    sget-object v2, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 269
    .local v8, match:I
    packed-switch v8, :pswitch_data_74

    .line 301
    :goto_14
    :pswitch_14
    return-object v5

    .line 277
    :pswitch_15
    const-string v2, "current IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 279
    const/4 p3, 0x0

    .line 298
    :goto_1b
    :pswitch_1b
    iget-object v2, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 299
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 300
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v9

    .line 301
    goto :goto_14

    .line 284
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #ret:Landroid/database/Cursor;
    :pswitch_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 289
    :pswitch_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getPreferredApnId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 269
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_15
        :pswitch_37
        :pswitch_14
        :pswitch_59
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->checkPermission()V

    .line 481
    iget-object v3, p0, Lcom/android/providers/telephony/CdmaTelephonyProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 482
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/CdmaTelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 483
    .local v2, match:I
    packed-switch v2, :pswitch_data_9a

    .line 526
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 487
    :pswitch_2c
    const-string v3, "cdmacarriers"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 530
    :cond_32
    :goto_32
    if-lez v0, :cond_42

    .line 531
    invoke-virtual {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 534
    :cond_42
    return v0

    .line 493
    :pswitch_43
    const-string v3, "cdmacarriers"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 494
    goto :goto_32

    .line 499
    :pswitch_4a
    if-nez p3, :cond_4e

    if-eqz p4, :cond_6d

    .line 500
    :cond_4e
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with a where clause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    :cond_6d
    const-string v3, "cdmacarriers"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 505
    goto :goto_32

    .line 509
    :pswitch_80
    const/4 v0, 0x1

    .line 510
    invoke-direct {p0}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->restoreDefaultAPN()V

    goto :goto_32

    .line 516
    :pswitch_85
    if-eqz p2, :cond_32

    .line 517
    const-string v3, "cdmadataconnection_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 518
    const-string v3, "cdmadataconnection_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/CdmaTelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 519
    const/4 v0, 0x1

    goto :goto_32

    .line 483
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_43
        :pswitch_4a
        :pswitch_80
        :pswitch_85
    .end packed-switch
.end method
