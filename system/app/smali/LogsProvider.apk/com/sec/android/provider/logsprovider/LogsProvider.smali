.class public Lcom/sec/android/provider/logsprovider/LogsProvider;
.super Landroid/content/ContentProvider;
.source "LogsProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

.field private static final SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final sDurationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLogsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSevenAccountType:[Ljava/lang/String;

.field private static final sSnsAccountType:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

.field private mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    const-class v0, Lcom/sec/android/provider/logsprovider/LogsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4a9

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    .line 338
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 340
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys/#"

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys/filter"

    invoke-virtual {v0, v3, v4, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call"

    const/16 v5, 0x14

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "allcalls"

    const/16 v5, 0x16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/#"

    invoke-virtual {v0, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/frequent"

    const/16 v5, 0xf

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/del"

    const/16 v5, 0x1a

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/search_log"

    const/16 v5, 0x1f

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const/16 v5, 0x9

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const/4 v5, 0x7

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "email"

    const/16 v5, 0xb

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "email_seven"

    const/16 v5, 0x13

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "video_call"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "voip"

    const/16 v5, 0xe

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "chaton_voip"

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "chaton_vt"

    const/16 v5, 0x25

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "sns"

    const/16 v5, 0x15

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "im"

    const/16 v5, 0x17

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "search_log"

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const/16 v5, 0x19

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "duration"

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "addcall"

    const/16 v5, 0x23

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    .line 376
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "number"

    const-string v4, "number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "duration"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "new"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "name_reversed"

    const-string v4, "name_reversed"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "numbertype"

    const-string v4, "numbertype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "numberlabel"

    const-string v4, "numberlabel"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "voicemail_uri"

    const-string v4, "voicemail_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "is_read"

    const-string v4, "is_read"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "countryiso"

    const-string v4, "countryiso"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "lookup_uri"

    const-string v4, "lookup_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "matched_number"

    const-string v4, "matched_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "normalized_number"

    const-string v4, "normalized_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "photo_id"

    const-string v4, "photo_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "formatted_number"

    const-string v4, "formatted_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "logtype"

    const-string v4, "logtype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "frequent"

    const-string v4, "frequent"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "contactid"

    const-string v4, "contactid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "raw_contact_id"

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_subject"

    const-string v4, "m_subject"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_content"

    const-string v4, "m_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_tid"

    const-string v4, "sns_tid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sp_type"

    const-string v4, "sp_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_pkey"

    const-string v4, "sns_pkey"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_receiver_count"

    const-string v4, "sns_receiver_count"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cnap_name"

    const-string v4, "cnap_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cdnip_number"

    const-string v4, "cdnip_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "service_type"

    const-string v4, "service_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "country_code"

    const-string v4, "country_code"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cityid"

    const-string v4, "cityid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "fname"

    const-string v4, "fname"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "lname"

    const-string v4, "lname"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "bname"

    const-string v4, "bname"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    .line 422
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "logs._id AS _id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "number"

    const-string v4, "number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "duration"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "new"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "name_reversed"

    const-string v4, "name_reversed"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "numbertype"

    const-string v4, "numbertype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "numberlabel"

    const-string v4, "numberlabel"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "voicemail_uri"

    const-string v4, "voicemail_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "is_read"

    const-string v4, "is_read"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "countryiso"

    const-string v4, "countryiso"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "lookup_uri"

    const-string v4, "lookup_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "matched_number"

    const-string v4, "matched_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "normalized_number"

    const-string v4, "normalized_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "photo_id"

    const-string v4, "photo_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "formatted_number"

    const-string v4, "formatted_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "logtype"

    const-string v4, "logtype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "frequent"

    const-string v4, "frequent"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "contactid"

    const-string v4, "contactid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "raw_contact_id"

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_subject"

    const-string v4, "m_subject"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_content"

    const-string v4, "m_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_tid"

    const-string v4, "sns_tid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "sp_type"

    const-string v4, "sp_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "receiver_id"

    const-string v4, "receiver_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "receiver_name"

    const-string v4, "receiver_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    .line 462
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_voice"

    const-string v4, "last_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_video"

    const-string v4, "last_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_voip"

    const-string v4, "last_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_chaton_voip"

    const-string v4, "last_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_chaton_vt"

    const-string v4, "last_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_voice"

    const-string v4, "dial_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_video"

    const-string v4, "dial_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_voip"

    const-string v4, "dial_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_chaton_voip"

    const-string v4, "dial_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_chaton_vt"

    const-string v4, "dial_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_voice"

    const-string v4, "rece_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_video"

    const-string v4, "rece_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_voip"

    const-string v4, "rece_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_chaton_voip"

    const-string v4, "rece_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_chaton_vt"

    const-string v4, "rece_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_voice"

    const-string v4, "all_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_video"

    const-string v4, "all_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_voip"

    const-string v4, "all_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_chaton_voip"

    const-string v4, "all_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_chaton_vt"

    const-string v4, "all_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "reset_date"

    const-string v4, "reset_date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    aput-object v3, v0, v2

    const-string v3, "com.sec.android.app.snsaccountmyspace.account_type"

    aput-object v3, v0, v1

    const-string v3, "com.sec.android.app.snsaccounttwitter.account_type"

    aput-object v3, v0, v6

    const-string v3, "com.sec.android.app.snsaccountkaixin.account_type"

    aput-object v3, v0, v7

    const-string v3, "com.sec.android.app.snsaccountrenren.account_type"

    aput-object v3, v0, v8

    const/4 v3, 0x5

    const-string v4, "com.sec.android.app.snsaccountqzone.account_type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    .line 545
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "com.seven.Z7.msn"

    aput-object v3, v0, v2

    const-string v2, "com.seven.Z7.yahoo"

    aput-object v2, v0, v1

    const-string v1, "com.seven.Z7"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    return-void

    :cond_4a9
    move v0, v2

    .line 64
    goto/16 :goto_16
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 82
    return-void
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1681
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1688
    .end local p1
    :goto_6
    return-object p1

    .line 1684
    .restart local p1
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p1, p0

    .line 1685
    goto :goto_6

    .line 1688
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method public static updateFrequentContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 17
    .parameter "cr"
    .parameter "values"
    .parameter "number"

    .prologue
    .line 1694
    const-wide/16 v7, 0x0

    .line 1695
    .local v7, ciPerson_id:J
    const/4 v6, 0x0

    .line 1696
    .local v6, ciNormalizedNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1697
    .local v9, ciPhoneNumber:Ljava/lang/String;
    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1698
    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1699
    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1701
    :cond_1b
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1702
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1703
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1705
    :cond_2e
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1706
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1707
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1709
    :cond_41
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_9f

    .line 1718
    if-eqz v6, :cond_a0

    .line 1719
    move-object v12, v6

    .line 1720
    .local v12, normalizedPhoneNumber:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "contact_id =? AND data4 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v12, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1734
    .end local v12           #normalizedPhoneNumber:Ljava/lang/String;
    .local v10, cursor:Landroid/database/Cursor;
    :goto_69
    if-eqz v10, :cond_9f

    .line 1736
    :try_start_6b
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9c

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1737
    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 1742
    .local v11, feedbackUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v11, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_6b .. :try_end_9c} :catchall_c6

    .line 1745
    .end local v11           #feedbackUri:Landroid/net/Uri;
    :cond_9c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1749
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_9f
    return-object p1

    .line 1726
    :cond_a0
    if-eqz v9, :cond_c3

    move-object v13, v9

    .line 1727
    .local v13, phoneNumber:Ljava/lang/String;
    :goto_a3
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "contact_id =? AND data1 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v13, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .restart local v10       #cursor:Landroid/database/Cursor;
    goto :goto_69

    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #phoneNumber:Ljava/lang/String;
    :cond_c3
    move-object/from16 v13, p2

    .line 1726
    goto :goto_a3

    .line 1745
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_c6
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 1907
    const-string v0, "content://com.android.contacts/data/email_im/lookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1914
    if-eqz v10, :cond_15a

    .line 1915
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_129

    .line 1916
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1917
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1918
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1920
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1921
    if-eqz v0, :cond_eb

    .line 1922
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a7

    .line 1923
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1924
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1925
    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1927
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v8, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v6, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1930
    if-eqz v1, :cond_a0

    .line 1931
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9d

    .line 1932
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1933
    const-string v2, "raw_contact_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1935
    :cond_9d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_a0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1938
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1996
    :cond_a6
    :goto_a6
    return-object p1

    .line 1941
    :cond_a7
    const-string v1, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1942
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 1943
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1945
    :cond_bd
    const-string v1, "numberlabel"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1946
    const-string v1, "numberlabel"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1948
    :cond_ca
    const-string v1, "numbertype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1949
    const-string v1, "numbertype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1951
    :cond_d7
    const-string v1, "raw_contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 1952
    const-string v1, "raw_contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1955
    :cond_e4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1983
    :cond_e7
    :goto_e7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_a6

    .line 1957
    :cond_eb
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1958
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1959
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1961
    :cond_101
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1962
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1964
    :cond_10e
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 1965
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1967
    :cond_11b
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1968
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_e7

    .line 1972
    :cond_129
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1973
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 1974
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1976
    :cond_13f
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 1977
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1979
    :cond_14c
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1980
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_e7

    .line 1986
    :cond_15a
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1987
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1988
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1990
    :cond_170
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 1991
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1993
    :cond_17d
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1994
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_a6
.end method

.method public static updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 15
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1755
    const/4 v7, 0x0

    .line 1757
    .local v7, phonesCursor:Landroid/database/Cursor;
    :try_start_4
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_98

    move-result-object v7

    .line 1764
    :goto_18
    if-eqz v7, :cond_cb

    .line 1765
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b4

    .line 1766
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1767
    const-string v0, "contactid"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1768
    const-string v0, "name"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    const-string v0, "numberlabel"

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v0, "numbertype"

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1772
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1775
    .local v8, rawCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_94

    .line 1776
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_91

    .line 1777
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1778
    const-string v0, "raw_contact_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1780
    :cond_91
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1788
    .end local v8           #rawCursor:Landroid/database/Cursor;
    :cond_94
    :goto_94
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1795
    :cond_97
    :goto_97
    return-object p1

    .line 1759
    :catch_98
    move-exception v6

    .line 1760
    .local v6, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 1761
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLogInfoWithNumber -> phonesCursor Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1783
    .end local v6           #e:Ljava/lang/Exception;
    :cond_b4
    const-string v0, "contactid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1784
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1785
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_94

    .line 1791
    :cond_cb
    const-string v0, "contactid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1792
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1793
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_97
.end method

.method public static updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 24
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 1802
    const/16 v19, 0x0

    .line 1804
    .local v19, phonesCursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_b5

    move-result-object v19

    .line 1811
    :goto_17
    if-eqz v19, :cond_d5

    .line 1812
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d2

    .line 1813
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1814
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1815
    .local v13, id:J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1816
    .local v17, name:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1817
    .local v18, numberType:I
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1819
    .local v15, label:Ljava/lang/String;
    const-string v2, "contactid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1820
    const-string v2, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v2, "numberlabel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v2, "numbertype"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1823
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1826
    .local v20, rawCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_b1

    .line 1827
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_ae

    .line 1828
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1829
    const-string v2, "raw_contact_id"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1831
    :cond_ae
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1833
    :cond_b1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1901
    .end local v13           #id:J
    .end local v15           #label:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #numberType:I
    .end local v20           #rawCursor:Landroid/database/Cursor;
    :cond_b4
    :goto_b4
    return-object p1

    .line 1806
    :catch_b5
    move-exception v11

    .line 1807
    .local v11, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    .line 1808
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLogInfoWithNumberAndEmail -> phonesCursor Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1836
    .end local v11           #e:Ljava/lang/Exception;
    :cond_d2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1839
    :cond_d5
    const/4 v12, 0x0

    .line 1841
    .local v12, emailCursor:Landroid/database/Cursor;
    :try_start_d6
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_ea} :catch_18a

    move-result-object v12

    .line 1848
    :goto_eb
    if-eqz v12, :cond_207

    .line 1849
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1e9

    .line 1850
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1851
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1852
    .restart local v13       #id:J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1853
    .local v16, lookupkey:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v13, v14, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1854
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1855
    .local v10, c2:Landroid/database/Cursor;
    if-eqz v10, :cond_1cb

    .line 1856
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1a6

    .line 1857
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1858
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1859
    .restart local v17       #name:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v2, "contactid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1862
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data1=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1865
    .restart local v20       #rawCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_182

    .line 1866
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_17f

    .line 1867
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1868
    const-string v2, "raw_contact_id"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1870
    :cond_17f
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1872
    :cond_182
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1873
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b4

    .line 1843
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v13           #id:J
    .end local v16           #lookupkey:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v20           #rawCursor:Landroid/database/Cursor;
    :catch_18a
    move-exception v11

    .line 1844
    .restart local v11       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 1845
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLogInfoWithNumberAndEmail -> emailCursor Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_eb

    .line 1876
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v10       #c2:Landroid/database/Cursor;
    .restart local v13       #id:J
    .restart local v16       #lookupkey:Ljava/lang/String;
    :cond_1a6
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    .line 1878
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1881
    :cond_1c3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1894
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v13           #id:J
    .end local v16           #lookupkey:Ljava/lang/String;
    :cond_1c6
    :goto_1c6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b4

    .line 1883
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v10       #c2:Landroid/database/Cursor;
    .restart local v13       #id:J
    .restart local v16       #lookupkey:Ljava/lang/String;
    :cond_1cb
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1884
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 1885
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1c6

    .line 1889
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v13           #id:J
    .end local v16           #lookupkey:Ljava/lang/String;
    :cond_1e9
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1890
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 1891
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1c6

    .line 1897
    :cond_207
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1898
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1899
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_b4
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 14
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1315
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1316
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1318
    .local v3, matchedUriId:I
    const/4 v4, 0x0

    .line 1319
    .local v4, nValue_length:I
    array-length v4, p2

    .line 1320
    sparse-switch v3, :sswitch_data_1d8

    .line 1436
    const/4 v7, -0x1

    :goto_12
    return v7

    .line 1322
    :sswitch_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1324
    const-wide/16 v5, 0x0

    .line 1325
    .local v5, rowId:J
    :try_start_18
    array-length v7, p2

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_1f

    .line 1326
    const/16 v4, 0x1f4

    .line 1327
    :cond_1f
    const/4 v1, 0x0

    .local v1, index:I
    :goto_20
    if-ge v1, v4, :cond_177

    .line 1328
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1329
    .local v2, logType:I
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 1330
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_15f

    .line 1331
    const/4 v7, -0x1

    .line 1402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12

    .line 1333
    :cond_44
    const/16 v7, 0x64

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x190

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x258

    if-eq v2, v7, :cond_7c

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x2bc

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x320

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x384

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x3e8

    if-eq v2, v7, :cond_7c

    .line 1346
    :try_start_70
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_15f

    .line 1347
    const/4 v7, -0x1

    .line 1402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12

    .line 1350
    :cond_7c
    const/16 v7, 0x64

    if-eq v2, v7, :cond_94

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_94

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_94

    const/16 v7, 0x320

    if-eq v2, v7, :cond_94

    const/16 v7, 0x384

    if-eq v2, v7, :cond_94

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_e9

    .line 1363
    :cond_94
    :try_start_94
    aget-object v7, p2, v1

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ab

    .line 1364
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'duration\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_94 .. :try_end_a5} :catchall_15f

    .line 1365
    const/4 v7, -0x1

    .line 1402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_12

    .line 1367
    :cond_ab
    :try_start_ab
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c1

    .line 1368
    aget-object v7, p2, v1

    const-string v8, "new"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    :cond_c1
    aget-object v7, p2, v1

    const-string v8, "frequent"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1398
    :goto_dc
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1327
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 1373
    :cond_e9
    const/16 v7, 0x190

    if-eq v2, v7, :cond_fd

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_fd

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_fd

    const/16 v7, 0x258

    if-eq v2, v7, :cond_fd

    const/16 v7, 0x2bc

    if-ne v2, v7, :cond_16e

    .line 1376
    :cond_fd
    aget-object v7, p2, v1

    const-string v8, "messageid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_114

    .line 1377
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'messageid\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catchall {:try_start_ab .. :try_end_10e} :catchall_15f

    .line 1378
    const/4 v7, -0x1

    .line 1402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_12

    .line 1380
    :cond_114
    :try_start_114
    aget-object v7, p2, v1

    const-string v8, "sp_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12b

    .line 1381
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "insert \'sp_type\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_114 .. :try_end_125} :catchall_15f

    .line 1382
    const/4 v7, -0x1

    .line 1402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_12

    .line 1384
    :cond_12b
    const/16 v7, 0x190

    if-ne v2, v7, :cond_164

    .line 1385
    :try_start_12f
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_142

    .line 1386
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_142
    :goto_142
    aget-object v7, p2, v1

    const-string v8, "duration"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_15d
    .catchall {:try_start_12f .. :try_end_15d} :catchall_15f

    goto/16 :goto_dc

    .line 1402
    .end local v1           #index:I
    .end local v2           #logType:I
    :catchall_15f
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1389
    .restart local v1       #index:I
    .restart local v2       #logType:I
    :cond_164
    :try_start_164
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_142

    .line 1395
    :cond_16e
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dc

    .line 1400
    .end local v2           #logType:I
    :cond_177
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17a
    .catchall {:try_start_164 .. :try_end_17a} :catchall_15f

    .line 1402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1404
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1405
    array-length v7, p2

    goto/16 :goto_12

    .line 1407
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_183
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_18a

    .line 1408
    const/16 v4, 0xbb8

    .line 1409
    :cond_18a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1411
    const-wide/16 v5, 0x0

    .line 1412
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_190
    if-ge v1, v4, :cond_19e

    .line 1413
    :try_start_192
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_190

    .line 1415
    :cond_19e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a1
    .catchall {:try_start_192 .. :try_end_1a1} :catchall_1aa

    .line 1417
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1419
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1420
    array-length v7, p2

    goto/16 :goto_12

    .line 1417
    :catchall_1aa
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1422
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_1af
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_1b6

    .line 1423
    const/16 v4, 0xbb8

    .line 1424
    :cond_1b6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1426
    const-wide/16 v5, 0x0

    .line 1427
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_1bc
    if-ge v1, v4, :cond_1ca

    .line 1428
    :try_start_1be
    const-string v7, "sns_msg_receiver_map"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bc

    .line 1430
    :cond_1ca
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1cd
    .catchall {:try_start_1be .. :try_end_1cd} :catchall_1d3

    .line 1432
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1434
    array-length v7, p2

    goto/16 :goto_12

    .line 1432
    :catchall_1d3
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1320
    :sswitch_data_1d8
    .sparse-switch
        0x1 -> :sswitch_13
        0x15 -> :sswitch_183
        0x20 -> :sswitch_1af
    .end sparse-switch
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 527
    invoke-static {p1}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 19
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1510
    iget-object v12, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v12}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1511
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 1512
    .local v5, match:I
    const/4 v3, 0x0

    .line 1513
    .local v3, count:I
    const-wide/16 v6, 0x0

    .line 1514
    .local v6, t:J
    const-wide/16 v8, 0x0

    .line 1515
    .local v8, t2:J
    const-string v2, " (logtype=500 OR logtype=800 OR logtype=100 OR logtype=110 OR logtype=900 OR logtype=1000 OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')) OR logtype=300)"

    .line 1523
    .local v2, addedSelection:Ljava/lang/String;
    sparse-switch v5, :sswitch_data_286

    .line 1662
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot delete that URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1525
    :sswitch_33
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1526
    .local v10, where:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1528
    :try_start_3c
    const-string v12, "logs"

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1529
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_53

    .line 1531
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1664
    .end local v10           #where:Ljava/lang/String;
    :goto_4a
    if-lez v3, :cond_52

    .line 1665
    sparse-switch v5, :sswitch_data_2ac

    .line 1675
    :goto_4f
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1677
    :cond_52
    return v3

    .line 1531
    .restart local v10       #where:Ljava/lang/String;
    :catchall_53
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1536
    .end local v10           #where:Ljava/lang/String;
    :sswitch_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1537
    if-eqz p2, :cond_a9

    .line 1538
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1542
    :goto_77
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1544
    :try_start_7a
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1545
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_ac

    .line 1547
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 1550
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1540
    :cond_a9
    move-object/from16 p2, v2

    goto :goto_77

    .line 1547
    :catchall_ac
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1555
    :sswitch_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1556
    if-eqz p2, :cond_103

    .line 1557
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1561
    :goto_d0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1563
    :try_start_d3
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1564
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e0
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_106

    .line 1566
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 1569
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 1559
    :cond_103
    move-object/from16 p2, v2

    goto :goto_d0

    .line 1566
    :catchall_106
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1573
    :sswitch_10b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1574
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1576
    :try_start_112
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1578
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_139
    .catchall {:try_start_112 .. :try_end_139} :catchall_15c

    .line 1580
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 1583
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 1580
    :catchall_15c
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1587
    :sswitch_161
    const-string v11, " (logtype=400)"

    .line 1588
    .local v11, where3:Ljava/lang/String;
    if-eqz p2, :cond_193

    .line 1589
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1593
    :goto_17e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1595
    :try_start_181
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1596
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18e
    .catchall {:try_start_181 .. :try_end_18e} :catchall_196

    .line 1598
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4a

    .line 1591
    :cond_193
    move-object/from16 p2, v11

    goto :goto_17e

    .line 1598
    :catchall_196
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1603
    .end local v11           #where3:Ljava/lang/String;
    :sswitch_19b
    const-string v11, " (logtype=410)"

    .line 1604
    .restart local v11       #where3:Ljava/lang/String;
    if-eqz p2, :cond_1cd

    .line 1605
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1609
    :goto_1b8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1611
    :try_start_1bb
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1612
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c8
    .catchall {:try_start_1bb .. :try_end_1c8} :catchall_1d0

    .line 1614
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4a

    .line 1607
    :cond_1cd
    move-object/from16 p2, v11

    goto :goto_1b8

    .line 1614
    :catchall_1d0
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1619
    .end local v11           #where3:Ljava/lang/String;
    :sswitch_1d5
    const-string v11, " (logtype=600)"

    .line 1620
    .restart local v11       #where3:Ljava/lang/String;
    if-eqz p2, :cond_207

    .line 1621
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1625
    :goto_1f2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1627
    :try_start_1f5
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1628
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_202
    .catchall {:try_start_1f5 .. :try_end_202} :catchall_20a

    .line 1630
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4a

    .line 1623
    :cond_207
    move-object/from16 p2, v11

    goto :goto_1f2

    .line 1630
    :catchall_20a
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1635
    .end local v11           #where3:Ljava/lang/String;
    :sswitch_20f
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1637
    :try_start_212
    const-string v12, "sns_msg_receiver_map"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1638
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21f
    .catchall {:try_start_212 .. :try_end_21f} :catchall_224

    .line 1640
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4a

    :catchall_224
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1645
    :sswitch_229
    const-string v10, " (logtype=700)"

    .line 1646
    .restart local v10       #where:Ljava/lang/String;
    if-eqz p2, :cond_275

    .line 1647
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1651
    :goto_246
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1653
    :try_start_249
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1655
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_270
    .catchall {:try_start_249 .. :try_end_270} :catchall_278

    .line 1657
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4a

    .line 1649
    :cond_275
    move-object/from16 p2, v10

    goto :goto_246

    .line 1657
    :catchall_278
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1671
    .end local v10           #where:Ljava/lang/String;
    :sswitch_27d
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1672
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_4f

    .line 1523
    nop

    :sswitch_data_286
    .sparse-switch
        0x1 -> :sswitch_10b
        0xb -> :sswitch_161
        0x13 -> :sswitch_19b
        0x14 -> :sswitch_33
        0x15 -> :sswitch_1d5
        0x16 -> :sswitch_58
        0x17 -> :sswitch_229
        0x1a -> :sswitch_b1
        0x20 -> :sswitch_20f
    .end sparse-switch

    .line 1665
    :sswitch_data_2ac
    .sparse-switch
        0x7 -> :sswitch_27d
        0x9 -> :sswitch_27d
        0x14 -> :sswitch_27d
        0x16 -> :sswitch_27d
        0x1a -> :sswitch_27d
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 922
    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 923
    .local v0, match:I
    packed-switch v0, :pswitch_data_26

    .line 927
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :pswitch_22
    const-string v1, "vnd.android.cursor.item/calls"

    return-object v1

    .line 923
    nop

    :pswitch_data_26
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 16
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 933
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v9, :cond_13

    .line 934
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v9}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 935
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v10, "logs"

    invoke-direct {v9, v3, v10}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 938
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_13
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 939
    .local v5, match:I
    const-wide/16 v7, 0x0

    .line 940
    .local v7, rowId:J
    const-string v9, "type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 941
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'type\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v9, 0x0

    .line 1310
    :goto_2b
    return-object v9

    .line 945
    :cond_2c
    sparse-switch v5, :sswitch_data_5fa

    .line 1206
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong uri"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v9, 0x0

    goto :goto_2b

    .line 947
    :sswitch_38
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_49

    .line 948
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v9, 0x0

    goto :goto_2b

    .line 951
    :cond_49
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 952
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v9, 0x0

    goto :goto_2b

    .line 955
    :cond_5a
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6c

    .line 956
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    :cond_6c
    const-string v9, "logtype"

    const/16 v10, 0x1f4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    :goto_81
    sparse-switch v5, :sswitch_data_630

    .line 1233
    :goto_84
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1234
    .local v2, copiedValues:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    invoke-interface {v9, v2}, Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 1235
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v9, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1237
    const/4 v0, 0x0

    .line 1238
    .local v0, IsOnlyCalls:Z
    sparse-switch v5, :sswitch_data_65a

    .line 1255
    :goto_98
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1257
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_5f0

    .line 1259
    sget-boolean v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    if-eqz v9, :cond_103

    .line 1260
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insert data - logtype : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "logtype"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " number : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "number"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " contactid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "contactid"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " messageid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "messageid"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_103
    sparse-switch v5, :sswitch_data_678

    .line 1306
    :goto_106
    invoke-static {p1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_2b

    .line 964
    .end local v0           #IsOnlyCalls:Z
    .end local v2           #copiedValues:Landroid/content/ContentValues;
    :sswitch_10c
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11e

    .line 965
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 968
    :cond_11e
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_130

    .line 969
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 972
    :cond_130
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_142

    .line 973
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    :cond_142
    const-string v9, "logtype"

    const/16 v10, 0x320

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 981
    :sswitch_159
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16b

    .line 982
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 985
    :cond_16b
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17d

    .line 986
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 989
    :cond_17d
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18f

    .line 990
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    :cond_18f
    const-string v9, "logtype"

    const/16 v10, 0x384

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 998
    :sswitch_1a6
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b8

    .line 999
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1002
    :cond_1b8
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1ca

    .line 1003
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1006
    :cond_1ca
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1dc

    .line 1007
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    :cond_1dc
    const-string v9, "logtype"

    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1010
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1015
    :sswitch_1f3
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_205

    .line 1016
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1019
    :cond_205
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_217

    .line 1020
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1023
    :cond_217
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_229

    .line 1024
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    :cond_229
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23c

    .line 1027
    const-string v9, "logtype"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    :cond_23c
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1032
    :sswitch_248
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25a

    .line 1033
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1036
    :cond_25a
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_26c

    .line 1037
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1040
    :cond_26c
    const-string v9, "logtype"

    const/16 v10, 0x12c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1045
    :sswitch_28a
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29c

    .line 1046
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1049
    :cond_29c
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2ae

    .line 1050
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1053
    :cond_2ae
    const-string v9, "logtype"

    const/16 v10, 0xc8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1058
    :sswitch_2cc
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2de

    .line 1059
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'address\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1062
    :cond_2de
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, ad:Ljava/lang/String;
    const-string v9, "number"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2fb

    .line 1066
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1069
    :cond_2fb
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_30d

    .line 1070
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1073
    :cond_30d
    const-string v9, "logtype"

    const/16 v10, 0x2bc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1078
    .end local v1           #ad:Ljava/lang/String;
    :sswitch_32b
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33d

    .line 1079
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1082
    :cond_33d
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_34f

    .line 1083
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1086
    :cond_34f
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_35e

    .line 1087
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_35e
    const-string v9, "logtype"

    const/16 v10, 0x190

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1093
    :sswitch_375
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_387

    .line 1094
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'address\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1097
    :cond_387
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    .restart local v1       #ad:Ljava/lang/String;
    const-string v9, "number"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3a4

    .line 1102
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1105
    :cond_3a4
    const-string v9, "account_name"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3b6

    .line 1106
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'account_name\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1109
    :cond_3b6
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3c8

    .line 1110
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1113
    :cond_3c8
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3d7

    .line 1114
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_3d7
    const-string v9, "logtype"

    const/16 v10, 0x19a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1120
    .end local v1           #ad:Ljava/lang/String;
    :sswitch_3ee
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_400

    .line 1121
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1124
    :cond_400
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_412

    .line 1125
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1128
    :cond_412
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_424

    .line 1129
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1132
    :cond_424
    const-string v9, "contactid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_42f

    .line 1133
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1135
    :cond_42f
    const-string v9, "logtype"

    const/16 v10, 0x258

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1140
    :sswitch_44d
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1141
    .local v4, logType:I
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_469

    .line 1142
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1145
    :cond_469
    const/16 v9, 0x64

    if-eq v4, v9, :cond_493

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_493

    const/16 v9, 0x190

    if-eq v4, v9, :cond_493

    const/16 v9, 0x258

    if-eq v4, v9, :cond_493

    const/16 v9, 0xc8

    if-eq v4, v9, :cond_493

    const/16 v9, 0x12c

    if-eq v4, v9, :cond_493

    const/16 v9, 0x2bc

    if-eq v4, v9, :cond_493

    const/16 v9, 0x1f4

    if-eq v4, v9, :cond_493

    .line 1152
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1156
    :cond_493
    const/16 v9, 0x64

    if-eq v4, v9, :cond_49f

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_49f

    const/16 v9, 0x1f4

    if-ne v4, v9, :cond_4cf

    .line 1158
    :cond_49f
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4b1

    .line 1159
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1162
    :cond_4b1
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4c3

    .line 1163
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    :cond_4c3
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1167
    :cond_4cf
    const/16 v9, 0x190

    if-eq v4, v9, :cond_4e3

    const/16 v9, 0xc8

    if-eq v4, v9, :cond_4e3

    const/16 v9, 0x12c

    if-eq v4, v9, :cond_4e3

    const/16 v9, 0x258

    if-eq v4, v9, :cond_4e3

    const/16 v9, 0x2bc

    if-ne v4, v9, :cond_52e

    .line 1170
    :cond_4e3
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4f5

    .line 1171
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1174
    :cond_4f5
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_507

    .line 1175
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1178
    :cond_507
    const/16 v9, 0x190

    if-ne v4, v9, :cond_526

    .line 1179
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_51a

    .line 1180
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_51a
    :goto_51a
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1183
    :cond_526
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51a

    .line 1187
    :cond_52e
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81

    .line 1191
    .end local v4           #logType:I
    :sswitch_537
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_549

    .line 1192
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1195
    :cond_549
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_55b

    .line 1196
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 1199
    :cond_55b
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_56d

    .line 1200
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    :cond_56d
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_81

    .line 1216
    :sswitch_579
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1217
    .local v6, number:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateFrequentContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1218
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_84

    .line 1224
    .end local v6           #number:Ljava/lang/String;
    :sswitch_58b
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p2, v10}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_84

    .line 1228
    :sswitch_598
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p2, v10}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_84

    .line 1245
    .restart local v0       #IsOnlyCalls:Z
    .restart local v2       #copiedValues:Landroid/content/ContentValues;
    :sswitch_5a5
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1246
    const/4 v0, 0x0

    .line 1247
    goto/16 :goto_98

    .line 1249
    :sswitch_5ab
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1250
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    .line 1251
    const/4 v0, 0x1

    goto/16 :goto_98

    .line 1273
    :sswitch_5b4
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=100 OR logtype=500 OR logtype=800 OR logtype=900 OR logtype=1000 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_106

    .line 1283
    :sswitch_5c0
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=300 OR logtype=200 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_106

    .line 1289
    :sswitch_5cc
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=700 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_106

    .line 1295
    :sswitch_5d8
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=400 OR logtype=410 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_106

    .line 1301
    :sswitch_5e4
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=600 ORDER BY date DESC limit -1 offset 3000)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_106

    .line 1308
    :cond_5f0
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "insert falled. check input data"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/4 v9, 0x0

    goto/16 :goto_2b

    .line 945
    :sswitch_data_5fa
    .sparse-switch
        0x1 -> :sswitch_44d
        0x7 -> :sswitch_28a
        0x9 -> :sswitch_248
        0xb -> :sswitch_32b
        0xd -> :sswitch_38
        0xe -> :sswitch_10c
        0x13 -> :sswitch_375
        0x14 -> :sswitch_1f3
        0x15 -> :sswitch_3ee
        0x17 -> :sswitch_2cc
        0x23 -> :sswitch_537
        0x24 -> :sswitch_159
        0x25 -> :sswitch_1a6
    .end sparse-switch

    .line 1210
    :sswitch_data_630
    .sparse-switch
        0x7 -> :sswitch_58b
        0x9 -> :sswitch_58b
        0xb -> :sswitch_58b
        0xd -> :sswitch_579
        0xe -> :sswitch_579
        0x13 -> :sswitch_58b
        0x14 -> :sswitch_579
        0x17 -> :sswitch_598
        0x24 -> :sswitch_579
        0x25 -> :sswitch_579
    .end sparse-switch

    .line 1238
    :sswitch_data_65a
    .sparse-switch
        0x7 -> :sswitch_5a5
        0x9 -> :sswitch_5a5
        0xd -> :sswitch_5a5
        0xe -> :sswitch_5a5
        0x14 -> :sswitch_5ab
        0x24 -> :sswitch_5a5
        0x25 -> :sswitch_5a5
    .end sparse-switch

    .line 1266
    :sswitch_data_678
    .sparse-switch
        0x7 -> :sswitch_5c0
        0x9 -> :sswitch_5c0
        0xb -> :sswitch_5d8
        0xd -> :sswitch_5b4
        0xe -> :sswitch_5b4
        0x13 -> :sswitch_5d8
        0x14 -> :sswitch_5b4
        0x15 -> :sswitch_5e4
        0x17 -> :sswitch_5cc
        0x23 -> :sswitch_5b4
        0x24 -> :sswitch_5b4
        0x25 -> :sswitch_5b4
    .end sparse-switch
