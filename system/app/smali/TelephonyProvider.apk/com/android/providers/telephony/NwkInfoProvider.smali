.class public Lcom/android/providers/telephony/NwkInfoProvider;
.super Landroid/content/ContentProvider;
.source "NwkInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final URI_CARRIERS:Landroid/net/Uri;

.field public static final URI_DORMPOLICY:Landroid/net/Uri;

.field public static final URI_NWKINFO:Landroid/net/Uri;

.field public static final URI_RESTORE:Landroid/net/Uri;

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

    .line 78
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 92
    const-string v0, "content://nwkinfo/nwkinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    .line 93
    const-string v0, "content://nwkinfo/nwkinfo/dormpolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_DORMPOLICY:Landroid/net/Uri;

    .line 94
    const-string v0, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_CARRIERS:Landroid/net/Uri;

    .line 95
    const-string v0, "content://nwkinfo/nwkinfo/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_RESTORE:Landroid/net/Uri;

    .line 101
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo/dormpolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo/carriers"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo/restore"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentNullMap:Landroid/content/ContentValues;

    .line 107
    sget-object v1, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v2, "current"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentSetMap:Landroid/content/ContentValues;

    .line 110
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentSetMap:Landroid/content/ContentValues;

    const-string v1, "current"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 113
    return-void
.end method

