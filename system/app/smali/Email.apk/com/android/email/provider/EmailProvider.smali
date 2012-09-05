.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$DatabaseHelper;,
        Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

.field private static final CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

.field private static final GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String;

.field private static final RESETSECURITYSYNCKEY_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

.field private static sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

.field private static final sCacheAccount:Lcom/android/email/provider/ContentCache;

.field private static final sCacheHostAuth:Lcom/android/email/provider/ContentCache;

.field static final sCacheMailbox:Lcom/android/email/provider/ContentCache;

.field private static final sCacheMessage:Lcom/android/email/provider/ContentCache;

.field private static sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 110
    sput-object v4, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    .line 111
    sput-object v4, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    .line 121
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "mailboxKey"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    .line 136
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    .line 139
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    .line 142
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Message"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v8}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    .line 272
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Account"

    aput-object v1, v0, v5

    const-string v1, "Mailbox"

    aput-object v1, v0, v6

    const-string v1, "Message"

    aput-object v1, v0, v7

    const-string v1, "Attachment"

    aput-object v1, v0, v8

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

    const-string v2, "FollowupFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FollowupFlag_Updates"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FollowupFlag_Deletes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Policies"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Mailbox_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Message_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Account_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CertificateCache"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RecipientInformation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "historyAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EmailAddressCache"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "QuickResponse"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Document"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "IRMTemplate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 309
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/android/email/provider/ContentCache;

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v7

    aput-object v4, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    aput-object v4, v0, v1

    const/16 v1, 0xc

    aput-object v4, v0, v1

    const/16 v1, 0xd

    aput-object v4, v0, v1

    const/16 v1, 0xe

    aput-object v4, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    const/16 v1, 0x10

    aput-object v4, v0, v1

    const/16 v1, 0x11

    aput-object v4, v0, v1

    const/16 v1, 0x12

    aput-object v4, v0, v1

    const/16 v1, 0x13

    aput-object v4, v0, v1

    const/16 v1, 0x14

    aput-object v4, v0, v1

    const/16 v1, 0x15

    aput-object v4, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    .line 316
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 435
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 438
    const-string v1, "com.android.email.provider"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    const-string v1, "com.android.email.provider"

    const-string v2, "account/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 445
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 447
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    const-string v1, "com.android.email.provider"

    const-string v2, "account/#/mailbox"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox"

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#"

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#/message"

    const/16 v3, 0x1003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 462
    const-string v1, "com.android.email.provider"

    const-string v2, "message"

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    const-string v1, "com.android.email.provider"

    const-string v2, "message/#"

    const/16 v3, 0x2001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment"

    const/16 v3, 0x3000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 470
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/#"

    const/16 v3, 0x3001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 473
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/message/#"

    const/16 v3, 0x3002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/content/*"

    const/16 v3, 0x3003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    const-string v1, "com.android.email.provider"

    const-string v2, "body"

    const v3, 0x14000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#"

    const v3, 0x14001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    const-string v1, "com.android.email.provider"

    const-string v2, "body/message/#"

    const v3, 0x14002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#/html"

    const v3, 0x14003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 489
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#/text"

    const v3, 0x14004

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 492
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth"

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth/#"

    const/16 v3, 0x4001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdAddToField/#"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 500
    const-string v1, "com.android.email.provider"

    const-string v2, "accountIdAddToField/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 508
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage/#"

    const/16 v3, 0x2002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage"

    const/16 v3, 0x6000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 518
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/#"

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/mailbox/#"

    const/16 v3, 0x6002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage"

    const/16 v3, 0x5000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 527
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage/#"

    const/16 v3, 0x5001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    const-string v1, "com.android.email.provider"

    const-string v2, "followupFlag"

    const/16 v3, 0x7000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedFollowupFlag"

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 534
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedFollowupFlag"

    const v3, 0x9000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 537
    const-string v1, "com.android.email.provider"

    const-string v2, "followupFlag/#"

    const/16 v3, 0x7001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 538
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedFollowupFlag/#"

    const v3, 0x8001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 540
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedFollowupFlag/#"

    const v3, 0x9001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 547
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedFollowupFlag/#"

    const/16 v3, 0x7002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 552
    const-string v1, "com.android.email.provider"

    const-string v2, "policies"

    const v3, 0xa000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    const-string v1, "com.android.email.provider"

    const-string v2, "policies/#"

    const v3, 0xa001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 557
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb"

    const v3, 0xb000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 558
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb/#"

    const v3, 0xb001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb/#/mailbox"

    const v3, 0xb002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 561
    const-string v1, "com.android.email.provider"

    const-string v2, "messagecb"

    const v3, 0xc000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 562
    const-string v1, "com.android.email.provider"

    const-string v2, "messagecb/#"

    const v3, 0xc001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb"

    const v3, 0xd000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 564
    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb/#"

    const v3, 0xd001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb/protocol"

    const v3, 0xd002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 568
    const-string v1, "com.android.email.provider"

    const-string v2, "certificateCache"

    const v3, 0xe000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 571
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage"

    const/16 v3, 0x2003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 574
    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation"

    const v3, 0xf000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation/#"

    const v3, 0xf001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation/filter/*"

    const v3, 0xf002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 583
    const-string v1, "com.android.email.provider"

    const-string v2, "document"

    const v3, 0x13000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    const-string v1, "com.android.email.provider"

    const-string v2, "document/#"

    const v3, 0x13001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    const-string v1, "com.android.email.provider"

    const-string v2, "historyAccount"

    const/high16 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    const-string v1, "com.android.email.provider"

    const-string v2, "IRMTemplate"

    const v3, 0x15000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 590
    const-string v1, "com.android.email.provider"

    const-string v2, "IRMTemplate/#"

    const v3, 0x15001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 594
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache"

    const v3, 0x11000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 595
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/filter"

    const v3, 0x11001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/filter/*"

    const v3, 0x11001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 597
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/#"

    const v3, 0x11002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 602
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse"

    const v3, 0x12000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 604
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/#"

    const v3, 0x12001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 606
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/account/#"

    const v3, 0x12002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 609
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 610
    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3248
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->RESETSECURITYSYNCKEY_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 4599
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v0, v5

    const-string v1, "emailAddress"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 4605
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "protocol"

    aput-object v1, v0, v5

    const-string v1, "password"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    .line 4726
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "flags"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1718
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static convertAccountFlagsFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4736
    .line 4738
    :try_start_2
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id>0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_96
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_10} :catch_9e

    move-result-object v1

    .line 4744
    if-eqz v1, :cond_8b

    .line 4745
    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 4746
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4747
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 4749
    and-int/lit16 v4, v3, -0xf81

    .line 4751
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_83

    const/16 v0, 0x200

    :goto_2b
    or-int/2addr v4, v0

    .line 4752
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_85

    const/16 v0, 0x400

    :goto_32
    or-int/2addr v4, v0

    .line 4753
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_87

    const/16 v0, 0x800

    :goto_39
    or-int/2addr v4, v0

    .line 4754
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_89

    const/16 v0, 0x2000

    :goto_40
    or-int/2addr v0, v4

    .line 4755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Account set flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_13 .. :try_end_73} :catchall_9c
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_73} :catch_74

    goto :goto_13

    .line 4761
    :catch_74
    move-exception v0

    .line 4762
    :goto_75
    :try_start_75
    const-string v2, "EmailProvider"

    const-string v3, "Exception during converting account flags from GB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_9c

    .line 4765
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4767
    :goto_82
    return-void

    :cond_83
    move v0, v9

    .line 4751
    goto :goto_2b

    :cond_85
    move v0, v9

    .line 4752
    goto :goto_32

    :cond_87
    move v0, v9

    .line 4753
    goto :goto_39

    :cond_89
    move v0, v9

    .line 4754
    goto :goto_40

    .line 4759
    :cond_8b
    :try_start_8b
    const-string v0, "EmailProvider"

    const-string v2, "convertAccountFlagsFromGB(): null account cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_9c
    .catch Landroid/database/SQLException; {:try_start_8b .. :try_end_92} :catch_74

    .line 4765
    :cond_92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_82

    :catchall_96
    move-exception v0

    move-object v1, v8

    :goto_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_9c
    move-exception v0

    goto :goto_98

    .line 4761
    :catch_9e
    move-exception v0

    move-object v1, v8

    goto :goto_75
.end method

.method static createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 1438
    const-string v0, " (_id integer primary key autoincrement, accountKey integer, sevenAccountKey integer, typeMsg integer, timeLimit integer default 7, sizeLimit integer default 50, peakTime integer default 0, offPeakTime integer default 1, days text default \'0111110\', peakStartTime text default \'09:00\', peakEndTime text default \'18:00\', whileRoaming integer default 1, attachmentEnabled integer default 5000 );"

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Account_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1463
    const-string v0, "Account_CB"

    const-string v1, "accountKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1464
    const-string v0, "Account_CB"

    const-string v1, "sevenAccountKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1465
    const-string v0, "Account_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method private static createAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4652
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 4653
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.android.email"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4655
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 4656
    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4657
    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 4658
    const-string v0, "com.android.contacts"

    invoke-static {v1, v0, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4659
    const-string v0, "com.android.calendar"

    invoke-static {v1, v0, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4660
    return-void
.end method

.method static createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 889
    const-string v0, " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text, emailsize integer default 3, policyKey text, peakDays integer, peakStartMinute integer, peakEndMinute integer, peakSchedule integer, offPeakSchedule integer, roamingSchedule integer, calendarSyncLookback integer default 0, conflict integer default 0, smimeOwnCertificateAlias text, smimeOptionsFlags integer default 0, smimeSignAlgorithm integer default 0, smimeEncryptionAlgorithm integer default 0, conversationMode integer default 0, textPreview integer  default 0,deviceInfoSent integer default 0, deviceBlockedType integer default 0,IRMTemplateTimeStamp text, cbaCertificateAlias text, messageFormat integer default 0, accountType integer default -1, easLocalChange integer default 0, forwardWithFiles integer default 1, autoDownload integer default 0, recentMessages integer default 0, showImage integer default 1, autoRetryTimes integer default 3);"

    .line 1014
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

    .line 1016
    const-string v1, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    const-string v1, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1032
    const-string v1, "create trigger account_insert after insert on Account begin  update HostAuth set accountKey = new._id where accountKey = 0; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1037
    const-string v1, "create trigger account_delete_recipientinformation before delete on Account begin delete from RecipientInformation where accountkey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1042
    const-string v1, "create trigger account_delete_irm before delete on Account begin delete from IRMTemplate where AccountKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    return-void
.end method

.method static createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 1147
    const-string v0, " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob, vmAttOrder integer default 0,vmAttDuration integer default 0,accountKey integer,isInline integer);"

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1165
    const-string v0, "Attachment"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method static createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 1185
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text);"

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1191
    const-string v0, "Body"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method static createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1298
    const-string v0, " (_id integer primary key autoincrement, email text UNIQUE, certificate text );"

    .line 1302
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table CertificateCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1303
    return-void
.end method

.method static createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1325
    const-string v1, "linkId text UNIQUE, displayName text, isFolder integer, creationDate integer, lastModifiedDate integer, ishidden integer, contentLength integer, contentType text, mailboxKey integer, accountKey integer,parentFolderLinkId integer);"

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1359
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "creationDate"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "isFolder"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ishidden"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mailboxKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "syncServerId"

    aput-object v3, v1, v2

    .line 1364
    array-length v2, v1

    :goto_48
    if-ge v0, v2, :cond_58

    aget-object v3, v1, v0

    .line 1365
    const-string v4, "Document"

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1379
    :cond_58
    return-void
.end method

.method static createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1485
    const-string v0, " (_id integer primary key autoincrement, accountAddress text constraint email unique not null, accountName text, accountSource text, accountPrefix text, timeStamp integer, usageCount integer, operationType  integer, accountRank integer );"

    .line 1494
    .local v0, combinedSearchColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table EmailAddressCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1495
    const-string v1, "CREATE TRIGGER email_cache_delete BEFORE INSERT ON EmailAddressCache WHEN ((SELECT COUNT(*) FROM EmailAddressCache)  >= 50 )  begin delete from EmailAddressCache  where timeStamp= (SELECT min(timeStamp) from EmailAddressCache ) AND usageCount= (SELECT min(usageCount) from EmailAddressCache );end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1496
    const-string v1, "CREATE TRIGGER email_cache_update AFTER UPDATE ON EmailAddressCache begin update EmailAddressCache set usageCount = NEW.usageCount + OLD.usageCount where _id=NEW._id;end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method static createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1248
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, messageSyncServerId text, taskKey integer, taskSyncServerId text, ringtoneUri text, status integer, flagType text, completeTime text, dateCompleted text, startDate text, dueDate text, UTCStartDate text, UTCDueDate text, reminderSet integer, reminderTime text, ordinalDate text, sub_ordinaldate text );"

    .line 1262
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Deletes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1267
    const-string v1, "create trigger message_delete_followup before delete on Message begin delete from FollowupFlag where messageKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method static createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 4593
    const-string v0, " (_id integer primary key autoincrement, EmailAddress text UNIQUE, TimeDate text );"

    .line 4596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table historyAccount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4597
    return-void
.end method

.method static createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1078
    const-string v0, " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer);"

    .line 1084
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

    .line 1085
    return-void
.end method

.method static createIRMTemplateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1058
    const-string v0, " (_id integer primary key autoincrement, AccountKey integer, IRMTemplateDescription text, IRMTemplateId text, IRMTemplateName text);"

    .line 1064
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table IRMTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method static createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "tableName"
    .parameter "columnName"

    .prologue
    .line 639
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

.method static createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 1397
    const-string v0, " (_id integer primary key autoincrement, mailboxKey integer, typeMsg integer, sevenMailboxKey integer, syncFlag integer);"

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Mailbox_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1403
    const-string v0, "Mailbox_CB"

    const-string v1, "mailboxKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1404
    const-string v0, "Mailbox_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method static createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1096
    const-string v0, " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, parentKey integer, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text, messageCount integer not null default 0,flagChanged integer, dstMailboxId text, newDisplayName text, flagNoSelect integer default 0, lastTouchedTime integer default 0 ,offpeakSyncSchedule integer ,peakSyncSchedule integer ,SyncIntervalReference integer default -1 ,keyWord text );"

    .line 1129
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

    .line 1130
    const-string v1, "create index mailbox_serverId on Mailbox (serverId)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string v1, "create index mailbox_accountKey on Mailbox (accountKey)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1135
    const-string v1, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    return-void
.end method

.method static createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 1416
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, typeMsg integer,sevenMessageKey integer, missingBody integer, missingHtmlBody integer, unkEncoding integer, sevenAccountKey integer );"

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Message_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1425
    const-string v0, "Message_CB"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1426
    const-string v0, "Message_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method static createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 644
    const-string v1, "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flagReply integer, originalId integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, threadId integer, threadName text, importance integer default 1, istruncated integer default 0, flagMoved integer default 0, dstMailboxKey integer default -1,flagStatus integer default 0, isMimeLoaded integer default 0, smimeFlags integer default 0, encryptionAlgorithm integer default 0, conversationId text, conversationIndex blob, followupflag integer default 0, umCallerId text, umUserNotes text,lastVerb integer default 0, lastVerbTime integer default 0,messageType integer default 0, messageDirty integer default 0, accountSchema text, mailboxType integer default -1, IRMTemplateId text, IRMContentExpiryDate text, IRMContentOwner text, IRMLicenseFlag integer default -1, IRMOwner integer, IRMRemovalFlag integer default 0, IRMTemplateName text, IRMTemplateDescription text, EasLocalDeleteFlag integer default 0, EasLocalReadFlag integer default 0, snippet text, retrySendTimes integer default 0);"

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (_id integer unique, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create table Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Message_Updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Message_Deletes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeStamp"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "flagRead"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "flagLoaded"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mailboxKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "syncServerId"

    aput-object v3, v1, v2

    .line 794
    array-length v2, v1

    :goto_87
    if-ge v0, v2, :cond_97

    aget-object v3, v1, v0

    .line 795
    const-string v4, "Message"

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 803
    :cond_97
    const-string v0, "create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 815
    const-string v0, "create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    const-string v0, "create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 830
    const-string v0, "create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    const-string v0, "create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    const-string v0, "create trigger message_count_message_insert after insert on Message begin update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 859
    const-string v0, "create trigger message_count_message_delete after delete on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 866
    const-string v0, "create trigger message_count_message_move after update of mailboxKey on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; update Mailbox set messageCount=messageCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method static createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1216
    const-string v0, " (_id integer primary key autoincrement, name text, type text, value text, account_id integer , CONSTRAINT policyconstraint UNIQUE(account_id,name));"

    .line 1224
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Policies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method static createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1178
    const-string v0, " (_id integer primary key autoincrement, quickResponse text, accountKey integer);"

    .line 1181
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

    .line 1182
    return-void
.end method

.method static createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1274
    const-string v0, " (_id integer primary key autoincrement, server_id text, accountkey integer, email_address text, fileas text, alias text, weightedrank integer );"

    .line 1281
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table RecipientInformation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method static deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 22
    .parameter "database"
    .parameter "tableName"

    .prologue
    .line 1642
    if-eqz p0, :cond_1a

    .line 1645
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

    .line 1649
    .local v11, c:Landroid/database/Cursor;
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_51

    move-result v2

    if-nez v2, :cond_1b

    .line 1692
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1695
    .end local v11           #c:Landroid/database/Cursor;
    :cond_1a
    :goto_1a
    return-void

    .line 1651
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1b
    :try_start_1b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v13, foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    .local v19, notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .local v12, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 1655
    .local v6, bindArray:[Ljava/lang/String;
    :cond_2d
    :goto_2d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 1659
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1662
    .local v15, mailboxId:J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1663
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_1b .. :try_end_50} :catchall_51

    goto :goto_2d

    .line 1692
    .end local v6           #bindArray:[Ljava/lang/String;
    .end local v12           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13           #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #mailboxId:J
    .end local v19           #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_51
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1666
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

    .line 1667
    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1668
    const-string v3, "Mailbox"

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_75
    .catchall {:try_start_56 .. :try_end_75} :catchall_51

    move-result-object v10

    .line 1673
    .local v10, boxCursor:Landroid/database/Cursor;
    :try_start_76
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1674
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_9d

    .line 1682
    :goto_83
    :try_start_83
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_51

    goto :goto_2d

    .line 1678
    :cond_87
    :try_start_87
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_87 .. :try_end_9c} :catchall_9d

    goto :goto_83

    .line 1682
    :catchall_9d
    move-exception v2

    :try_start_9e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1687
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

    .line 1688
    .local v17, messageId:J
    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1689
    const-string v2, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_9e .. :try_end_c6} :catchall_51

    goto :goto_a6

    .line 1692
    .end local v17           #messageId:J
    :cond_c7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a
.end method

.method static dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4
    .parameter "db"
    .parameter "triggerName"

    .prologue
    .line 1478
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop trigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_16} :catch_17

    .line 1481
    :goto_16
    return-void

    .line 1479
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method static enableEmailSyncFromGB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 4614
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
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_d} :catch_61

    move-result-object v8

    .line 4617
    const/4 v0, 0x1

    :try_start_f
    new-array v4, v0, [Ljava/lang/String;

    .line 4618
    :goto_11
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 4619
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4621
    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_5c

    move-result-object v1

    .line 4625
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 4626
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4627
    const-string v2, "eas"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 4628
    new-instance v0, Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4633
    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_58
    .catchall {:try_start_2d .. :try_end_58} :catchall_7b

    .line 4638
    :cond_58
    :try_start_58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_11

    .line 4642
    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_61
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_61} :catch_61

    .line 4644
    :catch_61
    move-exception v0

    .line 4646
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling Sync Email option from GB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4648
    :goto_7a
    return-void

    .line 4638
    :catchall_7b
    move-exception v0

    :try_start_7c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_5c

    .line 4642
    :cond_80
    :try_start_80
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catch Landroid/database/SQLException; {:try_start_80 .. :try_end_83} :catch_61

    goto :goto_7a
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 623
    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 624
    .local v0, match:I
    if-gez v0, :cond_21

    .line 625
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

    .line 629
    :cond_21
    return v0
.end method

.method public static getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 4580
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 4581
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 4582
    if-eqz v1, :cond_1a

    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v1

    if-ne v2, v1, :cond_1a

    .line 4585
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1b

    const-string v0, "Trash"

    .line 4588
    :cond_1a
    :goto_1a
    return-object v0

    .line 4585
    :cond_1b
    const-string v0, "UnifiedInbox"

    goto :goto_1a
.end method

.method private populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 1319
    return-void
.end method

.method static recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 4568
    const-string v0, "update Mailbox set messageCount= (select count(*) from Message where mailboxKey = Mailbox._id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4571
    return-void
.end method

.method static resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1470
    :try_start_0
    const-string v0, "drop table Account_CB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 1473
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1474
    return-void

    .line 1471
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method static resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1050
    :try_start_0
    const-string v0, "drop table Account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 1053
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1054
    return-void

    .line 1051
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
    .line 1170
    :try_start_0
    const-string v0, "drop table Attachment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 1173
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1174
    return-void

    .line 1171
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method private resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1501
    :try_start_0
    const-string v0, "drop table EmailAddressCache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 1504
    :goto_5
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1506
    return-void

    .line 1502
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
    .line 1089
    :try_start_0
    const-string v0, "drop table HostAuth"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 1092
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1093
    return-void

    .line 1090
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
    .line 1140
    :try_start_0
    const-string v0, "drop table Mailbox"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 1143
    :goto_5
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1144
    return-void

    .line 1141
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
    .line 878
    :try_start_0
    const-string v0, "drop table Message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 879
    const-string v0, "drop table Message_Updates"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 880
    const-string v0, "drop table Message_Deletes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 882
    const-string v0, "drop table Message_CB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_14} :catch_18

    .line 885
    :goto_14
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 886
    return-void

    .line 883
    :catch_18
    move-exception v0

    goto :goto_14
.end method

.method static setDefaultRingtoneToPostman(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 4775
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update Account set ringtoneUri = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->DEFAULTRINGTONEURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 4783
    :goto_1e
    return-void

    .line 4778
    :catch_1f
    move-exception v0

    .line 4781
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db set DEFAULTRINGTONEURI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method static updatePasswordModeFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 1237
    const-string v0, "update Policies set value=\'32\' where name = \'PasswordMode\' AND (value = \'2\' OR value = \'1\');"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    const-string v0, "update Policies set value=\'64\' where name = \'PasswordMode\' AND value = \'4\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method static upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v1, 0x5

    .line 1195
    if-ge p1, v1, :cond_c

    .line 1197
    :try_start_3
    const-string v1, "drop table Body"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1198
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_b} :catch_1e

    .line 1212
    :cond_b
    :goto_b
    return-void

    .line 1201
    :cond_c
    if-ne p1, v1, :cond_b

    .line 1203
    :try_start_e
    const-string v1, "alter table Body add introText text"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_13} :catch_15

    .line 1210
    :goto_13
    const/4 p1, 0x6

    goto :goto_b

    .line 1205
    :catch_15
    move-exception v0

    .line 1208
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProviderBody.db from v5 to v6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 1199
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1e
    move-exception v1

    goto :goto_b
.end method

.method static upgradeEmailAccountManagerDB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 4665
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

    .line 4668
    const/4 v0, 0x1

    :try_start_f
    new-array v4, v0, [Ljava/lang/String;

    .line 4669
    :goto_11
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 4670
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4672
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

    .line 4676
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 4677
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4679
    const-string v2, "imap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "pop3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 4681
    :cond_48
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_73

    .line 4682
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

    .line 4686
    :cond_73
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/android/email/provider/EmailProvider;->createAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_2d .. :try_end_80} :catchall_a3

    .line 4703
    :cond_80
    :try_start_80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_11

    .line 4707
    :catchall_84
    move-exception v0

    :try_start_85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_89
    .catch Landroid/database/SQLException; {:try_start_85 .. :try_end_89} :catch_89

    .line 4709
    :catch_89
    move-exception v0

    .line 4711
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

    .line 4713
    :goto_a2
    return-void

    .line 4703
    :catchall_a3
    move-exception v0

    :try_start_a4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_84

    .line 4707
    :cond_a8
    :try_start_a8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_ab
    .catch Landroid/database/SQLException; {:try_start_a8 .. :try_end_ab} :catch_89

    goto :goto_a2
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4254
    if-nez p2, :cond_3

    .line 4262
    :goto_2
    return-object p1

    .line 4257
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4258
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4259
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4260
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4233
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4234
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    if-eqz p2, :cond_1e

    .line 4237
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4238
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4241
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 7
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
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 4541
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4542
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4543
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4545
    :try_start_c
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 4546
    .local v3, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_38
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_13} :catch_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_13} :catch_2a

    .line 4556
    :try_start_13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    .line 4559
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :goto_16
    return-object v3

    .line 4557
    .restart local v3       #results:[Landroid/content/ContentProviderResult;
    :catch_17
    move-exception v2

    .line 4558
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 4548
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catch_1c
    move-exception v2

    .line 4549
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_38

    .line 4556
    :try_start_20
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_25

    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_23
    move-object v3, v4

    .line 4559
    goto :goto_16

    .line 4557
    .restart local v2       #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_25
    move-exception v2

    .line 4558
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 4551
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2a
    move-exception v2

    .line 4552
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 4556
    :try_start_2e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_33

    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :goto_31
    move-object v3, v4

    .line 4559
    goto :goto_16

    .line 4557
    .restart local v2       #e:Landroid/database/sqlite/SQLiteException;
    :catch_33
    move-exception v2

    .line 4558
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 4555
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_38
    move-exception v4

    .line 4556
    :try_start_39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 4559
    :goto_3c
    throw v4

    .line 4557
    :catch_3d
    move-exception v2

    .line 4558
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public checkDatabases()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3899
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 3900
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3901
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3903
    :cond_c
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    .line 3904
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3905
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3909
    :cond_17
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EmailProvider.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3910
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EmailProviderBody.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3913
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_42

    .line 3914
    const-string v1, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProvider database..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3920
    :cond_41
    :goto_41
    return-void

    .line 3916
    :cond_42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3917
    const-string v0, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_41
.end method

.method public createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 3302
    const-string v0, " create trigger mailbox_delete_cb before delete on Mailbox begin delete from Mailbox_CB where mailboxKey = old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3307
    const-string v0, " create trigger mailbox_insert_cb after insert on Mailbox begin insert into Mailbox_CB(mailboxKey  ,typeMsg) values (new._id  , (select typeMsg from Account_CB where accountKey = new.accountKey)); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3314
    const-string v0, "create trigger message_delete_cb before delete on Message begin  delete from Message_CB  where messageKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3319
    const-string v0, "create trigger message_insert_cb after insert on Message begin  insert into Message_CB(messageKey,typeMsg)  values (new._id, 0); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3325
    const-string v0, "create trigger account_delete_cb before delete on Account begin  delete from Account_CB where accountKey=old._id; delete from Mailbox_CB where mailboxKey    in ( select _id from Mailbox          where accountKey=old._id); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3332
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3336
    const-string v0, "delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 3337
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3345
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3346
    shr-int/lit8 v6, v4, 0xc

    .line 3347
    const-string v3, "0"

    .line 3348
    const/4 v2, 0x0

    .line 3349
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3354
    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v8, v0, v6

    .line 3355
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v0, v6

    .line 3359
    sparse-switch v4, :sswitch_data_2c0

    .line 3387
    :goto_22
    sparse-switch v4, :sswitch_data_2e2

    .line 3573
    :try_start_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_25 .. :try_end_3e} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_3e} :catch_128

    .line 3593
    :catch_3e
    move-exception v0

    move v1, v2

    .line 3594
    :goto_40
    :try_start_40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_2b5

    .line 3595
    const/4 v0, -0x1

    .line 3602
    if-eqz v1, :cond_49

    .line 3604
    :try_start_46
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_2af

    .line 3611
    :cond_49
    :goto_49
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3612
    return v0

    .line 3382
    :sswitch_50
    const/4 v1, 0x1

    .line 3383
    :try_start_51
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3384
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_2b5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_51 .. :try_end_5a} :catch_2bd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_5a} :catch_2b9

    move v2, v1

    goto :goto_22

    .line 3399
    :sswitch_5c
    :try_start_5c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3400
    const/16 v1, 0x2002

    if-ne v4, v1, :cond_aa

    .line 3407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from Message_Updates where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3410
    const-string v1, "delete"

    const-string v3, " message_delete_deletes start "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const-string v1, "delete from Message_Deletes where _id in (select messageKey from Message_CB where typeMsg = 1)"

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3415
    const-string v1, "delete"

    const-string v3, " message_delete_deletes end "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    :cond_aa
    if-eqz v8, :cond_af

    .line 3418
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_5c .. :try_end_af} :catchall_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5c .. :try_end_af} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_af} :catch_128

    .line 3421
    :cond_af
    :try_start_af
    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_121

    move-result v1

    .line 3422
    if-eqz v8, :cond_bc

    .line 3423
    sparse-switch v4, :sswitch_data_378

    .line 3445
    :cond_bc
    :goto_bc
    if-eqz v8, :cond_c1

    .line 3446
    :try_start_be
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_c1
    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3575
    :goto_c4
    if-eqz v2, :cond_fc

    .line 3577
    const/4 v3, 0x1

    if-ne v4, v3, :cond_df

    .line 3580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Document where accountKey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3583
    :cond_df
    const/16 v3, 0x2001

    if-ne v4, v3, :cond_2a8

    .line 3586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from Body where messageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3591
    :goto_f9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_fc
    .catchall {:try_start_be .. :try_end_fc} :catchall_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_be .. :try_end_fc} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_be .. :try_end_fc} :catch_128

    .line 3602
    :cond_fc
    if-eqz v2, :cond_49

    .line 3604
    :try_start_fe
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_101} :catch_103

    goto/16 :goto_49

    .line 3605
    :catch_103
    move-exception v1

    goto/16 :goto_49

    .line 3429
    :sswitch_106
    :try_start_106
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3430
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3435
    :sswitch_114
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3440
    :sswitch_11b
    const-string v3, "Delete"

    invoke-virtual {v8, v3, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_106 .. :try_end_120} :catchall_121

    goto :goto_bc

    .line 3445
    :catchall_121
    move-exception v1

    if-eqz v8, :cond_127

    .line 3446
    :try_start_124
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_127
    throw v1
    :try_end_128
    .catchall {:try_start_124 .. :try_end_128} :catchall_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_124 .. :try_end_128} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_124 .. :try_end_128} :catch_128

    .line 3596
    :catch_128
    move-exception v0

    .line 3597
    :goto_129
    :try_start_129
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 3599
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_12f
    .catchall {:try_start_129 .. :try_end_12f} :catchall_1bd

    .line 3600
    const/4 v0, -0x1

    .line 3602
    if-eqz v2, :cond_49

    .line 3604
    :try_start_132
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_137

    goto/16 :goto_49

    .line 3605
    :catch_137
    move-exception v1

    goto/16 :goto_49

    .line 3454
    :sswitch_13a
    :try_start_13a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert or replace into Message_Deletes select * from Message where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Message_Updates where "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3456
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3459
    goto/16 :goto_c4

    .line 3466
    :sswitch_16d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3469
    goto/16 :goto_c4

    .line 3479
    :sswitch_198
    sparse-switch v4, :sswitch_data_38e

    .line 3494
    :goto_19b
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3495
    goto/16 :goto_c4

    .line 3482
    :sswitch_1a2
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3483
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3486
    :sswitch_1b0
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3490
    :sswitch_1b7
    const-string v0, "Delete"

    invoke-virtual {v8, v0, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1bc
    .catchall {:try_start_13a .. :try_end_1bc} :catchall_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13a .. :try_end_1bc} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13a .. :try_end_1bc} :catch_128

    goto :goto_19b

    .line 3602
    :catchall_1bd
    move-exception v0

    :goto_1be
    if-eqz v2, :cond_1c3

    .line 3604
    :try_start_1c0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1c3} :catch_2b2

    .line 3606
    :cond_1c3
    :goto_1c3
    throw v0

    .line 3499
    :sswitch_1c4
    :try_start_1c4
    const-string v0, "Policies"

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3500
    goto/16 :goto_c4

    .line 3502
    :sswitch_1cd
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3503
    const-string v1, "Policies"

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3505
    goto/16 :goto_c4

    .line 3511
    :sswitch_1e7
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3512
    goto/16 :goto_c4

    .line 3518
    :sswitch_1ee
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3519
    const/16 v1, 0x7002

    if-ne v4, v1, :cond_229

    .line 3522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert or replace into FollowupFlag_Deletes select * from FollowupFlag where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3526
    :cond_229
    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3527
    goto/16 :goto_c4

    .line 3532
    :sswitch_236
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3533
    goto/16 :goto_c4

    .line 3535
    :sswitch_241
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3536
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3538
    goto/16 :goto_c4

    .line 3541
    :sswitch_25d
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3542
    goto/16 :goto_c4

    .line 3546
    :sswitch_264
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3547
    goto/16 :goto_c4

    .line 3552
    :sswitch_26f
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3553
    goto/16 :goto_c4

    .line 3556
    :sswitch_27a
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3557
    goto/16 :goto_c4

    .line 3562
    :sswitch_285
    const-string v0, "EmailAddressCache"

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3563
    goto/16 :goto_c4

    .line 3566
    :sswitch_28e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3567
    const-string v1, "EmailAddressCache"

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3569
    goto/16 :goto_c4

    .line 3589
    :cond_2a8
    const-string v1, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2ad
    .catchall {:try_start_1c4 .. :try_end_2ad} :catchall_1bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1c4 .. :try_end_2ad} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c4 .. :try_end_2ad} :catch_128

    goto/16 :goto_f9

    .line 3605
    :catch_2af
    move-exception v1

    goto/16 :goto_49

    :catch_2b2
    move-exception v1

    goto/16 :goto_1c3

    .line 3602
    :catchall_2b5
    move-exception v0

    move v2, v1

    goto/16 :goto_1be

    .line 3596
    :catch_2b9
    move-exception v0

    move v2, v1

    goto/16 :goto_129

    .line 3593
    :catch_2bd
    move-exception v0

    goto/16 :goto_40

    .line 3359
    :sswitch_data_2c0
    .sparse-switch
        0x0 -> :sswitch_50
        0x1 -> :sswitch_50
        0x1000 -> :sswitch_50
        0x1001 -> :sswitch_50
        0x2000 -> :sswitch_50
        0x2001 -> :sswitch_50
        0x2002 -> :sswitch_50
        0x2003 -> :sswitch_50
    .end sparse-switch

    .line 3387
    :sswitch_data_2e2
    .sparse-switch
        0x0 -> :sswitch_198
        0x1 -> :sswitch_5c
        0x1000 -> :sswitch_198
        0x1001 -> :sswitch_5c
        0x2000 -> :sswitch_198
        0x2001 -> :sswitch_5c
        0x2002 -> :sswitch_5c
        0x2003 -> :sswitch_13a
        0x3000 -> :sswitch_198
        0x3001 -> :sswitch_5c
        0x3002 -> :sswitch_16d
        0x4000 -> :sswitch_198
        0x4001 -> :sswitch_5c
        0x5000 -> :sswitch_198
        0x5001 -> :sswitch_5c
        0x6000 -> :sswitch_198
        0x6001 -> :sswitch_5c
        0x7000 -> :sswitch_1e7
        0x7001 -> :sswitch_1ee
        0x7002 -> :sswitch_1ee
        0x8000 -> :sswitch_1e7
        0x8001 -> :sswitch_1ee
        0x9000 -> :sswitch_1e7
        0x9001 -> :sswitch_1ee
        0xa000 -> :sswitch_1c4
        0xa001 -> :sswitch_1cd
        0xe000 -> :sswitch_25d
        0xf000 -> :sswitch_264
        0x10000 -> :sswitch_26f
        0x11000 -> :sswitch_285
        0x11002 -> :sswitch_28e
        0x12001 -> :sswitch_5c
        0x13000 -> :sswitch_236
        0x13001 -> :sswitch_241
        0x14000 -> :sswitch_198
        0x14001 -> :sswitch_5c
        0x15000 -> :sswitch_27a
    .end sparse-switch

    .line 3423
    :sswitch_data_378
    .sparse-switch
        0x1 -> :sswitch_106
        0x1001 -> :sswitch_114
        0x2001 -> :sswitch_11b
        0x2002 -> :sswitch_11b
        0x4001 -> :sswitch_11b
    .end sparse-switch

    .line 3479
    :sswitch_data_38e
    .sparse-switch
        0x0 -> :sswitch_1a2
        0x1000 -> :sswitch_1b0
        0x2000 -> :sswitch_1b7
        0x4000 -> :sswitch_1b7
    .end sparse-switch
.end method

.method public declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1516
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_b

    .line 1517
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_63

    .line 1620
    :goto_9
    monitor-exit p0

    return-object v0

    .line 1520
    :cond_b
    :try_start_b
    sget-object v2, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    if-nez v2, :cond_43

    .line 1522
    :goto_f
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDB first open?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_63

    .line 1524
    if-nez v0, :cond_66

    .line 1526
    :try_start_29
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_63
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_29 .. :try_end_31} :catch_45

    .line 1537
    :goto_31
    :try_start_31
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1538
    const-string v0, "EmailProvider"

    const-string v1, "get used db ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :goto_40
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_63

    goto :goto_9

    .line 1520
    :cond_43
    const/4 v0, 0x0

    goto :goto_f

    .line 1527
    :catch_45
    move-exception v0

    .line 1529
    :try_start_46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    .line 1530
    const-string v0, "EmailProvider"

    const-string v1, "After 1 second, try again to get to database instance!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1532
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_63
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_5d} :catch_5e

    goto :goto_31

    .line 1533
    :catch_5e
    move-exception v0

    .line 1534
    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_31

    .line 1516
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1542
    :cond_66
    :try_start_66
    const-string v0, "EmailProvider"

    const-string v2, "it is first db, go on normal process"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1549
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    if-nez v0, :cond_7d

    .line 1550
    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v2, "EmailProvider.db"

    invoke-direct {v0, p0, p1, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    .line 1551
    :cond_7d
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    if-nez v0, :cond_8a

    .line 1552
    new-instance v0, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    const-string v2, "EmailProviderBody.db"

    invoke-direct {v0, p0, p1, v2}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    :try_end_8a
    .catchall {:try_start_66 .. :try_end_8a} :catchall_63

    .line 1554
    :cond_8a
    :try_start_8a
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_63
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8a .. :try_end_92} :catch_136

    .line 1565
    :goto_92
    :try_start_92
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d2

    .line 1566
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 1568
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1569
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d2

    .line 1570
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 1571
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_92 .. :try_end_b3} :catchall_63

    move-result-object v2

    .line 1573
    :try_start_b4
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" as BodyDatabase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b4 .. :try_end_d2} :catchall_63
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b4 .. :try_end_d2} :catch_156

    .line 1588
    :cond_d2
    :goto_d2
    :try_start_d2
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Updates"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Deletes"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1591
    invoke-static {p1}, Lcom/digc/seven/SevenSyncProvider;->getAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 1593
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savenCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    if-nez v0, :cond_131

    .line 1596
    const-string v0, "EmailProvider"

    const-string v2, "saven Account Delete Start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_d2 .. :try_end_105} :catchall_63

    .line 1599
    :try_start_105
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_126

    .line 1600
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT name FROM sqlite_master where type=\'table\' and name=\'Account_CB\'"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1604
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_126

    .line 1605
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from Account where _id in (select accountKey from Account_CB where typeMsg = 1)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_105 .. :try_end_126} :catchall_1a2
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_126} :catch_18c

    .line 1613
    :cond_126
    if-eqz v1, :cond_131

    :try_start_128
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_131

    .line 1614
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1618
    :cond_131
    :goto_131
    invoke-static {p1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V
    :try_end_134
    .catchall {:try_start_128 .. :try_end_134} :catchall_63

    goto/16 :goto_40

    .line 1555
    :catch_136
    move-exception v0

    .line 1557
    :try_start_137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    .line 1558
    const-string v0, "EmailProvider"

    const-string v2, "After 1 second, try again to get to database instance!!!!!!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1560
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14e
    .catchall {:try_start_137 .. :try_end_14e} :catchall_63
    .catch Ljava/lang/InterruptedException; {:try_start_137 .. :try_end_14e} :catch_150

    goto/16 :goto_92

    .line 1561
    :catch_150
    move-exception v0

    .line 1562
    :try_start_151
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_63

    goto/16 :goto_92

    .line 1574
    :catch_156
    move-exception v0

    .line 1576
    :try_start_157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    .line 1577
    const-string v0, "EmailProvider"

    const-string v3, "After 1 second, try again to execute DB query!!!!!!!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1579
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" as BodyDatabase"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_184
    .catchall {:try_start_157 .. :try_end_184} :catchall_63
    .catch Ljava/lang/InterruptedException; {:try_start_157 .. :try_end_184} :catch_186

    goto/16 :goto_d2

    .line 1580
    :catch_186
    move-exception v0

    .line 1581
    :try_start_187
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_63

    goto/16 :goto_d2

    .line 1610
    :catch_18c
    move-exception v0

    .line 1611
    :try_start_18d
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_18d .. :try_end_196} :catchall_1a2

    .line 1613
    if-eqz v1, :cond_131

    :try_start_198
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_131

    .line 1614
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_131

    .line 1613
    :catchall_1a2
    move-exception v0

    if-eqz v1, :cond_1ae

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1ae

    .line 1614
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1ae
    throw v0
    :try_end_1af
    .catchall {:try_start_198 .. :try_end_1af} :catchall_63
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 3619
    const-string v0, "getType"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 3620
    sparse-switch v0, :sswitch_data_86

    .line 3704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3622
    :sswitch_22
    const-string v0, "vnd.android.cursor.item/email-body"

    .line 3701
    :cond_24
    :goto_24
    return-object v0

    .line 3624
    :sswitch_25
    const-string v0, "vnd.android.cursor.dir/email-body"

    goto :goto_24

    .line 3636
    :sswitch_28
    const-string v0, "vnd.android.cursor.item/email-message"

    .line 3637
    const-string v1, "mailboxId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3639
    if-eqz v1, :cond_24

    .line 3640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 3646
    :sswitch_4a
    const-string v0, "vnd.android.cursor.dir/email-message"

    goto :goto_24

    .line 3649
    :sswitch_4d
    const-string v0, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_24

    .line 3651
    :sswitch_50
    const-string v0, "vnd.android.cursor.item/email-mailbox"

    goto :goto_24

    .line 3653
    :sswitch_53
    const-string v0, "vnd.android.cursor.dir/email-account"

    goto :goto_24

    .line 3655
    :sswitch_56
    const-string v0, "vnd.android.cursor.item/email-account"

    goto :goto_24

    .line 3658
    :sswitch_59
    const-string v0, "vnd.android.cursor.dir/email-attachment"

    goto :goto_24

    .line 3660
    :sswitch_5c
    const-string v0, "vnd.android.cursor.item/email-attachment"

    goto :goto_24

    .line 3662
    :sswitch_5f
    const-string v0, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_24

    .line 3664
    :sswitch_62
    const-string v0, "vnd.android.cursor.item/email-hostauth"

    goto :goto_24

    .line 3668
    :sswitch_65
    const-string v0, "vnd.android.cursor.dir/email-policies"

    goto :goto_24

    .line 3670
    :sswitch_68
    const-string v0, "vnd.android.cursor.item/email-policies"

    goto :goto_24

    .line 3676
    :sswitch_6b
    const-string v0, "vnd.android.cursor.dir/email-followupflags"

    goto :goto_24

    .line 3679
    :sswitch_6e
    const-string v0, "vnd.android.cursor.item/email-followupflags"

    goto :goto_24

    .line 3683
    :sswitch_71
    const-string v0, "vnd.android.cursor.dir/email-document"

    goto :goto_24

    .line 3685
    :sswitch_74
    const-string v0, "vnd.android.cursor.item/email-document"

    goto :goto_24

    .line 3689
    :sswitch_77
    const-string v0, "vnd.android.cursor.dir/email-recipientinformation"

    goto :goto_24

    .line 3691
    :sswitch_7a
    const-string v0, "vnd.android.cursor.item/email-recipientinformation"

    goto :goto_24

    .line 3695
    :sswitch_7d
    const-string v0, "vnd.android.cursor.item/email-IRMTemplate"

    goto :goto_24

    .line 3697
    :sswitch_80
    const-string v0, "vnd.android.cursor.dir/email-IRMTemplate"

    goto :goto_24

    .line 3701
    :sswitch_83
    const-string v0, "vnd.android.cursor.dir/email-emailaddresscache"

    goto :goto_24

    .line 3620
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_53
        0x1 -> :sswitch_56
        0x5 -> :sswitch_4d
        0x1000 -> :sswitch_4d
        0x1001 -> :sswitch_50
        0x1003 -> :sswitch_4a
        0x2000 -> :sswitch_4a
        0x2001 -> :sswitch_28
        0x3000 -> :sswitch_59
        0x3001 -> :sswitch_5c
        0x3002 -> :sswitch_59
        0x4000 -> :sswitch_5f
        0x4001 -> :sswitch_62
        0x5000 -> :sswitch_4a
        0x5001 -> :sswitch_28
        0x7000 -> :sswitch_6b
        0x7001 -> :sswitch_6e
        0x8000 -> :sswitch_6b
        0x8001 -> :sswitch_6e
        0xa000 -> :sswitch_65
        0xa001 -> :sswitch_68
        0xf000 -> :sswitch_77
        0xf001 -> :sswitch_7a
        0x11000 -> :sswitch_83
        0x13000 -> :sswitch_71
        0x13001 -> :sswitch_74
        0x14000 -> :sswitch_25
        0x14001 -> :sswitch_22
        0x15000 -> :sswitch_80
        0x15001 -> :sswitch_7d
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 3710
    const-string v0, "insert"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    .line 3711
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3712
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3715
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3716
    shr-int/lit8 v5, v2, 0xc

    .line 3725
    const/16 v0, 0x1001

    if-eq v2, v0, :cond_1e

    const/16 v0, 0x1000

    if-ne v2, v0, :cond_30

    .line 3726
    :cond_1e
    const-string v0, "unreadCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3727
    const-string v0, "messageCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3731
    :cond_30
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 3733
    sparse-switch v2, :sswitch_data_204

    .line 3870
    :try_start_37
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
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_50} :catch_50

    .line 3872
    :catch_50
    move-exception v0

    .line 3873
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 3874
    throw v0

    .line 3735
    :sswitch_55
    :try_start_55
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3750
    :sswitch_5b
    const-string v5, "foo"

    invoke-virtual {v4, v0, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3751
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3759
    const/16 v6, 0x5000

    if-eq v2, v6, :cond_6d

    const/16 v6, 0x6000

    if-ne v2, v6, :cond_86

    .line 3760
    :cond_6d
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

    .line 3762
    :cond_86
    const/16 v6, 0x3000

    if-ne v2, v6, :cond_9f

    .line 3764
    const-string v2, "flags"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 3765
    const-string v1, "flags"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3768
    :cond_9c
    invoke-static {v4, v5, v1}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_9f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_9f} :catch_50

    .line 3879
    :cond_9f
    :goto_9f
    invoke-virtual {v3, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3880
    :goto_a2
    return-object v0

    .line 3776
    :sswitch_a3
    :try_start_a3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3777
    const-string v2, "mailboxKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3778
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a2

    .line 3781
    :sswitch_c2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3782
    const-string v2, "messageKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3783
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a2

    .line 3786
    :sswitch_e1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3787
    const-string v2, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3788
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a2

    .line 3790
    :sswitch_100
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3791
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_9f

    .line 3796
    :sswitch_10d
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3797
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_9f

    .line 3804
    :sswitch_11a
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3805
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3808
    :sswitch_126
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3809
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3815
    :sswitch_134
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3816
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3821
    :sswitch_146
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3822
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3829
    :sswitch_158
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3830
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3833
    :sswitch_168
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3834
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3841
    :sswitch_178
    const-string v0, "accountAddress"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3844
    const-wide/16 v0, -0x1

    .line 3846
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select count(*) from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accountAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3850
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1da

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_1da

    .line 3851
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3862
    :cond_1cf
    :goto_1cf
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3865
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$EmailAddressCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_9f

    .line 3853
    :cond_1da
    if-eqz v2, :cond_1cf

    .line 3854
    const-string v7, "accountAddress"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3856
    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v5, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountAddress is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p2, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_202
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a3 .. :try_end_202} :catch_50

    goto :goto_1cf

    .line 3733
    nop

    :sswitch_data_204
    .sparse-switch
        0x0 -> :sswitch_5b
        0x1 -> :sswitch_e1
        0x1000 -> :sswitch_5b
        0x1001 -> :sswitch_a3
        0x2000 -> :sswitch_55
        0x2001 -> :sswitch_c2
        0x3000 -> :sswitch_5b
        0x3002 -> :sswitch_100
        0x4000 -> :sswitch_5b
        0x5000 -> :sswitch_5b
        0x6000 -> :sswitch_5b
        0x7000 -> :sswitch_11a
        0x7001 -> :sswitch_126
        0xa000 -> :sswitch_10d
        0xc000 -> :sswitch_5b
        0xd000 -> :sswitch_5b
        0xe000 -> :sswitch_5b
        0xf000 -> :sswitch_134
        0x10000 -> :sswitch_5b
        0x11000 -> :sswitch_178
        0x12000 -> :sswitch_5b
        0x13000 -> :sswitch_146
        0x14000 -> :sswitch_5b
        0x15000 -> :sswitch_158
        0x15001 -> :sswitch_168
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 3885
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 3886
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3924
    new-instance v1, Ljava/io/File;

    const-string v0, "file:///data/data/com.android.email/files/keystore"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 3925
    const/4 v0, 0x0

    .line 3927
    const/high16 v2, 0x1000

    :try_start_e
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v0

    .line 3933
    :goto_12
    return-object v0

    .line 3928
    :catch_13
    move-exception v1

    .line 3929
    const-string v2, "EmailProvider"

    const-string v3, "key store was not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_12
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3939
    const-wide/16 v3, 0x0

    .line 3940
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_3e6

    .line 3941
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-wide v13, v3

    .line 3943
    :goto_b
    const/4 v15, 0x0

    .line 3946
    :try_start_c
    const-string v3, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_75

    move-result v6

    .line 3969
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3971
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3972
    shr-int/lit8 v12, v6, 0xc

    .line 3973
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3978
    const/4 v5, 0x0

    .line 3979
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    .line 3981
    if-nez p3, :cond_3e2

    .line 3982
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v5, v5, v12

    move-object/from16 v17, v5

    .line 3984
    :goto_35
    if-nez v17, :cond_3e

    .line 3985
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/email/provider/ContentCache;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3989
    :cond_3e
    sparse-switch v6, :sswitch_data_3ea

    .line 4207
    :try_start_41
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
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_5c} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_137

    .line 4209
    :catch_5c
    move-exception v3

    move-object v4, v15

    .line 4210
    :goto_5e
    :try_start_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4211
    throw v3
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_62

    .line 4221
    :catchall_62
    move-exception v3

    move-object v15, v4

    :goto_64
    if-eqz v17, :cond_74

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_74

    .line 4222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v4, v5}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    :cond_74
    throw v3

    .line 3947
    :catch_75
    move-exception v3

    .line 3948
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3952
    if-eqz v4, :cond_af

    const-string v5, "/-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 3953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3954
    const-string v5, "query"

    invoke-static {v4, v5}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 3955
    sparse-switch v4, :sswitch_data_498

    .line 3967
    :cond_af
    throw v3

    .line 3964
    :sswitch_b0
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 4229
    :cond_b8
    :goto_b8
    return-object v3

    .line 4016
    :sswitch_b9
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :try_start_c3
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c3 .. :try_end_c6} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_137

    move-result-object v15

    .line 4221
    :cond_c7
    :goto_c7
    if-eqz v17, :cond_3d0

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3d0

    .line 4222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    move-object v3, v15

    .line 4226
    :goto_d8
    if-eqz v3, :cond_b8

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_b8

    .line 4227
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_b8

    .line 4021
    :sswitch_ee
    :try_start_ee
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getMessageQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4023
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_c7

    .line 4027
    :sswitch_ff
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getAccountQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4028
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_c7

    .line 4032
    :sswitch_110
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getProtocolQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4034
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_c7

    .line 4037
    :sswitch_121
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getMailboxQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12a
    .catchall {:try_start_ee .. :try_end_12a} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_12a} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_12a} :catch_137

    move-result-object v4

    .line 4039
    :try_start_12b
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_3ac
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_130} :catch_132
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12b .. :try_end_130} :catch_5c

    move-result-object v15

    goto :goto_c7

    .line 4040
    :catch_132
    move-exception v3

    .line 4041
    :try_start_133
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_136
    .catchall {:try_start_133 .. :try_end_136} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_133 .. :try_end_136} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_136} :catch_137

    goto :goto_c7

    .line 4212
    :catch_137
    move-exception v3

    .line 4213
    :goto_138
    :try_start_138
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4214
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13e
    .catchall {:try_start_138 .. :try_end_13e} :catchall_3ac

    .line 4216
    :try_start_13e
    throw v3
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_3ac
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_13f} :catch_13f

    .line 4217
    :catch_13f
    move-exception v3

    .line 4218
    :try_start_140
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_3ac

    .line 4221
    if-eqz v17, :cond_3d0

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3d0

    .line 4222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    move-object v3, v15

    goto :goto_d8

    .line 4065
    :sswitch_155
    :try_start_155
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 4066
    if-eqz v17, :cond_16c

    .line 4067
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/android/email/provider/ContentCache;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16b
    .catchall {:try_start_155 .. :try_end_16b} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_155 .. :try_end_16b} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_16b} :catch_137

    move-result-object v15

    .line 4069
    :cond_16c
    if-nez v15, :cond_c7

    .line 4070
    const/4 v5, 0x0

    .line 4071
    if-eqz v17, :cond_3de

    .line 4072
    :try_start_171
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/email/provider/ContentCache;->getCacheToken(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    .line 4074
    :goto_179
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18c
    .catchall {:try_start_171 .. :try_end_18c} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_171 .. :try_end_18c} :catch_3c1
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_18c} :catch_137

    move-result-object v3

    .line 4076
    if-eqz v17, :cond_199

    .line 4077
    :try_start_18f
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v3, v12, v1, v2}, Lcom/android/email/provider/ContentCache;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_198
    .catchall {:try_start_18f .. :try_end_198} :catchall_3af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18f .. :try_end_198} :catch_3c5
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_198} :catch_3b8

    move-result-object v3

    :cond_199
    move-object v15, v3

    .line 4079
    goto/16 :goto_c7

    .line 4083
    :sswitch_19c
    :try_start_19c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 4084
    const-string v4, "Attachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_c7

    .line 4092
    :sswitch_1d4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 4093
    const-string v4, "QuickResponse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_c7

    .line 4101
    :sswitch_20c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4103
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getAccountQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4105
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_c7

    .line 4109
    :sswitch_22f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4110
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getMailboxQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4112
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_c7

    .line 4116
    :sswitch_252
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4117
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getMessageQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4119
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_c7

    .line 4123
    :sswitch_275
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 4124
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "email_address LIKE \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_c7

    .line 4132
    :sswitch_2bb
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2cc
    .catchall {:try_start_19c .. :try_end_2cc} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19c .. :try_end_2cc} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_2cc} :catch_137

    move-result-object v15

    goto/16 :goto_c7

    .line 4141
    :sswitch_2cf
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :try_start_2d9
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2dc
    .catchall {:try_start_2d9 .. :try_end_2dc} :catchall_3ac
    .catch Ljava/lang/IllegalStateException; {:try_start_2d9 .. :try_end_2dc} :catch_2df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d9 .. :try_end_2dc} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_2dc} :catch_137

    move-result-object v15

    goto/16 :goto_c7

    .line 4143
    :catch_2df
    move-exception v3

    .line 4144
    :try_start_2e0
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur POLICIES ~ MEETING_INVITATION=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========== IllegalStateException occur TABLE_NAMES[table] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    if-eqz v15, :cond_3db

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3db

    .line 4150
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_30e
    .catchall {:try_start_2e0 .. :try_end_30e} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e0 .. :try_end_30e} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_30e} :catch_137

    .line 4151
    const/4 v4, 0x0

    .line 4152
    :try_start_30f
    const-string v5, "Email"

    const-string v6, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v5, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    :goto_316
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_319
    .catchall {:try_start_30f .. :try_end_319} :catchall_3b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30f .. :try_end_319} :catch_3cd
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_319} :catch_3bd

    move-object v15, v4

    .line 4157
    goto/16 :goto_c7

    .line 4160
    :sswitch_31c
    const/4 v4, 0x0

    .line 4162
    :try_start_31d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_3d8

    .line 4163
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 4164
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d5

    .line 4165
    const/4 v4, 0x0

    move-object v5, v4

    .line 4168
    :goto_334
    if-nez v5, :cond_351

    .line 4170
    const-string v4, "accountAddress is null "
    :try_end_338
    .catchall {:try_start_31d .. :try_end_338} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31d .. :try_end_338} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_338} :catch_137

    move-object v5, v4

    move-object/from16 v7, p4

    .line 4185
    :goto_33b
    :try_start_33b
    const-string v4, "EmailAddressCache"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34e
    .catchall {:try_start_33b .. :try_end_34e} :catchall_3ac
    .catch Ljava/lang/IllegalStateException; {:try_start_33b .. :try_end_34e} :catch_384
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33b .. :try_end_34e} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_34e} :catch_137

    move-result-object v15

    goto/16 :goto_c7

    .line 4177
    :cond_351
    :try_start_351
    const-string v4, "accountAddress LIKE  ?  OR accountName LIKE  ?"

    .line 4179
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x25

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    move-object v5, v4

    goto :goto_33b

    .line 4188
    :catch_384
    move-exception v3

    .line 4189
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur EMAIL_ADDRESS_CACHE_FILTER=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur EmailAddressCache = EmailAddressCache"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    if-eqz v15, :cond_3d3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3d3

    .line 4195
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_39e
    .catchall {:try_start_351 .. :try_end_39e} :catchall_3ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_351 .. :try_end_39e} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_39e} :catch_137

    .line 4196
    const/4 v4, 0x0

    .line 4197
    :try_start_39f
    const-string v5, "Email"

    const-string v6, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v5, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    :goto_3a6
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3a9
    .catchall {:try_start_39f .. :try_end_3a9} :catchall_3b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39f .. :try_end_3a9} :catch_3cd
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3a9} :catch_3bd

    move-object v15, v4

    .line 4203
    goto/16 :goto_c7

    .line 4221
    :catchall_3ac
    move-exception v3

    goto/16 :goto_64

    :catchall_3af
    move-exception v4

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_64

    :catchall_3b4
    move-exception v3

    move-object v15, v4

    goto/16 :goto_64

    .line 4212
    :catch_3b8
    move-exception v4

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_138

    :catch_3bd
    move-exception v3

    move-object v15, v4

    goto/16 :goto_138

    .line 4209
    :catch_3c1
    move-exception v3

    move-object v4, v15

    goto/16 :goto_5e

    :catch_3c5
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_5e

    :catch_3cd
    move-exception v3

    goto/16 :goto_5e

    :cond_3d0
    move-object v3, v15

    goto/16 :goto_d8

    :cond_3d3
    move-object v4, v15

    goto :goto_3a6

    :cond_3d5
    move-object v5, v4

    goto/16 :goto_334

    :cond_3d8
    move-object v5, v4

    goto/16 :goto_334

    :cond_3db
    move-object v4, v15

    goto/16 :goto_316

    :cond_3de
    move-object/from16 v16, v5

    goto/16 :goto_179

    :cond_3e2
    move-object/from16 v17, v5

    goto/16 :goto_35

    :cond_3e6
    move-wide v13, v3

    goto/16 :goto_b

    .line 3989
    nop

    :sswitch_data_3ea
    .sparse-switch
        0x0 -> :sswitch_ff
        0x1 -> :sswitch_20c
        0x1000 -> :sswitch_121
        0x1001 -> :sswitch_22f
        0x2000 -> :sswitch_ee
        0x2001 -> :sswitch_252
        0x3000 -> :sswitch_b9
        0x3001 -> :sswitch_155
        0x3002 -> :sswitch_19c
        0x4000 -> :sswitch_b9
        0x4001 -> :sswitch_155
        0x5000 -> :sswitch_b9
        0x5001 -> :sswitch_155
        0x6000 -> :sswitch_b9
        0x6001 -> :sswitch_155
        0x7000 -> :sswitch_b9
        0x7001 -> :sswitch_155
        0x8000 -> :sswitch_b9
        0x8001 -> :sswitch_155
        0x9000 -> :sswitch_b9
        0x9001 -> :sswitch_155
        0xa000 -> :sswitch_b9
        0xa001 -> :sswitch_155
        0xb000 -> :sswitch_b9
        0xc000 -> :sswitch_b9
        0xd000 -> :sswitch_b9
        0xd001 -> :sswitch_20c
        0xd002 -> :sswitch_110
        0xe000 -> :sswitch_b9
        0xf000 -> :sswitch_b9
        0xf001 -> :sswitch_155
        0xf002 -> :sswitch_275
        0x10000 -> :sswitch_b9
        0x11000 -> :sswitch_2cf
        0x11001 -> :sswitch_31c
        0x12000 -> :sswitch_b9
        0x12001 -> :sswitch_155
        0x12002 -> :sswitch_1d4
        0x13000 -> :sswitch_b9
        0x13001 -> :sswitch_155
        0x14000 -> :sswitch_b9
        0x14001 -> :sswitch_155
        0x15000 -> :sswitch_2bb
    .end sparse-switch

    .line 3955
    :sswitch_data_498
    .sparse-switch
        0x1 -> :sswitch_b0
        0x1001 -> :sswitch_b0
        0x2001 -> :sswitch_b0
        0x3001 -> :sswitch_b0
        0x4001 -> :sswitch_b0
        0x5001 -> :sswitch_b0
        0x6001 -> :sswitch_b0
        0x14001 -> :sswitch_b0
    .end sparse-switch
.end method

.method public resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 3288
    const-string v0, "mailbox_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3289
    const-string v0, "mailbox_insert_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3290
    const-string v0, "message_updates_delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3291
    const-string v0, "message_deletes_delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3292
    const-string v0, "message_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3293
    const-string v0, "message_insert_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3294
    const-string v0, "account_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3296
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3297
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1631
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 1632
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1633
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1635
    :cond_c
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    .line 1636
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1637
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1639
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
    .line 4268
    sget-object v3, Lcom/android/emailcommon/EmailProviderRefs;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 4269
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4270
    const/4 v3, 0x0

    .line 4530
    :goto_a
    return v3

    .line 4274
    :cond_b
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 4278
    :try_start_d
    const-string v3, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_4a

    move-result v13

    .line 4284
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4285
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 4287
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4288
    shr-int/lit8 v5, v13, 0xc

    .line 4296
    const/16 v4, 0x1001

    if-eq v13, v4, :cond_2d

    const/16 v4, 0x1000

    if-ne v13, v4, :cond_3b

    .line 4297
    :cond_2d
    const-string v4, "unreadCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4298
    const-string v4, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4302
    :cond_3b
    sget-object v4, Lcom/android/emailcommon/EmailProviderRefs;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 4307
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4308
    const/4 v3, 0x0

    goto :goto_a

    .line 4279
    :catch_4a
    move-exception v3

    .line 4280
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 4281
    const/4 v3, 0x0

    goto :goto_a

    .line 4311
    :cond_50
    sget-object v4, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v15, v4, v5

    .line 4312
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    .line 4316
    sparse-switch v13, :sswitch_data_346

    .line 4515
    :try_start_5b
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
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5b .. :try_end_76} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_76} :catch_d6

    .line 4517
    :catch_76
    move-exception v3

    move-object v4, v3

    .line 4518
    const/4 v3, -0x1

    .line 4519
    const-string v5, "EmailContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteDiskIOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4520
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 4528
    :goto_94
    const/4 v4, 0x0

    invoke-virtual {v14, v12, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_a

    .line 4319
    :sswitch_9a
    :try_start_9a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 4320
    const-string v5, "field"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4321
    const-string v5, "add"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 4322
    if-eqz v16, :cond_bb

    if-nez v17, :cond_e0

    .line 4323
    :cond_bb
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
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9a .. :try_end_d6} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9a .. :try_end_d6} :catch_d6

    .line 4521
    :catch_d6
    move-exception v3

    move-object v4, v3

    .line 4522
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4523
    const/4 v3, -0x1

    .line 4524
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_94

    .line 4325
    :cond_e0
    :try_start_e0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 4326
    if-eqz v15, :cond_ea

    .line 4327
    invoke-virtual {v15, v11}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e0 .. :try_end_ea} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e0 .. :try_end_ea} :catch_d6

    .line 4330
    :cond_ea
    :try_start_ea
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_15a

    .line 4332
    const/4 v5, 0x2

    :try_start_ee
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
    :try_end_108
    .catchall {:try_start_ee .. :try_end_108} :catchall_155

    move-result-object v6

    .line 4336
    const/4 v5, 0x0

    .line 4337
    :try_start_10a
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4338
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 4339
    :goto_112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_13b

    .line 4340
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 4341
    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v9, v9, v19

    .line 4342
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4343
    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_112

    .line 4345
    :cond_13b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13e
    .catchall {:try_start_10a .. :try_end_13e} :catchall_150

    .line 4347
    :try_start_13e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_155

    .line 4350
    :try_start_141
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_15a

    .line 4353
    if-eqz v15, :cond_14b

    .line 4354
    :try_start_146
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_14b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_146 .. :try_end_14b} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_146 .. :try_end_14b} :catch_d6

    :cond_14b
    move v3, v5

    move-object v4, v12

    :goto_14d
    move-object v12, v4

    .line 4526
    goto/16 :goto_94

    .line 4347
    :catchall_150
    move-exception v4

    :try_start_151
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_155
    .catchall {:try_start_151 .. :try_end_155} :catchall_155

    .line 4350
    :catchall_155
    move-exception v4

    :try_start_156
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_15a
    .catchall {:try_start_156 .. :try_end_15a} :catchall_15a

    .line 4353
    :catchall_15a
    move-exception v3

    if-eqz v15, :cond_162

    .line 4354
    :try_start_15d
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_162
    throw v3

    .line 4359
    :sswitch_163
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4376
    :sswitch_169
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4377
    if-eqz v15, :cond_179

    .line 4378
    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_179
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_15d .. :try_end_179} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15d .. :try_end_179} :catch_d6

    .line 4381
    :cond_179
    const/16 v6, 0x2002

    if-ne v13, v6, :cond_1e2

    .line 4389
    :try_start_17d
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

    .line 4390
    const-string v6, "delete"

    const-string v7, " message_update_deletes start "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    const-string v6, "delete from Message_Updates where _id in (select messageKey from Message_CB where typeMsg = 1)"

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4395
    const-string v6, "delete"

    const-string v7, " message_update_deletes end "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    :cond_1a6
    :goto_1a6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b5
    .catchall {:try_start_17d .. :try_end_1b5} :catchall_20d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17d .. :try_end_1b5} :catch_1fd

    move-result v3

    .line 4408
    if-eqz v15, :cond_1bd

    .line 4409
    :try_start_1b8
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4412
    :cond_1bd
    :goto_1bd
    const/16 v4, 0x3001

    if-ne v13, v4, :cond_33f

    .line 4413
    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33f

    .line 4414
    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4415
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_1df
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1b8 .. :try_end_1df} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b8 .. :try_end_1df} :catch_d6

    move-object v4, v12

    .line 4417
    goto/16 :goto_14d

    .line 4396
    :cond_1e2
    const/16 v6, 0x2001

    if-ne v13, v6, :cond_1a6

    .line 4397
    :try_start_1e6
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
    :try_end_1fc
    .catchall {:try_start_1e6 .. :try_end_1fc} :catchall_20d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e6 .. :try_end_1fc} :catch_1fd

    goto :goto_1a6

    .line 4401
    :catch_1fd
    move-exception v3

    .line 4403
    const/16 p2, 0x0

    .line 4404
    const/4 v4, -0x1

    .line 4405
    :try_start_201
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_20d

    .line 4408
    if-eqz v15, :cond_342

    .line 4409
    :try_start_206
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    move v3, v4

    goto :goto_1bd

    .line 4408
    :catchall_20d
    move-exception v3

    if-eqz v15, :cond_215

    .line 4409
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_215
    throw v3

    .line 4422
    :sswitch_216
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailboxKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4425
    goto/16 :goto_14d

    .line 4443
    :sswitch_247
    sparse-switch v13, :sswitch_data_3d4

    .line 4454
    :goto_24a
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4455
    goto/16 :goto_14d

    .line 4451
    :sswitch_257
    const-string v5, "Update"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v5, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_24a

    .line 4457
    :sswitch_261
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4458
    if-eqz v15, :cond_271

    .line 4459
    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_271
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_206 .. :try_end_271} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_206 .. :try_end_271} :catch_d6

    .line 4462
    :cond_271
    :try_start_271
    sget-object v6, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_280
    .catchall {:try_start_271 .. :try_end_280} :catchall_28c

    move-result v3

    .line 4465
    if-eqz v15, :cond_288

    .line 4466
    :try_start_283
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4469
    :cond_288
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_14d

    .line 4465
    :catchall_28c
    move-exception v3

    if-eqz v15, :cond_294

    .line 4466
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_294
    throw v3

    .line 4473
    :sswitch_295
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 4476
    const-string v4, "Reset all new counts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4477
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_14d

    .line 4483
    :sswitch_2aa
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4484
    goto/16 :goto_14d

    .line 4489
    :sswitch_2bb
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4490
    goto/16 :goto_14d

    .line 4494
    :sswitch_2c8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4495
    const/16 v6, 0x7002

    if-ne v13, v6, :cond_313

    .line 4498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into FollowupFlag_Updates select * from FollowupFlag where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4503
    :cond_2ed
    :goto_2ed
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4505
    goto/16 :goto_14d

    .line 4499
    :cond_313
    const/16 v6, 0x7001

    if-ne v13, v6, :cond_2ed

    .line 4500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2ed

    .line 4510
    :sswitch_32e
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_283 .. :try_end_33b} :catch_76
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_283 .. :try_end_33b} :catch_d6

    move-result v3

    move-object v4, v12

    .line 4511
    goto/16 :goto_14d

    :cond_33f
    move-object v4, v12

    goto/16 :goto_14d

    :cond_342
    move v3, v4

    goto/16 :goto_1bd

    .line 4316
    nop

    :sswitch_data_346
    .sparse-switch
        0x0 -> :sswitch_247
        0x1 -> :sswitch_169
        0x2 -> :sswitch_9a
        0x3 -> :sswitch_295
        0x4 -> :sswitch_261
        0x1000 -> :sswitch_247
        0x1001 -> :sswitch_169
        0x1002 -> :sswitch_9a
        0x2000 -> :sswitch_247
        0x2001 -> :sswitch_169
        0x2002 -> :sswitch_163
        0x3000 -> :sswitch_247
        0x3001 -> :sswitch_169
        0x4000 -> :sswitch_247
        0x4001 -> :sswitch_169
        0x5000 -> :sswitch_247
        0x5001 -> :sswitch_169
        0x7000 -> :sswitch_2bb
        0x7001 -> :sswitch_2c8
        0x7002 -> :sswitch_2c8
        0x8000 -> :sswitch_2bb
        0x8001 -> :sswitch_2c8
        0xa000 -> :sswitch_247
        0xa001 -> :sswitch_169
        0xb000 -> :sswitch_247
        0xb001 -> :sswitch_216
        0xc000 -> :sswitch_247
        0xd000 -> :sswitch_247
        0xf000 -> :sswitch_2aa
        0x11000 -> :sswitch_32e
        0x12001 -> :sswitch_169
        0x13000 -> :sswitch_247
        0x13001 -> :sswitch_169
        0x14000 -> :sswitch_247
        0x14001 -> :sswitch_169
    .end sparse-switch

    .line 4443
    :sswitch_data_3d4
    .sparse-switch
        0x0 -> :sswitch_257
        0x1000 -> :sswitch_257
        0x2000 -> :sswitch_257
        0x4000 -> :sswitch_257
    .end sparse-switch
.end method
