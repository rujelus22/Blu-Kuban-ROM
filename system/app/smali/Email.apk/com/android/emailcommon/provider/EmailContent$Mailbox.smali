.class public final Lcom/android/emailcommon/provider/EmailContent$Mailbox;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;
.implements Lcom/android/emailcommon/provider/EmailContent$SyncColumns;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mailbox"
.end annotation


# static fields
.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INVALID_DROP_TARGETS:[Ljava/lang/Integer;

.field private static final MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_SUM_OF_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final VALID_SMS_DROP_TARGET:Ljava/lang/Integer;


# instance fields
.field public mAccountKey:J

.field public mDelimiter:I

.field public mDisplayName:Ljava/lang/String;

.field public mDstServerId:Ljava/lang/String;

.field public mFlagChanged:I

.field public mFlagNoSelect:Z

.field public mFlagVisible:Z

.field public mFlags:I

.field public mKeyWord:Ljava/lang/String;

.field public mLastTouchedTime:Ljava/lang/String;

.field public mMailboxKey:J

.field public mNewDisplayName:Ljava/lang/String;

.field public mOffpeakSyncSchedule:I

.field public mParentKey:J

.field public mParentServerId:Ljava/lang/String;

.field public mPeakSyncSchedule:I

.field public mServerId:Ljava/lang/String;

.field public mSevenMailboxKey:J

.field public mSyncFlag:I

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncStatus:Ljava/lang/String;

.field public mSyncTime:J

.field public mType:I

.field public mTypeMsg:I

.field public mUnreadCount:I

.field public mVisibleLimit:I

.field public tag:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6642
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

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 6644
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

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 6777
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "serverId"

    aput-object v1, v0, v5

    const-string v1, "parentServerId"

    aput-object v1, v0, v6

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

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "visibleLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "flagChanged"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dstMailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "newDisplayName"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sevenMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "syncFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "lastTouchedTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "offpeakSyncSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "peakSyncSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "keyWord"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 6816
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(unreadCount)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 6822
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(messageCount)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_SUM_OF_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 6828
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    .line 6836
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    .line 6873
    new-array v0, v7, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    .line 6878
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->VALID_SMS_DROP_TARGET:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7038
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 6674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 6676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 7039
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 7040
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .registers 6
    .parameter "accId"
    .parameter "displayName"
    .parameter "type"

    .prologue
    .line 7044
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 6674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 6676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 7045
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 7046
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 7047
    iput-object p3, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 7048
    iput p4, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 7049
    return-void
.end method

.method public static canMoveFrom(Landroid/content/Context;J)Z
    .registers 13
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    .line 7477
    const-wide/16 v2, -0x2

    cmp-long v0, p1, v2

    if-nez v0, :cond_12

    .line 7479
    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7480
    const/4 v0, 0x0

    .line 7513
    :goto_f
    return v0

    .line 7483
    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    .line 7485
    :cond_12
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1a

    .line 7486
    const/4 v0, 0x0

    goto :goto_f

    .line 7488
    :cond_1a
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 7491
    .local v1, url:Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v7

    .line 7494
    .local v7, accountKey:Ljava/lang/Long;
    if-eqz v7, :cond_35

    invoke-static {p0, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 7495
    const/4 v0, 0x0

    goto :goto_f

    .line 7498
    :cond_35
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    .line 7500
    .local v9, typeInt:Ljava/lang/Integer;
    const/4 v8, -0x1

    .line 7501
    .local v8, type:I
    if-eqz v9, :cond_52

    .line 7502
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 7505
    :cond_52
    sparse-switch v8, :sswitch_data_5a

    .line 7513
    const/4 v0, 0x0

    goto :goto_f

    .line 7511
    :sswitch_57
    const/4 v0, 0x1

    goto :goto_f

    .line 7505
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_57
        0x1 -> :sswitch_57
        0x6 -> :sswitch_57
        0x7 -> :sswitch_57
        0xc -> :sswitch_57
    .end sparse-switch
.end method

.method public static findMailboxOfType(Landroid/content/Context;JI)J
    .registers 13
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 7353
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 7356
    .local v4, bindArguments:[Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=? and accountKey=?"

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAllUnreadCountbyInBox(Landroid/content/Context;)I
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 7375
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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

.method public static getDisplayName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 7433
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 7434
    .local v1, url:Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 7
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 7412
    const-string v2, "mailboxKey"

    invoke-static {p0, p1, p2, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 7414
    .local v0, mailboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 7415
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 7417
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static getMailboxType(Landroid/content/Context;J)I
    .registers 11
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 7424
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 7425
    .local v1, url:Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

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

    .line 7398
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_SUM_OF_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

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

    .line 7383
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

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

    .line 7391
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

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
    .registers 5
    .parameter "type"

    .prologue
    .line 7521
    const/4 v0, 0x6

    if-eq p0, v0, :cond_19

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_19

    int-to-long v0, p0

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    int-to-long v0, p0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static isRefreshable(Landroid/content/Context;JZ)Z
    .registers 7
    .parameter "context"
    .parameter "mailboxId"
    .parameter "isEAS"

    .prologue
    const/4 v0, 0x0

    .line 7445
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_8

    .line 7462
    :goto_7
    :pswitch_7
    :sswitch_7
    return v0

    .line 7448
    :cond_8
    if-eqz p3, :cond_13

    .line 7449
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 7462
    :goto_11
    const/4 v0, 0x1

    goto :goto_7

    .line 7455
    :cond_13
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    packed-switch v1, :pswitch_data_26

    :pswitch_1a
    goto :goto_11

    .line 7449
    nop

    :sswitch_data_1c
    .sparse-switch
        -0x1 -> :sswitch_7
        0x4 -> :sswitch_7
    .end sparse-switch

    .line 7455
    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_7
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 8
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 7366
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 7367
    .local v0, mailboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 7368
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 7370
    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static restoreMailboxWhere(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 7142
    .line 7145
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_76

    move-result-object v2

    .line 7147
    if-eqz v2, :cond_19

    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_9f

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 7169
    :cond_19
    if-eqz v2, :cond_24

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_24

    .line 7170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_24
    move-object v0, v6

    .line 7172
    :goto_25
    return-object v0

    .line 7151
    :cond_26
    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3c

    .line 7152
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_9f

    .line 7169
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 7170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3a
    move-object v0, v6

    goto :goto_25

    .line 7155
    :cond_3c
    :try_start_3c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 7156
    const/4 v0, 0x0

    .line 7158
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_69

    move v3, v0

    .line 7160
    :goto_4a
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    aput-object v0, v1, v3

    .line 7161
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_59} :catch_9f

    move-result v0

    if-nez v0, :cond_a2

    .line 7169
    if-eqz v2, :cond_67

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_67

    .line 7170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_67
    move-object v0, v1

    .line 7172
    goto :goto_25

    .line 7169
    :cond_69
    if-eqz v2, :cond_74

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_74

    .line 7170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_74
    move-object v0, v6

    goto :goto_25

    .line 7165
    :catch_76
    move-exception v0

    move-object v1, v6

    .line 7166
    :goto_78
    :try_start_78
    const-string v2, "EmailContent >>"

    const-string v3, "Exception in restoreMailboxWhere"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_9c

    .line 7169
    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 7170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8a
    move-object v0, v6

    goto :goto_25

    .line 7169
    :catchall_8c
    move-exception v0

    move-object v2, v6

    :goto_8e
    if-eqz v2, :cond_99

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_99

    .line 7170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_99
    throw v0

    .line 7169
    :catchall_9a
    move-exception v0

    goto :goto_8e

    :catchall_9c
    move-exception v0

    move-object v2, v1

    goto :goto_8e

    .line 7165
    :catch_9f
    move-exception v0

    move-object v1, v2

    goto :goto_78

    :cond_a2
    move v3, v4

    goto :goto_4a
.end method

.method public static restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 7099
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 7105
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_13} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_13} :catch_64

    move-result-object v1

    .line 7108
    if-eqz v1, :cond_30

    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7109
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_24} :catch_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_24} :catch_8f

    .line 7124
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 7125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    :goto_2f
    return-object v0

    .line 7124
    :cond_30
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 7125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    move-object v0, v6

    goto :goto_2f

    .line 7113
    :catch_3d
    move-exception v0

    move-object v0, v6

    .line 7114
    :goto_3f
    :try_start_3f
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mailbox found with Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_8a

    .line 7124
    if-eqz v0, :cond_62

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_62

    .line 7125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_62
    move-object v0, v6

    goto :goto_2f

    .line 7118
    :catch_64
    move-exception v0

    move-object v1, v6

    .line 7119
    :goto_66
    :try_start_66
    const-string v0, "EmailContent >>"

    const-string v2, "database is locked"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_88

    .line 7124
    if-eqz v1, :cond_78

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_78

    .line 7125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_78
    move-object v0, v6

    goto :goto_2f

    .line 7124
    :catchall_7a
    move-exception v0

    move-object v1, v6

    :goto_7c
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_87

    .line 7125
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0

    .line 7124
    :catchall_88
    move-exception v0

    goto :goto_7c

    :catchall_8a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_7c

    .line 7118
    :catch_8f
    move-exception v0

    goto :goto_66

    .line 7113
    :catch_91
    move-exception v0

    move-object v0, v1

    goto :goto_3f