.method private checkPermission()V
    .registers 4

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    const-string v2, "No permission to write APN settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method private restoreTables()V
    .registers 3

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 698
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    check-cast v1, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 699
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->checkPermission()V

    .line 620
    iget-object v3, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 621
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 622
    .local v2, match:I
    packed-switch v2, :pswitch_data_56

    .line 647
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

    .line 626
    :pswitch_2b
    const-string v3, "carriers"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 651
    .local v0, count:I
    :goto_31
    if-lez v0, :cond_41

    .line 652
    invoke-virtual {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 655
    :cond_41
    return v0

    .line 631
    .end local v0           #count:I
    :pswitch_42
    const-string v3, "nwkinfo"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 632
    .restart local v0       #count:I
    goto :goto_31

    .line 636
    .end local v0           #count:I
    :pswitch_49
    const-string v3, "dormpolicy"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 637
    .restart local v0       #count:I
    goto :goto_31

    .line 641
    .end local v0           #count:I
    :pswitch_50
    const/4 v0, 0x1

    .line 642
    .restart local v0       #count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->restoreTables()V

    goto :goto_31

    .line 622
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_42
        :pswitch_49
        :pswitch_50
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 425
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 435
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

    .line 427
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    .line 433
    :goto_24
    return-object v0

    .line 430
    :pswitch_25
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    goto :goto_24

    .line 433
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    goto :goto_24

    .line 425
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 16
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 441
    const/4 v5, 0x0

    .line 443
    .local v5, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->checkPermission()V

    .line 445
    iget-object v10, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 446
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 447
    .local v1, match:I
    const/4 v2, 0x0

    .line 448
    .local v2, notify:Z
    packed-switch v1, :pswitch_data_2c6

    .line 607
    :goto_14
    if-eqz v2, :cond_24

    .line 608
    invoke-virtual {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 611
    :cond_24
    return-object v5

    .line 453
    :pswitch_25
    if-eqz p2, :cond_177

    .line 454
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 459
    .local v8, values:Landroid/content/ContentValues;
    :goto_2c
    const-string v10, "name"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 460
    const-string v10, "name"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_3b
    const-string v10, "apn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4a

    .line 463
    const-string v10, "apn"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_4a
    const-string v10, "port"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 466
    const-string v10, "port"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_59
    const-string v10, "proxy"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_68

    .line 469
    const-string v10, "proxy"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_68
    const-string v10, "user"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_77

    .line 472
    const-string v10, "user"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_77
    const-string v10, "server"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_86

    .line 475
    const-string v10, "server"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_86
    const-string v10, "password"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_95

    .line 478
    const-string v10, "password"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_95
    const-string v10, "mmsport"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a4

    .line 481
    const-string v10, "mmsport"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_a4
    const-string v10, "mmsproxy"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b3

    .line 484
    const-string v10, "mmsproxy"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_b3
    const-string v10, "authtype"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c5

    .line 487
    const-string v10, "authtype"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    :cond_c5
    const-string v10, "protocol"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d4

    .line 490
    const-string v10, "protocol"

    const-string v11, "IP"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_d4
    const-string v10, "roaming_protocol"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e3

    .line 493
    const-string v10, "roaming_protocol"

    const-string v11, "IP"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_e3
    const-string v10, "carrier_enabled"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f5

    .line 496
    const-string v10, "carrier_enabled"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 498
    :cond_f5
    const-string v10, "bearer"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_107

    .line 499
    const-string v10, "bearer"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    :cond_107
    const-string v10, "homeurl"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_116

    .line 502
    const-string v10, "homeurl"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_116
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_125

    .line 505
    const-string v10, "nwkname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_125
    const-string v10, "preferred"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_137

    .line 508
    const-string v10, "preferred"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 510
    :cond_137
    const-string v10, "editable"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_149

    .line 511
    const-string v10, "editable"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 514
    :cond_149
    const-string v10, "carriers"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 515
    .local v6, rowID:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_15d

    .line 517
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->URI_CARRIERS:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 518
    const/4 v2, 0x0

    .line 521
    :cond_15d
    const-string v10, "NwkInfoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inserted rowID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 456
    .end local v6           #rowID:J
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_177
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto/16 :goto_2c

    .line 528
    .end local v8           #values:Landroid/content/ContentValues;
    :pswitch_17e
    if-eqz p2, :cond_20d

    .line 529
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 533
    .restart local v8       #values:Landroid/content/ContentValues;
    :goto_185
    const-string v10, "plmn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_194

    .line 534
    const-string v10, "plmn"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_194
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a3

    .line 537
    const-string v10, "nwkname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_1a3
    const-string v10, "dormancy"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1b2

    .line 540
    const-string v10, "dormancy"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_1b2
    const-string v10, "mtu"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1c1

    .line 543
    const-string v10, "mtu"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_1c1
    const-string v10, "subsetcode"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d0

    .line 546
    const-string v10, "subsetcode"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_1d0
    const-string v10, "spcode"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1df

    .line 549
    const-string v10, "spcode"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1df
    const-string v10, "nwkinfo"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 553
    .restart local v6       #rowID:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1f3

    .line 555
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 556
    const/4 v2, 0x1

    .line 559
    :cond_1f3
    const-string v10, "NwkInfoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inserted rowID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 531
    .end local v6           #rowID:J
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_20d
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto/16 :goto_185

    .line 566
    .end local v8           #values:Landroid/content/ContentValues;
    :pswitch_214
    if-eqz p2, :cond_2bf

    .line 567
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 574
    .restart local v8       #values:Landroid/content/ContentValues;
    :goto_21b
    const-string v10, "plmn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22a

    .line 575
    const-string v10, "plmn"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_22a
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_239

    .line 578
    const-string v10, "nwkname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_239
    const-string v10, "lcdonfdtime"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_248

    .line 581
    const-string v10, "lcdonfdtime"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_248
    const-string v10, "lcdofffdtime"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_257

    .line 584
    const-string v10, "lcdofffdtime"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_257
    const-string v10, "plmn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, plmn:Ljava/lang/String;
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, nwkname:Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(plmn = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND nwkname = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 592
    .local v9, whereClause:Ljava/lang/String;
    const-string v10, "dormpolicy"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 594
    const-string v10, "dormpolicy"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 595
    .restart local v6       #rowID:J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_2a5

    .line 597
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->URI_DORMPOLICY:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 598
    const/4 v2, 0x1

    .line 601
    :cond_2a5
    const-string v10, "NwkInfoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inserted rowID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 569
    .end local v3           #nwkname:Ljava/lang/String;
    .end local v4           #plmn:Ljava/lang/String;
    .end local v6           #rowID:J
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #whereClause:Ljava/lang/String;
    :cond_2bf
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto/16 :goto_21b

    .line 448
    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_25
        :pswitch_17e
        :pswitch_214
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 384
    const-string v0, "NwkInfoProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 386
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

    .line 392
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 394
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 395
    .local v8, match:I
    packed-switch v8, :pswitch_data_3e

    .line 420
    :goto_f
    return-object v5

    .line 398
    :pswitch_10
    const-string v2, "carriers"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 417
    :goto_15
    iget-object v2, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 418
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 419
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v9

    .line 420
    goto :goto_f

    .line 403
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #ret:Landroid/database/Cursor;
    :pswitch_31
    const-string v2, "nwkinfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_15

    .line 408
    :pswitch_37
    const-string v2, "dormpolicy"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_15

    .line 395
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_10
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->checkPermission()V

    .line 663
    iget-object v3, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 664
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 665
    .local v2, match:I
    packed-switch v2, :pswitch_data_52

    .line 685
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

    .line 669
    :pswitch_2c
    const-string v3, "carriers"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 689
    :goto_32
    if-lez v0, :cond_42

    .line 690
    invoke-virtual {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 693
    :cond_42
    return v0

    .line 674
    :pswitch_43
    const-string v3, "nwkinfo"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 675
    goto :goto_32

    .line 680
    :pswitch_4a
    const-string v3, "dormpolicy"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 681
    goto :goto_32

    .line 665
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_43
        :pswitch_4a
    .end packed-switch
.end method
