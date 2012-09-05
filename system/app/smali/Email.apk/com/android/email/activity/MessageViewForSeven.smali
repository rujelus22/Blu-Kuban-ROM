.class public Lcom/android/email/activity/MessageViewForSeven;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewForSeven$6;,
        Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;,
        Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;,
        Lcom/android/email/activity/MessageViewForSeven$Z7Handler;
    }
.end annotation


# static fields
.field private static final Z7_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final Z7_OK_VALUE:I

.field protected static mClient:Lcom/seven/Z7/app/Z7ServiceClient;

.field public static mInit:Z

.field protected static zHandler:Lcom/digc/seven/Z7MailHandler;


# instance fields
.field protected mApp:Lcom/android/email/Email;

.field private mBodyDownloadTaskId:I

.field mBusyIndicator:Landroid/widget/ProgressBar;

.field mBusyIndicatorContainer:Landroid/view/View;

.field private mContentTypeForReadMore:Ljava/lang/String;

.field private mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

.field mEmbeddedAttachmentsDownloading:Z

.field mIsAttachmentDownloading:Z

.field private mIsDownloading:Z

.field private mLoadingScreenType:I

.field mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

.field mNeedReadMoreAction:Z

.field mReportDialogShowed:Z

.field private mZ7AttachmentInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 73
    sget-object v0, Lcom/seven/util/Z7Result;->Z7_OK:Lcom/seven/util/Z7Result;

    invoke-virtual {v0}, Lcom/seven/util/Z7Result;->getValue()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    .line 104
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_from"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_unread"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "delivery_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_attachments"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meet_state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "missing_body"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "html_body"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "missing_html_body"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "folder_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "unk_encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bcc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageViewForSeven;->Z7_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 152
    sput-boolean v3, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    .line 134
    iput v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    .line 511
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 625
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    .line 694
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;-><init>(Lcom/android/email/activity/MessageViewForSeven;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7Handler:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    .line 984
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 159
    return-void
.end method

.method private _canDownload(I)Z
    .registers 13
    .parameter "nZ7AttachmentId"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 373
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "can_download"

    aput-object v0, v2, v10

    .line 377
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 378
    .local v7, canDL:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 386
    .local v6, attachmentCursor:Landroid/database/Cursor;
    :try_start_3d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 387
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_54

    move-result v0

    if-eqz v0, :cond_52

    move v7, v9

    .line 392
    :cond_4b
    :goto_4b
    if-eqz v6, :cond_51

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    const/4 v6, 0x0

    .line 398
    :cond_51
    :goto_51
    return v7

    :cond_52
    move v7, v10

    .line 387
    goto :goto_4b

    .line 389
    :catch_54
    move-exception v8

    .line 390
    .local v8, e:Ljava/lang/Exception;
    :try_start_55
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "_canDownload()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_63

    .line 392
    if-eqz v6, :cond_51

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    const/4 v6, 0x0

    goto :goto_51

    .line 392
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_63
    move-exception v0

    if-eqz v6, :cond_6a

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    const/4 v6, 0x0

    :cond_6a
    throw v0
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageViewForSeven;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageViewForSeven;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewForSeven;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewForSeven;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewForSeven;->updateAttachment(JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewForSeven;->showDialogExceptionOnThread(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewForSeven;->showReportDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 70
    sget v0, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewForSeven;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageViewForSeven;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    return p1
.end method

.method private canDownloadEmbeddedImages()Z
    .registers 2

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private cancelEmbeddedImagesDownload()V
    .registers 7

    .prologue
    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    if-nez v0, :cond_5

    .line 1130
    :cond_4
    :goto_4
    return-void

    .line 1107
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 1110
    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getStatus()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_90

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    const/4 v1, 0x1

    .line 1113
    :goto_31
    if-eqz v1, :cond_13

    .line 1114
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1115
    const-string v1, "MessageViewForSeven >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel download of embedded images: SevenMessageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v4, v4

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getPosition()I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, Lcom/digc/seven/Z7MailHandler;->cancelDownloadMailAttachment(III)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_82} :catch_83

    goto :goto_13

    .line 1127
    :catch_83
    move-exception v0

    move-object v1, v0

    .line 1128
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList;

    invoke-static {v0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 1110
    :cond_90
    const/4 v1, 0x0

    goto :goto_31
.end method

.method private cancelReadMoreAction()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 531
    const-string v1, "MessageViewForSeven >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelReadMoreAction() started. task id=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    if-eq v1, v6, :cond_67

    .line 535
    :try_start_1f
    const-string v1, "MessageViewForSeven >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel download of mail body: task id#="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SevenMessageKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v3, v3

    int-to-long v3, v3

    iget v5, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/digc/seven/Z7MailHandler;->cancelDownloadMailBody(IJI)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_65} :catch_6b
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_65} :catch_76

    .line 546
    :goto_65
    iput v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I

    .line 548
    :cond_67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 549
    return-void

    .line 541
    :catch_6b
    move-exception v0

    .line 542
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_65

    .line 543
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_76
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_65
.end method

.method private findZ7AttachmentId(Landroid/content/Context;JLjava/lang/String;)J
    .registers 15
    .parameter "context"
    .parameter "z7messageKey"
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    .line 947
    invoke-direct {p0, p4}, Lcom/android/email/activity/MessageViewForSeven;->getZ7AttachmentPos(Ljava/lang/String;)I

    move-result v9

    .line 949
    .local v9, pos:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 952
    .local v2, _PROJECTION:[Ljava/lang/String;
    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 953
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "pos"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 958
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 961
    .local v7, id:J
    :try_start_44
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 962
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_56

    move-result v0

    int-to-long v7, v0

    .line 965
    :cond_50
    if-eqz v6, :cond_55

    .line 966
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 970
    :cond_55
    return-wide v7

    .line 965
    :catchall_56
    move-exception v0

    if-eqz v6, :cond_5c

    .line 966
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0
.end method

.method private getZ7AttachmentPos(Ljava/lang/String;)I
    .registers 4
    .parameter "location"

    .prologue
    .line 929
    if-nez p1, :cond_4

    .line 930
    const/4 v0, 0x0

    .line 935
    .local v0, pos:I
    :goto_3
    return v0

    .line 932
    .end local v0           #pos:I
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .restart local v0       #pos:I
    goto :goto_3
.end method

.method private readMoreAction(Ljava/lang/String;)V
    .registers 9
    .parameter "contentType"

    .prologue
    .line 557
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-nez v2, :cond_b

    .line 623
    :cond_a
    :goto_a
    return-void

    .line 560
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelReadMoreAction()V

    .line 563
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 564
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_a

    .line 568
    :cond_2a
    const-string v2, "text/html"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 569
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget v1, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    .line 570
    .local v1, missingHtmlBody:I
    const-string v2, "MessageViewForSeven >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Readmore request, Missing HTML Body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_5a

    if-eqz v1, :cond_a

    .line 580
    .end local v1           #missingHtmlBody:I
    :cond_5a
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/email/activity/MessageViewForSeven$2;

    invoke-direct {v3, p0, p1}, Lcom/android/email/activity/MessageViewForSeven$2;-><init>(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/String;)V

    const-string v4, "MailChunkBodyDownload"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 622
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    goto :goto_a

    .line 574
    :cond_6d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    .line 575
    .local v0, missingBodyBytes:I
    const-string v2, "MessageViewForSeven >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Readmore request, Missing Body bytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v2, :cond_5a

    if-nez v0, :cond_5a

    goto/16 :goto_a
.end method

.method private showDialogExceptionOnThread(Ljava/lang/Exception;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList;

    .line 409
    .local v0, messageList:Lcom/android/email/activity/MessageList;
    new-instance v1, Lcom/android/email/activity/MessageViewForSeven$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/email/activity/MessageViewForSeven$1;-><init>(Lcom/android/email/activity/MessageViewForSeven;Lcom/android/email/activity/MessageList;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method private showReportDialog(Landroid/os/Bundle;)V
    .registers 10
    .parameter "b"

    .prologue
    .line 634
    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    if-eqz v6, :cond_5

    .line 692
    :cond_4
    :goto_4
    return-void

    .line 637
    :cond_5
    const-string v6, "errorCode"

    sget v7, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 640
    .local v3, errorCode:I
    sget v6, Lcom/android/email/activity/MessageViewForSeven;->Z7_OK_VALUE:I

    if-eq v3, v6, :cond_98

    .line 641
    sget-object v6, Lcom/seven/util/Z7Result;->Z7_E_NOT_READY:Lcom/seven/util/Z7Result;

    invoke-virtual {v6}, Lcom/seven/util/Z7Result;->getValue()I

    move-result v6

    if-ne v3, v6, :cond_87

    .line 645
    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SEND_TIMEDOUT:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v2

    .line 646
    .local v2, errCodeValue:I
    invoke-static {v2}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v4

    .line 662
    .end local v2           #errCodeValue:I
    .local v4, text:Ljava/lang/CharSequence;
    :goto_27
    if-eqz v5, :cond_2f

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3a

    .line 663
    :cond_2f
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0804ba

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 665
    :cond_3a
    if-eqz v4, :cond_42

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_4d

    .line 666
    :cond_42
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080456

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 668
    :cond_4d
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mReportDialogShowed:Z

    .line 670
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 671
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 674
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 675
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 677
    const v6, 0x7f0804d1

    new-instance v7, Lcom/android/email/activity/MessageViewForSeven$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/MessageViewForSeven$3;-><init>(Lcom/android/email/activity/MessageViewForSeven;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    new-instance v6, Lcom/android/email/activity/MessageViewForSeven$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/MessageViewForSeven$4;-><init>(Lcom/android/email/activity/MessageViewForSeven;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4

    .line 648
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_87
    sget-object v6, Lcom/seven/util/Z7Result;->Z7_E_CANCELED:Lcom/seven/util/Z7Result;

    invoke-virtual {v6}, Lcom/seven/util/Z7Result;->getValue()I

    move-result v6

    if-eq v3, v6, :cond_4

    .line 654
    invoke-static {v3}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5       #title:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #text:Ljava/lang/CharSequence;
    goto :goto_27

    .line 658
    .end local v4           #text:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_98
    const-string v6, "subject"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 659
    .restart local v5       #title:Ljava/lang/CharSequence;
    const-string v6, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #text:Ljava/lang/CharSequence;
    goto :goto_27
.end method

.method private updateAttachment(JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    const-string v1, "size"

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J
    invoke-static {p3}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1213
    const-string v1, "contentUri"

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;
    invoke-static {p3}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1215
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1216
    return-void
.end method


# virtual methods
.method public canDownload(Lcom/android/email/AttachmentInfo;)Z
    .registers 8
    .parameter "a"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 353
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 354
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 355
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/activity/MessageViewForSeven;->findZ7AttachmentId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 357
    .local v1, z7attachmentId:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    .line 358
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewForSeven;->_canDownload(I)Z

    move-result v2

    .line 362
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #z7attachmentId:I
    :goto_32
    return v2

    :cond_33
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v4, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_32

    :cond_3e
    const/4 v2, 0x0

    goto :goto_32
.end method

.method public doFinishLoadAttachment(J)V
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_11

    .line 1606
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->doFinishLoadAttachment(J)V

    .line 1607
    :cond_11
    return-void
.end method

.method findAttachmentId(Landroid/content/Context;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;I)J
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1168
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1172
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I
    invoke-static {p4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I

    move-result v3

    if-nez v3, :cond_60

    if-ne p5, v5, :cond_60

    .line 1177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1181
    :goto_45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1183
    const-wide/16 v0, -0x1

    .line 1186
    :try_start_50
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1187
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_ab
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5a} :catch_7e

    move-result v0

    int-to-long v0, v0

    .line 1193
    :cond_5c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1196
    :goto_5f
    return-wide v0

    .line 1179
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I
    invoke-static {p4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_45

    .line 1189
    :catch_7e
    move-exception v2

    .line 1190
    :try_start_7f
    const-string v4, "MessageViewForSeven >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I
    invoke-static {p4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_7f .. :try_end_a7} :catchall_ab

    .line 1193
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    :catchall_ab
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getAccountId()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    goto :goto_12
.end method

.method getAttachmentContentUri(J)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1139
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "uri"

    aput-object v0, v2, v6

    .line 1142
    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1149
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1150
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1154
    :cond_38
    return-object v4
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getController()Lcom/android/email/Controller;
    .registers 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getContoller()Lcom/android/email/Controller;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
    .registers 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .registers 2

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getMessageId()J
    .registers 3

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->getMessageId()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    goto :goto_12
.end method

.method public isBodyDownloadInProgress()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    return v0
.end method

.method public isPremiumUser(J)Z
    .registers 4
    .parameter "accountId"

    .prologue
    .line 298
    invoke-static {p1, p2}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v0

    return v0
.end method

.method public isSecondLoading()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 265
    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public loadContentFromServer(Z)V
    .registers 3
    .parameter "loadAttachment"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_11

    .line 1601
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->loadContentFromServer(Z)V

    .line 1602
    :cond_11
    return-void
.end method

.method public makeAttachmentInfos(J)V
    .registers 14
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 1097
    :cond_d
    :goto_d
    return-void

    .line 1049
    :cond_e
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "file_name"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "size"

    aput-object v1, v2, v0

    const-string v0, "est_size"

    aput-object v0, v2, v4

    const-string v0, "uri"

    aput-object v0, v2, v5

    const-string v0, "mime_type"

    aput-object v0, v2, v6

    const/4 v0, 0x6

    const-string v1, "pos"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "status"

    aput-object v1, v2, v0

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1058
    const/4 v6, 0x0

    .line 1060
    :try_start_4f
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "pos ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_e1
    .catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_5f} :catch_d1

    move-result-object v1

    .line 1064
    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1066
    :cond_66
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1067
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1068
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1069
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1070
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1071
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1073
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 1074
    if-nez v0, :cond_a1

    .line 1075
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;-><init>()V

    .line 1076
    iget-object v9, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_a1
    int-to-long v9, v2

    invoke-virtual {v0, v9, v10}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setId(J)V

    .line 1080
    invoke-virtual {v0, v5}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setContentUri(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0, v3, v4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setSize(J)V

    .line 1082
    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setMimeType(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v0, v7}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setFileName(Ljava/lang/String;)V

    .line 1084
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setPosition(I)V

    .line 1085
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setContentId(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, v8}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setStatus(I)V

    .line 1087
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c7
    .catchall {:try_start_60 .. :try_end_c7} :catchall_e9
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_c7} :catch_eb

    move-result v0

    if-nez v0, :cond_66

    .line 1092
    :cond_ca
    if-eqz v1, :cond_d

    .line 1093
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 1089
    :catch_d1
    move-exception v0

    move-object v1, v6

    .line 1090
    :goto_d3
    :try_start_d3
    const-string v2, "MessageViewForSeven >>"

    const-string v3, "makeAttachmentInfos() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_e9

    .line 1092
    if-eqz v1, :cond_d

    .line 1093
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 1092
    :catchall_e1
    move-exception v0

    move-object v1, v6

    :goto_e3
    if-eqz v1, :cond_e8

    .line 1093
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_e8
    throw v0

    .line 1092
    :catchall_e9
    move-exception v0

    goto :goto_e3

    .line 1089
    :catch_eb
    move-exception v0

    goto :goto_d3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 862
    const-string v1, "MessageViewForSeven >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4d

    .line 865
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 867
    if-eqz p3, :cond_4d

    .line 868
    const-string v1, "basic_attachmentId"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 872
    .local v0, attachmentId:I
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btl : onActivityResult ACTIVITY_RESULT_ATTACHMENT_DETAILS attachmentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    if-eq v0, v4, :cond_4d

    .line 879
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageViewForSeven$5;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MessageViewForSeven$5;-><init>(Lcom/android/email/activity/MessageViewForSeven;I)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    .line 888
    .end local v0           #attachmentId:I
    :cond_4d
    return-void
.end method

.method public onCancelAttachment(J)V
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_11

    .line 1611
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->onCancelAttachment(J)V

    .line 1612
    :cond_11
    return-void
.end method

.method public onInit(Landroid/content/Context;Landroid/view/View;Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 6
    .parameter "c"
    .parameter "v"
    .parameter "messageView"

    .prologue
    .line 197
    invoke-virtual {p0, p1, p3}, Lcom/android/email/activity/MessageViewForSeven;->z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    if-nez v0, :cond_29

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    .line 210
    :goto_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-nez v0, :cond_1d

    .line 211
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;-><init>(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    .line 213
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->start()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 217
    return-void

    .line 202
    :cond_29
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_e
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-eqz v0, :cond_9

    .line 492
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->stop()V

    .line 497
    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelReadMoreAction()V

    .line 499
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    if-eqz v0, :cond_13

    .line 500
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelEmbeddedImagesDownload()V

    .line 502
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 505
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-nez v0, :cond_10

    .line 463
    new-instance v0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;-><init>(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    .line 465
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->start()V

    .line 469
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    if-eqz v0, :cond_34

    .line 470
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->setWaitForLoadMessageId(J)V

    .line 471
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mNeedReadMoreAction:Z

    .line 473
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V

    .line 477
    :cond_34
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 479
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    if-eqz v0, :cond_4f

    .line 480
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 481
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadEmbeddedAttachments(JJ)V

    .line 487
    :cond_4f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "state"

    .prologue
    .line 418
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mIsDownloading"

    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 419
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mEmbeddedAttachmentsDownloading"

    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mIsAttachmentsDownloading"

    iget-boolean v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mLoadingScreenType"

    iget v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mContentTypeForReadMore"

    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v5, p0, Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 429
    .local v1, cols:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;>;"
    const-string v5, "com.android.email.activity.MessageViewFragmentBase.mZ7AttachmentInfo.size"

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, idx:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 433
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-virtual {v0, p1, v3}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->writeToBundle(Landroid/os/Bundle;I)V

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_37

    .line 435
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    :cond_4a
    return-void
.end method

.method public readMoreAction()V
    .registers 3

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 518
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 519
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    if-eqz v0, :cond_22

    .line 520
    const-string v0, "text/html"

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V

    .line 525
    :cond_21
    :goto_21
    return-void

    .line 521
    :cond_22
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 522
    const-string v0, "text/plain"

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "loadAttachment"

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_11

    .line 1596
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1597
    :cond_11
    return-void
.end method

.method public setBusyIndicator()V
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    .line 328
    return-void
.end method

.method public setBusyIndicator(Z)V
    .registers 6
    .parameter "onOff"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 336
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 337
    const/4 p1, 0x0

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_15

    .line 339
    iget-object v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_21

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 340
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mBusyIndicatorContainer:Landroid/view/View;

    if-eqz p1, :cond_23

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_20
    return-void

    :cond_21
    move v0, v2

    .line 339
    goto :goto_12

    :cond_23
    move v1, v2

    .line 341
    goto :goto_1d
.end method

.method public setWaitForLoadMessageId(J)V
    .registers 4
    .parameter "id"

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_11

    .line 1566
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->setWaitForLoadMessageId(J)V

    .line 1567
    :cond_11
    return-void
.end method

.method public startDownloadAttachment(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 897
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageViewForSeven;->findZ7AttachmentId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 900
    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    if-eqz v2, :cond_17

    .line 901
    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->stop()V

    .line 903
    :cond_17
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/seven/Z7/app/AttachmentDetailsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 904
    const-string v3, "attachment_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string v0, "account_id"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 906
    const-string v0, "message_id"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 907
    const-string v0, "attachment_pos"

    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewForSeven;->getZ7AttachmentPos(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v0, "basic_messageId"

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 909
    const-string v0, "basic_attachmentId"

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 910
    const-string v3, "IsEmbeddedImage"

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_57
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 912
    const/high16 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 914
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 917
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsAttachmentDownloading:Z

    .line 918
    return-void

    .line 910
    :cond_6c
    const/4 v0, 0x0

    goto :goto_57
.end method

.method public startDownloadEmbeddedAttachments(JJ)V
    .registers 11
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->canDownloadEmbeddedImages()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1028
    :cond_6
    :goto_6
    return-void

    .line 1003
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getController()Lcom/android/email/Controller;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1007
    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentObserver:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->countIncompleteEmbeddedAttachments()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1011
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1015
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1016
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 1019
    :try_start_32
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    long-to-int v2, p1

    long-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/digc/seven/Z7MailHandler;->downloadMailContentAttachments(II)V

    .line 1021
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_43
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_4e

    goto :goto_6

    .line 1022
    :catch_43
    move-exception v0

    .line 1023
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList;

    invoke-static {v1, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_6

    .line 1024
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_4e
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MessageViewForSeven >>"

    const-string v2, "onMenuItemSelected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method updateMessageBody(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 18
    .parameter "message"

    .prologue
    .line 787
    sget-object v2, Lcom/seven/Z7/provider/Z7Content$Emails;->CONTENT_URI:Landroid/net/Uri;

    .line 789
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, where:Ljava/lang/String;
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/email/activity/MessageViewForSeven;->Z7_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "delivery_time DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_43} :catch_138

    move-result-object v9

    .line 796
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_44
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 797
    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 798
    const/16 v1, 0xe

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 799
    const/16 v1, 0x12

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mUnkEncoding:I

    .line 800
    const/16 v1, 0xb

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    .line 801
    const/16 v1, 0xf

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    .line 802
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 804
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 805
    .local v8, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    iput-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 806
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 807
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 809
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 810
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 812
    :cond_ab
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 813
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    if-nez v1, :cond_c7

    .line 814
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 817
    :cond_c7
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 818
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 819
    const-wide/16 v5, 0x0

    iput-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    .line 820
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v11

    .line 823
    .local v11, facade:Lcom/android/email/combined/MessageFacade;
    invoke-virtual {v11}, Lcom/android/email/combined/MessageFacade;->getBehavior()Lcom/android/email/combined/MessageBehavior;

    move-result-object v7

    .line 825
    .local v7, behavior:Lcom/android/email/combined/MessageBehavior;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$MessageCB;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/email/combined/MessageBehavior;->toContentValuesSeven(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "messageKey=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v3, v5, v6, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    long-to-int v5, v5

    invoke-virtual {v7, v8, v5}, Lcom/android/email/combined/MessageBehavior;->toContentValuesBody(Lcom/android/emailcommon/provider/EmailContent$Body;I)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "messageKey=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-wide v14, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v3, v5, v6, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_44 .. :try_end_129} :catchall_130

    .line 836
    .end local v7           #behavior:Lcom/android/email/combined/MessageBehavior;
    .end local v8           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v11           #facade:Lcom/android/email/combined/MessageFacade;
    :cond_129
    if-eqz v9, :cond_12f

    .line 837
    :try_start_12b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 838
    const/4 v9, 0x0

    .line 845
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_12f
    :goto_12f
    return-void

    .line 836
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catchall_130
    move-exception v1

    if-eqz v9, :cond_137

    .line 837
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 838
    const/4 v9, 0x0

    :cond_137
    throw v1
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_138} :catch_138

    .line 842
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_138
    move-exception v10

    .line 843
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "MessageViewForSeven >>"

    const-string v3, "updateMessageBody(message)"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12f
.end method

.method public z7StopDownloading()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelReadMoreAction()V

    .line 273
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewForSeven;->cancelEmbeddedImagesDownload()V

    .line 274
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mEmbeddedAttachmentsDownloading:Z

    .line 276
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    if-eqz v0, :cond_23

    .line 277
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x5d

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->unRegisterCallback(ILandroid/os/Handler;)V

    .line 278
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x44

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->unRegisterCallback(ILandroid/os/Handler;)V

    .line 281
    :cond_23
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    .line 282
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z

    .line 284
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "z7StopDownloading()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 5
    .parameter "ctx"
    .parameter "messageView"

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    if-nez v0, :cond_24

    .line 169
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "z7initInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p1}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    .line 171
    invoke-virtual {p2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/seven/Z7/app/Z7ServiceClient;->getInstance(Landroid/app/Activity;)Lcom/seven/Z7/app/Z7ServiceClient;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    .line 172
    invoke-static {p1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewForSeven;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    .line 175
    :cond_24
    iput-object p2, p0, Lcom/android/email/activity/MessageViewForSeven;->mMessageView:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 176
    return-void
.end method