.end method

.method protected notifyAllCallsChange()V
    .registers 5

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2011
    return-void
.end method

.method protected notifyCallChange()V
    .registers 5

    .prologue
    .line 2005
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2006
    return-void
.end method

.method protected notifyChange()V
    .registers 5

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2002
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 25
    .parameter "arg0"

    .prologue
    .line 555
    const/4 v14, 0x0

    .line 556
    .local v14, accountsOnMgr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    .line 558
    .local v15, am:Landroid/accounts/AccountManager;
    if-nez v15, :cond_c

    .line 647
    :cond_b
    :goto_b
    return-void

    .line 561
    :cond_c
    const/16 v22, 0x0

    .local v22, spType:I
    :goto_e
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_8f

    .line 562
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 563
    .local v10, accountSNS:[Landroid/accounts/Account;
    array-length v2, v10

    if-nez v2, :cond_83

    .line 564
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v21, sb:Ljava/lang/StringBuilder;
    const-string v2, "logtype=600"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND sp_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 569
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "logs"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccountsUpdated: Delete SNS log : spType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7c
    .catchall {:try_start_4d .. :try_end_7c} :catchall_86

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 561
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_83
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 573
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    :catchall_86
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 578
    .end local v10           #accountSNS:[Landroid/accounts/Account;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_8f
    const/16 v22, 0x0

    :goto_91
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_a7

    .line 579
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 580
    .local v11, accountSeven:[Landroid/accounts/Account;
    if-eqz v11, :cond_a4

    .line 581
    array-length v2, v11

    add-int/2addr v14, v2

    .line 578
    :cond_a4
    add-int/lit8 v22, v22, 0x1

    goto :goto_91

    .line 584
    .end local v11           #accountSeven:[Landroid/accounts/Account;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 585
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 586
    .local v17, c:Landroid/database/Cursor;
    const-string v2, "logs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "logtype"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "account_name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "sp_type"

    aput-object v5, v3, v4

    const-string v4, "logtype=410 AND sp_type != 4 AND sp_type != 3 AND sp_type !=  0"

    const/4 v5, 0x0

    const-string v6, "account_name"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 598
    const/4 v13, -0x1

    .line 599
    .local v13, accountsOnLogs:I
    if-eqz v17, :cond_b

    .line 600
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 604
    if-eq v13, v14, :cond_1a0

    if-lez v13, :cond_1a0

    .line 605
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 607
    const/16 v18, 0x0

    .local v18, i:I
    move/from16 v19, v18

    .end local v18           #i:I
    .local v19, i:I
    :goto_e8
    add-int/lit8 v18, v19, 0x1

    .end local v19           #i:I
    .restart local v18       #i:I
    move/from16 v0, v19

    if-ge v0, v13, :cond_1a0

    .line 608
    const/16 v16, 0x0

    .line 609
    .local v16, bExist:Z
    const/4 v12, 0x0

    .line 610
    .local v12, accounts:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 612
    if-nez v12, :cond_100

    .line 607
    :cond_fa
    :goto_fa
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v19, v18

    .end local v18           #i:I
    .restart local v19       #i:I
    goto :goto_e8

    .line 615
    .end local v19           #i:I
    .restart local v18       #i:I
    :cond_100
    const/16 v22, 0x0

    :goto_102
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_15f

    .line 616
    if-nez v16, :cond_159

    .line 617
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 618
    .restart local v11       #accountSeven:[Landroid/accounts/Account;
    if-eqz v11, :cond_159

    .line 619
    array-length v2, v11

    if-lez v2, :cond_159

    .line 621
    const/16 v20, 0x0

    .local v20, index:I
    :goto_11a
    array-length v2, v11

    move/from16 v0, v20

    if-ge v0, v2, :cond_159

    .line 622
    aget-object v2, v11, v20

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    aget-object v3, v11, v20

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 625
    const/16 v16, 0x1

    .line 626
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is existed on AccountManager and sp_type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v4, v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v11           #accountSeven:[Landroid/accounts/Account;
    .end local v20           #index:I
    :cond_159
    add-int/lit8 v22, v22, 0x1

    goto :goto_102

    .line 621
    .restart local v11       #accountSeven:[Landroid/accounts/Account;
    .restart local v20       #index:I
    :cond_15c
    add-int/lit8 v20, v20, 0x1

    goto :goto_11a

    .line 637
    .end local v11           #accountSeven:[Landroid/accounts/Account;
    .end local v20           #index:I
    :cond_15f
    if-nez v16, :cond_fa

    .line 640
    const-string v2, "content://logs/email_seven"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/provider/logsprovider/LogsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete from Logs account_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa

    .line 646
    .end local v12           #accounts:Ljava/lang/String;
    .end local v16           #bExist:Z
    .end local v18           #i:I
    :cond_1a0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 506
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 507
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LogsProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    .line 510
    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    .line 511
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 513
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    .line 515
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 516
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 517
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 518
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 519
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LogsProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_60
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->verifyAccounts()V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 651
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LOWMEMORY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 653
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 32
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 658
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 665
    .local v10, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 668
    new-instance v23, Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v23, selectionBuilder:Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 672
    .local v21, match:I
    packed-switch v21, :pswitch_data_244

    .line 706
    :pswitch_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :pswitch_38
    const/4 v9, 0x0

    .line 710
    .local v9, groupby:Ljava/lang/String;
    const-string v2, "logs"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 711
    packed-switch v21, :pswitch_data_28c

    .line 877
    :pswitch_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 714
    :pswitch_5c
    const-string v9, "number"

    .line 716
    :pswitch_5e
    const-string v2, "logs.logtype=100"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 717
    const-string v2, " OR logs.logtype=110"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 725
    const-string v2, " OR logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 726
    const-string v2, " OR logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 727
    const-string v2, " OR logs.logtype=900"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 728
    const-string v2, " OR logs.logtype=1000"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 729
    const-string v2, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\'))"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 731
    const-string v2, " OR logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 880
    :goto_86
    :pswitch_86
    const/16 v2, 0x21

    move/from16 v0, v21

    if-ne v0, v2, :cond_201

    .line 881
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 890
    :goto_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 892
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p5, :cond_9d

    .line 893
    const-string p5, "date DESC"

    .line 896
    :cond_9d
    const/16 v19, 0x0

    .line 897
    .local v19, c:Landroid/database/Cursor;
    const/16 v2, 0xf

    move/from16 v0, v21

    if-ne v0, v2, :cond_215

    .line 898
    const-string v5, "logs"

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "1 as _id"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "name"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const-string v7, "number"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    const-string v7, "COUNT(number)AS count"

    aput-object v7, v6, v2

    const/4 v2, 0x4

    const-string v7, "contactid"

    aput-object v7, v6, v2

    const-string v7, "type=2 AND frequent=1"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "count desc"

    .end local v10           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v12, "12"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 914
    :goto_cf
    if-eqz v19, :cond_e0

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 917
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_e0
    :goto_e0
    return-object v19

    .line 737
    .restart local v10       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_e1
    const-string v2, "logs left outer join sns_msg_receiver_map on logs.sns_pkey=sns_msg_receiver_map.message_id"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 739
    const-string v9, "logs._id"

    .line 740
    goto :goto_86

    .line 744
    :pswitch_e9
    const-string v2, "(logs.logtype=100"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 745
    const-string v2, " OR logs.logtype=110"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 753
    const-string v2, " OR logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 754
    const-string v2, " OR logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 755
    const-string v2, " OR logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 756
    const-string v2, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')))"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 758
    const-string v2, " AND logs._id="

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 763
    :pswitch_11c
    const-string v9, "number"

    .line 764
    goto/16 :goto_86

    .line 767
    :pswitch_120
    const-string v2, "logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 771
    :pswitch_127
    const-string v2, "logs.logtype=200"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 775
    :pswitch_12e
    const-string v2, "logs.logtype=400 OR logs.logtype=410"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 780
    :pswitch_135
    const-string v2, "logs.logtype=410"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 784
    :pswitch_13c
    const-string v2, "logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 788
    :pswitch_143
    const-string v2, "logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 792
    :pswitch_14a
    const-string v2, "logs.logtype=900"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 796
    :pswitch_151
    const-string v2, "logs.logtype=1000"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 800
    :pswitch_158
    const-string v2, "logs.logtype=600"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 804
    :pswitch_15f
    const-string v2, "logs.logtype=700"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 828
    :pswitch_166
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 829
    .local v22, phoneNumber:Ljava/lang/String;
    const-string v2, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 830
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 831
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v2, :cond_18d

    const-string v2, ", 1)"

    :goto_183
    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 832
    const-string v2, " and (logtype=100 OR logtype=500)"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 831
    :cond_18d
    const-string v2, ", 0)"

    goto :goto_183

    .line 836
    .end local v22           #phoneNumber:Ljava/lang/String;
    :pswitch_190
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 837
    .local v24, sp:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 838
    .local v20, id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/receiver"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 839
    .local v25, uriPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 840
    .local v3, msgReceiver:Landroid/net/Uri;
    if-eqz v24, :cond_1dc

    .line 841
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 845
    :goto_1ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_e0

    .line 843
    :cond_1dc
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1ce

    .line 868
    .end local v3           #msgReceiver:Landroid/net/Uri;
    .end local v20           #id:Ljava/lang/String;
    .end local v24           #sp:I
    .end local v25           #uriPath:Ljava/lang/String;
    :pswitch_1e5
    const-string v2, "logs._id="

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_86

    .line 873
    :pswitch_1fa
    const-string v2, "duration_table"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_86

    .line 883
    :cond_201
    const/16 v2, 0x22

    move/from16 v0, v21

    if-ne v0, v2, :cond_20e

    .line 884
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_91

    .line 886
    :cond_20e
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_91

    .line 908
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_215
    const/16 v2, 0x22

    move/from16 v0, v21

    if-ne v0, v2, :cond_22f

    .line 909
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_cf

    .line 911
    :cond_22f
    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v9

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_cf

    .line 672
    nop

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_1d
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_38
        :pswitch_1d
        :pswitch_38
        :pswitch_38
    .end packed-switch

    .line 711
    :pswitch_data_28c
    .packed-switch 0x1
        :pswitch_86
        :pswitch_1e5
        :pswitch_166
        :pswitch_e9
        :pswitch_41
        :pswitch_41
        :pswitch_127
        :pswitch_41
        :pswitch_120
        :pswitch_41
        :pswitch_12e
        :pswitch_41
        :pswitch_13c
        :pswitch_143
        :pswitch_11c
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_135
        :pswitch_5e
        :pswitch_158
        :pswitch_41
        :pswitch_15f
        :pswitch_41
        :pswitch_190
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_5c
        :pswitch_41
        :pswitch_e1
        :pswitch_1fa
        :pswitch_41
        :pswitch_14a
        :pswitch_151
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1442
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1444
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1445
    .local v3, matchedUriId:I
    sparse-switch v3, :sswitch_data_84

    .line 1466
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1459
    :sswitch_28
    move-object v4, p3

    .line 1468
    .local v4, where:Ljava/lang/String;
    :goto_29
    const/4 v1, 0x0

    .line 1470
    .local v1, count:I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1473
    const/16 v5, 0x22

    if-ne v3, v5, :cond_6a

    .line 1474
    :try_start_31
    const-string v5, "duration_table"

    invoke-virtual {v2, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1480
    :goto_37
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_71

    .line 1482
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, IsOnlyCalls:Z
    if-lez v1, :cond_46

    .line 1487
    sparse-switch v3, :sswitch_data_be

    .line 1501
    :goto_43
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1503
    :cond_46
    return v1

    .line 1462
    .end local v0           #IsOnlyCalls:Z
    .end local v1           #count:I
    .end local v4           #where:Ljava/lang/String;
    :sswitch_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1464
    .restart local v4       #where:Ljava/lang/String;
    goto :goto_29

    .line 1477
    .restart local v1       #count:I
    :cond_6a
    :try_start_6a
    const-string v5, "logs"

    invoke-virtual {v2, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_71

    move-result v1

    goto :goto_37

    .line 1482
    :catchall_71
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1491
    .restart local v0       #IsOnlyCalls:Z
    :sswitch_76
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1492
    const/4 v0, 0x0

    .line 1493
    goto :goto_43

    .line 1495
    :sswitch_7b
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1496
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    .line 1497
    const/4 v0, 0x1

    goto :goto_43

    .line 1445
    nop

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_28
        0x4 -> :sswitch_47
        0x7 -> :sswitch_28
        0x9 -> :sswitch_28
        0xb -> :sswitch_28
        0xd -> :sswitch_28
        0xe -> :sswitch_28
        0x13 -> :sswitch_28
        0x14 -> :sswitch_28
        0x15 -> :sswitch_28
        0x17 -> :sswitch_28
        0x22 -> :sswitch_28
        0x24 -> :sswitch_28
        0x25 -> :sswitch_28
    .end sparse-switch

    .line 1487
    :sswitch_data_be
    .sparse-switch
        0x7 -> :sswitch_76
        0x9 -> :sswitch_76
        0xd -> :sswitch_76
        0x14 -> :sswitch_7b
    .end sparse-switch
.end method

.method protected verifyAccounts()V
    .registers 4

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 533
    return-void
.end method
