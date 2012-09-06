.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$AttachmentService;,
        Lcom/android/email/provider/EmailProvider$DatabaseHelper;,
        Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    }
.end annotation


# static fields
.field public static final ACCOUNT_BACKUP_URI:Landroid/net/Uri;

.field private static final CACHE_PROJECTIONS:[[Ljava/lang/String;

.field private static final CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

.field public static final INTEGRITY_CHECK_URI:Landroid/net/Uri;

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

.field private static final V25_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final V25_HOSTAUTH_PROJECTION:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

.field private mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mCacheAccount:Lcom/android/email/provider/ContentCache;

.field private final mCacheHostAuth:Lcom/android/email/provider/ContentCache;

.field final mCacheMailbox:Lcom/android/email/provider/ContentCache;

.field private final mCacheMessage:Lcom/android/email/provider/ContentCache;

.field private final mCachePolicy:Lcom/android/email/provider/ContentCache;

.field private final mContentCaches:[Lcom/android/email/provider/ContentCache;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mMailboxTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    const-string v0, "content://com.android.email.provider/integrityCheck"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    .line 96
    const-string v0, "content://com.android.email.provider/accountBackup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    .line 107
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 231
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Account"

    aput-object v1, v0, v4

    const-string v1, "Mailbox"

    aput-object v1, v0, v5

    const-string v1, "Message"

    aput-object v1, v0, v6

    const-string v1, "Attachment"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "HostAuth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Message_Updates"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Message_Deletes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Policy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "QuickResponse"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 259
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CACHE_PROJECTIONS:[[Ljava/lang/String;

    .line 272
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 332
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 335
    const-string v1, "com.android.email.provider"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    const-string v1, "com.android.email.provider"

    const-string v2, "account/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    const-string v1, "com.android.email.provider"

    const-string v2, "account/default"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox"

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#"

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdFromAccountAndType/#/#"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    const-string v1, "com.android.email.provider"

    const-string v2, "message"

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const-string v1, "com.android.email.provider"

    const-string v2, "message/#"

    const/16 v3, 0x2001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment"

    const/16 v3, 0x3000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/#"

    const/16 v3, 0x3001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/message/#"

    const/16 v3, 0x3002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    const-string v1, "com.android.email.provider"

    const-string v2, "body"

    const v3, 0x9000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#"

    const v3, 0x9001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth"

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth/#"

    const/16 v3, 0x4001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdAddToField/#"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 383
    const-string v1, "com.android.email.provider"

    const-string v2, "accountIdAddToField/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage/#"

    const/16 v3, 0x2002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage"

    const/16 v3, 0x6000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 401
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/#"

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage"

    const/16 v3, 0x5000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 406
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage/#"

    const/16 v3, 0x5001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 409
    sget-object v1, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string v2, "newMessageCount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v1, "com.android.email.provider"

    const-string v2, "policy"

    const/16 v3, 0x7000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    const-string v1, "com.android.email.provider"

    const-string v2, "policy/#"

    const/16 v3, 0x7001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 415
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse"

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 417
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/#"

    const v3, 0x8001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/account/#"

    const v3, 0x8002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2449
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 2454
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "protocol"

    aput-object v1, v0, v4

    const-string v1, "password"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    .line 2557
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "flags"

    aput-object v1, v0, v5

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V25_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 2563
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "protocol"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V25_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 121
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheAccount:Lcom/android/email/provider/ContentCache;

    .line 123
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    .line 125
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    .line 128
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Message"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    .line 130
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Policy"

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    .line 245
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/email/provider/ContentCache;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheAccount:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    aput-object v4, v0, v5

    const/16 v1, 0x9

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    .line 886
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    .line 2629
    new-instance v0, Lcom/android/email/provider/EmailProvider$1;

    invoke-direct {v0, p0}, Lcom/android/email/provider/EmailProvider$1;-><init>(Lcom/android/email/provider/EmailProvider;)V

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

    .line 2636
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/android/email/provider/EmailProvider$AttachmentService;

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion20ToVersion21(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion22ToVersion23(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion23ToVersion24(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion24ToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->upgradeFromVersion25ToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private addToMailboxTypeMap(Landroid/database/Cursor;)V
    .registers 10
    .parameter "c"

    .prologue
    .line 901
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 902
    .local v0, accountId:J
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 903
    .local v3, type:I
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 904
    :try_start_d
    invoke-direct {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;

    move-result-object v2

    .line 906
    .local v2, accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    monitor-exit v5

    .line 908
    return-void

    .line 907
    .end local v2           #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_23
    move-exception v4

    monitor-exit v5
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v4
.end method

.method private static backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2044
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2045
    const-string v0, "EmailProvider"

    const-string v1, "backupAccounts..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_b
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2049
    :try_start_f
    invoke-static {p1, v1}, Lcom/android/email/provider/EmailProvider;->copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 2050
    if-gez v0, :cond_22

    .line 2051
    const-string v2, "EmailProvider"

    const-string v3, "Account backup failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_45

    .line 2057
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_21

    .line 2058
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_21
    return v0

    .line 2052
    :cond_22
    :try_start_22
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1c

    .line 2053
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backed up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accounts..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_45

    goto :goto_1c

    .line 2057
    :catchall_45
    move-exception v0

    if-eqz v1, :cond_4b

    .line 2058
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4b
    throw v0
.end method

.method static convertPolicyFlagsToPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 2377
    const-string v1, "Account"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "securityFlags"

    aput-object v0, v2, v9

    const-string v3, "securityFlags>0"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2380
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2381
    new-array v2, v9, [Ljava/lang/String;

    .line 2382
    :goto_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2383
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2384
    invoke-static {v5, v6}, Lcom/android/emailcommon/service/LegacyPolicySet;->flagsToPolicy(J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    .line 2385
    const-string v5, "Policy"

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Policy;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2386
    const-string v3, "policyKey"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2387
    const-string v3, "securityFlags"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2388
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2389
    const-string v3, "Account"

    const-string v5, "_id=?"

    invoke-virtual {p0, v3, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_21

    .line 2391
    :cond_59
    return-void
.end method

.method private static copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 16
    .parameter "fromDatabase"
    .parameter "toDatabase"

    .prologue
    .line 1970
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v10, -0x1

    .line 2032
    :goto_5
    return v10

    .line 1971
    :cond_6
    const/4 v10, 0x0

    .line 1975
    .local v10, copyCount:I
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1976
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1978
    const-string v0, "Account"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1979
    const-string v0, "HostAuth"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1981
    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_28} :catch_91

    move-result-object v9

    .line 1983
    .local v9, c:Landroid/database/Cursor;
    const/4 v13, 0x1

    .line 1986
    .local v13, noErrors:Z
    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1987
    new-instance v8, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 1988
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v8, v9}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 1994
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1995
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 1996
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 1999
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 2001
    .local v12, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v12, :cond_2a

    .line 2002
    const-string v0, "HostAuth"

    const/4 v1, 0x0

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 2005
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_74

    .line 2006
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailProvider;->restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 2009
    if-eqz v12, :cond_2a

    .line 2010
    const-string v0, "HostAuth"

    const/4 v1, 0x0

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 2014
    :cond_74
    const-string v0, "Account"

    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7e
    .catchall {:try_start_2a .. :try_end_7e} :catchall_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_7e} :catch_95

    .line 2015
    add-int/lit8 v10, v10, 0x1

    .line 2016
    goto :goto_2a

    .line 2021
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v12           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_81
    :try_start_81
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2022
    if-eqz v13, :cond_89

    .line 2024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2026
    :cond_89
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2027
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 2029
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #noErrors:Z
    :catch_91
    move-exception v11

    .line 2030
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const/4 v10, -0x1

    goto/16 :goto_5

    .line 2017
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v13       #noErrors:Z
    :catch_95
    move-exception v11

    .line 2018
    .restart local v11       #e:Landroid/database/sqlite/SQLiteException;
    const/4 v13, 0x0

    .line 2019
    const/4 v10, -0x1

    .line 2021
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2022
    if-eqz v13, :cond_a0

    .line 2024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2026
    :cond_a0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2027
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 2021
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_a8
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2022
    if-eqz v13, :cond_b1

    .line 2024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2026
    :cond_b1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2027
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_81 .. :try_end_b8} :catch_91
.end method

.method private static createAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2461
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2462
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.android.email"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 2465
    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2466
    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 2467
    const-string v0, "com.android.contacts"

    invoke-static {v1, v0, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2468
    const-string v0, "com.android.calendar"

    invoke-static {v1, v0, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2469
    return-void
.end method

.method static createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 598
    const-string v0, " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text, policyKey integer, notifiedMessageId integer, notifiedMessageCount integer);"

    .line 620
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    const-string v1, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method static createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 722
    const-string v0, " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob, accountKey integer);"

    .line 736
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    const-string v1, "Attachment"

    const-string v2, "messageKey"

    invoke-static {v1, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method static createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 757
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text);"

    .line 766
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    const-string v1, "Body"

    const-string v2, "messageKey"

    invoke-static {v1, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method static createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 660
    const-string v0, " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer,certAlias text);"

    .line 671
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table HostAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method static createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "tableName"
    .parameter "columnName"

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 683
    const-string v0, " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, parentKey integer, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text, messageCount integer not null default 0, lastSeenMessageKey integer, lastTouchedTime integer default 0);"

    .line 704
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 705
    const-string v1, "create index mailbox_serverId on Mailbox (serverId)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    const-string v1, "create index mailbox_accountKey on Mailbox (accountKey)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v1, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method static createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter "db"

    .prologue
    .line 451
    const-string v7, "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, snippet text, protocolSearchInfo text);"

    .line 475
    .local v7, messageColumns:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, createString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (_id integer unique, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, altCreateString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message_Updates"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message_Deletes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 493
    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "timeStamp"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "flagRead"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "flagLoaded"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "mailboxKey"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "syncServerId"

    aput-object v9, v5, v8

    .line 501
    .local v5, indexColumns:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_89
    if-ge v4, v6, :cond_99

    aget-object v2, v1, v4

    .line 502
    .local v2, columnName:Ljava/lang/String;
    const-string v8, "Message"

    invoke-static {v8, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 501
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 508
    .end local v2           #columnName:Ljava/lang/String;
    :cond_99
    const-string v8, "create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 519
    const-string v8, "create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 527
    const-string v8, "create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    const-string v8, "create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 547
    const-string v8, "create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 559
    const-string v8, "create trigger message_count_message_insert after insert on Message begin update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 567
    const-string v8, "create trigger message_count_message_delete after delete on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 575
    const-string v8, "create trigger message_count_message_move after update of mailboxKey on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; update Mailbox set messageCount=messageCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method static createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 634
    const-string v0, " (_id integer primary key autoincrement, passwordMode integer, passwordMinLength integer, passwordExpirationDays integer, passwordHistory integer, passwordComplexChars integer, passwordMaxFails integer, maxScreenLockTime integer, requireRemoteWipe integer, requireEncryption integer, requireEncryptionExternal integer, requireManualSyncRoaming integer, dontAllowCamera integer, dontAllowAttachments integer, dontAllowHtml integer, maxAttachmentSize integer, maxTextTruncationSize integer, maxHTMLTruncationSize integer, maxEmailLookback integer, maxCalendarLookback integer, passwordRecoveryEnabled integer);"

    .line 656
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method static createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 749
    const-string v0, " (_id integer primary key autoincrement, quickResponse text, accountKey integer);"

    .line 753
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table QuickResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method static deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 22
    .parameter "database"
    .parameter "tableName"

    .prologue
    .line 996
    if-eqz p0, :cond_1a

    .line 998
    sget-object v4, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1001
    .local v11, c:Landroid/database/Cursor;
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_51

    move-result v2

    if-nez v2, :cond_1b

    .line 1038
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1041
    .end local v11           #c:Landroid/database/Cursor;
    :cond_1a
    :goto_1a
    return-void

    .line 1002
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1b
    :try_start_1b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v13, foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v19, notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v12, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 1006
    .local v6, bindArray:[Ljava/lang/String;
    :cond_2d
    :goto_2d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 1009
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1011
    .local v15, mailboxId:J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1012
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_1b .. :try_end_50} :catchall_51

    goto :goto_2d

    .line 1038
    .end local v6           #bindArray:[Ljava/lang/String;
    .end local v12           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13           #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #mailboxId:J
    .end local v19           #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_51
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1014
    .restart local v6       #bindArray:[Ljava/lang/String;
    .restart local v12       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v13       #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15       #mailboxId:J
    .restart local v19       #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_56
    :try_start_56
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1015
    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1016
    const-string v3, "Mailbox"

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_51

    move-result-object v10

    .line 1020
    .local v10, boxCursor:Landroid/database/Cursor;
    :try_start_76
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1021
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_9d

    .line 1028
    :goto_83
    :try_start_83
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_51

    goto :goto_2d

    .line 1024
    :cond_87
    :try_start_87
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_87 .. :try_end_9c} :catchall_9d

    goto :goto_83

    .line 1028
    :catchall_9d
    move-exception v2

    :try_start_9e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1033
    .end local v10           #boxCursor:Landroid/database/Cursor;
    .end local v15           #mailboxId:J
    :cond_a2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_a6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1034
    .local v17, messageId:J
    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1035
    const-string v2, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_9e .. :try_end_c6} :catchall_51

    goto :goto_a6

    .line 1038
    .end local v17           #messageId:J
    :cond_c7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "methodName"

    .prologue
    .line 429
    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 430
    .local v0, match:I
    if-gez v0, :cond_21

    .line 431
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_21
    sget-boolean v1, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v1, :cond_4b

    .line 433
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", match is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_4b
    return v0
.end method

.method private static getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter

    .prologue
    .line 2036
    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v1, "EmailProviderBackup.db"

    invoke-direct {v0, p0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getBaseNotificationUri(I)Landroid/net/Uri;
    .registers 3
    .parameter "match"

    .prologue
    .line 2300
    const/4 v0, 0x0

    .line 2301
    .local v0, baseUri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_c

    .line 2312
    :goto_4
    return-object v0

    .line 2305
    :sswitch_5
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 2306
    goto :goto_4

    .line 2309
    :sswitch_8
    sget-object v0, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    goto :goto_4

    .line 2301
    nop

    :sswitch_data_c
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2000 -> :sswitch_5
        0x2001 -> :sswitch_5
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method

.method private getMailboxIdFromMailboxTypeMap(JI)J
    .registers 9
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 911
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 912
    :try_start_3
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 913
    .local v0, accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 914
    .local v1, mailboxId:Ljava/lang/Long;
    if-eqz v0, :cond_1c

    .line 915
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mailboxId:Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .line 917
    .restart local v1       #mailboxId:Ljava/lang/Long;
    :cond_1c
    if-nez v1, :cond_22

    const-wide/16 v2, -0x1

    monitor-exit v4

    .line 918
    :goto_21
    return-wide v2

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v4

    goto :goto_21

    .line 919
    .end local v0           #accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v1           #mailboxId:Ljava/lang/Long;
    :catchall_28
    move-exception v2

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;
    .registers 7
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 891
    :try_start_3
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 892
    .local v0, accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v0, :cond_1f

    .line 893
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 894
    .restart local v0       #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    :cond_1f
    monitor-exit v2

    return-object v0

    .line 897
    .end local v0           #accountMailboxTypeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method static getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "context"

    .prologue
    .line 947
    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v1, "EmailProvider.db"

    invoke-direct {v0, p0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 948
    .local v0, helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private preCacheData()V
    .registers 9

    .prologue
    .line 923
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 924
    :try_start_3
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 927
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    sget-object v4, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget-object v4, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "type IN (0,3,6,5,8,4)"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/email/provider/EmailProvider;->preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v4}, Lcom/android/email/provider/ContentCache;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    .line 935
    .local v2, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 936
    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    if-eqz v3, :cond_52

    .line 937
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 938
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 939
    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->addToMailboxTypeMap(Landroid/database/Cursor;)V

    goto :goto_39

    .line 943
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .end local v3           #values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    :catchall_4f
    move-exception v4

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v4

    .restart local v2       #snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/database/Cursor;>;"
    .restart local v3       #values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/database/Cursor;>;"
    :cond_52
    :try_start_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    .line 944
    return-void
.end method

.method private preCacheTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "tableUri"
    .parameter "baseProjection"
    .parameter "selection"

    .prologue
    const/4 v4, 0x0

    .line 867
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 869
    .local v6, c:Landroid/database/Cursor;
    :cond_b
    :goto_b
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 870
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 871
    .local v8, id:J
    invoke-static {p1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 873
    .local v7, cachedCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_b

    .line 875
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_2c

    .line 876
    invoke-direct {p0, v8, v9}, Lcom/android/email/provider/EmailProvider;->getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;

    .line 878
    :cond_2c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_b

    .line 882
    .end local v7           #cachedCursor:Landroid/database/Cursor;
    .end local v8           #id:J
    :catchall_30
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 884
    return-void
.end method

.method static recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2368
    const-string v0, "update Mailbox set messageCount= (select count(*) from Message where mailboxKey = Mailbox._id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2372
    return-void
.end method

.method static resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 627
    :try_start_0
    const-string v0, "drop table Account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 630
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 631
    return-void

    .line 628
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method static resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 742
    :try_start_0
    const-string v0, "drop table Attachment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 745
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    return-void

    .line 743
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method static resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 676
    :try_start_0
    const-string v0, "drop table HostAuth"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 679
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 680
    return-void

    .line 677
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method static resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 715
    :try_start_0
    const-string v0, "drop table Mailbox"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 718
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 719
    return-void

    .line 716
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method static resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 588
    :try_start_0
    const-string v0, "drop table Message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 589
    const-string v0, "drop table Message_Updates"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 590
    const-string v0, "drop table Message_Deletes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_f} :catch_13

    .line 593
    :goto_f
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 594
    return-void

    .line 591
    :catch_13
    move-exception v0

    goto :goto_f
.end method

.method private static restoreAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2067
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2068
    const-string v0, "EmailProvider"

    const-string v1, "restoreAccounts..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_b
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2072
    :try_start_f
    invoke-static {v1, p1}, Lcom/android/email/provider/EmailProvider;->copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 2073
    if-lez v0, :cond_39

    .line 2074
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accounts!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_43

    .line 2082
    :cond_33
    :goto_33
    if-eqz v1, :cond_38

    .line 2083
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_38
    return v0

    .line 2075
    :cond_39
    if-gez v0, :cond_4a

    .line 2076
    :try_start_3b
    const-string v2, "EmailProvider"

    const-string v3, "Account recovery failed?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    goto :goto_33

    .line 2082
    :catchall_43
    move-exception v0

    if-eqz v1, :cond_49

    .line 2083
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_49
    throw v0

    .line 2077
    :cond_4a
    :try_start_4a
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 2078
    const-string v2, "EmailProvider"

    const-string v3, "No accounts to restore..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_43

    goto :goto_33
.end method

.method private static restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;
    .registers 13
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 1949
    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1952
    .local v8, c:Landroid/database/Cursor;
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1953
    new-instance v9, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 1954
    .local v9, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/HostAuth;->restore(Landroid/database/Cursor;)V
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2f

    .line 1959
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :goto_29
    return-object v9

    :cond_2a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v9, v5

    goto :goto_29

    :catchall_2f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreIfNeeded(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .parameter "context"
    .parameter "mainDatabase"

    .prologue
    const/4 v3, 0x0

    .line 955
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 956
    const-string v0, "EmailProvider"

    const-string v1, "restoreIfNeeded..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_c
    invoke-static {p0}, Lcom/android/email/Preferences;->getLegacyBackupPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 963
    .local v9, legacyBackup:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 964
    invoke-static {p0, p1}, Lcom/android/email/provider/EmailProvider;->backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 965
    invoke-static {p0}, Lcom/android/email/Preferences;->clearLegacyBackupPreference(Landroid/content/Context;)V

    .line 966
    const-string v0, "EmailProvider"

    const-string v1, "Created new EmailProvider backup database"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_23
    :goto_23
    return-void

    .line 971
    :cond_24
    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 973
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 974
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 975
    const-string v0, "EmailProvider"

    const-string v1, "restoreIfNeeded: Account exists."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 979
    :cond_43
    invoke-static {p0, p1}, Lcom/android/email/provider/EmailProvider;->restoreAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    goto :goto_23
.end method

.method private sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "baseUri"
    .parameter "op"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 2330
    if-nez p1, :cond_4

    .line 2348
    :goto_3
    return-void

    .line 2332
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2335
    .local v2, resolver:Landroid/content/ContentResolver;
    if-eqz p2, :cond_1a

    .line 2336
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2339
    :cond_1a
    const-wide/16 v0, 0x0

    .line 2341
    .local v0, longId:J
    :try_start_1c
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_36

    move-result-wide v0

    .line 2343
    :goto_24
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_32

    .line 2344
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    .line 2346
    :cond_32
    invoke-virtual {v2, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    .line 2342
    :catch_36
    move-exception v3

    goto :goto_24
.end method

.method static upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v1, 0x5

    .line 771
    if-ge p1, v1, :cond_c

    .line 773
    :try_start_3
    const-string v1, "drop table Body"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 774
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_b} :catch_1e

    .line 787
    :cond_b
    :goto_b
    return-void

    .line 777
    :cond_c
    if-ne p1, v1, :cond_b

    .line 779
    :try_start_e
    const-string v1, "alter table Body add introText text"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_13} :catch_15

    .line 785
    :goto_13
    const/4 p1, 0x6

    goto :goto_b

    .line 781
    :catch_15
    move-exception v0

    .line 783
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProviderBody.db from v5 to v6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 775
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1e
    move-exception v1

    goto :goto_b
.end method

.method static upgradeFromVersion17ToVersion18(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2408
    :try_start_0
    const-string v0, "UPDATE Mailbox SET serverId=displayName WHERE Mailbox._id IN ( SELECT Mailbox._id FROM Mailbox,Account,HostAuth WHERE (Mailbox.parentKey isnull OR Mailbox.parentKey=0 ) AND Mailbox.accountKey=Account._id AND Account.hostAuthKeyRecv=HostAuth._id AND ( HostAuth.protocol=\'imap\' OR HostAuth.protocol=\'pop3\' ) )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 2430
    :goto_5
    invoke-static {}, Lcom/android/email/provider/ContentCache;->invalidateAllCaches()V

    .line 2431
    return-void

    .line 2426
    :catch_9
    move-exception v0

    .line 2428
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 17 to 18 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static upgradeFromVersion20ToVersion21(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter

    .prologue
    .line 2436
    :try_start_0
    const-string v0, "alter table Mailbox add column lastSeenMessageKey integer;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2442
    :goto_5
    return-void

    .line 2438
    :catch_6
    move-exception v0

    .line 2440
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 20 to 21 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method static upgradeFromVersion21ToVersion22(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 11
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2475
    :try_start_0
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_d} :catch_89

    move-result-object v8

    .line 2478
    const/4 v0, 0x1

    :try_start_f
    new-array v4, v0, [Ljava/lang/String;

    .line 2479
    :goto_11
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 2480
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2482
    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_84

    move-result-object v1

    .line 2486
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2487
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2489
    const-string v2, "imap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "pop3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 2491
    :cond_48
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_73

    .line 2492
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create AccountManager account for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "account: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_73
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/email/provider/EmailProvider;->createAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_2d .. :try_end_80} :catchall_c4

    .line 2513
    :cond_80
    :goto_80
    :try_start_80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_11

    .line 2517
    :catchall_84
    move-exception v0

    :try_start_85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_89
    .catch Landroid/database/SQLException; {:try_start_85 .. :try_end_89} :catch_89

    .line 2519
    :catch_89
    move-exception v0

    .line 2521
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 20 to 21 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :goto_a2
    return-void

    .line 2501
    :cond_a3
    :try_start_a3
    const-string v2, "eas"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2502
    new-instance v0, Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2507
    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_c3
    .catchall {:try_start_a3 .. :try_end_c3} :catchall_c4

    goto :goto_80

    .line 2513
    :catchall_c4
    move-exception v0

    :try_start_c5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_84

    .line 2517
    :cond_c9
    :try_start_c9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_cc
    .catch Landroid/database/SQLException; {:try_start_c9 .. :try_end_cc} :catch_89

    goto :goto_a2
.end method

.method private static upgradeFromVersion22ToVersion23(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter

    .prologue
    .line 2528
    :try_start_0
    const-string v0, "alter table Mailbox add column lastTouchedTime integer default 0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2534
    :goto_5
    return-void

    .line 2530
    :catch_6
    move-exception v0

    .line 2532
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 22 to 23 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static upgradeFromVersion23ToVersion24(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter

    .prologue
    .line 2539
    :try_start_0
    const-string v0, "alter table HostAuth add column certAlias text;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2545
    :goto_5
    return-void

    .line 2541
    :catch_6
    move-exception v0

    .line 2543
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 23 to 24 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static upgradeFromVersion24ToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter

    .prologue
    .line 2550
    :try_start_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2555
    :goto_3
    return-void

    .line 2551
    :catch_4
    move-exception v0

    .line 2553
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 24 to 25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static upgradeFromVersion25ToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter

    .prologue
    .line 2570
    :try_start_0
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V25_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2572
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_13} :catch_70

    .line 2574
    const/4 v0, 0x1

    :try_start_14
    new-array v4, v0, [Ljava/lang/String;

    .line 2575
    :goto_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2576
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2578
    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V25_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_6b

    move-result-object v1

    .line 2582
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2583
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2585
    const-string v2, "imap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2586
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2587
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2588
    const-string v3, "flags"

    or-int/lit16 v2, v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2589
    const-string v2, "Account"

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {p0, v2, v9, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_32 .. :try_end_67} :catchall_8a

    .line 2594
    :cond_67
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_16

    .line 2598
    :catchall_6b
    move-exception v0

    :try_start_6c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_70
    .catch Landroid/database/SQLException; {:try_start_6c .. :try_end_70} :catch_70

    .line 2600
    :catch_70
    move-exception v0

    .line 2602
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 25 to 26 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :goto_89
    return-void

    .line 2594
    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_6b

    .line 2598
    :cond_8f
    :try_start_8f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_8f .. :try_end_92} :catch_70

    goto :goto_89
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1931
    if-nez p2, :cond_3

    .line 1939
    :goto_2
    return-object p1

    .line 1934
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1935
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1910
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    if-eqz p2, :cond_1e

    .line 1913
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1917
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 2353
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2354
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2355
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2357
    :try_start_b
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 2358
    .local v2, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 2361
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2

    .end local v2           #results:[Landroid/content/ContentProviderResult;
    :catchall_16
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public checkDatabases()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1704
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 1705
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1707
    :cond_7
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    .line 1708
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1711
    :cond_d
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EmailProvider.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1712
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EmailProviderBody.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1715
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    .line 1716
    const-string v1, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProvider database..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1722
    :cond_37
    :goto_37
    return-void

    .line 1718
    :cond_38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1719
    const-string v0, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_37
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 20
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1357
    const-string v13, "delete"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v7

    .line 1358
    .local v7, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1363
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1364
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v11, v7, 0xc

    .line 1365
    .local v11, table:I
    const-string v6, "0"

    .line 1366
    .local v6, id:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1367
    .local v8, messageDeletion:Z
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1369
    .local v9, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v2, v13, v11

    .line 1370
    .local v2, cache:Lcom/android/email/provider/ContentCache;
    sget-object v13, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v12, v13, v11

    .line 1371
    .local v12, tableName:Ljava/lang/String;
    const/4 v10, -0x1

    .line 1374
    .local v10, result:I
    sparse-switch v7, :sswitch_data_1c2

    .line 1395
    :goto_29
    sparse-switch v7, :sswitch_data_1e0

    .line 1496
    :try_start_2c
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown URI "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_47} :catch_47

    .line 1508
    :catch_47
    move-exception v5

    .line 1509
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    :try_start_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1510
    throw v5
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    .line 1512
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_4c
    move-exception v13

    if-eqz v8, :cond_52

    .line 1513
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_52
    throw v13

    .line 1391
    :sswitch_53
    const/4 v8, 0x1

    .line 1392
    :try_start_54
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_29

    .line 1407
    :sswitch_58
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1408
    const/16 v13, 0x2002

    if-ne v7, v13, :cond_95

    .line 1412
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete from Message_Updates where _id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    :cond_95
    if-eqz v2, :cond_9a

    .line 1416
    invoke-virtual {v2, v6}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_54 .. :try_end_9a} :catchall_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_9a} :catch_47

    .line 1419
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_9a .. :try_end_a7} :catchall_130

    move-result v10

    .line 1420
    if-eqz v2, :cond_ad

    .line 1421
    sparse-switch v7, :sswitch_data_236

    .line 1446
    :cond_ad
    :goto_ad
    if-eqz v2, :cond_b2

    .line 1447
    :try_start_af
    invoke-virtual {v2, v6}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    .line 1498
    :cond_b2
    :goto_b2
    if-eqz v8, :cond_d1

    .line 1499
    const/16 v13, 0x2001

    if-ne v7, v13, :cond_1ba

    .line 1501
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete from Body where messageKey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1506
    :goto_ce
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d1
    .catchall {:try_start_af .. :try_end_d1} :catchall_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_af .. :try_end_d1} :catch_47

    .line 1512
    :cond_d1
    if-eqz v8, :cond_d6

    .line 1513
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1518
    :cond_d6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v6}, Lcom/android/email/provider/EmailProvider;->sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1522
    return v10

    .line 1425
    :sswitch_ea
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1431
    :sswitch_111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1437
    :sswitch_11e
    const-string v13, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v13, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1439
    const/16 v13, 0x2001

    if-eq v7, v13, :cond_ad

    .line 1440
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->preCacheData()V
    :try_end_12e
    .catchall {:try_start_ea .. :try_end_12e} :catchall_130

    goto/16 :goto_ad

    .line 1446
    :catchall_130
    move-exception v13

    if-eqz v2, :cond_136

    .line 1447
    :try_start_133
    invoke-virtual {v2, v6}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_136
    throw v13

    .line 1453
    :sswitch_137
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 1454
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "messageKey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1456
    goto/16 :goto_b2

    .line 1467
    :sswitch_167
    sparse-switch v7, :sswitch_data_250

    .line 1483
    :goto_16a
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1484
    sparse-switch v7, :sswitch_data_266

    goto/16 :goto_b2

    .line 1490
    :sswitch_177
    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->preCacheData()V

    goto/16 :goto_b2

    .line 1470
    :sswitch_17c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCachePolicy:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1475
    :sswitch_1a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/provider/EmailProvider;->mCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v14, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1480
    :sswitch_1b0
    const-string v13, "Delete"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v13, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_16a

    .line 1504
    :cond_1ba
    const-string v13, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1bf
    .catchall {:try_start_133 .. :try_end_1bf} :catchall_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_133 .. :try_end_1bf} :catch_47

    goto/16 :goto_ce

    .line 1374
    nop

    :sswitch_data_1c2
    .sparse-switch
        0x0 -> :sswitch_53
        0x1 -> :sswitch_53
        0x1000 -> :sswitch_53
        0x1001 -> :sswitch_53
        0x2000 -> :sswitch_53
        0x2001 -> :sswitch_53
        0x2002 -> :sswitch_53
    .end sparse-switch

    .line 1395
    :sswitch_data_1e0
    .sparse-switch
        0x0 -> :sswitch_167
        0x1 -> :sswitch_58
        0x1000 -> :sswitch_167
        0x1001 -> :sswitch_58
        0x2000 -> :sswitch_167
        0x2001 -> :sswitch_58
        0x2002 -> :sswitch_58
        0x3000 -> :sswitch_167
        0x3001 -> :sswitch_58
        0x3002 -> :sswitch_137
        0x4000 -> :sswitch_167
        0x4001 -> :sswitch_58
        0x5000 -> :sswitch_167
        0x5001 -> :sswitch_58
        0x6000 -> :sswitch_167
        0x6001 -> :sswitch_58
        0x7000 -> :sswitch_167
        0x7001 -> :sswitch_58
        0x8001 -> :sswitch_58
        0x9000 -> :sswitch_167
        0x9001 -> :sswitch_58
    .end sparse-switch

    .line 1421
    :sswitch_data_236
    .sparse-switch
        0x1 -> :sswitch_ea
        0x1001 -> :sswitch_111
        0x2001 -> :sswitch_11e
        0x2002 -> :sswitch_11e
        0x4001 -> :sswitch_11e
        0x7001 -> :sswitch_11e
    .end sparse-switch

    .line 1467
    :sswitch_data_250
    .sparse-switch
        0x0 -> :sswitch_17c
        0x1000 -> :sswitch_1a3
        0x2000 -> :sswitch_1b0
        0x4000 -> :sswitch_1b0
        0x7000 -> :sswitch_1b0
    .end sparse-switch

    .line 1484
    :sswitch_data_266
    .sparse-switch
        0x0 -> :sswitch_177
        0x1000 -> :sswitch_177
        0x4000 -> :sswitch_177
        0x7000 -> :sswitch_177
    .end sparse-switch
.end method

.method deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "db"
    .parameter "table"
    .parameter "column"
    .parameter "foreignColumn"
    .parameter "foreignTable"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in (select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 806
    .local v0, count:I
    if-lez v0, :cond_50

    .line 807
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orphaned row(s) in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_50
    return-void
.end method

.method declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 11
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 814
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    .line 815
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_bf

    .line 857
    :goto_7
    monitor-exit p0

    return-object v0

    .line 820
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 822
    new-instance v8, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v0, "EmailProvider.db"

    invoke-direct {v8, p1, v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 823
    .local v8, helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    invoke-virtual {v8}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 824
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 825
    new-instance v7, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    const-string v0, "EmailProviderBody.db"

    invoke-direct {v7, p0, p1, v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 826
    .local v7, bodyHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    invoke-virtual {v7}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 827
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5a

    .line 828
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, bodyFileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" as BodyDatabase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 834
    .end local v6           #bodyFileName:Ljava/lang/String;
    :cond_5a
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->restoreIfNeeded(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 836
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_6a

    .line 837
    const-string v0, "EmailProvider"

    const-string v1, "Deleting orphans..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_6a
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Message_Updates"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Message_Deletes"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Mailbox"

    const-string v3, "accountKey"

    const-string v4, "_id"

    const-string v5, "Account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message"

    const-string v3, "accountKey"

    const-string v4, "_id"

    const-string v5, "Account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Policy"

    const-string v3, "_id"

    const-string v4, "policyKey"

    const-string v5, "Account"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_ad

    .line 851
    const-string v0, "EmailProvider"

    const-string v1, "EmailProvider pre-caching..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_ad
    invoke-direct {p0}, Lcom/android/email/provider/EmailProvider;->preCacheData()V

    .line 854
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_bb

    .line 855
    const-string v0, "EmailProvider"

    const-string v1, "EmailProvider ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_bb
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_bd
    .catchall {:try_start_9 .. :try_end_bd} :catchall_bf

    goto/16 :goto_7

    .line 814
    .end local v7           #bodyHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    .end local v8           #helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    :catchall_bf
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter "uri"

    .prologue
    .line 1528
    const-string v3, "getType"

    invoke-static {p1, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 1529
    .local v1, match:I
    sparse-switch v1, :sswitch_data_66

    .line 1568
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1531
    :sswitch_22
    const-string v2, "vnd.android.cursor.item/email-body"

    .line 1566
    :cond_24
    :goto_24
    return-object v2

    .line 1533
    :sswitch_25
    const-string v2, "vnd.android.cursor.dir/email-body"

    goto :goto_24

    .line 1541
    :sswitch_28
    const-string v2, "vnd.android.cursor.item/email-message"

    .line 1542
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "mailboxId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, mailboxId:Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 1544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 1549
    .end local v0           #mailboxId:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :sswitch_4a
    const-string v2, "vnd.android.cursor.dir/email-message"

    goto :goto_24

    .line 1551
    :sswitch_4d
    const-string v2, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_24

    .line 1553
    :sswitch_50
    const-string v2, "vnd.android.cursor.item/email-mailbox"

    goto :goto_24

    .line 1555
    :sswitch_53
    const-string v2, "vnd.android.cursor.dir/email-account"

    goto :goto_24

    .line 1557
    :sswitch_56
    const-string v2, "vnd.android.cursor.item/email-account"

    goto :goto_24

    .line 1560
    :sswitch_59
    const-string v2, "vnd.android.cursor.dir/email-attachment"

    goto :goto_24

    .line 1562
    :sswitch_5c
    const-string v2, "vnd.android.cursor.item/email-attachment"

    goto :goto_24

    .line 1564
    :sswitch_5f
    const-string v2, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_24

    .line 1566
    :sswitch_62
    const-string v2, "vnd.android.cursor.item/email-hostauth"

    goto :goto_24

    .line 1529
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_53
        0x1 -> :sswitch_56
        0x1000 -> :sswitch_4d
        0x1001 -> :sswitch_50
        0x2000 -> :sswitch_4a
        0x2001 -> :sswitch_28
        0x3000 -> :sswitch_59
        0x3001 -> :sswitch_5c
        0x3002 -> :sswitch_59
        0x4000 -> :sswitch_5f
        0x4001 -> :sswitch_62
        0x5000 -> :sswitch_4a
        0x5001 -> :sswitch_28
        0x9000 -> :sswitch_25
        0x9001 -> :sswitch_22
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 1574
    const-string v0, "insert"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v6

    .line 1575
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1576
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1579
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1580
    shr-int/lit8 v2, v6, 0xc

    .line 1581
    const-string v8, "0"

    .line 1586
    const/16 v1, 0x1001

    if-eq v6, v1, :cond_1e

    const/16 v1, 0x1000

    if-ne v6, v1, :cond_32

    .line 1587
    :cond_1e
    const-string v1, "unreadCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1588
    const-string v1, "messageCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    :cond_32
    sparse-switch v6, :sswitch_data_166

    .line 1675
    :try_start_35
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
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_4e} :catch_4e

    .line 1677
    :catch_4e
    move-exception v0

    .line 1678
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1679
    throw v0

    .line 1607
    :sswitch_53
    :try_start_53
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v3, "foo"

    invoke-virtual {v0, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 1608
    invoke-static {p1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1609
    sparse-switch v6, :sswitch_data_1a0

    .line 1640
    :cond_64
    :goto_64
    const/16 v0, 0x5000

    if-eq v6, v0, :cond_6c

    const/16 v0, 0x6000

    if-ne v6, v0, :cond_c8

    .line 1641
    :cond_6c
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

    .line 1611
    :sswitch_85
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1613
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1614
    if-eqz v0, :cond_a9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_a9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a9

    const/4 v3, 0x6

    if-eq v0, v3, :cond_a9

    const/16 v3, 0x8

    if-ne v0, v3, :cond_64

    .line 1625
    :cond_a9
    :sswitch_a9
    sget-object v0, Lcom/android/email/provider/EmailProvider;->CACHE_PROJECTIONS:[[Ljava/lang/String;

    aget-object v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1626
    if-eqz v0, :cond_64

    .line 1627
    const/16 v2, 0x1000

    if-ne v6, v2, :cond_c2

    .line 1628
    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailProvider;->addToMailboxTypeMap(Landroid/database/Cursor;)V

    .line 1632
    :cond_be
    :goto_be
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 1629
    :cond_c2
    if-nez v6, :cond_be

    .line 1630
    invoke-direct {p0, v9, v10}, Lcom/android/email/provider/EmailProvider;->getOrCreateAccountMailboxTypeMap(J)Ljava/util/HashMap;

    goto :goto_be

    .line 1643
    :cond_c8
    const/16 v0, 0x3000

    if-ne v6, v0, :cond_e8

    .line 1644
    const/4 v0, 0x0

    .line 1645
    const-string v2, "flags"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 1646
    const-string v0, "flags"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1649
    :cond_df
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v9, v10, v0}, Lcom/android/email/provider/EmailProvider$AttachmentService;->attachmentChanged(Landroid/content/Context;JI)V
    :try_end_e8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_e8} :catch_4e

    .line 1683
    :cond_e8
    :goto_e8
    invoke-direct {p0, v6}, Lcom/android/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "insert"

    invoke-direct {p0, v0, v2, v8}, Lcom/android/email/provider/EmailProvider;->sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1687
    :goto_f7
    return-object v1

    .line 1656
    :sswitch_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1657
    const-string v2, "mailboxKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1658
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_f7

    .line 1661
    :sswitch_117
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1662
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1663
    const-string v2, "messageKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1664
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_f7

    .line 1667
    :sswitch_136
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1668
    const-string v2, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1669
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_f7

    .line 1671
    :sswitch_155
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v2

    const-string v2, "foo"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1672
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_164
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f8 .. :try_end_164} :catch_4e

    move-result-object v1

    goto :goto_e8

    .line 1594
    :sswitch_data_166
    .sparse-switch
        0x0 -> :sswitch_53
        0x1 -> :sswitch_136
        0x1000 -> :sswitch_53
        0x1001 -> :sswitch_f8
        0x2000 -> :sswitch_53
        0x2001 -> :sswitch_117
        0x3000 -> :sswitch_53
        0x3002 -> :sswitch_155
        0x4000 -> :sswitch_53
        0x5000 -> :sswitch_53
        0x6000 -> :sswitch_53
        0x7000 -> :sswitch_53
        0x8000 -> :sswitch_53
        0x9000 -> :sswitch_53
    .end sparse-switch

    .line 1609
    :sswitch_data_1a0
    .sparse-switch
        0x0 -> :sswitch_a9
        0x1000 -> :sswitch_85
        0x4000 -> :sswitch_a9
        0x7000 -> :sswitch_a9
    .end sparse-switch
.end method

.method protected isCached(Landroid/net/Uri;J)Z
    .registers 7
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2614
    const-string v1, "isCached"

    invoke-static {p1, v1}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 2615
    shr-int/lit8 v1, v1, 0xc

    .line 2616
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v1, v2, v1

    .line 2617
    if-nez v1, :cond_10

    .line 2619
    :cond_f
    :goto_f
    return v0

    .line 2618
    :cond_10
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/provider/ContentCache;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2619
    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1693
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1727
    const-wide/16 v2, 0x0

    .line 1728
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_2f1

    .line 1729
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v12, v2

    .line 1731
    :goto_b
    const/4 v14, 0x0

    .line 1734
    :try_start_c
    const-string v2, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_a1

    move-result v5

    .line 1757
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1759
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1760
    shr-int/lit8 v6, v5, 0xc

    .line 1761
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1765
    const/4 v4, 0x0

    .line 1766
    sget-object v3, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v6

    .line 1768
    if-nez p3, :cond_2ed

    .line 1769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v4, v4, v6

    move-object/from16 v16, v4

    .line 1771
    :goto_37
    if-nez v16, :cond_40

    .line 1772
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/email/provider/ContentCache;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1776
    :cond_40
    sparse-switch v5, :sswitch_data_2f4

    .line 1883
    :try_start_43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_5e} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_5e} :catch_1c7

    .line 1885
    :catch_5e
    move-exception v2

    move-object v3, v14

    .line 1886
    :goto_60
    :try_start_60
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1887
    throw v2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    .line 1893
    :catchall_64
    move-exception v2

    move-object v14, v3

    :goto_66
    if-eqz v16, :cond_78

    if-eqz v14, :cond_78

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_78

    .line 1894
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1896
    :cond_78
    if-nez v14, :cond_a0

    .line 1898
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query returning null for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    throw v2

    .line 1735
    :catch_a1
    move-exception v2

    .line 1736
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1739
    if-eqz v3, :cond_db

    const-string v4, "/-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 1740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1741
    const-string v4, "query"

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v3

    .line 1742
    sparse-switch v3, :sswitch_data_356

    .line 1755
    :cond_db
    throw v2

    .line 1752
    :sswitch_dc
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1905
    :cond_e4
    :goto_e4
    return-object v2

    .line 1779
    :sswitch_e5
    :try_start_e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/provider/EmailProvider;->mCacheAccount:Lcom/android/email/provider/ContentCache;

    invoke-virtual {v2}, Lcom/android/email/provider/ContentCache;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    .line 1780
    const-wide/16 v4, -0x1

    .line 1784
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1785
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1788
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2ea

    .line 1789
    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_181

    const/4 v3, 0x1

    move v6, v3

    .line 1791
    :goto_114
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1793
    if-eqz v6, :cond_184

    move-wide v4, v2

    .line 1802
    :cond_11c
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1803
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_130
    .catchall {:try_start_e5 .. :try_end_130} :catchall_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e5 .. :try_end_130} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_130} :catch_1c7

    .line 1893
    :cond_130
    :goto_130
    if-eqz v16, :cond_142

    if-eqz v2, :cond_142

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_142

    .line 1894
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    .line 1896
    :cond_142
    if-nez v2, :cond_16a

    .line 1898
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query returning null for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_16a
    if-eqz v2, :cond_e4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_e4

    .line 1903
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_e4

    .line 1789
    :cond_181
    const/4 v3, 0x0

    move v6, v3

    goto :goto_114

    .line 1796
    :cond_184
    const-wide/16 v8, -0x1

    cmp-long v6, v4, v8

    if-eqz v6, :cond_18e

    cmp-long v6, v2, v4

    if-gez v6, :cond_2ea

    :cond_18e
    :goto_18e
    move-wide v4, v2

    .line 1799
    goto/16 :goto_f7

    .line 1808
    :sswitch_191
    :try_start_191
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 1809
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1810
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1811
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2}, Lcom/android/email/provider/EmailProvider;->getMailboxIdFromMailboxTypeMap(JI)J

    move-result-wide v3

    .line 1813
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1814
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1c5
    .catchall {:try_start_191 .. :try_end_1c5} :catchall_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_191 .. :try_end_1c5} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_191 .. :try_end_1c5} :catch_1c7

    goto/16 :goto_130

    .line 1888
    :catch_1c7
    move-exception v2

    .line 1889
    :goto_1c8
    :try_start_1c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1890
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1891
    throw v2
    :try_end_1cf
    .catchall {:try_start_1c8 .. :try_end_1cf} :catchall_1cf

    .line 1893
    :catchall_1cf
    move-exception v2

    goto/16 :goto_66

    .line 1828
    :sswitch_1d2
    if-nez v5, :cond_20b

    :try_start_1d4
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20b

    if-nez p3, :cond_20b

    const-string v4, "1"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20b

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/provider/EmailProvider;->mMailboxTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 1832
    const/16 v5, 0x10

    if-ge v4, v5, :cond_20b

    .line 1833
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1834
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_130

    .line 1839
    :cond_20b
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_130

    .line 1852
    :sswitch_21b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 1853
    if-eqz v16, :cond_232

    .line 1854
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/android/email/provider/ContentCache;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_231
    .catchall {:try_start_1d4 .. :try_end_231} :catchall_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d4 .. :try_end_231} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_1d4 .. :try_end_231} :catch_1c7

    move-result-object v14

    .line 1856
    :cond_232
    if-nez v14, :cond_2e7

    .line 1857
    const/4 v4, 0x0

    .line 1858
    if-eqz v16, :cond_2e4

    .line 1859
    :try_start_237
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/email/provider/ContentCache;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCache$CacheToken;

    move-result-object v4

    move-object v15, v4

    .line 1861
    :goto_23e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_251
    .catchall {:try_start_237 .. :try_end_251} :catchall_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_237 .. :try_end_251} :catch_2d8
    .catch Ljava/lang/RuntimeException; {:try_start_237 .. :try_end_251} :catch_1c7

    move-result-object v2

    .line 1863
    if-eqz v16, :cond_130

    .line 1864
    :try_start_254
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v11, v1, v15}, Lcom/android/email/provider/ContentCache;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCache$CacheToken;)Landroid/database/Cursor;
    :try_end_25b
    .catchall {:try_start_254 .. :try_end_25b} :catchall_2ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_254 .. :try_end_25b} :catch_2dc
    .catch Ljava/lang/RuntimeException; {:try_start_254 .. :try_end_25b} :catch_2d3

    move-result-object v2

    goto/16 :goto_130

    .line 1870
    :sswitch_25e
    :try_start_25e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1871
    const-string v3, "Attachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_130

    .line 1877
    :sswitch_296
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1878
    const-string v3, "QuickResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accountKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2cb
    .catchall {:try_start_25e .. :try_end_2cb} :catchall_1cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25e .. :try_end_2cb} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_25e .. :try_end_2cb} :catch_1c7

    move-result-object v2

    goto/16 :goto_130

    .line 1893
    :catchall_2ce
    move-exception v3

    move-object v14, v2

    move-object v2, v3

    goto/16 :goto_66

    .line 1888
    :catch_2d3
    move-exception v3

    move-object v14, v2

    move-object v2, v3

    goto/16 :goto_1c8

    .line 1885
    :catch_2d8
    move-exception v2

    move-object v3, v14

    goto/16 :goto_60

    :catch_2dc
    move-exception v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_60

    :cond_2e4
    move-object v15, v4

    goto/16 :goto_23e

    :cond_2e7
    move-object v2, v14

    goto/16 :goto_130

    :cond_2ea
    move-wide v2, v4

    goto/16 :goto_18e

    :cond_2ed
    move-object/from16 v16, v4

    goto/16 :goto_37

    :cond_2f1
    move-wide v12, v2

    goto/16 :goto_b

    .line 1776
    :sswitch_data_2f4
    .sparse-switch
        0x0 -> :sswitch_1d2
        0x1 -> :sswitch_21b
        0x5 -> :sswitch_e5
        0x1000 -> :sswitch_1d2
        0x1001 -> :sswitch_21b
        0x1002 -> :sswitch_191
        0x2000 -> :sswitch_1d2
        0x2001 -> :sswitch_21b
        0x3000 -> :sswitch_1d2
        0x3001 -> :sswitch_21b
        0x3002 -> :sswitch_25e
        0x4000 -> :sswitch_1d2
        0x4001 -> :sswitch_21b
        0x5000 -> :sswitch_1d2
        0x5001 -> :sswitch_21b
        0x6000 -> :sswitch_1d2
        0x6001 -> :sswitch_21b
        0x7000 -> :sswitch_1d2
        0x7001 -> :sswitch_21b
        0x8000 -> :sswitch_1d2
        0x8001 -> :sswitch_21b
        0x8002 -> :sswitch_296
        0x9000 -> :sswitch_1d2
        0x9001 -> :sswitch_21b
    .end sparse-switch

    .line 1742
    :sswitch_data_356
    .sparse-switch
        0x1 -> :sswitch_dc
        0x1001 -> :sswitch_dc
        0x2001 -> :sswitch_dc
        0x3001 -> :sswitch_dc
        0x4001 -> :sswitch_dc
        0x5001 -> :sswitch_dc
        0x6001 -> :sswitch_dc
        0x7001 -> :sswitch_dc
        0x9001 -> :sswitch_dc
    .end sparse-switch
