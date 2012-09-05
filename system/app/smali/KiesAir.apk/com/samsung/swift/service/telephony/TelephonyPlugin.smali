.class public Lcom/samsung/swift/service/telephony/TelephonyPlugin;
.super Ljava/lang/Object;
.source "TelephonyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/telephony/TelephonyPlugin$NoNetworkConnectivityException;,
        Lcom/samsung/swift/service/telephony/TelephonyPlugin$TooManyConcurrentCallsException;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x1

.field public static final CALL_STATE_ALERTING:I = 0x2

.field public static final CALL_STATE_HOLD:I = 0x3

.field public static final CALL_STATE_INACTIVE:I = 0x0

.field public static final CALL_STATE_UNKNOWN:I = 0x4

.field private static final DATABASE_VARIETY_GOOGLE:I = 0x0

.field private static final DATABASE_VARIETY_KOREAN_NEW:I = 0x2

.field private static final DATABASE_VARIETY_KOREAN_OLD:I = 0x1

.field public static final LOGTAG:Ljava/lang/String; = null

.field private static final TEL_PREFIX:Ljava/lang/String; = "tel:"

.field static _databaseVariety:I

.field private static callLogObserver:Lcom/samsung/swift/service/telephony/CallLogContentObserver;

.field private static final monitor:Ljava/lang/Object;

.field private static pbTelephonyObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

.field private static phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

.field private static final random:Ljava/util/Random;

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter;

.field private static revision:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    const-class v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    .line 144
    const/4 v0, -0x1

    sput v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    .line 154
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->random:Ljava/util/Random;

    .line 155
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->revision:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->monitor:Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v0}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method private static androidCallStateToGeneric(III)I
    .registers 10
    .parameter "androidState"
    .parameter "initTime"
    .parameter "givenState"

    .prologue
    const/4 v0, 0x4

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gtz v1, :cond_14

    if-ne p2, v0, :cond_14

    if-eqz p0, :cond_17

    .line 487
    :cond_14
    packed-switch p0, :pswitch_data_1e

    .line 496
    :cond_17
    :goto_17
    return v0

    .line 489
    :pswitch_18
    const/4 v0, 0x0

    goto :goto_17

    .line 491
    :pswitch_1a
    const/4 v0, 0x1

    goto :goto_17

    .line 493
    :pswitch_1c
    const/4 v0, 0x2

    goto :goto_17

    .line 487
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_1a
    .end packed-switch
.end method

.method private static appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .parameter "sb"
    .parameter "appendage"

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_9
    return-void
.end method