.end method

.method public static restoreMailboxWithTagId(Landroid/content/Context;JLjava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 8
    .parameter "context"
    .parameter "accountId"
    .parameter "tagId"

    .prologue
    .line 7133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountKey=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "syncKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7135
    .local v0, where:Ljava/lang/String;
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreMailboxWithTagId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7136
    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWhere(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    return-object v1
.end method

.method public static restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 7181
    const/4 v6, 0x0

    .line 7182
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 7184
    .local v8, mailboxId:J
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=258"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7186
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7187
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_35

    move-result-wide v8

    .line 7193
    :cond_1f
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 7194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7197
    :cond_2a
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_34

    .line 7198
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 7203
    :cond_34
    :goto_34
    return-object v10

    .line 7189
    :catch_35
    move-exception v7

    .line 7190
    .local v7, e:Ljava/lang/Exception;
    :try_start_36
    const-string v0, "EmailContent >>"

    const-string v1, "Exception in restoreUnifiedMailbox"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    .line 7193
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 7194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 7193
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_49
    move-exception v0

    if-eqz v6, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_55

    .line 7194
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0
.end method

.method public static restoreUnifiedTrashMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 7234
    const/4 v6, 0x0

    .line 7235
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 7237
    .local v8, mailboxId:J
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=259"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7239
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7240
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_35

    move-result-wide v8

    .line 7246
    :cond_1f
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 7247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7250
    :cond_2a
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_34

    .line 7251
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 7256
    :cond_34
    :goto_34
    return-object v10

    .line 7242
    :catch_35
    move-exception v7

    .line 7243
    .local v7, e:Ljava/lang/Exception;
    :try_start_36
    const-string v0, "EmailContent >>"

    const-string v1, "Exception in restoreUnifiedTrashMailbox"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    .line 7246
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 7247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 7246
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_49
    move-exception v0

    if-eqz v6, :cond_55

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_55

    .line 7247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0
.end method

.method public static saveKeyword(Landroid/content/Context;JLjava/lang/String;)V
    .registers 8
    .parameter "ctx"
    .parameter "mbId"
    .parameter "keyword"

    .prologue
    const/4 v3, 0x0

    .line 7210
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 7211
    .local v1, mburi:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7212
    .local v0, keywordValues:Landroid/content/ContentValues;
    const-string v2, "keyWord"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7215
    return-void
.end method

.method public static setSyncStatus(Landroid/content/Context;JI)V
    .registers 8
    .parameter "context"
    .parameter "mailboxId"
    .parameter "syncStatus"

    .prologue
    const/4 v3, 0x0

    .line 7526
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7527
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncStatus"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7528
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7531
    return-void
.end method

.method public static updateModSeq(Landroid/content/Context;JLjava/lang/String;)V
    .registers 8
    .parameter "ctx"
    .parameter "mbId"
    .parameter "modSeq"

    .prologue
    const/4 v3, 0x0

    .line 7223
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 7224
    .local v0, mburi:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7225
    .local v1, updateModSeqValues:Landroid/content/ContentValues;
    const-string v2, "syncKey"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7227
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 7053
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 7057
    :goto_4
    return-object v1

    .line 7054
    :catch_5
    move-exception v0

    .line 7056
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7057
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7263
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 7264
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 7265
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 7266
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 7267
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 7268
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 7269
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 7270
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 7271
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 7272
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 7273
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    .line 7274
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 7275
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    .line 7276
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mUnreadCount:I

    .line 7277
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_ea

    move v0, v1

    :goto_6d
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 7278
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_ec

    :goto_77
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    .line 7279
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlags:I

    .line 7280
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 7281
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 7283
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 7284
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 7286
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 7287
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mLastTouchedTime:Ljava/lang/String;

    .line 7291
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    .line 7292
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mTypeMsg:I

    .line 7293
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSevenMailboxKey:J

    .line 7294
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncFlag:I

    .line 7296
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    .line 7297
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 7302
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mKeyWord:Ljava/lang/String;

    .line 7304
    return-void

    :cond_ea
    move v0, v2

    .line 7277
    goto :goto_6d

    :cond_ec
    move v1, v2

    .line 7278
    goto :goto_77
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 7308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7309
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7310
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7311
    const-string v1, "parentServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7312
    const-string v1, "parentKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7313
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7314
    const-string v1, "type"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7315
    const-string v1, "delimiter"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7316
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7317
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7318
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7319
    const-string v1, "syncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7320
    const-string v1, "unreadCount"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mUnreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7321
    const-string v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7322
    const-string v1, "flagNoSelect"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7323
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7324
    const-string v1, "visibleLimit"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7325
    const-string v1, "syncStatus"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7327
    const-string v1, "flagChanged"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7328
    const-string v1, "dstMailboxId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7329
    const-string v1, "newDisplayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7330
    const-string v1, "lastTouchedTime"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mLastTouchedTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7333
    const-string v1, "offpeakSyncSchedule"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7334
    const-string v1, "peakSyncSchedule"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7339
    const-string v1, "keyWord"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7340
    return-object v0
.end method