.end method

.method public shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 985
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 986
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 987
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 989
    :cond_c
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    .line 990
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 991
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 993
    :cond_17
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2091
    sget-object v3, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 2092
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 2093
    const/4 v3, 0x0

    .line 2291
    :goto_a
    return v3

    .line 2094
    :cond_b
    sget-object v3, Lcom/android/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_24

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    goto :goto_a

    .line 2099
    :cond_24
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 2101
    const-string v3, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v13

    .line 2102
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2103
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 2105
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2106
    shr-int/lit8 v4, v13, 0xc

    .line 2111
    const/16 v5, 0x1001

    if-eq v13, v5, :cond_46

    const/16 v5, 0x1000

    if-ne v13, v5, :cond_54

    .line 2112
    :cond_46
    const-string v5, "unreadCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2113
    const-string v5, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2116
    :cond_54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/provider/EmailProvider;->mContentCaches:[Lcom/android/email/provider/ContentCache;

    aget-object v15, v5, v4

    .line 2117
    sget-object v5, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v5, v4

    .line 2118
    const-string v11, "0"

    .line 2122
    sparse-switch v13, :sswitch_data_2ac

    .line 2280
    :try_start_63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_7e} :catch_7e

    .line 2282
    :catch_7e
    move-exception v3

    .line 2283
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 2284
    throw v3

    .line 2125
    :sswitch_83
    :try_start_83
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 2126
    const-string v5, "field"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2127
    const-string v5, "add"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 2128
    if-eqz v16, :cond_a4

    if-nez v17, :cond_bf

    .line 2129
    :cond_a4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No field/add specified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2131
    :cond_bf
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2132
    if-eqz v15, :cond_c9

    .line 2133
    invoke-virtual {v15, v11}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_c9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_83 .. :try_end_c9} :catch_7e

    .line 2136
    :cond_c9
    :try_start_c9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_148

    .line 2138
    const/4 v5, 0x2

    :try_start_cd
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_143

    move-result-object v6

    .line 2143
    const/4 v5, 0x0

    .line 2144
    const/4 v7, 0x1

    :try_start_ea
    new-array v7, v7, [Ljava/lang/String;

    .line 2145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2a9

    .line 2146
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 2147
    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v8, v8, v19

    .line 2148
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2149
    const-string v5, "_id=?"

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2151
    :goto_118
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11b
    .catchall {:try_start_ea .. :try_end_11b} :catchall_13e

    .line 2153
    :try_start_11b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_143

    .line 2156
    :try_start_11e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_148

    .line 2159
    if-eqz v15, :cond_128

    .line 2160
    :try_start_123
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_128
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_123 .. :try_end_128} :catch_7e

    :cond_128
    move-object v5, v11

    move v3, v4

    move-object v4, v12

    .line 2288
    :goto_12b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lcom/android/email/provider/EmailProvider;->sendNotifierChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_a

    .line 2153
    :catchall_13e
    move-exception v4

    :try_start_13f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_143
    .catchall {:try_start_13f .. :try_end_143} :catchall_143

    .line 2156
    :catchall_143
    move-exception v4

    :try_start_144
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_148

    .line 2159
    :catchall_148
    move-exception v3

    if-eqz v15, :cond_150

    .line 2160
    :try_start_14b
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_150
    throw v3

    .line 2174
    :sswitch_151
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2175
    if-eqz v15, :cond_161

    .line 2176
    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_161
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14b .. :try_end_161} :catch_7e

    .line 2179
    :cond_161
    const/16 v6, 0x2002

    if-ne v13, v6, :cond_1bf

    .line 2184
    :try_start_165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2188
    :cond_17b
    :goto_17b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18a
    .catchall {:try_start_165 .. :try_end_18a} :catchall_1de
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_165 .. :try_end_18a} :catch_1da

    move-result v3

    .line 2195
    if-eqz v15, :cond_192

    .line 2196
    :try_start_18d
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2199
    :cond_192
    const/16 v4, 0x3001

    if-ne v13, v4, :cond_2a6

    .line 2200
    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a6

    .line 2201
    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2202
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/provider/EmailProvider;->mAttachmentService:Lcom/android/email/provider/EmailProvider$AttachmentService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/android/email/provider/EmailProvider$AttachmentService;->attachmentChanged(Landroid/content/Context;JI)V
    :try_end_1bc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18d .. :try_end_1bc} :catch_7e

    move-object v4, v12

    .line 2204
    goto/16 :goto_12b

    .line 2185
    :cond_1bf
    const/16 v6, 0x2001

    if-ne v13, v6, :cond_17b

    .line 2186
    :try_start_1c3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from Message_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d9
    .catchall {:try_start_1c3 .. :try_end_1d9} :catchall_1de
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c3 .. :try_end_1d9} :catch_1da

    goto :goto_17b

    .line 2190
    :catch_1da
    move-exception v3

    .line 2192
    const/16 p2, 0x0

    .line 2193
    :try_start_1dd
    throw v3
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1de

    .line 2195
    :catchall_1de
    move-exception v3

    if-eqz v15, :cond_1e6

    .line 2196
    :try_start_1e1
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_1e6
    throw v3

    .line 2215
    :sswitch_1e7
    sparse-switch v13, :sswitch_data_306

    .line 2246
    :goto_1ea
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v5, v11

    move-object v4, v12

    .line 2247
    goto/16 :goto_12b

    .line 2222
    :sswitch_1f8
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2224
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_208
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e1 .. :try_end_208} :catch_7e

    .line 2225
    const/4 v4, 0x0

    .line 2227
    :goto_209
    :try_start_209
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_226

    .line 2228
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1, v7, v8}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2231
    add-int/lit8 v4, v4, 0x1

    goto :goto_209

    .line 2233
    :cond_226
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_229
    .catchall {:try_start_209 .. :try_end_229} :catchall_234

    .line 2235
    :try_start_229
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2236
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v5, v11

    move v3, v4

    move-object v4, v12

    .line 2238
    goto/16 :goto_12b

    .line 2235
    :catchall_234
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2236
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2243
    :sswitch_23c
    const-string v5, "Update"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v5, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1ea

    .line 2250
    :sswitch_246
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2251
    if-eqz v15, :cond_256

    .line 2252
    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V

    .line 2254
    :cond_256
    sget-object v6, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 2255
    if-eqz p2, :cond_26e

    .line 2256
    const-string v7, "set"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 2257
    if-eqz v7, :cond_26e

    .line 2258
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2259
    const-string v8, "newMessageCount"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_229 .. :try_end_26e} :catch_7e

    .line 2263
    :cond_26e
    :try_start_26e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27b
    .catchall {:try_start_26e .. :try_end_27b} :catchall_287

    move-result v3

    .line 2266
    if-eqz v15, :cond_283

    .line 2267
    :try_start_27e
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2270
    :cond_283
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_12b

    .line 2266
    :catchall_287
    move-exception v3

    if-eqz v15, :cond_28f

    .line 2267
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_28f
    throw v3

    .line 2273
    :sswitch_290
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2276
    const-string v4, "Reset all new counts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2277
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;
    :try_end_2a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27e .. :try_end_2a3} :catch_7e

    move-object v5, v11

    .line 2278
    goto/16 :goto_12b

    :cond_2a6
    move-object v4, v12

    goto/16 :goto_12b

    :cond_2a9
    move v4, v5

    goto/16 :goto_118

    .line 2122
    :sswitch_data_2ac
    .sparse-switch
        0x0 -> :sswitch_1e7
        0x1 -> :sswitch_151
        0x2 -> :sswitch_83
        0x3 -> :sswitch_290
        0x4 -> :sswitch_246
        0x1000 -> :sswitch_1e7
        0x1001 -> :sswitch_151
        0x1002 -> :sswitch_83
        0x2000 -> :sswitch_1e7
        0x2001 -> :sswitch_151
        0x2002 -> :sswitch_151
        0x3000 -> :sswitch_1e7
        0x3001 -> :sswitch_151
        0x4000 -> :sswitch_1e7
        0x4001 -> :sswitch_151
        0x5000 -> :sswitch_1e7
        0x5001 -> :sswitch_151
        0x7000 -> :sswitch_1e7
        0x7001 -> :sswitch_151
        0x8001 -> :sswitch_151
        0x9000 -> :sswitch_1e7
        0x9001 -> :sswitch_151
    .end sparse-switch

    .line 2215
    :sswitch_data_306
    .sparse-switch
        0x0 -> :sswitch_1f8
        0x1000 -> :sswitch_1f8
        0x2000 -> :sswitch_23c
        0x4000 -> :sswitch_1f8
        0x7000 -> :sswitch_1f8
    .end sparse-switch
.end method