.method private static buildCallLogEntry(Landroid/database/Cursor;Lcom/samsung/swift/service/phonebook/PhoneNumberCache;Ljava/util/Map;)Lcom/samsung/swift/service/telephony/CallLogEntry;
    .registers 21
    .parameter "c"
    .parameter "theCache"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/samsung/swift/service/phonebook/PhoneNumberCache;",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/phonebook/PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/swift/service/telephony/CallLogEntry;",
            ">;>;)",
            "Lcom/samsung/swift/service/telephony/CallLogEntry;"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, cacheMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    new-instance v2, Lcom/samsung/swift/service/telephony/CallLogEntry;

    invoke-direct {v2}, Lcom/samsung/swift/service/telephony/CallLogEntry;-><init>()V

    .line 503
    .local v2, callLogEntry:Lcom/samsung/swift/service/telephony/CallLogEntry;
    const/4 v7, 0x0

    .line 505
    .local v7, flags:I
    const/4 v13, 0x0

    .line 506
    .local v13, srcId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 507
    .local v5, destId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 508
    .local v4, contactId:Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 510
    .local v11, pn:Lcom/samsung/swift/service/phonebook/PhoneNumber;
    const-string v14, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setId(Ljava/lang/String;)V

    .line 512
    const-string v14, "number"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 524
    .local v10, number:Ljava/lang/String;
    if-nez v10, :cond_2d

    .line 526
    const-string v10, "-1"

    .line 529
    :cond_2d
    const-string v14, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 530
    .local v9, name:Ljava/lang/String;
    if-nez v9, :cond_3f

    const-string v9, ""

    .line 533
    :cond_3f
    const-string v14, "type"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 535
    .local v3, callType:I
    const-string v14, "type"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    packed-switch v14, :pswitch_data_2c6

    .line 708
    :pswitch_5e
    sget-object v14, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v15, "Java buildCallLogEntry - found unknown call type"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_65
    invoke-virtual {v2, v7}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setFlags(I)V

    .line 713
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setRevision(Ljava/lang/String;)V

    .line 715
    const-string v14, "duration"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, duration:Ljava/lang/String;
    if-nez v6, :cond_81

    const-string v6, "0"

    .line 717
    :cond_81
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDuration(I)V

    .line 719
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v14

    if-eqz v14, :cond_2bd

    .line 721
    const-string v14, "simnum"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 722
    .local v12, simNum:I
    sget-object v14, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dual Sim: Sim number: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v14, 0x2

    if-ne v12, v14, :cond_2b6

    .line 725
    const-string v14, "gsm"

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setNetwork(Ljava/lang/String;)V

    .line 733
    .end local v12           #simNum:I
    :goto_bc
    const-string v14, "date"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v2, v14, v15}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setTimestamp(J)V

    .line 735
    if-eqz v11, :cond_eb

    .line 737
    const/4 v1, 0x0

    .line 739
    .local v1, callLogEntries:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #callLogEntries:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1       #callLogEntries:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    if-nez v1, :cond_e3

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #callLogEntries:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .restart local v1       #callLogEntries:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    :cond_e3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .end local v1           #callLogEntries:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;"
    :cond_eb
    return-object v2

    .line 538
    .end local v6           #duration:Ljava/lang/String;
    :pswitch_ec
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 540
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 541
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_134

    .line 544
    const-string v14, "logtype"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 545
    .local v8, logtype:I
    sparse-switch v8, :sswitch_data_2e6

    .line 554
    or-int/lit8 v7, v7, 0x1

    .line 556
    :goto_116
    const-string v14, "contactid"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 562
    .end local v8           #logtype:I
    :goto_128
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 564
    goto/16 :goto_65

    .line 548
    .restart local v8       #logtype:I
    :sswitch_12e
    or-int/lit8 v7, v7, 0x20

    .line 549
    goto :goto_116

    .line 551
    :sswitch_131
    or-int/lit16 v7, v7, 0x100

    .line 552
    goto :goto_116

    .line 559
    .end local v8           #logtype:I
    :cond_134
    or-int/lit8 v7, v7, 0x1

    goto :goto_128

    .line 567
    :pswitch_137
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 568
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_17f

    .line 573
    const-string v14, "logtype"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 574
    .restart local v8       #logtype:I
    sparse-switch v8, :sswitch_data_2f0

    .line 583
    or-int/lit8 v7, v7, 0x2

    .line 585
    :goto_161
    const-string v14, "contactid"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 591
    .end local v8           #logtype:I
    :goto_173
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 593
    goto/16 :goto_65

    .line 577
    .restart local v8       #logtype:I
    :sswitch_179
    or-int/lit8 v7, v7, 0x40

    .line 578
    goto :goto_161

    .line 580
    :sswitch_17c
    or-int/lit16 v7, v7, 0x80

    .line 581
    goto :goto_161

    .line 588
    .end local v8           #logtype:I
    :cond_17f
    or-int/lit8 v7, v7, 0x2

    goto :goto_173

    .line 595
    :pswitch_182
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 597
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 598
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1da

    .line 601
    const-string v14, "logtype"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0x1f4

    if-ne v14, v15, :cond_1d7

    .line 602
    or-int/lit16 v7, v7, 0x200

    .line 605
    :goto_1ad
    const-string v14, "contactid"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 611
    :goto_1bf
    const-string v14, "new"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_1d1

    .line 613
    or-int/lit8 v7, v7, 0x8

    .line 616
    :cond_1d1
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 618
    goto/16 :goto_65

    .line 604
    :cond_1d7
    or-int/lit8 v7, v7, 0x4

    goto :goto_1ad

    .line 608
    :cond_1da
    or-int/lit8 v7, v7, 0x4

    goto :goto_1bf

    .line 621
    :pswitch_1dd
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 623
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 624
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_223

    .line 627
    const-string v14, "logtype"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v15, 0x1f4

    if-ne v14, v15, :cond_220

    .line 628
    or-int/lit16 v7, v7, 0x400

    .line 631
    :goto_208
    const-string v14, "contactid"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 637
    :goto_21a
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 639
    goto/16 :goto_65

    .line 630
    :cond_220
    or-int/lit8 v7, v7, 0x10

    goto :goto_208

    .line 634
    :cond_223
    or-int/lit8 v7, v7, 0x10

    goto :goto_21a

    .line 641
    :pswitch_226
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 643
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 644
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 645
    or-int/lit16 v7, v7, 0x100

    .line 647
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 649
    goto/16 :goto_65

    .line 652
    :pswitch_23e
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 653
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 656
    or-int/lit16 v7, v7, 0x80

    .line 658
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 660
    goto/16 :goto_65

    .line 663
    :pswitch_256
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 665
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 666
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 667
    or-int/lit16 v7, v7, 0x200

    .line 669
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 671
    goto/16 :goto_65

    .line 674
    :pswitch_26e
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 676
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 677
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 678
    or-int/lit16 v7, v7, 0x400

    .line 680
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 682
    goto/16 :goto_65

    .line 686
    :pswitch_286
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 688
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 689
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 690
    or-int/lit8 v7, v7, 0x20

    .line 692
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 694
    goto/16 :goto_65

    .line 697
    :pswitch_29e
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSource(Ljava/lang/String;)V

    .line 698
    const-string v14, ""

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setSourceName(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2, v10}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestination(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v2, v9}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setDestinationName(Ljava/lang/String;)V

    .line 701
    or-int/lit8 v7, v7, 0x40

    .line 703
    invoke-static {v10}, Lcom/samsung/swift/service/phonebook/PhoneNumber;->fromString(Ljava/lang/String;)Lcom/samsung/swift/service/phonebook/PhoneNumber;

    move-result-object v11

    .line 705
    goto/16 :goto_65

    .line 727
    .restart local v6       #duration:Ljava/lang/String;
    .restart local v12       #simNum:I
    :cond_2b6
    const-string v14, "cdma"

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_bc

    .line 730
    .end local v12           #simNum:I
    :cond_2bd
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSingleSimNetworkId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/samsung/swift/service/telephony/CallLogEntry;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_bc

    .line 535
    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_137
        :pswitch_182
        :pswitch_1dd
        :pswitch_5e
        :pswitch_226
        :pswitch_23e
        :pswitch_256
        :pswitch_26e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_286
        :pswitch_29e
    .end packed-switch

    .line 545
    :sswitch_data_2e6
    .sparse-switch
        0x12c -> :sswitch_12e
        0x1f4 -> :sswitch_131
    .end sparse-switch

    .line 574
    :sswitch_data_2f0
    .sparse-switch
        0x12c -> :sswitch_179
        0x1f4 -> :sswitch_17c
    .end sparse-switch
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkStatus(IDI)I
    .registers 12
    .parameter "callIdInitTime"
    .parameter "timeout"
    .parameter "givenCallState"

    .prologue
    .line 240
    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, p1

    double-to-long v3, v6

    .line 241
    .local v3, timeOutMillis:J
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 243
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    invoke-static {v6, p0, p3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->androidCallStateToGeneric(III)I

    move-result v0

    .line 245
    .local v0, currentCallState:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v1, v6, v3

    .line 247
    .local v1, endTimeMillis:J
    :goto_21
    if-ne v0, p3, :cond_39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v1, v6

    if-lez v6, :cond_39

    .line 248
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 249
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    invoke-static {v6, p0, p3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->androidCallStateToGeneric(III)I

    move-result v0

    goto :goto_21

    .line 252
    :cond_39
    return v0
.end method

.method private static contentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 418
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 420
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 423
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_d
.end method

.method private static databaseVariety()I
    .registers 10

    .prologue
    const/4 v3, 0x2

    const/4 v9, -0x1

    .line 815
    sget v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    if-le v1, v9, :cond_9

    .line 816
    sget v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    .line 856
    .local v0, cr:Landroid/content/ContentResolver;
    :goto_8
    return v1

    .line 818
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1b

    .line 820
    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "databaseVariety: Android 2.2 and above -> DATABASE_VARIETY_KOREAN_NEW"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sput v3, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    .line 822
    sget v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    goto :goto_8

    .line 826
    :cond_1b
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 829
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :try_start_23
    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 831
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5f

    .line 834
    const-string v1, "sns_receiver_count"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 835
    .local v8, index:I
    if-ne v8, v9, :cond_48

    .line 837
    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "databaseVariety: No sns_receiver_count column -> DATABASE_VARIETY_KOREAN_OLD"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v1, 0x1

    sput v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_45} :catch_53

    .line 856
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #index:I
    :goto_45
    sget v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    goto :goto_8

    .line 841
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #index:I
    :cond_48
    :try_start_48
    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "databaseVariety: sns_receiver_count column exists -> DATABASE_VARIETY_KOREAN_NEW"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v1, 0x2

    sput v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_45

    .line 850
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #index:I
    :catch_53
    move-exception v7

    .line 852
    .local v7, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "databaseVariety: content://logs/call doesn\'t exist -> DATABASE_VARIETY_GOOGLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    sput v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->_databaseVariety:I

    goto :goto_45

    .line 847
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_5f
    :try_start_5f
    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "databaseVariety: content://logs/call doesn\'t exist -> DATABASE_VARIETY_GOOGLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_66} :catch_53

    goto :goto_45
.end method

.method private static dial(Ljava/lang/String;I)I
    .registers 9
    .parameter "phoneNumber"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/telephony/TelephonyPlugin$TooManyConcurrentCallsException;,
            Lcom/samsung/swift/service/telephony/TelephonyPlugin$NoNetworkConnectivityException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 200
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_18

    .line 201
    new-instance v3, Lcom/samsung/swift/service/telephony/TelephonyPlugin$TooManyConcurrentCallsException;

    invoke-direct {v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin$TooManyConcurrentCallsException;-><init>()V

    throw v3

    .line 203
    :cond_18
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-nez v3, :cond_24

    .line 204
    new-instance v3, Lcom/samsung/swift/service/telephony/TelephonyPlugin$NoNetworkConnectivityException;

    invoke-direct {v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin$NoNetworkConnectivityException;-><init>()V

    throw v3

    .line 206
    :cond_24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_6e

    .line 217
    int-to-long v3, p1

    invoke-static {v3, v4}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->verifyContact(J)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 219
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 221
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://contacts/people/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 232
    :goto_56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 233
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/swift/service/SwiftService;->startActivity(Landroid/content/Intent;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    return v3

    .line 226
    :cond_6e
    if-eqz p0, :cond_76

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7c

    .line 228
    :cond_76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 230
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_56
.end method

.method private static getCallLogSearch(Lcom/samsung/swift/util/SearchQueryFilter;III)Lcom/samsung/swift/service/telephony/CallLogList;
    .registers 28
    .parameter "sqf"
    .parameter "startIndex"
    .parameter "maxResponses"
    .parameter "sort"

    .prologue
    .line 265
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 267
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v23, Ljava/lang/StringBuffer;

    const/16 v3, 0x1e

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 269
    .local v23, whereClause:Ljava/lang/StringBuffer;
    new-instance v20, Ljava/util/Vector;

    const/16 v3, 0x1e

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    .line 273
    .local v20, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, flagArray:[Ljava/lang/String;
    move-object v8, v13

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_27
    move/from16 v0, v16

    if-ge v15, v0, :cond_132

    aget-object v19, v8, v15

    .line 277
    .local v19, s:Ljava/lang/String;
    const-string v3, "missed"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 278
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 280
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v3, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 284
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    .line 286
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 289
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v3, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 275
    :cond_75
    :goto_75
    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    .line 294
    :cond_78
    const-string v3, "incoming"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 295
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 297
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v3, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 301
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    .line 303
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 306
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v3, " IN (6,13) "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_75

    .line 310
    :cond_ba
    const-string v3, "outgoing"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 311
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 313
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v3, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->databaseVariety()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    .line 319
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 322
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v3, " IN (7,14) "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_75

    .line 326
    :cond_fd
    const-string v3, "new"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 332
    const-string v3, " AND "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 334
    const-string v3, "new"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string v3, " = 1 AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v3, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    const-string v3, " = "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_75

    .line 342
    .end local v19           #s:Ljava/lang/String;
    :cond_132
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v22

    .line 344
    .local v22, unqArray:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    if-lez v3, :cond_1ad

    .line 346
    const-string v3, " AND "

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->appendIfNotEmpty(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 348
    const-string v3, "("

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const/4 v14, 0x0

    .local v14, i:I
    :goto_14e
    move-object/from16 v0, v22

    array-length v3, v0

    if-ge v14, v3, :cond_1a6

    .line 352
    if-lez v14, :cond_15c

    .line 353
    const-string v3, " OR "

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :cond_15c
    const-string v3, "name like ? OR number like ?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v22, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v22, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v14, v14, 0x1

    goto :goto_14e

    .line 360
    :cond_1a6
    const-string v3, ")"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    .end local v14           #i:I
    :cond_1ad
    const/4 v10, 0x0

    .line 367
    .local v10, callLogCursor:Landroid/database/Cursor;
    :try_start_1ae
    const-string v7, "date DESC"

    .line 369
    .local v7, sortCallLog:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->contentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 371
    if-eqz v10, :cond_228

    .line 373
    new-instance v12, Lcom/samsung/swift/service/telephony/CallLogList;

    invoke-direct {v12}, Lcom/samsung/swift/service/telephony/CallLogList;-><init>()V

    .line 374
    .local v12, callLogList:Lcom/samsung/swift/service/telephony/CallLogList;
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/samsung/swift/service/telephony/CallLogList;->setEstimatedResultSize(I)V

    .line 376
    move/from16 v0, p1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1ed

    .line 378
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/samsung/swift/service/telephony/CallLogList;->setEstimatedResultSize(I)V
    :try_end_1e7
    .catchall {:try_start_1ae .. :try_end_1e7} :catchall_248

    .line 409
    if-eqz v10, :cond_1ec

    .line 411
    .end local v12           #callLogList:Lcom/samsung/swift/service/telephony/CallLogList;
    :goto_1e9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_1ec
    return-object v12

    .line 383
    .restart local v12       #callLogList:Lcom/samsung/swift/service/telephony/CallLogList;
    :cond_1ed
    :try_start_1ed
    sget-object v3, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance()Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    move-result-object v21

    .line 385
    .local v21, theCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    const/16 v17, 0x0

    .line 386
    .local v17, listSize:I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .local v9, cacheMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    move/from16 v18, v17

    .line 387
    .end local v17           #listSize:I
    .local v18, listSize:I
    :goto_1fc
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_24f

    .line 388
    add-int/lit8 v17, v18, 0x1

    .end local v18           #listSize:I
    .restart local v17       #listSize:I
    move/from16 v0, v18

    move/from16 v1, p2

    if-lt v0, v1, :cond_219

    .line 397
    :goto_20a
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->populateCallLogList(Ljava/util/Map;)I

    .line 398
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/samsung/swift/service/telephony/CallLogList;->setEstimatedResultSize(I)V

    .line 409
    if-eqz v10, :cond_1ec

    goto :goto_1e9

    .line 391
    :cond_219
    move-object/from16 v0, v21

    invoke-static {v10, v0, v9}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->buildCallLogEntry(Landroid/database/Cursor;Lcom/samsung/swift/service/phonebook/PhoneNumberCache;Ljava/util/Map;)Lcom/samsung/swift/service/telephony/CallLogEntry;

    move-result-object v11

    .line 392
    .local v11, callLogEntry:Lcom/samsung/swift/service/telephony/CallLogEntry;
    invoke-virtual {v12, v11}, Lcom/samsung/swift/service/telephony/CallLogList;->add(Lcom/samsung/swift/service/telephony/CallLogEntry;)V

    .line 394
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v18, v17

    .line 395
    .end local v17           #listSize:I
    .restart local v18       #listSize:I
    goto :goto_1fc

    .line 403
    .end local v9           #cacheMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    .end local v11           #callLogEntry:Lcom/samsung/swift/service/telephony/CallLogEntry;
    .end local v12           #callLogList:Lcom/samsung/swift/service/telephony/CallLogList;
    .end local v18           #listSize:I
    .end local v21           #theCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    :cond_228
    sget-object v3, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null cursor from querying call log database with where clause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_244
    .catchall {:try_start_1ed .. :try_end_244} :catchall_248

    .line 404
    const/4 v12, 0x0

    .line 409
    if-eqz v10, :cond_1ec

    goto :goto_1e9

    .end local v7           #sortCallLog:Ljava/lang/String;
    :catchall_248
    move-exception v3

    if-eqz v10, :cond_24e

    .line 411
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_24e
    throw v3

    .restart local v7       #sortCallLog:Ljava/lang/String;
    .restart local v9       #cacheMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/samsung/swift/service/phonebook/PhoneNumber;Ljava/util/List<Lcom/samsung/swift/service/telephony/CallLogEntry;>;>;"
    .restart local v12       #callLogList:Lcom/samsung/swift/service/telephony/CallLogList;
    .restart local v18       #listSize:I
    .restart local v21       #theCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
    :cond_24f
    move/from16 v17, v18

    .end local v18           #listSize:I
    .restart local v17       #listSize:I
    goto :goto_20a
.end method

.method public static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 166
    const-class v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 168
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->revision:Ljava/lang/String;

    .line 169
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 170
    monitor-exit v1

    return-void

    .line 169
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 166
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static pluginLoading()V
    .registers 2

    .prologue
    .line 763
    sget-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Java TelephonyPlugin loading called..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/telephony/CallLogContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/telephony/CallLogContentObserver;

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->callLogObserver:Lcom/samsung/swift/service/telephony/CallLogContentObserver;

    .line 768
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->pbTelephonyObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 770
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance()Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    .line 771
    return-void
.end method

.method private static pluginUnloading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 754
    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->callLogObserver:Lcom/samsung/swift/service/telephony/CallLogContentObserver;

    .line 755
    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->pbTelephonyObserver:Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    .line 756
    sput-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->phoneNumberCache:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    .line 757
    sget-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 758
    return-void
.end method

.method private static removeCallLogEntry(I)Z
    .registers 6
    .parameter "id"

    .prologue
    .line 431
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v1, whereClause:Ljava/lang/StringBuffer;
    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 438
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->contentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_26

    .line 439
    const/4 v2, 0x1

    .line 441
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    sget-object v1, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 178
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static updateCallLogEntry(I)Z
    .registers 10
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 447
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 449
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    .local v3, whereClause:Ljava/lang/StringBuffer;
    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 454
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v2, values:Landroid/content/ContentValues;
    const-string v6, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->contentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v2, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 460
    .local v1, result:I
    if-ne v1, v4, :cond_35

    .line 465
    :goto_34
    return v4

    :cond_35
    move v4, v5

    goto :goto_34
.end method
