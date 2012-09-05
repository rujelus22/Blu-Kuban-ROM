.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCursorLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    }
.end annotation


# instance fields
.field private final ONEDAY_TIMESTAMP:J

.field private final ONEMONTHS_TIMESTAMP:J

.field private final ONEWEEK_TIMESTAMP:J

.field private final THREEWEEKS_TIMESTAMP:J

.field private final TWOWEEKS_TIMESTAMP:J

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mListForSubTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private mListPositionForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field private final mMailboxId:J

.field private mStrBuffer:Ljava/lang/StringBuffer;

.field private mStrBuffer2:Ljava/lang/StringBuffer;

.field private mSubtitleCount:I

.field private mUnreadCount:I

.field private versionDouble:D


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;I)V
    .registers 18
    .parameter "context"
    .parameter "mailboxId"
    .parameter "sortQuery"
    .parameter "sortType"

    .prologue
    .line 1295
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 1190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1195
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEDAY_TIMESTAMP:J

    .line 1197
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEWEEK_TIMESTAMP:J

    .line 1199
    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->TWOWEEKS_TIMESTAMP:J

    .line 1201
    const-wide/32 v0, 0x6c258c00

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->THREEWEEKS_TIMESTAMP:J

    .line 1203
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEMONTHS_TIMESTAMP:J

    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    .line 1211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    .line 1297
    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    .line 1298
    iput-wide p2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    .line 1299
    sput p5, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    .line 1304
    :try_start_49
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 1305
    .local v11, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v11, :cond_72

    .line 1306
    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1307
    .local v7, accountKey:J
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 1308
    .local v10, mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 1309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    .line 1318
    .end local v7           #accountKey:J
    .end local v10           #mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_63
    return-void

    .line 1311
    .restart local v7       #accountKey:J
    .restart local v10       #mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_64
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_6d

    goto :goto_63

    .line 1315
    .end local v7           #accountKey:J
    .end local v10           #mConvAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catch_6d
    move-exception v9

    .line 1316
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 1313
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v11       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_72
    const-wide/16 v0, 0x0

    :try_start_74
    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_76} :catch_6d

    goto :goto_63
.end method

.method private checkTimeStamp(JJ)I
    .registers 7
    .parameter "stamp"
    .parameter "todayMilli"

    .prologue
    .line 2498
    cmp-long v0, p1, p3

    if-ltz v0, :cond_6

    .line 2499
    const/4 v0, 0x0

    .line 2532
    :goto_5
    return v0

    .line 2500
    :cond_6
    cmp-long v0, p1, p3

    if-gez v0, :cond_15

    const-wide/32 v0, 0x5265c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 2501
    const/4 v0, 0x1

    goto :goto_5

    .line 2502
    :cond_15
    const-wide/32 v0, 0x5265c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_29

    const-wide/32 v0, 0xa4cb800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_29

    .line 2504
    const/4 v0, 0x2

    goto :goto_5

    .line 2505
    :cond_29
    const-wide/32 v0, 0xa4cb800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_3d

    const-wide/32 v0, 0xf731400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3d

    .line 2507
    const/4 v0, 0x3

    goto :goto_5

    .line 2508
    :cond_3d
    const-wide/32 v0, 0xf731400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_51

    const-wide/32 v0, 0x14997000

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_51

    .line 2510
    const/4 v0, 0x4

    goto :goto_5

    .line 2511
    :cond_51
    const-wide/32 v0, 0x14997000

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_65

    const-wide/32 v0, 0x19bfcc00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_65

    .line 2513
    const/4 v0, 0x5

    goto :goto_5

    .line 2514
    :cond_65
    const-wide/32 v0, 0x19bfcc00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_79

    const-wide/32 v0, 0x1ee62800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_79

    .line 2516
    const/4 v0, 0x6

    goto :goto_5

    .line 2517
    :cond_79
    const-wide/32 v0, 0x1ee62800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8e

    const-wide/32 v0, 0x240c8400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8e

    .line 2519
    const/4 v0, 0x7

    goto/16 :goto_5

    .line 2520
    :cond_8e
    const-wide/32 v0, 0x240c8400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_a4

    const-wide/32 v0, 0x48190800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a4

    .line 2522
    const/16 v0, 0x8

    goto/16 :goto_5

    .line 2523
    :cond_a4
    const-wide/32 v0, 0x48190800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_ba

    const-wide/32 v0, 0x6c258c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_ba

    .line 2525
    const/16 v0, 0x9

    goto/16 :goto_5

    .line 2526
    :cond_ba
    const-wide/32 v0, 0x6c258c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_d2

    const-wide v0, 0x9a7ec800L

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d2

    .line 2528
    const/16 v0, 0xa

    goto/16 :goto_5

    .line 2529
    :cond_d2
    const-wide v0, 0x9a7ec800L

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e1

    .line 2530
    const/16 v0, 0xb

    goto/16 :goto_5

    .line 2532
    :cond_e1
    const/4 v0, -0x1

    goto/16 :goto_5
.end method

.method private getSeparateStr2(JJ)Ljava/lang/String;
    .registers 10
    .parameter "stamp"
    .parameter "todayMilli"

    .prologue
    .line 2484
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2485
    .local v2, tempDate:Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2486
    .local v1, tempBuf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2490
    .local v0, dateString:Ljava/lang/String;
    const-wide/32 v3, 0x1ee62800

    sub-long v3, p3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_24

    .line 2491
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2493
    :goto_23
    return-object v3

    :cond_24
    const-string v3, ""

    goto :goto_23
.end method

.method private initListVariable()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1364
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 1365
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1366
    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1367
    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$102(I)I

    .line 1368
    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$202(I)I

    .line 1369
    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$302(I)I

    .line 1370
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1371
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1372
    :cond_1d
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$500()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1373
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$500()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1374
    :cond_2a
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1375
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1376
    :cond_37
    return-void
