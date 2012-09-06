.class public Lcom/android/exchange/adapter/CalendarSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;,
        Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    }
.end annotation


# static fields
.field private static final ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

.field private static final PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mCalendarId:J

.field private mCalendarIdArgument:[Ljava/lang/String;

.field private mCalendarIdString:Ljava/lang/String;

.field private mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mEmailAddress:Ljava/lang/String;

.field private final mLocalTimeZone:Ljava/util/TimeZone;

.field private mOutgoingMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCancelIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "original_id"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 134
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    .line 139
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 11
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 140
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 157
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 169
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "account_name=? AND account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "com.android.exchange"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_52

    .line 185
    :goto_51
    return-void

    .line 175
    :cond_52
    :try_start_52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 176
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 180
    :goto_5f
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_82

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_51

    .line 178
    :cond_75
    :try_start_75
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_82

    goto :goto_5f

    .line 183
    :catchall_82
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/TimeZone;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$300()Landroid/content/ContentProviderOperation;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private decodeVisibility(I)Ljava/lang/String;
    .registers 4
    .parameter "visibility"

    .prologue
    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, easVisibility:I
    packed-switch p1, :pswitch_data_12

    .line 1481
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1469
    :pswitch_9
    const/4 v0, 0x0

    .line 1470
    goto :goto_4

    .line 1472
    :pswitch_b
    const/4 v0, 0x1

    .line 1473
    goto :goto_4

    .line 1475
    :pswitch_d
    const/4 v0, 0x2

    .line 1476
    goto :goto_4

    .line 1478
    :pswitch_f
    const/4 v0, 0x3

    goto :goto_4

    .line 1467
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private getInt(Landroid/content/ContentValues;Ljava/lang/String;)I
    .registers 5
    .parameter "cv"
    .parameter "column"

    .prologue
    .line 1485
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1486
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 1487
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7
.end method

.method private sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V
    .registers 8
    .parameter "entity"
    .parameter "clientId"

    .prologue
    .line 1774
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1777
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_2f

    .line 1778
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing declined response to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1779
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    :cond_2f
    return-void
.end method

.method private sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .registers 62
    .parameter "entity"
    .parameter "clientId"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 1498
    .local v24, entityValues:Landroid/content/ContentValues;
    if-nez p2, :cond_25b

    const/16 v34, 0x1

    .line 1499
    .local v34, isException:Z
    :goto_8
    const/16 v29, 0x0

    .line 1500
    .local v29, hasAttendees:Z
    const-string v4, "_sync_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v32

    .line 1501
    .local v32, isChange:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v4, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v55, v0

    .line 1502
    .local v55, version:Ljava/lang/Double;
    const-string v4, "allDay"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v10

    .line 1508
    .local v10, allDay:Z
    if-eqz v34, :cond_d0

    .line 1510
    const-string v4, "deleted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 1511
    .local v17, deleted:Ljava/lang/Integer;
    if-eqz v17, :cond_25f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25f

    const/16 v33, 0x1

    .line 1512
    .local v33, isDeleted:Z
    :goto_37
    const-string v4, "eventStatus"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    .line 1513
    .local v27, eventStatus:Ljava/lang/Integer;
    if-eqz v27, :cond_263

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_263

    const/16 v31, 0x1

    .line 1514
    .local v31, isCanceled:Z
    :goto_50
    if-nez v33, :cond_54

    if-eqz v31, :cond_267

    .line 1515
    :cond_54
    const/16 v4, 0x115

    const-string v5, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1518
    if-eqz v33, :cond_9d

    if-nez v31, :cond_9d

    .line 1519
    const-string v4, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1520
    .local v25, eventId:J
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1521
    .local v16, cv:Landroid/content/ContentValues;
    const-string v4, "eventStatus"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1532
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v25           #eventId:J
    :cond_9d
    :goto_9d
    const-string v4, "originalInstanceTime"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v43

    .line 1533
    .local v43, originalTime:Ljava/lang/Long;
    if-eqz v43, :cond_d0

    .line 1534
    const-string v4, "originalAllDay"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v42

    .line 1537
    .local v42, originalAllDay:Z
    if-eqz v42, :cond_c1

    .line 1539
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    invoke-static {v4, v5, v6}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    .line 1542
    :cond_c1
    const/16 v4, 0x116

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1550
    .end local v17           #deleted:Ljava/lang/Integer;
    .end local v27           #eventStatus:Ljava/lang/Integer;
    .end local v31           #isCanceled:Z
    .end local v33           #isDeleted:Z
    .end local v42           #originalAllDay:Z
    .end local v43           #originalTime:Ljava/lang/Long;
    :cond_d0
    if-eqz v10, :cond_272

    const-string v4, "sync_data1"

    :goto_d4
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1552
    .local v53, timeZoneName:Ljava/lang/String;
    if-nez v53, :cond_e4

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v53

    .line 1555
    :cond_e4
    invoke-static/range {v53 .. v53}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    .line 1557
    .local v28, eventTimeZone:Ljava/util/TimeZone;
    if-nez v34, :cond_f7

    .line 1560
    invoke-static/range {v28 .. v28}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v52

    .line 1561
    .local v52, timeZone:Ljava/lang/String;
    const/16 v4, 0x105

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1564
    .end local v52           #timeZone:Ljava/lang/String;
    :cond_f7
    const/16 v5, 0x106

    if-eqz v10, :cond_276

    const-string v4, "1"

    :goto_fd
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1567
    const-string v4, "dtstart"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v49

    .line 1571
    .local v49, startTime:J
    const-string v4, "dtend"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27a

    .line 1572
    const-string v4, "dtend"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 1586
    .local v22, endTime:J
    :goto_124
    if-eqz v10, :cond_13c

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v54, v0

    .line 1588
    .local v54, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, v49

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v49

    .line 1589
    move-wide/from16 v0, v22

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v22

    .line 1591
    .end local v54           #tz:Ljava/util/TimeZone;
    :cond_13c
    const/16 v4, 0x127

    invoke-static/range {v49 .. v50}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1592
    const/16 v4, 0x112

    invoke-static/range {v22 .. v23}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1594
    const/16 v4, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1597
    const-string v4, "eventLocation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1598
    .local v35, loc:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_186

    .line 1599
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpg-double v4, v4, v6

    if-gez v4, :cond_17d

    .line 1601
    invoke-static/range {v35 .. v35}, Lcom/android/emailcommon/utility/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1603
    :cond_17d
    const/16 v4, 0x117

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1605
    :cond_186
    const-string v4, "title"

    const/16 v5, 0x126

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1607
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2a1

    .line 1608
    const/16 v4, 0x44a

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1609
    const/16 v4, 0x446

    const-string v5, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1610
    const-string v4, "description"

    const/16 v5, 0x44b

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1617
    :goto_1b9
    if-nez v34, :cond_442

    .line 1619
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1c7

    if-nez v32, :cond_1d2

    .line 1620
    :cond_1c7
    const-string v4, "organizer"

    const/16 v5, 0x119

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1623
    :cond_1d2
    const-string v4, "rrule"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1624
    .local v47, rrule:Ljava/lang/String;
    if-eqz v47, :cond_1e5

    .line 1625
    move-object/from16 v0, v47

    move-wide/from16 v1, v49

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V

    .line 1629
    :cond_1e5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v51

    .line 1631
    .local v51, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/16 v21, -0x1

    .line 1632
    .local v21, earliestReminder:I
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1ef
    :goto_1ef
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e1

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/Entity$NamedContentValues;

    .line 1633
    .local v37, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v38, v0

    .line 1634
    .local v38, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v39, v0

    .line 1635
    .local v39, ncvValues:Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 1636
    const-string v4, "name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1638
    .local v44, propertyName:Ljava/lang/String;
    const-string v4, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1640
    .local v45, propertyValue:Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1ef

    .line 1643
    const-string v4, "categories"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 1646
    new-instance v48, Ljava/util/StringTokenizer;

    const-string v4, "\\"

    move-object/from16 v0, v48

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    .local v48, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v48 .. v48}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    if-lez v4, :cond_1ef

    .line 1649
    const/16 v4, 0x10e

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1650
    :goto_249
    invoke-virtual/range {v48 .. v48}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2ae

    .line 1651
    invoke-virtual/range {v48 .. v48}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1652
    .local v15, category:Ljava/lang/String;
    const/16 v4, 0x10f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_249

    .line 1498
    .end local v10           #allDay:Z
    .end local v15           #category:Ljava/lang/String;
    .end local v21           #earliestReminder:I
    .end local v22           #endTime:J
    .end local v28           #eventTimeZone:Ljava/util/TimeZone;
    .end local v29           #hasAttendees:Z
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v32           #isChange:Z
    .end local v34           #isException:Z
    .end local v35           #loc:Ljava/lang/String;
    .end local v37           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v38           #ncvUri:Landroid/net/Uri;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    .end local v44           #propertyName:Ljava/lang/String;
    .end local v45           #propertyValue:Ljava/lang/String;
    .end local v47           #rrule:Ljava/lang/String;
    .end local v48           #st:Ljava/util/StringTokenizer;
    .end local v49           #startTime:J
    .end local v51           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v53           #timeZoneName:Ljava/lang/String;
    .end local v55           #version:Ljava/lang/Double;
    :cond_25b
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 1511
    .restart local v10       #allDay:Z
    .restart local v17       #deleted:Ljava/lang/Integer;
    .restart local v29       #hasAttendees:Z
    .restart local v32       #isChange:Z
    .restart local v34       #isException:Z
    .restart local v55       #version:Ljava/lang/Double;
    :cond_25f
    const/16 v33, 0x0

    goto/16 :goto_37

    .line 1513
    .restart local v27       #eventStatus:Ljava/lang/Integer;
    .restart local v33       #isDeleted:Z
    :cond_263
    const/16 v31, 0x0

    goto/16 :goto_50

    .line 1528
    .restart local v31       #isCanceled:Z
    :cond_267
    const/16 v4, 0x115

    const-string v5, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_9d

    .line 1550
    .end local v17           #deleted:Ljava/lang/Integer;
    .end local v27           #eventStatus:Ljava/lang/Integer;
    .end local v31           #isCanceled:Z
    .end local v33           #isDeleted:Z
    :cond_272
    const-string v4, "eventTimezone"

    goto/16 :goto_d4

    .line 1564
    .restart local v28       #eventTimeZone:Ljava/util/TimeZone;
    .restart local v53       #timeZoneName:Ljava/lang/String;
    :cond_276
    const-string v4, "0"

    goto/16 :goto_fd

    .line 1574
    .restart local v49       #startTime:J
    :cond_27a
    const-wide/32 v19, 0x36ee80

    .line 1575
    .local v19, durationMillis:J
    const-string v4, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29d

    .line 1576
    new-instance v18, Lcom/android/exchange/utility/Duration;

    invoke-direct/range {v18 .. v18}, Lcom/android/exchange/utility/Duration;-><init>()V

    .line 1578
    .local v18, duration:Lcom/android/exchange/utility/Duration;
    :try_start_28c
    const-string v4, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/utility/Duration;->getMillis()J
    :try_end_29c
    .catch Ljava/text/ParseException; {:try_start_28c .. :try_end_29c} :catch_45f

    move-result-wide v19

    .line 1584
    .end local v18           #duration:Lcom/android/exchange/utility/Duration;
    :cond_29d
    :goto_29d
    add-long v22, v49, v19

    .restart local v22       #endTime:J
    goto/16 :goto_124

    .line 1614
    .end local v19           #durationMillis:J
    .restart local v35       #loc:Ljava/lang/String;
    :cond_2a1
    const-string v4, "description"

    const/16 v5, 0x10b

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    goto/16 :goto_1b9

    .line 1654
    .restart local v21       #earliestReminder:I
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v37       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v38       #ncvUri:Landroid/net/Uri;
    .restart local v39       #ncvValues:Landroid/content/ContentValues;
    .restart local v44       #propertyName:Ljava/lang/String;
    .restart local v45       #propertyValue:Ljava/lang/String;
    .restart local v47       #rrule:Ljava/lang/String;
    .restart local v48       #st:Ljava/util/StringTokenizer;
    .restart local v51       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_2ae
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_1ef

    .line 1657
    .end local v44           #propertyName:Ljava/lang/String;
    .end local v45           #propertyValue:Ljava/lang/String;
    .end local v48           #st:Ljava/util/StringTokenizer;
    :cond_2b3
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 1658
    const-string v4, "minutes"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    .line 1659
    .local v36, mins:Ljava/lang/Integer;
    if-eqz v36, :cond_1ef

    .line 1661
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_2d3

    .line 1662
    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 1665
    :cond_2d3
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_1ef

    .line 1666
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto/16 :goto_1ef

    .line 1673
    .end local v36           #mins:Ljava/lang/Integer;
    .end local v37           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v38           #ncvUri:Landroid/net/Uri;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    :cond_2e1
    if-ltz v21, :cond_2ee

    .line 1674
    const/16 v4, 0x124

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1679
    :cond_2ee
    if-eqz p2, :cond_2f9

    .line 1680
    const/16 v4, 0x128

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1684
    :cond_2f9
    const/16 v41, 0x0

    .line 1685
    .local v41, organizerName:Ljava/lang/String;
    const/16 v40, 0x0

    .line 1686
    .local v40, organizerEmail:Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_301
    :goto_301
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/Entity$NamedContentValues;

    .line 1687
    .restart local v37       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v38, v0

    .line 1688
    .restart local v38       #ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v39, v0

    .line 1689
    .restart local v39       #ncvValues:Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_301

    .line 1690
    const-string v4, "attendeeRelationship"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v46

    .line 1693
    .local v46, relationship:Ljava/lang/Integer;
    if-eqz v46, :cond_301

    const-string v4, "attendeeEmail"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_301

    .line 1695
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34f

    .line 1696
    const-string v4, "attendeeName"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1697
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1698
    goto :goto_301

    .line 1700
    :cond_34f
    if-nez v29, :cond_35a

    .line 1701
    const/16 v4, 0x107

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1702
    const/16 v29, 0x1

    .line 1704
    :cond_35a
    const/16 v4, 0x108

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1705
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1706
    .local v11, attendeeEmail:Ljava/lang/String;
    const-string v4, "attendeeName"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1707
    .local v12, attendeeName:Ljava/lang/String;
    if-nez v12, :cond_374

    .line 1708
    move-object v12, v11

    .line 1710
    :cond_374
    const/16 v4, 0x10a

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1711
    const/16 v4, 0x109

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1712
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_395

    .line 1713
    const/16 v4, 0x12a

    const-string v5, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1715
    :cond_395
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_301

    .line 1719
    .end local v11           #attendeeEmail:Ljava/lang/String;
    .end local v12           #attendeeName:Ljava/lang/String;
    .end local v37           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v38           #ncvUri:Landroid/net/Uri;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    .end local v46           #relationship:Ljava/lang/Integer;
    :cond_39a
    if-eqz v29, :cond_39f

    .line 1720
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1724
    :cond_39f
    const-string v4, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1725
    .restart local v25       #eventId:J
    const/4 v13, 0x1

    .line 1726
    .local v13, busyStatus:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "event_id=? AND attendeeEmail LIKE ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v57

    aput-object v57, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v57, v0

    aput-object v57, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1731
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_3ee

    .line 1733
    :try_start_3dc
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3eb

    .line 1734
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->busyStatusFromAttendeeStatus(I)I
    :try_end_3ea
    .catchall {:try_start_3dc .. :try_end_3ea} :catchall_443

    move-result v13

    .line 1738
    :cond_3eb
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1741
    :cond_3ee
    const/16 v4, 0x10d

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44b

    .line 1745
    const/16 v5, 0x118

    if-eqz v29, :cond_448

    const-string v4, "1"

    :goto_40b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1751
    :goto_410
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4028

    cmpl-double v4, v4, v6

    if-gez v4, :cond_41c

    if-nez v32, :cond_427

    :cond_41c
    if-eqz v41, :cond_427

    .line 1753
    const/16 v4, 0x11a

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1758
    :cond_427
    const-string v4, "accessLevel"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    .line 1759
    .local v56, visibility:Ljava/lang/Integer;
    if-eqz v56, :cond_455

    .line 1760
    const/16 v4, 0x125

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->decodeVisibility(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1766
    .end local v13           #busyStatus:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v21           #earliestReminder:I
    .end local v25           #eventId:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v40           #organizerEmail:Ljava/lang/String;
    .end local v41           #organizerName:Ljava/lang/String;
    .end local v47           #rrule:Ljava/lang/String;
    .end local v51           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v56           #visibility:Ljava/lang/Integer;
    :cond_442
    :goto_442
    return-void

    .line 1738
    .restart local v13       #busyStatus:I
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v21       #earliestReminder:I
    .restart local v25       #eventId:J
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v40       #organizerEmail:Ljava/lang/String;
    .restart local v41       #organizerName:Ljava/lang/String;
    .restart local v47       #rrule:Ljava/lang/String;
    .restart local v51       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :catchall_443
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1745
    :cond_448
    const-string v4, "0"

    goto :goto_40b

    .line 1747
    :cond_44b
    const/16 v4, 0x118

    const-string v5, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_410

    .line 1763
    .restart local v56       #visibility:Ljava/lang/Integer;
    :cond_455
    const/16 v4, 0x125

    const-string v5, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_442

    .line 1580
    .end local v13           #busyStatus:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v21           #earliestReminder:I
    .end local v22           #endTime:J
    .end local v25           #eventId:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v35           #loc:Ljava/lang/String;
    .end local v40           #organizerEmail:Ljava/lang/String;
    .end local v41           #organizerName:Ljava/lang/String;
    .end local v47           #rrule:Ljava/lang/String;
    .end local v51           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v56           #visibility:Ljava/lang/Integer;
    .restart local v18       #duration:Lcom/android/exchange/utility/Duration;
    .restart local v19       #durationMillis:J
    :catch_45f
    move-exception v4

    goto/16 :goto_29d
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    const-string v0, "Calendar"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 251
    :try_start_3
    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_46

    move-result-object v0

    .line 254
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_d
    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v4, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v4, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v1

    .line 258
    .local v1, data:[B
    if-eqz v1, :cond_22

    array-length v4, v1

    if-nez v4, :cond_2c

    .line 260
    :cond_22
    const-string v4, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 261
    const-string v3, "0"
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_49

    :try_start_2a
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_46

    .line 265
    :goto_2b
    return-object v3

    .line 263
    :cond_2c
    :try_start_2c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 264
    .local v3, syncKey:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "SyncKey retrieved as "

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v6, 0x2

    const-string v7, " from CalendarProvider"

    aput-object v7, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_44} :catch_49

    .line 265
    :try_start_44
    monitor-exit v5

    goto :goto_2b

    .line 270
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #data:[B
    .end local v3           #syncKey:Ljava/lang/String;
    :catchall_46
    move-exception v4

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_46

    throw v4

    .line 267
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_49
    move-exception v2

    .line 268
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4a
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from CalendarProvider"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_46
.end method

.method public isSyncable()Z
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.calendar"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    .line 224
    .local v0, p:Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 59
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1785
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1787
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1788
    const/4 v5, 0x0

    .line 2172
    :goto_13
    return v5

    .line 1794
    :cond_14
    :try_start_14
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v45, orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "dirty=1 AND original_id NOTNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_80

    move-result-object v16

    .line 1798
    .local v16, c:Landroid/database/Cursor;
    :try_start_28
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1801
    .local v21, cv:Landroid/content/ContentValues;
    const-string v5, "sync_data8"

    const-string v6, "1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    :cond_36
    :goto_36
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1804
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1805
    .local v46, parentId:J
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v10, v7, v9

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1812
    .local v19, cnt:I
    if-nez v19, :cond_36

    .line 1813
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_28 .. :try_end_7a} :catchall_7b

    goto :goto_36

    .line 1817
    .end local v19           #cnt:I
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v46           #parentId:J
    :catchall_7b
    move-exception v5

    :try_start_7c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_80} :catch_80

    .line 2168
    .end local v16           #c:Landroid/database/Cursor;
    .end local v45           #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_80
    move-exception v22

    .line 2169
    .local v22, e:Landroid/os/RemoteException;
    const-string v5, "EasCalendarSyncAdapter"

    const-string v6, "Could not read dirty events."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    .end local v22           #e:Landroid/os/RemoteException;
    :goto_88
    const/4 v5, 0x0

    goto :goto_13

    .line 1817
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v21       #cv:Landroid/content/ContentValues;
    .restart local v45       #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8a
    :try_start_8a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1821
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, i$:Ljava/util/Iterator;
    :goto_91
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    .line 1822
    .local v43, orphan:J
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EasCalendarSyncAdapter"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted orphaned exception: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v43

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1823
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v43

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_91

    .line 1827
    .end local v43           #orphan:J
    :cond_de
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clear()V

    .line 1831
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "(dirty=1 OR sync_data8= 1) AND original_id ISNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v27

    .line 1835
    .local v27, eventIterator:Landroid/content/EntityIterator;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_102} :catch_80

    .line 1838
    .local v17, cidValues:Landroid/content/ContentValues;
    const/16 v34, 0x1

    .line 1839
    .local v34, first:Z
    :cond_104
    :goto_104
    :try_start_104
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6af

    .line 1840
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Entity;

    .line 1843
    .local v23, entity:Landroid/content/Entity;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 1844
    .local v24, entityValues:Landroid/content/ContentValues;
    const-string v5, "_sync_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1849
    .local v50, serverId:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_124
    :goto_124
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_177

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 1850
    .local v38, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 1851
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v39, v0

    .line 1852
    .local v39, ncvValues:Landroid/content/ContentValues;
    const-string v5, "name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "upsyncProhibited"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 1854
    const-string v5, "1"

    const-string v6, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 1856
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    const-string v6, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_171
    .catchall {:try_start_104 .. :try_end_171} :catchall_172

    goto :goto_124

    .line 2166
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v23           #entity:Landroid/content/Entity;
    .end local v24           #entityValues:Landroid/content/ContentValues;
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    .end local v50           #serverId:Ljava/lang/String;
    :catchall_172
    move-exception v5

    :try_start_173
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V

    throw v5
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_177} :catch_80

    .line 1864
    .restart local v21       #cv:Landroid/content/ContentValues;
    .restart local v23       #entity:Landroid/content/Entity;
    .restart local v24       #entityValues:Landroid/content/ContentValues;
    .restart local v50       #serverId:Ljava/lang/String;
    :cond_177
    :try_start_177
    const-string v5, "sync_data2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1865
    .local v18, clientId:Ljava/lang/String;
    if-nez v18, :cond_189

    .line 1866
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1871
    :cond_189
    const-string v5, "organizer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1872
    .local v41, organizerEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    .line 1874
    .local v49, selfOrganizer:Z
    const-string v5, "dtstart"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    const-string v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b9

    const-string v5, "dtend"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    :cond_1b9
    if-eqz v41, :cond_104

    .line 1881
    if-eqz v34, :cond_1d3

    .line 1882
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1883
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Sending Calendar changes to the server"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1884
    const/16 v34, 0x0

    .line 1886
    :cond_1d3
    const-string v5, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1887
    .local v25, eventId:J
    if-nez v50, :cond_2cc

    .line 1889
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Creating new event with clientId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v18, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1890
    const/4 v5, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1892
    const-string v5, "sync_data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string v5, "sync_data4"

    const-string v6, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1938
    :goto_22a
    const/16 v5, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1940
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1943
    if-eqz v50, :cond_451

    .line 1944
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "original_sync_id=? AND calendar_id=?"

    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v50, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v32

    .line 1950
    .local v32, exIterator:Landroid/content/EntityIterator;
    const/16 v31, 0x1

    .line 1951
    .local v31, exFirst:Z
    :goto_265
    invoke-interface/range {v32 .. v32}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44c

    .line 1952
    invoke-interface/range {v32 .. v32}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Entity;

    .line 1953
    .local v28, exEntity:Landroid/content/Entity;
    if-eqz v31, :cond_27c

    .line 1954
    const/16 v5, 0x114

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1955
    const/16 v31, 0x0

    .line 1957
    :cond_27c
    const/16 v5, 0x113

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1958
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1959
    invoke-virtual/range {v28 .. v28}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v33

    .line 1960
    .local v33, exValues:Landroid/content/ContentValues;
    const-string v5, "dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_444

    .line 1963
    const-string v5, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 1968
    .local v29, exEventId:J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_2b2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 1969
    .restart local v38       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v0, v38

    iget-object v6, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_2b2

    .line 1900
    .end local v28           #exEntity:Landroid/content/Entity;
    .end local v29           #exEventId:J
    .end local v31           #exFirst:Z
    .end local v32           #exIterator:Landroid/content/EntityIterator;
    .end local v33           #exValues:Landroid/content/ContentValues;
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_2cc
    const-string v5, "deleted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_323

    .line 1901
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting event with serverId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v50, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1902
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v50

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1903
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    if-eqz v49, :cond_318

    .line 1905
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_104

    .line 1907
    :cond_318
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_104

    .line 1911
    :cond_323
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upsync change to event with serverId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1913
    const-string v5, "sync_data4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1916
    .local v56, version:Ljava/lang/String;
    if-nez v56, :cond_38b

    .line 1917
    const-string v56, "0"

    .line 1928
    :goto_34f
    const-string v5, "sync_data4"

    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string v5, "sync_data4"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1936
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v50

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_389
    .catchall {:try_start_177 .. :try_end_389} :catchall_172

    goto/16 :goto_22a

    .line 1921
    :cond_38b
    :try_start_38b
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_394
    .catchall {:try_start_38b .. :try_end_394} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_394} :catch_396

    move-result-object v56

    goto :goto_34f

    .line 1922
    :catch_396
    move-exception v22

    .line 1925
    .local v22, e:Ljava/lang/Exception;
    :try_start_397
    const-string v56, "0"

    goto :goto_34f

    .line 1972
    .end local v22           #e:Ljava/lang/Exception;
    .end local v56           #version:Ljava/lang/String;
    .restart local v28       #exEntity:Landroid/content/Entity;
    .restart local v29       #exEventId:J
    .restart local v31       #exFirst:Z
    .restart local v32       #exIterator:Landroid/content/EntityIterator;
    .restart local v33       #exValues:Landroid/content/ContentValues;
    :cond_39a
    const-string v5, "deleted"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3b4

    const-string v5, "eventStatus"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_449

    .line 1975
    :cond_3b4
    const/16 v35, 0x20

    .line 1976
    .local v35, flag:I
    if-nez v49, :cond_3d0

    .line 1981
    const-string v5, "organizer"

    const-string v6, "organizer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 1990
    :cond_3d0
    :goto_3d0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    const-string v5, "sync_data4"

    const-string v6, "sync_data4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v5, "eventLocation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_403

    .line 1997
    const-string v5, "eventLocation"

    const-string v6, "eventLocation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    :cond_403
    if-eqz v49, :cond_444

    .line 2002
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, v28

    move/from16 v1, v35

    move-object/from16 v2, v18

    invoke-static {v5, v0, v1, v2, v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2005
    .local v37, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v37, :cond_444

    .line 2006
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing exception update to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    .end local v29           #exEventId:J
    .end local v35           #flag:I
    .end local v37           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_444
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_265

    .line 1986
    .restart local v29       #exEventId:J
    :cond_449
    const/16 v35, 0x10

    .restart local v35       #flag:I
    goto :goto_3d0

    .line 2013
    .end local v28           #exEntity:Landroid/content/Entity;
    .end local v29           #exEventId:J
    .end local v33           #exValues:Landroid/content/ContentValues;
    .end local v35           #flag:I
    :cond_44c
    if-nez v31, :cond_451

    .line 2014
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2018
    .end local v31           #exFirst:Z
    .end local v32           #exIterator:Landroid/content/EntityIterator;
    :cond_451
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2019
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    const/4 v13, 0x0

    .line 2024
    .local v13, attendeeString:Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 2025
    .local v14, attendeeStringId:J
    const/16 v53, 0x0

    .line 2026
    .local v53, userAttendeeStatus:Ljava/lang/String;
    const-wide/16 v54, -0x1

    .line 2027
    .local v54, userAttendeeStatusId:J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_472
    :goto_472
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d6

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 2028
    .restart local v38       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_472

    .line 2029
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v39, v0

    .line 2030
    .restart local v39       #ncvValues:Landroid/content/ContentValues;
    const-string v5, "name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2032
    .local v48, propertyName:Ljava/lang/String;
    const-string v5, "attendees"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b7

    .line 2033
    const-string v5, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2035
    const-string v5, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_472

    .line 2037
    :cond_4b7
    const-string v5, "userAttendeeStatus"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_472

    .line 2039
    const-string v5, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2041
    const-string v5, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    goto :goto_472

    .line 2050
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    .end local v48           #propertyName:Ljava/lang/String;
    :cond_4d6
    if-eqz v49, :cond_616

    const-string v5, "dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_616

    .line 2052
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v8, 0x10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v6, v25

    move-object/from16 v9, v18

    invoke-static/range {v5 .. v10}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2056
    .restart local v37       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v37, :cond_516

    .line 2057
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Queueing invitation to "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    :cond_516
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 2062
    .local v42, originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_536

    .line 2063
    new-instance v51, Ljava/util/StringTokenizer;

    const-string v5, "\\"

    move-object/from16 v0, v51

    invoke-direct {v0, v13, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    .local v51, st:Ljava/util/StringTokenizer;
    :goto_526
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_536

    .line 2066
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_526

    .line 2069
    .end local v51           #st:Ljava/util/StringTokenizer;
    :cond_536
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 2072
    .local v40, newTokenizedAttendees:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_543
    :goto_543
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_577

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 2073
    .restart local v38       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_543

    .line 2074
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v6, "attendeeEmail"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2077
    .local v12, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2078
    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    const-string v5, "\\"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_543

    .line 2085
    .end local v12           #attendeeEmail:Ljava/lang/String;
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_577
    new-instance v21, Landroid/content/ContentValues;

    .end local v21           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2086
    .restart local v21       #cv:Landroid/content/ContentValues;
    const-string v5, "value"

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    if-eqz v13, :cond_5f0

    .line 2088
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2101
    :goto_5a0
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_5a4
    :goto_5a4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_104

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2103
    .local v11, removedAttendee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v6, v25

    move-object/from16 v9, v18

    invoke-static/range {v5 .. v11}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2106
    if-eqz v37, :cond_5a4

    .line 2108
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing cancellation to removed attendee "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a4

    .line 2094
    .end local v11           #removedAttendee:Ljava/lang/String;
    :cond_5f0
    const-string v5, "name"

    const-string v6, "attendees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string v5, "event_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2096
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5a0

    .line 2112
    .end local v37           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v40           #newTokenizedAttendees:Ljava/lang/StringBuilder;
    .end local v42           #originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_616
    if-nez v49, :cond_104

    .line 2116
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_623
    .catchall {:try_start_397 .. :try_end_623} :catchall_172

    move-result v20

    .line 2117
    .local v20, currentStatus:I
    const/16 v52, 0x0

    .line 2118
    .local v52, syncStatus:I
    if-eqz v53, :cond_62c

    .line 2120
    :try_start_628
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_62b
    .catchall {:try_start_628 .. :try_end_62b} :catchall_172
    .catch Ljava/lang/NumberFormatException; {:try_start_628 .. :try_end_62b} :catch_6b9

    move-result v52

    .line 2125
    :cond_62c
    :goto_62c
    move/from16 v0, v20

    move/from16 v1, v52

    if-eq v0, v1, :cond_104

    if-eqz v20, :cond_104

    .line 2128
    const/4 v8, 0x0

    .line 2129
    .local v8, messageFlag:I
    packed-switch v20, :pswitch_data_6bc

    .line 2141
    :goto_638
    :pswitch_638
    if-eqz v8, :cond_104

    const-wide/16 v5, 0x0

    cmp-long v5, v54, v5

    if-ltz v5, :cond_104

    .line 2143
    :try_start_640
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 2144
    const-string v5, "value"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v54

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v6, v25

    move-object/from16 v9, v18

    invoke-static/range {v5 .. v10}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2154
    .restart local v37       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v37, :cond_104

    .line 2155
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing invitation reply to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_104

    .line 2131
    .end local v37           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :pswitch_6a6
    const/16 v8, 0x40

    .line 2132
    goto :goto_638

    .line 2134
    :pswitch_6a9
    const/16 v8, 0x80

    .line 2135
    goto :goto_638

    .line 2137
    :pswitch_6ac
    const/16 v8, 0x100

    goto :goto_638

    .line 2162
    .end local v8           #messageFlag:I
    .end local v13           #attendeeString:Ljava/lang/String;
    .end local v14           #attendeeStringId:J
    .end local v18           #clientId:Ljava/lang/String;
    .end local v20           #currentStatus:I
    .end local v23           #entity:Landroid/content/Entity;
    .end local v24           #entityValues:Landroid/content/ContentValues;
    .end local v25           #eventId:J
    .end local v41           #organizerEmail:Ljava/lang/String;
    .end local v49           #selfOrganizer:Z
    .end local v50           #serverId:Ljava/lang/String;
    .end local v52           #syncStatus:I
    .end local v53           #userAttendeeStatus:Ljava/lang/String;
    .end local v54           #userAttendeeStatusId:J
    :cond_6af
    if-nez v34, :cond_6b4

    .line 2163
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_6b4
    .catchall {:try_start_640 .. :try_end_6b4} :catchall_172

    .line 2166
    :cond_6b4
    :try_start_6b4
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V
    :try_end_6b7
    .catch Landroid/os/RemoteException; {:try_start_6b4 .. :try_end_6b7} :catch_80

    goto/16 :goto_88

    .line 2121
    .restart local v13       #attendeeString:Ljava/lang/String;
    .restart local v14       #attendeeStringId:J
    .restart local v18       #clientId:Ljava/lang/String;
    .restart local v20       #currentStatus:I
    .restart local v23       #entity:Landroid/content/Entity;
    .restart local v24       #entityValues:Landroid/content/ContentValues;
    .restart local v25       #eventId:J
    .restart local v41       #organizerEmail:Ljava/lang/String;
    .restart local v49       #selfOrganizer:Z
    .restart local v50       #serverId:Ljava/lang/String;
    .restart local v52       #syncStatus:I
    .restart local v53       #userAttendeeStatus:Ljava/lang/String;
    .restart local v54       #userAttendeeStatusId:J
    :catch_6b9
    move-exception v5

    goto/16 :goto_62c

    .line 2129
    :pswitch_data_6bc
    .packed-switch 0x1
        :pswitch_6a6
        :pswitch_6a9
        :pswitch_638
        :pswitch_6ac
    .end packed-switch
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .registers 4
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, Lcom/android/exchange/Eas;->FILTER_2_WEEKS:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 213
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .registers 9
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    sget-object v3, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :try_start_3
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_3d

    .line 281
    :cond_d
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_4c

    move-result-object v0

    .line 284
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_17
    sget-object v2, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v2, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 289
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v4, 0x2

    const-string v5, " in CalendarProvider"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_4c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3d} :catch_43

    .line 294
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 295
    monitor-exit v3

    .line 296
    return-void

    .line 290
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_43
    move-exception v1

    .line 291
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in CalendarProvider"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_4c
    move-exception v2

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public wipe()V
    .registers 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-static {v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 208
    return-void
.end method
