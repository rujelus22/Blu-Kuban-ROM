.class public final Lcom/android/emailcommon/provider/EmailContent$Message;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$MessageColumns;
.implements Lcom/android/emailcommon/provider/EmailContent$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final ID_MAILBOX_PROJECTION:[Ljava/lang/String;

.field public static final ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final NOTIFIER_URI:Landroid/net/Uri;

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public mAccountKey:J

.field public mAccountSchema:Ljava/lang/String;

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mConversationIndex:[B

.field public mDisplayName:Ljava/lang/String;

.field public mDstMailBoxKey:I

.field public transient mEncrypted:Z

.field public mEncryptionAlgorithm:Ljava/lang/Integer;

.field public mEstimatedDataSize:I

.field public mFFlag:Z

.field public mFlagAttachment:Z

.field public mFlagFavorite:Z

.field public mFlagLoaded:I

.field public mFlagMoved:I

.field public mFlagRead:Z

.field public mFlagReply:Z

.field public mFlagStatus:I

.field public mFlagTruncated:I

.field public mFlags:I

.field public transient mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

.field public mFrom:Ljava/lang/String;

.field public transient mHtml:Ljava/lang/String;

.field public transient mHtmlReply:Ljava/lang/String;

.field public mIRMContentExpiryDate:Ljava/lang/String;

.field public mIRMContentOwner:Ljava/lang/String;

.field public mIRMLicenseFlag:I

.field public mIRMOwner:I

.field public mIRMRemovalFlag:I

.field public mIRMTemplateDescription:Ljava/lang/String;

.field public mIRMTemplateId:Ljava/lang/String;

.field public mIRMTemplateName:Ljava/lang/String;

.field public mImportance:I

.field public transient mIntroText:Ljava/lang/String;

.field public mIsMimeLoaded:I

.field public transient mLastVerb:I

.field public transient mLastVerbTime:J

.field public mMailboxKey:J

.field public mMailboxType:I

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageDirty:I

.field public mMessageId:Ljava/lang/String;

.field public mMessageKey:J

.field public mMessageType:I

.field public mMissingBody:I

.field public mMissingHtmlBody:I

.field public mOriginalId:J

.field public transient mProcessed:Z

.field public mReplyTo:Ljava/lang/String;

.field public mRetrySendTimes:I

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public mSevenAccountKey:J

.field public mSevenMessageKey:J

.field public transient mSigned:Z

.field public mSnippet:Ljava/lang/String;

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public transient mTextReply:Ljava/lang/String;

.field public mThreadId:J

.field public mThreadName:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;

.field public mTypeMsg:I

.field public mUmCallerId:Ljava/lang/String;

.field public mUmUserNotes:Ljava/lang/String;

.field public mUnkEncoding:I

.field public transient mVerified:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 827
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 1026
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "threadName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "istruncated"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagMoved"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "dstMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "encryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "conversationIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "umUserNotes"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "messageDirty"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "originalId"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "IRMContentExpiryDate"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMContentOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "IRMLicenseFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "IRMOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "IRMRemovalFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IRMTemplateName"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "IRMTemplateDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "EasLocalDeleteFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "retrySendTimes"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "sevenMessageKey"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "missingBody"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "missingHtmlBody"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "unkEncoding"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "sevenAccountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1118
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "threadName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "istruncated"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagMoved"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "dstMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "encryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "conversationIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "umUserNotes"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "messageDirty"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "originalId"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "IRMContentExpiryDate"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMContentOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "IRMLicenseFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "IRMOwner"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "IRMRemovalFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "IRMTemplateName"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "IRMTemplateDescription"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "EasLocalDeleteFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "retrySendTimes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    .line 1249
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "istruncated"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "flagMoved"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dstMailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    .line 1271
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 1275
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "originalId"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

    .line 1284
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 1289
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "originalId"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1631
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 1341
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1343
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1345
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1347
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1349
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    .line 1351
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    .line 1353
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1356
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFFlag:Z

    .line 1386
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 1390
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1392
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    .line 1394
    iput v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDstMailBoxKey:I

    .line 1396
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1399
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    .line 1402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    .line 1404
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 1433
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1473
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .line 1509
    iput v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    .line 1518
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    .line 1632
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 1633
    return-void
.end method

.method public static getThreadIdFromSubject(Ljava/lang/String;)J
    .registers 8
    .parameter "subject"

    .prologue
    .line 2424
    const-wide/16 v0, 0x0

    .line 2425
    .local v0, threadId:J
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2427
    .local v2, threadName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2428
    const-wide/16 v0, 0x0

    .line 2432
    :goto_e
    return-wide v0

    .line 2430
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0xc

    shl-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    and-int/lit16 v5, v5, 0xfff

    int-to-long v5, v5

    or-long v0, v3, v5

    goto :goto_e
.end method

.method public static getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 2403
    .line 2405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2406
    const-string v0, ""

    .line 2420
    :goto_8
    return-object v0

    .line 2409
    :cond_9
    const/16 v0, 0x3a

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2410
    if-gez v0, :cond_16

    .line 2411
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2413
    :cond_16
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_8

    .line 2415
    :catch_21
    move-exception v0

    .line 2416
    const-string v0, ""

    goto :goto_8
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1749
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1750
    if-nez p0, :cond_b

    move-object v0, v6

    .line 1776
    :cond_a
    :goto_a
    return-object v0

    .line 1754
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1755
    if-nez v0, :cond_13

    move-object v0, v6

    .line 1757
    goto :goto_a

    .line 1761
    :cond_13
    :try_start_13
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_67
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1b} :catch_43
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_13 .. :try_end_1b} :catch_55

    move-result-object v1

    .line 1763
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1764
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_75
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_2a} :catch_79
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1c .. :try_end_2a} :catch_77

    .line 1775
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 1775
    :cond_36
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    move-object v0, v6

    goto :goto_a

    .line 1768
    :catch_43
    move-exception v0

    move-object v1, v6

    .line 1769
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_75

    .line 1775
    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_53
    move-object v0, v6

    goto :goto_a

    .line 1771
    :catch_55
    move-exception v0

    move-object v1, v6

    .line 1772
    :goto_57
    :try_start_57
    invoke-virtual {v0}, Landroid/database/CursorWindowAllocationException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_75

    .line 1775
    if-eqz v1, :cond_65

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_65
    move-object v0, v6

    goto :goto_a

    .line 1775
    :catchall_67
    move-exception v0

    move-object v1, v6

    :goto_69
    if-eqz v1, :cond_74

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_74

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v0

    .line 1775
    :catchall_75
    move-exception v0

    goto :goto_69

    .line 1771
    :catch_77
    move-exception v0

    goto :goto_57

    .line 1768
    :catch_79
    move-exception v0

    goto :goto_45