.end method

.method private isInt(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 2410
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 2411
    const/4 v1, 0x1

    .line 2413
    :goto_4
    return v1

    .line 2412
    :catch_5
    move-exception v0

    .line 2413
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private makeSubTitleList(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 74
    .parameter "c"

    .prologue
    .line 1380
    const/16 v58, 0x0

    .line 1381
    .local v58, subItemCount:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    if-nez v6, :cond_11

    .line 1382
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    .line 1384
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    if-nez v6, :cond_20

    .line 1385
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    .line 1387
    :cond_20
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1389
    .local v59, subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 1390
    move-object/from16 v53, p1

    .line 1392
    .local v53, result:Landroid/database/Cursor;
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    if-eqz v6, :cond_3b

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_250

    .line 1394
    :cond_3b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1395
    .local v5, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1399
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long v69, v6, v8

    .line 1400
    .local v69, todayMilli:J
    const/16 v17, -0x1

    .line 1401
    .local v17, date:I
    const/16 v34, -0x1

    .line 1402
    .local v34, nextDate:I
    const/16 v45, -0x1

    .line 1403
    .local v45, prevDate:I
    const-wide/16 v67, 0x0

    .line 1404
    .local v67, timeStamp:J
    const-wide/16 v38, 0x0

    .line 1405
    .local v38, nextTimeStamp:J
    const/16 v21, 0x0

    .local v21, i:I
    :goto_77
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1406
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1407
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_ac

    .line 1409
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1410
    :cond_ac
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    .line 1411
    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    move-wide/from16 v3, v69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->checkTimeStamp(JJ)I

    move-result v17

    .line 1412
    add-int/lit8 v58, v58, 0x1

    .line 1413
    const/4 v6, -0x1

    move/from16 v0, v45

    if-eq v0, v6, :cond_ca

    move/from16 v0, v45

    move/from16 v1, v17

    if-eq v0, v1, :cond_f1

    .line 1414
    :cond_ca
    move/from16 v45, v17

    .line 1415
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1416
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1417
    .local v43, p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_f1
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1420
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 1422
    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    move-wide/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1423
    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    move-wide/from16 v3, v69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr2(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    .line 1424
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_145

    .line 1425
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1426
    :cond_145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1427
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_171

    .line 1428
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1429
    :cond_171
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1431
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    const/16 v58, 0x0

    .line 1405
    :cond_19a
    :goto_19a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_77

    .line 1434
    :cond_19e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1435
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1436
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide/from16 v3, v69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->checkTimeStamp(JJ)I

    move-result v34

    .line 1437
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1438
    move/from16 v0, v17

    move/from16 v1, v34

    if-eq v0, v1, :cond_19a

    .line 1439
    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    move-wide/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1440
    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    move-wide/from16 v3, v69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr2(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    .line 1441
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1f1

    .line 1442
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1443
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1444
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_21d

    .line 1445
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1446
    :cond_21d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1448
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1450
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_19a

    .line 1454
    .end local v5           #cal:Ljava/util/Calendar;
    .end local v17           #date:I
    .end local v21           #i:I
    .end local v34           #nextDate:I
    .end local v38           #nextTimeStamp:J
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v45           #prevDate:I
    .end local v67           #timeStamp:J
    .end local v69           #todayMilli:J
    :cond_250
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_25a

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3c3

    .line 1456
    :cond_25a
    const/16 v55, 0x0

    .line 1457
    .local v55, sender:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1458
    .local v37, nextSender:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1459
    .local v48, prevSender:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_262
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1460
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1461
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_297

    .line 1463
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1464
    :cond_297
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 1465
    if-nez v55, :cond_2a2

    .line 1466
    const-string v55, ""

    .line 1468
    :cond_2a2
    add-int/lit8 v58, v58, 0x1

    .line 1469
    if-eqz v48, :cond_2b0

    move-object/from16 v0, v48

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d7

    .line 1470
    :cond_2b0
    move-object/from16 v48, v55

    .line 1471
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1472
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1473
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_2d7
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1476
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_348

    .line 1478
    move-object/from16 v0, v55

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1479
    move-object/from16 v0, v55

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1480
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_31b

    .line 1481
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1482
    :cond_31b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    const/16 v58, 0x0

    .line 1459
    :cond_344
    :goto_344
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_262

    .line 1487
    :cond_348
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1488
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1489
    if-eqz v37, :cond_3c0

    .line 1490
    const-string v6, "\u0002"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1494
    :goto_35b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1495
    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_344

    .line 1496
    move-object/from16 v0, v55

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1497
    move-object/from16 v0, v55

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1498
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_38e

    .line 1499
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1500
    :cond_38e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1502
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1504
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto :goto_344

    .line 1492
    :cond_3c0
    const-string v37, ""

    goto :goto_35b

    .line 1508
    .end local v21           #i:I
    .end local v37           #nextSender:Ljava/lang/String;
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v48           #prevSender:Ljava/lang/String;
    .end local v55           #sender:Ljava/lang/String;
    :cond_3c3
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5ca

    .line 1509
    const/16 v52, -0x1

    .line 1510
    .local v52, read:I
    const/16 v36, -0x1

    .line 1511
    .local v36, nextRead:I
    const/16 v47, -0x1

    .line 1512
    .local v47, prevRead:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_3d0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1513
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1514
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_405

    .line 1516
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1517
    :cond_405
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 1518
    add-int/lit8 v58, v58, 0x1

    .line 1519
    const/4 v6, -0x1

    move/from16 v0, v47

    if-eq v0, v6, :cond_419

    move/from16 v0, v47

    move/from16 v1, v52

    if-eq v0, v1, :cond_440

    .line 1520
    :cond_419
    move/from16 v47, v52

    .line 1521
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1522
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1523
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_440
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1526
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_509

    .line 1528
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_478

    .line 1529
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1530
    :cond_478
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_4e6

    .line 1531
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1533
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1540
    :goto_49f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_4b9

    .line 1541
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1542
    :cond_4b9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1544
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
    const/16 v58, 0x0

    .line 1512
    :cond_4e2
    :goto_4e2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3d0

    .line 1536
    :cond_4e6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1537
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_49f

    .line 1547
    :cond_509
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1548
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1549
    move/from16 v0, v52

    move/from16 v1, v36

    if-eq v0, v1, :cond_4e2

    .line 1550
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_533

    .line 1551
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1552
    :cond_533
    const/4 v6, 0x1

    move/from16 v0, v52

    if-eq v0, v6, :cond_5a7

    .line 1553
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1555
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1563
    :goto_55a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_574

    .line 1564
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1565
    :cond_574
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1569
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_4e2

    .line 1558
    :cond_5a7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_55a

    .line 1573
    .end local v21           #i:I
    .end local v36           #nextRead:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v47           #prevRead:I
    .end local v52           #read:I
    :cond_5ca
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7d1

    .line 1574
    const/16 v19, -0x1

    .line 1575
    .local v19, favorite:I
    const/16 v40, -0x1

    .line 1576
    .local v40, nextfavorite:I
    const/16 v49, -0x1

    .line 1577
    .local v49, prevfavorite:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_5d7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1578
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1579
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_60c

    .line 1581
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1582
    :cond_60c
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1583
    add-int/lit8 v58, v58, 0x1

    .line 1584
    const/4 v6, -0x1

    move/from16 v0, v49

    if-eq v0, v6, :cond_620

    move/from16 v0, v49

    move/from16 v1, v19

    if-eq v0, v1, :cond_647

    .line 1585
    :cond_620
    move/from16 v49, v19

    .line 1586
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1587
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1588
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_647
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1591
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_710

    .line 1593
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_67f

    .line 1594
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1595
    :cond_67f
    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_6ed

    .line 1596
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1598
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1606
    :goto_6a6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_6c0

    .line 1607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1608
    :cond_6c0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1610
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    const/16 v58, 0x0

    .line 1577
    :cond_6e9
    :goto_6e9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5d7

    .line 1601
    :cond_6ed
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1603
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_6a6

    .line 1613
    :cond_710
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1614
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 1615
    move/from16 v0, v19

    move/from16 v1, v40

    if-eq v0, v1, :cond_6e9

    .line 1616
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_73a

    .line 1617
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1618
    :cond_73a
    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_7ae

    .line 1619
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1621
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1629
    :goto_761
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_77b

    .line 1630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1631
    :cond_77b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1633
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1635
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_6e9

    .line 1624
    :cond_7ae
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1626
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_761

    .line 1639
    .end local v19           #favorite:I
    .end local v21           #i:I
    .end local v40           #nextfavorite:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v49           #prevfavorite:I
    :cond_7d1
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_9d2

    .line 1640
    const/4 v12, -0x1

    .line 1641
    .local v12, attachment:I
    const/16 v33, -0x1

    .line 1642
    .local v33, nextAttachment:I
    const/16 v44, -0x1

    .line 1644
    .local v44, prevAttachment:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_7de
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1645
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1646
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_813

    .line 1648
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1649
    :cond_813
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1650
    add-int/lit8 v58, v58, 0x1

    .line 1651
    const/4 v6, -0x1

    move/from16 v0, v44

    if-eq v0, v6, :cond_826

    move/from16 v0, v44

    if-eq v0, v12, :cond_84d

    .line 1652
    :cond_826
    move/from16 v44, v12

    .line 1653
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1654
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1655
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_84d
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1658
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_914

    .line 1660
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_885

    .line 1661
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1662
    :cond_885
    const/4 v6, 0x1

    if-ne v12, v6, :cond_8f1

    .line 1663
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801ba

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1665
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801ba

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1673
    :goto_8aa
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_8c4

    .line 1674
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1675
    :cond_8c4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1677
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    const/16 v58, 0x0

    .line 1644
    :cond_8ed
    :goto_8ed
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7de

    .line 1668
    :cond_8f1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1670
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_8aa

    .line 1680
    :cond_914
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1681
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1682
    move/from16 v0, v33

    if-eq v12, v0, :cond_8ed

    .line 1683
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_93d

    .line 1684
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1685
    :cond_93d
    const/4 v6, 0x1

    if-ne v12, v6, :cond_9af

    .line 1686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801ba

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1688
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801ba

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1696
    :goto_962
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_97c

    .line 1697
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1698
    :cond_97c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1700
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1702
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_8ed

    .line 1691
    :cond_9af
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f0801b8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_962

    .line 1706
    .end local v12           #attachment:I
    .end local v21           #i:I
    .end local v33           #nextAttachment:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v44           #prevAttachment:I
    :cond_9d2
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c36

    .line 1707
    const/16 v24, -0x1

    .line 1708
    .local v24, importance:I
    const/16 v35, -0x1

    .line 1709
    .local v35, nextImportance:I
    const/16 v46, -0x1

    .line 1710
    .local v46, prevImportance:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_9e0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1711
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1712
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a15

    .line 1714
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1715
    :cond_a15
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1716
    add-int/lit8 v58, v58, 0x1

    .line 1717
    const/4 v6, -0x1

    move/from16 v0, v46

    if-eq v0, v6, :cond_a2a

    move/from16 v0, v46

    move/from16 v1, v24

    if-eq v0, v1, :cond_a51

    .line 1718
    :cond_a2a
    move/from16 v46, v24

    .line 1719
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1720
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1721
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_a51
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1724
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_b4b

    .line 1726
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_a89

    .line 1727
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1728
    :cond_a89
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_aff

    .line 1729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080339

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1730
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080339

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1740
    :goto_ab0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_aca

    .line 1741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1742
    :cond_aca
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1744
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1746
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    .line 1710
    :cond_afb
    :goto_afb
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_9e0

    .line 1732
    :cond_aff
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_b27

    .line 1733
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08033a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1734
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f08033a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_ab0

    .line 1737
    :cond_b27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080338

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1738
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080338

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto/16 :goto_ab0

    .line 1748
    :cond_b4b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1749
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1750
    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_afb

    .line 1751
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_b76

    .line 1752
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1753
    :cond_b76
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_bea

    .line 1754
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080339

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1756
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080339

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1768
    :goto_b9d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_bb7

    .line 1769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1770
    :cond_bb7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1772
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1774
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_afb

    .line 1758
    :cond_bea
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_c12

    .line 1759
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08033a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1761
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f08033a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_b9d

    .line 1764
    :cond_c12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080338

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1765
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080338

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto/16 :goto_b9d

    .line 1778
    .end local v21           #i:I
    .end local v24           #importance:I
    .end local v35           #nextImportance:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v46           #prevImportance:I
    :cond_c36
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_e92

    .line 1779
    const/16 v20, -0x1

    .line 1780
    .local v20, flagStatus:I
    const/16 v41, -0x1

    .line 1781
    .local v41, nextflagStatus:I
    const/16 v50, -0x1

    .line 1782
    .local v50, prevflagStatus:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_c44
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1783
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1784
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c79

    .line 1786
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1787
    :cond_c79
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1788
    add-int/lit8 v58, v58, 0x1

    .line 1789
    const/4 v6, -0x1

    move/from16 v0, v50

    if-eq v0, v6, :cond_c8e

    move/from16 v0, v50

    move/from16 v1, v20

    if-eq v0, v1, :cond_cb5

    .line 1790
    :cond_c8e
    move/from16 v50, v20

    .line 1791
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1792
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1793
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_cb5
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1796
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_da7

    .line 1798
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_ced

    .line 1799
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1800
    :cond_ced
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_d5b

    .line 1801
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080332

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1803
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080332

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1816
    :goto_d14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_d2e

    .line 1817
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1818
    :cond_d2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1820
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    const/16 v58, 0x0

    .line 1782
    :cond_d57
    :goto_d57
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_c44

    .line 1805
    :cond_d5b
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_d83

    .line 1806
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080333

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1808
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080333

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_d14

    .line 1811
    :cond_d83
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080334

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1813
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080334

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto/16 :goto_d14

    .line 1823
    :cond_da7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1824
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 1825
    move/from16 v0, v20

    move/from16 v1, v41

    if-eq v0, v1, :cond_d57

    .line 1826
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_dd2

    .line 1827
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1828
    :cond_dd2
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_e46

    .line 1829
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080332

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1831
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080332

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1844
    :goto_df9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_e13

    .line 1845
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1846
    :cond_e13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1848
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1850
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_d57

    .line 1833
    :cond_e46
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_e6e

    .line 1834
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080333

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1836
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080333

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_df9

    .line 1839
    :cond_e6e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080334

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1841
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f080334

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto/16 :goto_df9

    .line 1854
    .end local v20           #flagStatus:I
    .end local v21           #i:I
    .end local v41           #nextflagStatus:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v50           #prevflagStatus:I
    :cond_e92
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_109a

    .line 1855
    const/16 v26, -0x1

    .line 1856
    .local v26, inviteStatus:I
    const/16 v42, -0x1

    .line 1857
    .local v42, nextinviteStatus:I
    const/16 v51, -0x1

    .line 1858
    .local v51, previnviteStatus:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_ea0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1610

    .line 1859
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1860
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_ed5

    .line 1862
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1863
    :cond_ed5
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1864
    add-int/lit8 v58, v58, 0x1

    .line 1865
    const/4 v6, -0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_eea

    move/from16 v0, v51

    move/from16 v1, v26

    if-eq v0, v1, :cond_f11

    .line 1866
    :cond_eea
    move/from16 v51, v26

    .line 1867
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 1868
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1869
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_f11
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 1872
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_fd9

    .line 1874
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_f49

    .line 1875
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1876
    :cond_f49
    and-int/lit8 v6, v26, 0x4

    if-eqz v6, :cond_fb6

    .line 1877
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08033b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1879
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f08033b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1887
    :goto_f6f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_f89

    .line 1888
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1889
    :cond_f89
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1891
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    const/16 v58, 0x0

    .line 1858
    :cond_fb2
    :goto_fb2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_ea0

    .line 1882
    :cond_fb6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08033c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1884
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f08033c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_f6f

    .line 1894
    :cond_fd9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1895
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 1896
    move/from16 v0, v26

    move/from16 v1, v42

    if-eq v0, v1, :cond_fb2

    .line 1897
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1004

    .line 1898
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1899
    :cond_1004
    and-int/lit8 v6, v26, 0x4

    if-eqz v6, :cond_1077

    .line 1900
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08033b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1902
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f08033b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 1910
    :goto_102a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1044

    .line 1911
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1912
    :cond_1044
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 1914
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 1916
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/16 v58, 0x0

    goto/16 :goto_fb2

    .line 1905
    :cond_1077
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08033c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 1907
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer2:Ljava/lang/StringBuffer;

    const v7, 0x7f08033c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_102a

    .line 1920
    .end local v21           #i:I
    .end local v26           #inviteStatus:I
    .end local v42           #nextinviteStatus:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v51           #previnviteStatus:I
    :cond_109a
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1611

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    const-wide/high16 v8, 0x402c

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1611

    .line 1922
    new-instance v65, Ljava/util/HashMap;

    invoke-direct/range {v65 .. v65}, Ljava/util/HashMap;-><init>()V

    .line 1923
    .local v65, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    .local v64, threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v30, 0x0

    .line 1925
    .local v30, messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v32, 0x0

    .line 1926
    .local v32, newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v71, 0x0

    .line 1927
    .local v71, totalThreadMail:I
    const/16 v62, 0x0

    .line 1930
    .local v62, threadCount:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_127c

    .line 1933
    :cond_10c1
    new-instance v31, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;-><init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V

    .line 1934
    .local v31, msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    .line 1935
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    .line 1936
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    .line 1937
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    .line 1938
    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    .line 1939
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v31

    iput-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    .line 1940
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    .line 1941
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    .line 1942
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    .line 1943
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    .line 1944
    const/16 v6, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    .line 1945
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    .line 1946
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    .line 1947
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    .line 1948
    const/16 v6, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    .line 1949
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    .line 1950
    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    .line 1951
    const/16 v6, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    .line 1952
    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    .line 1953
    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    .line 1954
    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    .line 1955
    const/16 v6, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    .line 1956
    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    .line 1957
    const/16 v6, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    .line 1958
    const/16 v6, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    .line 1959
    const/16 v6, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    .line 1960
    const/16 v6, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    .line 1961
    const/16 v6, 0x1b

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    .line 1962
    const/16 v6, 0x1c

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    .line 1963
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    .line 1964
    add-int/lit8 v71, v71, 0x1

    .line 1965
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1248

    .line 1966
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 1968
    :cond_1248
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v65

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v30, Ljava/util/List;

    .line 1969
    .restart local v30       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-nez v30, :cond_13ac

    .line 1970
    new-instance v32, Ljava/util/ArrayList;

    .end local v32           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1971
    .restart local v32       #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v65

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    :cond_1276
    :goto_1276
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_10c1

    .line 1989
    .end local v31           #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    :cond_127c
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    move/from16 v0, v71

    invoke-direct {v13, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1991
    .local v13, childCursor:Landroid/database/MatrixCursor;
    const/16 v28, 0x0

    .line 1992
    .local v28, listSize:I
    new-instance v56, Ljava/util/HashSet;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashSet;-><init>()V

    .line 1996
    .local v56, senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1290
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15f9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Long;

    .line 1997
    .local v63, threadId:Ljava/lang/Long;
    move-object/from16 v0, v65

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v30, Ljava/util/List;

    .line 1998
    .restart local v30       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-eqz v30, :cond_1290

    .line 2001
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v28

    .line 2002
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashSet;->clear()V

    .line 2005
    const/4 v6, 0x1

    move/from16 v0, v28

    if-lt v0, v6, :cond_145f

    .line 2006
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 2007
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2008
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2010
    .local v16, data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2012
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    move-object/from16 v0, v59

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    .line 2013
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1310

    .line 2014
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2015
    :cond_1310
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$800()Z

    move-result v6

    if-eqz v6, :cond_13ba

    .line 2016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 2026
    :goto_1336
    :try_start_1336
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1350

    .line 2027
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2028
    :cond_1350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2029
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2030
    const/16 v21, 0x1

    .restart local v21       #i:I
    :goto_1366
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_13d0

    .line 2031
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2032
    .local v57, subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 2034
    .local v60, tempString:Ljava/lang/String;
    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_139c

    .line 2035
    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2036
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2038
    :cond_139c
    move-object/from16 v0, v59

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    move-object/from16 v0, v57

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    and-int/2addr v6, v7

    move-object/from16 v0, v59

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I
    :try_end_13a9
    .catch Ljava/lang/Exception; {:try_start_1336 .. :try_end_13a9} :catch_1416

    .line 2030
    add-int/lit8 v21, v21, 0x1

    goto :goto_1366

    .line 1976
    .end local v13           #childCursor:Landroid/database/MatrixCursor;
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v28           #listSize:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .end local v56           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v57           #subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v60           #tempString:Ljava/lang/String;
    .end local v63           #threadId:Ljava/lang/Long;
    .restart local v31       #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    :cond_13ac
    invoke-interface/range {v30 .. v31}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1276

    .line 1982
    add-int/lit8 v71, v71, 0x1

    goto/16 :goto_1276

    .line 2019
    .end local v31           #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v13       #childCursor:Landroid/database/MatrixCursor;
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v28       #listSize:I
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v56       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v63       #threadId:Ljava/lang/Long;
    :cond_13ba
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    goto/16 :goto_1336

    .line 2040
    .restart local v21       #i:I
    :cond_13d0
    :try_start_13d0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;
    :try_end_13dc
    .catch Ljava/lang/Exception; {:try_start_13d0 .. :try_end_13dc} :catch_1416

    .line 2048
    .end local v21           #i:I
    :goto_13dc
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_13de
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_1441

    .line 2049
    move-object/from16 v0, v59

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v62

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2051
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    add-int/lit8 v62, v62, 0x1

    .line 2048
    add-int/lit8 v21, v21, 0x1

    goto :goto_13de

    .line 2041
    .end local v21           #i:I
    :catch_1416
    move-exception v18

    .line 2042
    .local v18, e:Ljava/lang/Exception;
    const-string v6, "MessagesAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : makeSubTitleList\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    .line 2044
    const/4 v6, 0x1

    move-object/from16 v0, v59

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    goto :goto_13dc

    .line 2054
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_1441
    const/4 v6, 0x0

    move-object/from16 v0, v59

    iput-boolean v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 2055
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 2056
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 2065
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    :cond_145f
    const/16 v25, 0x0

    .line 2067
    .local v25, index:I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_1465
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1290

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2068
    .local v29, mdata:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v54

    .line 2069
    .local v54, row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2070
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2071
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2072
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2073
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2074
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2075
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2076
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2077
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2078
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2079
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2080
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2081
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2082
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2083
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2084
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2085
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2086
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2087
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2088
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2089
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2090
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2091
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2092
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2093
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2094
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2095
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2096
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2097
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2098
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2099
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2100
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2101
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1465

    .line 2104
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v29           #mdata:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    .end local v63           #threadId:Ljava/lang/Long;
    :cond_15f9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v6, v7}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2105
    move-object/from16 v53, v13

    .line 2106
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    .line 2338
    .end local v13           #childCursor:Landroid/database/MatrixCursor;
    .end local v28           #listSize:I
    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v32           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v56           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v62           #threadCount:I
    .end local v64           #threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v65           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    .end local v71           #totalThreadMail:I
    :cond_1610
    :goto_1610
    return-object v53

    .line 2108
    :cond_1611
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1bed

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1bed

    .line 2110
    new-instance v66, Ljava/util/HashMap;

    invoke-direct/range {v66 .. v66}, Ljava/util/HashMap;-><init>()V

    .line 2111
    .local v66, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2112
    .local v15, conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v30, 0x0

    .line 2113
    .restart local v30       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v32, 0x0

    .line 2114
    .restart local v32       #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v27, 0x0

    .line 2115
    .local v27, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    const/16 v71, 0x0

    .line 2116
    .restart local v71       #totalThreadMail:I
    const/16 v62, 0x0

    .line 2120
    .restart local v62       #threadCount:I
    const/16 v61, 0x0

    .line 2122
    .local v61, temp_conversationId:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1904

    .line 2125
    :cond_163c
    new-instance v31, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;-><init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V

    .line 2126
    .restart local v31       #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    .line 2127
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    .line 2128
    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    .line 2129
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    .line 2130
    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    .line 2131
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v31

    iput-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    .line 2132
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    .line 2133
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    .line 2134
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    .line 2135
    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    .line 2136
    const/16 v6, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    .line 2137
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    .line 2138
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    .line 2139
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    .line 2140
    const/16 v6, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    .line 2141
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    .line 2142
    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    .line 2143
    const/16 v6, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    .line 2144
    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    .line 2145
    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    .line 2146
    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    .line 2147
    const/16 v6, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    .line 2148
    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    .line 2149
    const/16 v6, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    .line 2150
    const/16 v6, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    .line 2151
    const/16 v6, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    .line 2152
    const/16 v6, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    .line 2153
    const/16 v6, 0x1b

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    .line 2154
    const/16 v6, 0x1c

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    .line 2155
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v31

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    .line 2156
    add-int/lit8 v71, v71, 0x1

    .line 2157
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_17c3

    .line 2158
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 2159
    :cond_17c3
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    if-eqz v6, :cond_18a3

    .line 2161
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v30, Ljava/util/List;

    .line 2162
    .restart local v30       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-nez v30, :cond_189e

    .line 2163
    new-instance v32, Ljava/util/ArrayList;

    .end local v32           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    .restart local v32       #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2165
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v66

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    add-int/lit8 v71, v71, 0x1

    .line 2186
    :goto_17f7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_163c

    .line 2188
    const/16 v28, 0x0

    .line 2189
    .restart local v28       #listSize:I
    new-instance v56, Ljava/util/HashSet;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashSet;-><init>()V

    .line 2193
    .restart local v56       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_1808
    :goto_1808
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1904

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/String;

    .line 2194
    .local v63, threadId:Ljava/lang/String;
    move-object/from16 v0, v66

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v30, Ljava/util/List;

    .line 2195
    .restart local v30       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-eqz v30, :cond_1808

    .line 2198
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v28

    .line 2199
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashSet;->clear()V

    .line 2202
    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_1808

    .line 2204
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2210
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    :try_start_1835
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_184f

    .line 2211
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2212
    :cond_184f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2213
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2214
    const/16 v21, 0x1

    .restart local v21       #i:I
    :goto_1865
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_18cf

    .line 2215
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2216
    .restart local v57       #subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 2217
    .restart local v60       #tempString:Ljava/lang/String;
    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_189b

    .line 2218
    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2219
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_189b
    .catch Ljava/lang/Exception; {:try_start_1835 .. :try_end_189b} :catch_18dd

    .line 2214
    :cond_189b
    add-int/lit8 v21, v21, 0x1

    goto :goto_1865

    .line 2170
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #listSize:I
    .end local v56           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v57           #subData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v60           #tempString:Ljava/lang/String;
    .end local v63           #threadId:Ljava/lang/String;
    :cond_189e
    invoke-interface/range {v30 .. v31}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17f7

    .line 2178
    :cond_18a3
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    .line 2179
    new-instance v27, Ljava/util/ArrayList;

    .end local v27           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2180
    .restart local v27       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2181
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v66

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    add-int/lit8 v61, v61, 0x1

    .line 2184
    add-int/lit8 v71, v71, 0x1

    goto/16 :goto_17f7

    .line 2222
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .restart local v21       #i:I
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v28       #listSize:I
    .restart local v56       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v63       #threadId:Ljava/lang/String;
    :cond_18cf
    :try_start_18cf
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;
    :try_end_18db
    .catch Ljava/lang/Exception; {:try_start_18cf .. :try_end_18db} :catch_18dd

    goto/16 :goto_1808

    .line 2223
    .end local v21           #i:I
    :catch_18dd
    move-exception v18

    .line 2224
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v6, "MessagesAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : makeSubTitleList\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    goto/16 :goto_1808

    .line 2234
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #listSize:I
    .end local v31           #msgData:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v56           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v63           #threadId:Ljava/lang/String;
    :cond_1904
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    move/from16 v0, v71

    invoke-direct {v13, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 2236
    .restart local v13       #childCursor:Landroid/database/MatrixCursor;
    const/16 v28, 0x0

    .line 2237
    .restart local v28       #listSize:I
    new-instance v56, Ljava/util/HashSet;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashSet;-><init>()V

    .line 2241
    .restart local v56       #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1918
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1bd4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2242
    .local v14, convId:Ljava/lang/String;
    move-object/from16 v0, v66

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    check-cast v30, Ljava/util/List;

    .line 2243
    .restart local v30       #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    if-eqz v30, :cond_1918

    .line 2245
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v28

    .line 2246
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashSet;->clear()V

    .line 2248
    const/4 v6, 0x1

    move/from16 v0, v28

    if-lt v0, v6, :cond_1a3a

    .line 2249
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    .line 2250
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2251
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2253
    .restart local v16       #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2255
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    move-object/from16 v0, v59

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    .line 2256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1996

    .line 2257
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2258
    :cond_1996
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$800()Z

    move-result v6

    if-eqz v6, :cond_1a0b

    .line 2259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    .line 2267
    :goto_19bc
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_19be
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_1a20

    .line 2268
    move-object/from16 v0, v59

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2269
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v62

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2270
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2271
    add-int/lit8 v62, v62, 0x1

    .line 2272
    move-object/from16 v0, v59

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    and-int/2addr v6, v7

    move-object/from16 v0, v59

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    .line 2267
    add-int/lit8 v21, v21, 0x1

    goto :goto_19be

    .line 2262
    .end local v21           #i:I
    :cond_1a0b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mStrBuffer:Ljava/lang/StringBuffer;

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v59

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    goto :goto_19bc

    .line 2274
    .restart local v21       #i:I
    :cond_1a20
    move-object/from16 v0, v59

    iput-object v14, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    .line 2275
    const/4 v6, 0x0

    move-object/from16 v0, v59

    iput-boolean v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 2276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    new-instance v59, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    .end local v59           #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    .line 2285
    .end local v16           #data:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v21           #i:I
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    .restart local v59       #subTitle:Lcom/android/email/activity/MessagesAdapter$SubTitle;
    :cond_1a3a
    const/16 v25, 0x0

    .line 2287
    .restart local v25       #index:I
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_1a40
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1918

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    .line 2288
    .restart local v29       #mdata:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v54

    .line 2289
    .restart local v54       #row:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2290
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2291
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2292
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2293
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2294
    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2295
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2296
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2297
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2298
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2299
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2300
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2301
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2302
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2303
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2304
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2305
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2306
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2307
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2308
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2309
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2310
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2311
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2312
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2313
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2314
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2315
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2316
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2317
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2318
    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2319
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2320
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 2321
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1a40

    .line 2324
    .end local v14           #convId:Ljava/lang/String;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #index:I
    .end local v29           #mdata:Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    .end local v54           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1bd4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v6, v7}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2325
    move-object/from16 v53, v13

    .line 2326
    invoke-interface/range {v53 .. v53}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    goto/16 :goto_1610

    .line 2327
    .end local v13           #childCursor:Landroid/database/MatrixCursor;
    .end local v15           #conversationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v28           #listSize:I
    .end local v30           #messageDataList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v32           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;"
    .end local v56           #senderHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v61           #temp_conversationId:I
    .end local v62           #threadCount:I
    .end local v66           #threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;>;>;"
    .end local v71           #totalThreadMail:I
    :cond_1bed
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1610

    .line 2328
    const-string v6, "Email"

    const-string v7, "SORT_BY_SEARCH "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1bfb
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_1c39

    .line 2330
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2331
    new-instance v43, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    .line 2332
    .restart local v43       #p:Lcom/android/email/activity/MessagesAdapter$Position;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1c36

    .line 2334
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    .line 2329
    :cond_1c36
    add-int/lit8 v21, v21, 0x1

    goto :goto_1bfb

    .line 2336
    .end local v43           #p:Lcom/android/email/activity/MessagesAdapter$Position;
    :cond_1c39
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    goto/16 :goto_1610
.end method

.method private restoreSubTitleState()V
    .registers 9

    .prologue
    .line 2343
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2344
    .local v1, hideViewPositionTemp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 2345
    .local v5, tempString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2369
    .local v4, subTempString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_ca

    .line 2370
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v5, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2371
    const/4 v0, 0x0

    .line 2372
    .local v0, count:I
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_b0

    .line 2373
    const/4 v3, 0x0

    .local v3, j:I
    :goto_22
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_83

    .line 2374
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    .line 2375
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 2376
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v7, v7, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v7, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 2377
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v7, v7, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iput-boolean v7, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 2378
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v6, :cond_83

    .line 2379
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2385
    :cond_83
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_a6

    .line 2386
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v6, :cond_a6

    .line 2387
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2369
    .end local v3           #j:I
    :cond_a6
    :goto_a6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 2383
    .restart local v3       #j:I
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    .line 2373
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_22

    .line 2391
    .end local v3           #j:I
    :cond_b0
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v6, :cond_a6

    .line 2392
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_a6

    .line 2396
    .end local v0           #count:I
    :cond_ca
    iget v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    invoke-static {v6}, Lcom/android/email/activity/MessagesAdapter;->access$302(I)I

    .line 2397
    iget v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    invoke-static {v6}, Lcom/android/email/activity/MessagesAdapter;->access$102(I)I

    .line 2398
    iget v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    invoke-static {v6}, Lcom/android/email/activity/MessagesAdapter;->access$202(I)I

    .line 2399
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/email/activity/MessagesAdapter;->access$402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2400
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2401
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-static {v6}, Lcom/android/email/activity/MessagesAdapter;->access$502(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 2402
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2403
    const/4 v1, 0x0

    .line 2404
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/email/activity/MessagesAdapter;->access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2405
    iget-object v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2406
    return-void
.end method


# virtual methods
.method public getSeparateStr(JJ)Ljava/lang/String;
    .registers 11
    .parameter "stamp"
    .parameter "todayMilli"

    .prologue
    .line 2418
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2419
    .local v3, tempDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2420
    .local v1, daySimple:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2422
    .local v2, dayString:Ljava/lang/String;
    const-string v4, "MEA_JP"

    invoke-static {v4}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2425
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->isInt(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2427
    .local v0, dayInt:I
    const/4 v4, 0x1

    if-ne v4, v0, :cond_40

    .line 2428
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f08045f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2446
    .end local v0           #dayInt:I
    :cond_32
    :goto_32
    cmp-long v4, p1, p3

    if-ltz v4, :cond_8e

    .line 2447
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2480
    .end local v2           #dayString:Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-object v2

    .line 2429
    .restart local v0       #dayInt:I
    .restart local v2       #dayString:Ljava/lang/String;
    :cond_40
    const/4 v4, 0x2

    if-ne v4, v0, :cond_4d

    .line 2430
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080460

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 2431
    :cond_4d
    const/4 v4, 0x3

    if-ne v4, v0, :cond_5a

    .line 2432
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080461

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 2433
    :cond_5a
    const/4 v4, 0x4

    if-ne v4, v0, :cond_67

    .line 2434
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080462

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 2435
    :cond_67
    const/4 v4, 0x5

    if-ne v4, v0, :cond_74

    .line 2436
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080463

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 2437
    :cond_74
    const/4 v4, 0x6

    if-ne v4, v0, :cond_81

    .line 2438
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080464

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 2439
    :cond_81
    const/4 v4, 0x7

    if-ne v4, v0, :cond_32

    .line 2440
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080465

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_32

    .line 2448
    .end local v0           #dayInt:I
    :cond_8e
    cmp-long v4, p1, p3

    if-gez v4, :cond_a5

    const-wide/32 v4, 0x5265c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_a5

    .line 2449
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    .line 2450
    :cond_a5
    const-wide/32 v4, 0x5265c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_b7

    const-wide/32 v4, 0xa4cb800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_3f

    .line 2453
    :cond_b7
    const-wide/32 v4, 0xa4cb800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_c9

    const-wide/32 v4, 0xf731400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_3f

    .line 2456
    :cond_c9
    const-wide/32 v4, 0xf731400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_db

    const-wide/32 v4, 0x14997000

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_3f

    .line 2459
    :cond_db
    const-wide/32 v4, 0x14997000

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_ed

    const-wide/32 v4, 0x19bfcc00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_3f

    .line 2462
    :cond_ed
    const-wide/32 v4, 0x19bfcc00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_ff

    const-wide/32 v4, 0x1ee62800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_3f

    .line 2465
    :cond_ff
    const-wide/32 v4, 0x1ee62800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_11c

    const-wide/32 v4, 0x240c8400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_11c

    .line 2467
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3f

    .line 2468
    :cond_11c
    const-wide/32 v4, 0x240c8400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_139

    const-wide/32 v4, 0x48190800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_139

    .line 2470
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3f

    .line 2471
    :cond_139
    const-wide/32 v4, 0x48190800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_156

    const-wide/32 v4, 0x6c258c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_156

    .line 2473
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3f

    .line 2474
    :cond_156
    const-wide/32 v4, 0x6c258c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_175

    const-wide v4, 0x9a7ec800L

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_175

    .line 2476
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3f

    .line 2477
    :cond_175
    const-wide v4, 0x9a7ec800L

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_18b

    .line 2478
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3f

    .line 2480
    :cond_18b
    const/4 v2, 0x0

    goto/16 :goto_3f
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v5, 0x6

    .line 1323
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getEasSearchString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1324
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->applyEasSearchString()V

    .line 1325
    sput v5, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    .line 1328
    :cond_c
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v4

    if-eq v4, v5, :cond_53

    .line 1329
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 1336
    :goto_1d
    const/4 v1, 0x0

    .line 1337
    .local v1, result:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1338
    .local v3, tempCursor:Landroid/database/Cursor;
    monitor-enter p0

    .line 1340
    :try_start_20
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$000()Landroid/database/Cursor;

    move-result-object v3

    .line 1341
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 1342
    invoke-static {v1}, Lcom/android/email/activity/MessagesAdapter;->access$002(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1344
    sget v4, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_40

    .line 1345
    if-eqz v3, :cond_40

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_40

    .line 1346
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1347
    const/4 v3, 0x0

    .line 1350
    :cond_40
    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->initListVariable()V

    .line 1351
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4d

    .line 1352
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->makeSubTitleList(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 1354
    :cond_4d
    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->restoreSubTitleState()V
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_50} :catch_74

    .line 1355
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_7b

    move-object v2, v1

    .line 1360
    .end local v1           #result:Landroid/database/Cursor;
    .local v2, result:Landroid/database/Cursor;
    :goto_52
    return-object v2

    .line 1331
    .end local v2           #result:Landroid/database/Cursor;
    .end local v3           #tempCursor:Landroid/database/Cursor;
    :cond_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchSelectionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_1d

    .line 1356
    .restart local v1       #result:Landroid/database/Cursor;
    .restart local v3       #tempCursor:Landroid/database/Cursor;
    :catch_74
    move-exception v0

    .line 1357
    .local v0, e:Ljava/lang/Exception;
    :try_start_75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1359
    monitor-exit p0

    move-object v2, v1

    .line 1360
    .end local v1           #result:Landroid/database/Cursor;
    .restart local v2       #result:Landroid/database/Cursor;
    goto :goto_52

    .line 1359
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #result:Landroid/database/Cursor;
    .restart local v1       #result:Landroid/database/Cursor;
    :catchall_7b
    move-exception v4

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7b

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
