.class public Lcom/android/emailcommon/provider/Mailbox;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Mailbox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;
.implements Lcom/android/emailcommon/provider/EmailContent$SyncColumns;


# static fields
.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM_ACCOUNT_AND_TYPE_URI:Landroid/net/Uri;

.field public static final INVALID_DROP_TARGETS:[Ljava/lang/Integer;

.field private static final MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_SUM_OF_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mAccountKey:J

.field public mDelimiter:I

.field public mDisplayName:Ljava/lang/String;

.field public mFlagVisible:Z

.field public mFlags:I

.field public mLastSeenMessageKey:J

.field public mLastTouchedTime:J

.field public mParentKey:J

.field public mParentServerId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncStatus:Ljava/lang/String;

.field public mSyncTime:J

.field public mType:I

.field public mVisibleLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailboxIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailboxIdFromAccountAndType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->FROM_ACCOUNT_AND_TYPE_URI:Landroid/net/Uri;

    .line 84
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "serverId"

    aput-object v1, v0, v6

    const-string v1, "parentServerId"

    aput-object v1, v0, v5

    const-string v1, "accountKey"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delimiter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "visibleLimit"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lastSeenMessageKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastTouchedTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 103
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(unreadCount)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(messageCount)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_SUM_OF_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    .line 139
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    .line 600
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 211
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 578
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7f

    move v0, v1

    :goto_5e
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastSeenMessageKey:J

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 598
    return-void

    .line 592
    :cond_7f
    const/4 v0, 0x0

    goto :goto_5e
.end method

.method public static findMailboxOfType(Landroid/content/Context;JI)J
    .registers 19
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 348
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->FROM_ACCOUNT_AND_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 350
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 351
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_56

    .line 353
    :try_start_29
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 354
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 355
    .local v12, mailboxId:Ljava/lang/Long;
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_53

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_53

    .line 358
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_82

    move-result-wide v3

    .line 361
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 366
    .end local v12           #mailboxId:Ljava/lang/Long;
    :goto_52
    return-wide v3

    .line 361
    .restart local v12       #mailboxId:Ljava/lang/Long;
    :cond_53
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 365
    .end local v12           #mailboxId:Ljava/lang/Long;
    :cond_56
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move/from16 v0, p3

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 366
    .local v7, bindArguments:[Ljava/lang/String;
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "type=? and accountKey=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, -0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_52

    .line 361
    .end local v7           #bindArguments:[Ljava/lang/String;
    :catchall_82
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getDisplayName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 433
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 434
    .local v1, url:Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .registers 7
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 412
    const-string v2, "mailboxKey"

    invoke-static {p0, p1, p2, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 414
    .local v0, mailboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 415
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 417
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 5
    .parameter "context"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 283
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 284
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_b

    .line 285
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 287
    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_b
    return-object v0
.end method

.method public static getMailboxType(Landroid/content/Context;J)I
    .registers 11
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 424
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 425
    .local v1, url:Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMessageCountByMailboxType(Landroid/content/Context;I)I
    .registers 10
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 399
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_SUM_OF_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getUnreadCountByAccountAndMailboxType(Landroid/content/Context;JI)I
    .registers 12
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 384
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey =? AND type =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getUnreadCountByMailboxType(Landroid/content/Context;I)I
    .registers 10
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 392
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isMailboxTypeReplyAndForwardable(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 499
    const/4 v0, 0x6

    if-eq p0, v0, :cond_8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isRefreshable(Landroid/content/Context;J)Z
    .registers 6
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v0, 0x0

    .line 444
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_8

    .line 453
    :goto_7
    :pswitch_7
    return v0

    .line 447
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 453
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_7

    .line 447
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_7
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static newSystemMailbox(JILjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 7
    .parameter "accountId"
    .parameter "mailboxType"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 232
    if-ne p2, v2, :cond_b

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot specify TYPE_MAIL for a system mailbox"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_b
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 236
    .local v0, box:Lcom/android/emailcommon/provider/Mailbox;
    iput-wide p0, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 237
    iput p2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 238
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 239
    iput-boolean v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 240
    iput-object p3, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 241
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 242
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 243
    return-object v0
.end method

.method public static restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 261
    if-nez v1, :cond_24

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 264
    :cond_24
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 265
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/Mailbox;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 267
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple mailboxes named \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_7a

    .line 274
    :cond_56
    :goto_56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 270
    :cond_5a
    :try_start_5a
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find mailbox at \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_7a

    move-object v0, v5

    goto :goto_56

    .line 274
    :catchall_7a
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .registers 8
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 375
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 376
    .local v0, mailboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 377
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 379
    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 221
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method


# virtual methods
.method public canHaveMessagesMoved()Z
    .registers 2

    .prologue
    .line 460
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    packed-switch v0, :pswitch_data_a

    .line 467
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 465
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 460
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public getHashes()[Ljava/lang/Object;
    .registers 5

    .prologue
    .line 507
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 509
    .local v0, hash:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 511
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 513
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 515
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 517
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 519
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 521
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 523
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 525
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 527
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 529
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 531
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 533
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 535
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 537
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 539
    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 541
    const/16 v1, 0x10

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastSeenMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 543
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 545
    return-object v0
.end method

.method public loadsFromServer(Ljava/lang/String;)Z
    .registers 8
    .parameter "protocol"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 475
    const-string v2, "eas"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 476
    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v2, v3, :cond_21

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v2, v4, :cond_21

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v2, v5, :cond_21

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v3, 0x100

    if-ge v2, v3, :cond_21

    .line 492
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 476
    goto :goto_20

    .line 481
    :cond_23
    const-string v2, "imap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 484
    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v2, v3, :cond_37

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eq v2, v4, :cond_37

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v2, v5, :cond_20

    :cond_37
    move v0, v1

    goto :goto_20

    .line 488
    :cond_39
    const-string v2, "pop3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 489
    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eqz v2, :cond_20

    move v0, v1

    goto :goto_20

    :cond_47
    move v0, v1

    .line 492
    goto :goto_20
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 292
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 293
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 294
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 295
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 296
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 297
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 298
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 299
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 300
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 301
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 302
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 303
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 304
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 305
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_8f

    :goto_64
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 306
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 307
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    .line 308
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 309
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastSeenMessageKey:J

    .line 310
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 311
    return-void

    :cond_8f
    move v0, v1

    .line 305
    goto :goto_64
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 316
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "parentServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "parentKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    const-string v1, "type"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v1, "delimiter"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v1, "syncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 328
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v1, "visibleLimit"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v1, "syncStatus"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "lastSeenMessageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastSeenMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string v1, "lastTouchedTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 558
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 563
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 564
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 570
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastSeenMessageKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 575
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 576
    return-void

    .line 570
    :cond_63
    const/4 v0, 0x0

    goto :goto_46
.end method