.end method

.method public static splitBody(Ljava/lang/String;Ljava/util/Vector;I)V
    .registers 5
    .parameter "data"
    .parameter
    .parameter "splitSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2261
    .local p1, chunks:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2262
    .local v0, splitEnd:Z
    :goto_1
    if-nez v0, :cond_21

    .line 2263
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_1c

    .line 2264
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2267
    :cond_1c
    invoke-virtual {p1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2268
    const/4 v0, 0x1

    goto :goto_1

    .line 2271
    :cond_21
    return-void
.end method

.method public static splitBodyAgain(ILjava/util/Vector;I)V
    .registers 10
    .parameter "splitIndex"
    .parameter
    .parameter "microSplitSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2275
    .local p1, bodyChunks:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p1, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2276
    .local v3, splitedBody:Ljava/lang/String;
    const-string v4, "BodyInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message is going to split again at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2278
    .local v1, microChunks:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {v3, v1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->splitBody(Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2279
    const-string v4, "BodyInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length of microChunks:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const/4 v0, 0x0

    .line 2281
    .local v0, index:I
    invoke-virtual {p1, p0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2282
    :goto_46
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_59

    .line 2283
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, p0, 0x1

    .end local p0
    .local v2, splitIndex:I
    invoke-virtual {p1, v4, p0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 2284
    add-int/lit8 v0, v0, 0x1

    move p0, v2

    .end local v2           #splitIndex:I
    .restart local p0
    goto :goto_46

    .line 2287
    :cond_59
    return-void
.end method


# virtual methods
.method public addSaveBodyOps(Ljava/util/ArrayList;)I
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2296
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2297
    .local v1, nOPSIndex:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2298
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 2299
    const-string v2, "textContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    :cond_14
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 2302
    const-string v2, "htmlContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :cond_1f
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 2305
    const-string v2, "textReply"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    :cond_2a
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 2308
    const-string v2, "htmlReply"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    :cond_35
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_48

    .line 2311
    const-string v2, "sourceMessageKey"

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2313
    :cond_48
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v2, :cond_53

    .line 2314
    const-string v2, "introText"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    :cond_53
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_5e

    .line 2317
    const-string v2, "htmlContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    :cond_5e
    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_69

    .line 2320
    const-string v2, "textContent"

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_69
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7c

    .line 2323
    const-string v2, "messageKey"

    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2326
    :cond_7c
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    return v1
.end method

.method public addSaveOps(Ljava/util/ArrayList;)I
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2335
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2338
    .local v6, nOPSIndex:I
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2342
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_ce

    .line 2343
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 2347
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2350
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2351
    .local v3, cv:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_35

    .line 2352
    const-string v7, "textContent"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    :cond_35
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_40

    .line 2355
    const-string v7, "htmlContent"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_40
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v7, :cond_4b

    .line 2358
    const-string v7, "textReply"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    :cond_4b
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v7, :cond_56

    .line 2361
    const-string v7, "htmlReply"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :cond_56
    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_69

    .line 2364
    const-string v7, "sourceMessageKey"

    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2366
    :cond_69
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v7, :cond_74

    .line 2367
    const-string v7, "introText"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    :cond_74
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2370
    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2371
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2372
    .local v2, backValues:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 2373
    .local v5, messageBackValue:I
    const-string v7, "messageKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2374
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_dc

    .line 2378
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2379
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "messageKey"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 2344
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #backValues:Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #messageBackValue:I
    :cond_ce
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_16

    .line 2345
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    goto/16 :goto_16

    .line 2386
    .restart local v2       #backValues:Landroid/content/ContentValues;
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v5       #messageBackValue:I
    :cond_dc
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    if-nez v7, :cond_e7

    .line 2387
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;-><init>()V

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .line 2390
    :cond_e7
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "messageKey"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2396
    return v6
.end method

.method public getSmimeFlags()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2024
    const/4 v0, 0x0

    .line 2025
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_22

    move v1, v2

    :goto_8
    shl-int/lit8 v0, v1, 0x0

    .line 2026
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v1, :cond_24

    move v1, v2

    :goto_f
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 2027
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-eqz v1, :cond_26

    move v1, v2

    :goto_17
    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 2028
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    if-eqz v1, :cond_28

    :goto_1e
    shl-int/lit8 v1, v2, 0x3

    or-int/2addr v0, v1

    .line 2029
    return v0

    :cond_22
    move v1, v3

    .line 2025
    goto :goto_8

    :cond_24
    move v1, v3

    .line 2026
    goto :goto_f

    :cond_26
    move v1, v3

    .line 2027
    goto :goto_17

    :cond_28
    move v2, v3

    .line 2028
    goto :goto_1e
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 9
    .parameter "cursor"

    .prologue
    const/16 v6, 0x38

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1916
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 1917
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1918
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1919
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1920
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1921
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1e4

    move v1, v2

    :goto_2a
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1922
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1923
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1e7

    move v1, v2

    :goto_3b
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1924
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1ea

    move v1, v2

    :goto_45
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1925
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1926
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1927
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 1928
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 1929
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1930
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1931
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1932
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1933
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1934
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1935
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1936
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 1937
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1938
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    .line 1941
    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 1944
    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 1945
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 1946
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    .line 1947
    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDstMailBoxKey:I

    .line 1948
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1951
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    .line 1954
    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1955
    .local v0, flags:I
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->setSmimeFlags(I)V

    .line 1956
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    .line 1959
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 1960
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationIndex:[B

    .line 1963
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1ed

    move v1, v2

    :goto_11d
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFFlag:Z

    .line 1970
    const/16 v1, 0x24

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    .line 1971
    const/16 v1, 0x25

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    .line 1974
    const/16 v1, 0x26

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    .line 1975
    const/16 v1, 0x27

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageDirty:I

    .line 1978
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1f0

    :goto_147
    iput-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    .line 1980
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-le v1, v6, :cond_17f

    .line 1983
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    .line 1984
    const/16 v1, 0x39

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    .line 1985
    const/16 v1, 0x3a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    .line 1986
    const/16 v1, 0x3b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    .line 1987
    const/16 v1, 0x3c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUnkEncoding:I

    .line 1988
    const/16 v1, 0x3d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    .line 1991
    :cond_17f
    const/16 v1, 0x28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    .line 1992
    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    .line 1994
    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1996
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    .line 1998
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    .line 1999
    const/16 v1, 0x2e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    .line 2000
    const/16 v1, 0x2f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    .line 2001
    const/16 v1, 0x30

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    .line 2002
    const/16 v1, 0x31

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    .line 2003
    const/16 v1, 0x32

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMRemovalFlag:I

    .line 2004
    const/16 v1, 0x33

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 2005
    const/16 v1, 0x34

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 2008
    const/16 v1, 0x37

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    .line 2009
    return-void

    .end local v0           #flags:I
    :cond_1e4
    move v1, v3

    .line 1921
    goto/16 :goto_2a

    :cond_1e7
    move v1, v3

    .line 1923
    goto/16 :goto_3b

    :cond_1ea
    move v1, v3

    .line 1924
    goto/16 :goto_45

    .restart local v0       #flags:I
    :cond_1ed
    move v1, v3

    .line 1963
    goto/16 :goto_11d

    :cond_1f0
    move v2, v3

    .line 1978
    goto/16 :goto_147
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .registers 20
    .parameter "context"

    .prologue
    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v11

    if-nez v11, :cond_36

    const/4 v4, 0x1

    .line 2061
    .local v4, doSave:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-nez v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-nez v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v11, :cond_2f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 2063
    :cond_2f
    if-eqz v4, :cond_38

    .line 2064
    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v10

    .line 2117
    :cond_35
    :goto_35
    return-object v10

    .line 2054
    .end local v4           #doSave:Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_7

    .line 2068
    .restart local v4       #doSave:Z
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4c

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v10

    goto :goto_35

    .line 2071
    :cond_4c
    const/4 v10, 0x0

    goto :goto_35

    .line 2075
    :cond_4e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    .line 2078
    :try_start_58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "com.android.email.provider"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 2083
    .local v9, results:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a0

    .line 2084
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2085
    .local v3, cv:Landroid/content/ContentValues;
    const-string v11, "typeMsg"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2086
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$MessageCB;->CONTENT_URI:Landroid/net/Uri;

    const-string v14, "messageKey=?"

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const/4 v11, 0x0

    aget-object v11, v9, v11

    iget-object v11, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    invoke-virtual {v12, v13, v3, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2094
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_a0
    if-eqz v4, :cond_f7

    .line 2095
    const/4 v11, 0x0

    aget-object v11, v9, v11

    iget-object v10, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 2096
    .local v10, u:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2097
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v11, :cond_35

    .line 2098
    const/4 v7, 0x2

    .line 2099
    .local v7, resultOffset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move v8, v7

    .end local v7           #resultOffset:I
    .local v8, resultOffset:I
    :goto_ca
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2101
    .local v2, a:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    add-int/lit8 v7, v8, 0x1

    .end local v8           #resultOffset:I
    .restart local v7       #resultOffset:I
    aget-object v11, v9, v8

    iget-object v10, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 2102
    if-eqz v10, :cond_ef

    .line 2103
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2105
    :cond_ef
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v11, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_f5} :catch_fe
    .catch Landroid/content/OperationApplicationException; {:try_start_58 .. :try_end_f5} :catch_fa

    move v8, v7

    .end local v7           #resultOffset:I
    .restart local v8       #resultOffset:I
    goto :goto_ca

    .line 2110
    .end local v2           #a:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #resultOffset:I
    .end local v10           #u:Landroid/net/Uri;
    :cond_f7
    const/4 v10, 0x0

    goto/16 :goto_35

    .line 2114
    .end local v9           #results:[Landroid/content/ContentProviderResult;
    :catch_fa
    move-exception v11

    .line 2117
    :goto_fb
    const/4 v10, 0x0

    goto/16 :goto_35

    .line 2112
    :catch_fe
    move-exception v11

    goto :goto_fb
.end method

.method public setSmimeFlags(I)V
    .registers 5
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2038
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    .line 2039
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_20

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    .line 2040
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_22

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    .line 2041
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_24

    :goto_1b
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    .line 2042
    return-void

    :cond_1e
    move v0, v2

    .line 2038
    goto :goto_7

    :cond_20
    move v0, v2

    .line 2039
    goto :goto_e

    :cond_22
    move v0, v2

    .line 2040
    goto :goto_15

    :cond_24
    move v1, v2

    .line 2041
    goto :goto_1b
.end method

.method public splitInsert(Landroid/content/Context;)Ljava/lang/Long;
    .registers 21
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 2133
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2135
    .local v4, bodyChunks:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 2136
    .local v9, pstCPResult:[Landroid/content/ContentProviderResult;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2139
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v15, :cond_121

    const/4 v7, 0x1

    .line 2141
    .local v7, htmlPresence:Z
    :goto_12
    const/4 v15, 0x1

    if-ne v7, v15, :cond_124

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 2143
    .local v13, tempBodyData:Ljava/lang/String;
    :goto_19
    const/high16 v15, 0x4

    invoke-static {v13, v4, v15}, Lcom/android/emailcommon/provider/EmailContent$Message;->splitBody(Ljava/lang/String;Ljava/util/Vector;I)V

    .line 2149
    const/4 v14, -0x1

    .line 2161
    .local v14, truncationVal:I
    const/4 v2, 0x5

    .line 2162
    .local v2, MAX_FAILED_COUNT:I
    const/4 v6, 0x0

    .line 2163
    .local v6, failedCount:I
    const/4 v12, 0x0

    .line 2164
    .local v12, splitIndex:I
    const/high16 v3, 0x4

    .line 2166
    .local v3, adaptive_chunk_size:I
    :goto_24
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v12, v15, :cond_286

    .line 2168
    if-lt v6, v2, :cond_58

    .line 2169
    invoke-virtual {v4, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    div-int/lit8 v3, v15, 0x2

    .line 2170
    invoke-static {v12, v4, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->splitBodyAgain(ILjava/util/Vector;I)V

    .line 2171
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Finally Main Body Chunks size :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const/4 v6, 0x0

    .line 2178
    :cond_58
    if-nez v12, :cond_7a

    .line 2179
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v15, v0, :cond_6e

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7a

    .line 2181
    :cond_6e
    const/4 v15, -0x1

    if-ne v14, v15, :cond_7a

    .line 2183
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 2184
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 2189
    :cond_7a
    const/4 v15, 0x1

    if-ne v7, v15, :cond_12a

    .line 2190
    invoke-virtual {v4, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 2200
    :goto_87
    if-nez v12, :cond_157

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_157

    .line 2202
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    .line 2203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "com.android.email.provider"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 2205
    array-length v15, v9

    if-lez v15, :cond_136

    .line 2207
    const/4 v15, 0x0

    aget-object v15, v9, v15

    iget-object v15, v15, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2208
    const/4 v15, 0x1

    aget-object v15, v9, v15

    iget-object v15, v15, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2209
    .local v10, rowId:J
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Message is inserted at row location : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " For Index:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",Split Body inserted at row # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    add-int/lit8 v12, v12, 0x1

    .line 2213
    const/4 v6, 0x0

    .line 2218
    .end local v10           #rowId:J
    :goto_11c
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_24

    .line 2139
    .end local v2           #MAX_FAILED_COUNT:I
    .end local v3           #adaptive_chunk_size:I
    .end local v6           #failedCount:I
    .end local v7           #htmlPresence:Z
    .end local v12           #splitIndex:I
    .end local v13           #tempBodyData:Ljava/lang/String;
    .end local v14           #truncationVal:I
    :cond_121
    const/4 v7, 0x0

    goto/16 :goto_12

    .line 2141
    .restart local v7       #htmlPresence:Z
    :cond_124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_19

    .line 2194
    .restart local v2       #MAX_FAILED_COUNT:I
    .restart local v3       #adaptive_chunk_size:I
    .restart local v6       #failedCount:I
    .restart local v12       #splitIndex:I
    .restart local v13       #tempBodyData:Ljava/lang/String;
    .restart local v14       #truncationVal:I
    :cond_12a
    invoke-virtual {v4, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_87

    .line 2215
    :cond_136
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Message Failed to Insert :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    add-int/lit8 v6, v6, 0x1

    goto :goto_11c

    .line 2221
    :cond_157
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v12, v15, :cond_18a

    .line 2222
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2223
    .local v5, cv:Landroid/content/ContentValues;
    const-string v15, "istruncated"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2224
    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    .end local v5           #cv:Landroid/content/ContentValues;
    :cond_18a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveBodyOps(Ljava/util/ArrayList;)I

    .line 2229
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "com.android.email.provider"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 2231
    array-length v15, v9

    if-lez v15, :cond_265

    .line 2233
    const-wide/16 v10, 0x0

    .line 2234
    .restart local v10       #rowId:J
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v12, v15, :cond_229

    .line 2235
    const/4 v15, 0x1

    aget-object v15, v9, v15

    iget-object v15, v15, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2236
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " For Index:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",Split Body inserted at row # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "INSERT END SUCCESS For:Message _id : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ServerId :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Subject :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :goto_221
    add-int/lit8 v12, v12, 0x1

    .line 2246
    const/4 v6, 0x0

    .line 2251
    .end local v10           #rowId:J
    :goto_224
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_24

    .line 2241
    .restart local v10       #rowId:J
    :cond_229
    const/4 v15, 0x0

    aget-object v15, v9, v15

    iget-object v15, v15, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2242
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " For Index:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",Split Body inserted at row # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_221

    .line 2248
    .end local v10           #rowId:J
    :cond_265
    const-string v15, "BodyInsert"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to insert body row for Message ID"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    add-int/lit8 v6, v6, 0x1

    goto :goto_224

    .line 2254
    :cond_286
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    return-object v15
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 1637
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1640
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v1, "timeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1642
    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v1, "flagRead"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1644
    const-string v1, "flagLoaded"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1645
    const-string v1, "flagFavorite"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1646
    const-string v1, "flagAttachment"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1647
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1649
    const-string v1, "flagReply"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1650
    const-string v1, "originalId"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1652
    const-string v1, "syncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v1, "syncServerTimeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1654
    const-string v1, "clientId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const-string v1, "messageId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1658
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1660
    const-string v1, "fromList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v1, "toList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    const-string v1, "ccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const-string v1, "bccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const-string v1, "replyToList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v1, "meetingInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v1, "umCallerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v1, "umUserNotes"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v1, "accountSchema"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v1, "mailboxType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1683
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_fb

    .line 1684
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadIdFromSubject(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    .line 1688
    :cond_fb
    const-string v1, "threadId"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1693
    const-string v1, "threadName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v1, "importance"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1698
    const-string v1, "istruncated"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1699
    const-string v1, "flagMoved"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1700
    const-string v1, "dstMailboxKey"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDstMailBoxKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1701
    const-string v1, "flagStatus"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1704
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_202

    .line 1705
    const-string v1, "isMimeLoaded"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1712
    :goto_152
    const-string v1, "conversationId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v1, "conversationIndex"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationIndex:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1715
    const-string v1, "followupflag"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFFlag:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1719
    const-string v1, "smimeFlags"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    const-string v1, "encryptionAlgorithm"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1723
    const-string v1, "lastVerb"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    const-string v1, "lastVerbTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1727
    const-string v1, "messageType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1728
    const-string v1, "messageDirty"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    const-string v1, "snippet"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string v1, "IRMTemplateId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v1, "IRMContentOwner"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v1, "IRMLicenseFlag"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1736
    const-string v1, "IRMOwner"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1737
    const-string v1, "IRMContentExpiryDate"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const-string v1, "IRMRemovalFlag"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMRemovalFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1739
    const-string v1, "IRMTemplateName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    const-string v1, "IRMTemplateDescription"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v1, "retrySendTimes"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1745
    return-object v0

    .line 1707
    :cond_202
    const-string v1, "isMimeLoaded"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_152
.end method
