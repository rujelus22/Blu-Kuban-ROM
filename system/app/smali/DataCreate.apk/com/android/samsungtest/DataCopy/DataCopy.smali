.class public Lcom/android/samsungtest/DataCopy/DataCopy;
.super Landroid/app/Activity;
.source "DataCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_CALLLOG:Landroid/net/Uri;

.field private static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private final CALLLOG_FILE:Ljava/lang/String;

.field private final CONTACT_FILE:Ljava/lang/String;

.field CONTENT_URI:Landroid/net/Uri;

.field private final CONTENT_URI_MMS_DRAFTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMS_INBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMS_OUTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMS_SENTBOX:Landroid/net/Uri;

.field CONTENT_URI_PATH:Ljava/lang/String;

.field private final CONTENT_URI_SMS_DRAFTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_SMS_INBOX:Landroid/net/Uri;

.field private final CONTENT_URI_SMS_OUTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_SMS_SENTBOX:Landroid/net/Uri;

.field DATE_FORMAT_TITLE:Ljava/lang/String;

.field KEY_COLOR:Ljava/lang/String;

.field KEY_CONTENT:Ljava/lang/String;

.field KEY_CREATE:Ljava/lang/String;

.field KEY_DELETEFLAG:Ljava/lang/String;

.field KEY_FILECREATE:Ljava/lang/String;

.field KEY_LOCKED:Ljava/lang/String;

.field KEY_MODIFY:Ljava/lang/String;

.field KEY_SYNCHTIME:Ljava/lang/String;

.field KEY_TITLE:Ljava/lang/String;

.field private final LOADDATA_PATH:Ljava/lang/String;

.field private final MMS_FILE:Ljava/lang/String;

.field private final SDCARD_PATH:Ljava/lang/String;

.field private final SMS_FILE:Ljava/lang/String;

.field private appPartDirectory:Ljava/lang/String;

.field private isLowMemoryState:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonMaxListener:Landroid/view/View$OnClickListener;

.field private mButtonMaxOk:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mButtonToFileCopy:Landroid/widget/Button;

.field private mButtonToFileCopyListener:Landroid/view/View$OnClickListener;

.field private mContactPattern:Ljava/util/regex/Pattern;

.field private mContactPerson:Landroid/widget/EditText;

.field private mEditIncomingCall:Landroid/widget/EditText;

.field private mEditMMSDraftBox:Landroid/widget/TextView;

.field private mEditMMSInBox:Landroid/widget/EditText;

.field private mEditMMSOutBox:Landroid/widget/EditText;

.field private mEditMMSSentBox:Landroid/widget/EditText;

.field private mEditMissedCall:Landroid/widget/EditText;

.field private mEditOutgoingCall:Landroid/widget/EditText;

.field private mEditSMSDraftBox:Landroid/widget/TextView;

.field private mEditSMSInBox:Landroid/widget/EditText;

.field private mEditSMSOutBox:Landroid/widget/EditText;

.field private mEditSMSSentBox:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mImageTime:J

.field private mIsMax:Z

.field private mNumberOfContacts:I

.field private mNumberOfIncomingCall:I

.field private mNumberOfMMSDraftMessage:I

.field private mNumberOfMMSInboxMessage:I

.field private mNumberOfMMSOutboxMessage:I

.field private mNumberOfMMSSentMessage:I

.field private mNumberOfMissedCall:I

.field private mNumberOfOutgoingCall:I

.field private mNumberOfSMSDraftMessage:I

.field private mNumberOfSMSInboxMessage:I

.field private mNumberOfSMSOutboxMessage:I

.field private mNumberOfSMSSentMessage:I

.field private mNumericPattern:Ljava/util/regex/Pattern;

.field private final mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/app/ProgressDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private messageId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_CALLLOG:Landroid/net/Uri;

    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/samsungtest/DataCopy/DataCopy;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x190

    const/16 v4, 0xa6

    const/4 v3, 0x0

    const/16 v2, 0xfa

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-string v0, "yyyyMMd"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->DATE_FORMAT_TITLE:Ljava/lang/String;

    .line 70
    const-string v0, "title"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_TITLE:Ljava/lang/String;

    .line 71
    const-string v0, "content"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_CONTENT:Ljava/lang/String;

    .line 72
    const-string v0, "color"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_COLOR:Ljava/lang/String;

    .line 73
    const-string v0, "modify_t"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_MODIFY:Ljava/lang/String;

    .line 74
    const-string v0, "create_t"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_CREATE:Ljava/lang/String;

    .line 75
    const-string v0, "filecreate_t"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_FILECREATE:Ljava/lang/String;

    .line 76
    const-string v0, "delete_flag"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_DELETEFLAG:Ljava/lang/String;

    .line 77
    const-string v0, "synch_t"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_SYNCHTIME:Ljava/lang/String;

    .line 78
    const-string v0, "locked"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->KEY_LOCKED:Ljava/lang/String;

    .line 79
    const-string v0, "content://com.samsung.sec.android/memo"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_PATH:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "/mnt/sdcard/external_sd/"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->SDCARD_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaddata_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calllog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CALLLOG_FILE:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTACT_FILE:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "smslog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->SMS_FILE:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmslog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->MMS_FILE:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;

    .line 105
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_INBOX:Landroid/net/Uri;

    .line 106
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_OUTBOX:Landroid/net/Uri;

    .line 107
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_SENTBOX:Landroid/net/Uri;

    .line 108
    const-string v0, "content://sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_DRAFTBOX:Landroid/net/Uri;

    .line 110
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_INBOX:Landroid/net/Uri;

    .line 111
    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_OUTBOX:Landroid/net/Uri;

    .line 112
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_SENTBOX:Landroid/net/Uri;

    .line 113
    const-string v0, "content://mms/drafts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_DRAFTBOX:Landroid/net/Uri;

    .line 159
    iput v5, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSInboxMessage:I

    .line 160
    iput v5, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSOutboxMessage:I

    .line 161
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSSentMessage:I

    .line 162
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSDraftMessage:I

    .line 164
    iput v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSInboxMessage:I

    .line 165
    iput v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSOutboxMessage:I

    .line 166
    iput v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSSentMessage:I

    .line 167
    iput v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSDraftMessage:I

    .line 169
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfContacts:I

    .line 173
    iput v4, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfIncomingCall:I

    .line 174
    const/16 v0, 0xa8

    iput v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfOutgoingCall:I

    .line 175
    iput v4, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMissedCall:I

    .line 187
    const-string v0, "/data/data/com.android.providers.telephony/app_parts"

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->appPartDirectory:Ljava/lang/String;

    .line 189
    iput v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I

    .line 192
    iput-boolean v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mIsMax:Z

    .line 198
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumericPattern:Ljava/util/regex/Pattern;

    .line 199
    const-string v0, ".+?,,.+?,,,,,,,,,,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mContactPattern:Ljava/util/regex/Pattern;

    .line 278
    new-instance v0, Lcom/android/samsungtest/DataCopy/DataCopy$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/DataCopy/DataCopy$1;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Lcom/android/samsungtest/DataCopy/DataCopy$2;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/DataCopy/DataCopy$2;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonToFileCopyListener:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/android/samsungtest/DataCopy/DataCopy$3;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/DataCopy/DataCopy$3;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxListener:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lcom/android/samsungtest/DataCopy/DataCopy$4;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/DataCopy/DataCopy$4;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/samsungtest/DataCopy/DataCopy;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonToFileCopy:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSOutboxMessage:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSSentMessage:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSDraftMessage:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSInboxMessage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSOutboxMessage:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSSentMessage:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSDraftMessage:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfContacts:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfIncomingCall:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfOutgoingCall:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMissedCall:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->SMS_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_INBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_SENTBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_DRAFTBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_OUTBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/DataCopy/DataCopy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy;->setValueFromEditBox()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->appPartDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->MMS_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/samsungtest/DataCopy/DataCopy;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mImageTime:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/samsungtest/DataCopy/DataCopy;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mImageTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_INBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_SENTBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_DRAFTBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_OUTBOX:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/samsungtest/DataCopy/DataCopy;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTACT_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900()Landroid/content/ContentValues;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/samsungtest/DataCopy/DataCopy;->sEmptyContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->CALLLOG_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_CALLLOG:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/DataCopy/DataCopy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mIsMax:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/DataCopy/DataCopy;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mIsMax:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/samsungtest/DataCopy/DataCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSInboxMessage:I

    return v0
.end method

.method private getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "format"

    .prologue
    .line 1500
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1501
    .local v1, today:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private init()V
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy;->setWidget()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/samsungtest/DataCopy/DataCopy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;

    .line 231
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;

    .line 232
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy;->setDefaultNum()V

    .line 233
    return-void
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 1538
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumericPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1539
    .local v0, numericMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private registerFilter()V
    .registers 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method private setDefaultNum()V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSInBox:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSInboxMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSOutBox:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSOutboxMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSSentBox:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSSentMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSDraftBox:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSDraftMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mContactPerson:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfContacts:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSInBox:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSInboxMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSOutBox:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSOutboxMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSSentBox:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSSentMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSDraftBox:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSDraftMessage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditIncomingCall:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfIncomingCall:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditOutgoingCall:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfOutgoingCall:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMissedCall:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMissedCall:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method private setValueFromEditBox()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 1506
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSInBox:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1507
    .local v9, smsInbox:Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_19
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSInboxMessage:I

    .line 1508
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSOutBox:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1509
    .local v10, smsOutbox:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_33
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSOutboxMessage:I

    .line 1510
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSSentBox:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1511
    .local v11, smsSentbox:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_140

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_4d
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSSentMessage:I

    .line 1512
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSDraftBox:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1513
    .local v8, smsDraftbox:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_143

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_67
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSDraftMessage:I

    .line 1515
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSInBox:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1516
    .local v4, mmsInbox:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_146

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_81
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSInboxMessage:I

    .line 1517
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSOutBox:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1518
    .local v5, mmsOutbox:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_149

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_9b
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSOutboxMessage:I

    .line 1519
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSSentBox:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1520
    .local v6, mmsSentbox:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_b5
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSSentMessage:I

    .line 1521
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSDraftBox:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1522
    .local v3, mmsDraftbox:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_cf
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSDraftMessage:I

    .line 1524
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mContactPerson:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, contacts:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_152

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_e9
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfContacts:I

    .line 1529
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditIncomingCall:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1530
    .local v1, incomingCall:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_103
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfIncomingCall:I

    .line 1531
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditOutgoingCall:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1532
    .local v7, outgoingCall:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_156

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_11d
    iput v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfOutgoingCall:I

    .line 1533
    iget-object v12, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMissedCall:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1534
    .local v2, missedCall:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :cond_137
    iput v13, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMissedCall:I

    .line 1535
    return-void

    .end local v0           #contacts:Ljava/lang/String;
    .end local v1           #incomingCall:Ljava/lang/String;
    .end local v2           #missedCall:Ljava/lang/String;
    .end local v3           #mmsDraftbox:Ljava/lang/String;
    .end local v4           #mmsInbox:Ljava/lang/String;
    .end local v5           #mmsOutbox:Ljava/lang/String;
    .end local v6           #mmsSentbox:Ljava/lang/String;
    .end local v7           #outgoingCall:Ljava/lang/String;
    .end local v8           #smsDraftbox:Ljava/lang/String;
    .end local v10           #smsOutbox:Ljava/lang/String;
    .end local v11           #smsSentbox:Ljava/lang/String;
    :cond_13a
    move v12, v13

    .line 1507
    goto/16 :goto_19

    .restart local v10       #smsOutbox:Ljava/lang/String;
    :cond_13d
    move v12, v13

    .line 1509
    goto/16 :goto_33

    .restart local v11       #smsSentbox:Ljava/lang/String;
    :cond_140
    move v12, v13

    .line 1511
    goto/16 :goto_4d

    .restart local v8       #smsDraftbox:Ljava/lang/String;
    :cond_143
    move v12, v13

    .line 1513
    goto/16 :goto_67

    .restart local v4       #mmsInbox:Ljava/lang/String;
    :cond_146
    move v12, v13

    .line 1516
    goto/16 :goto_81

    .restart local v5       #mmsOutbox:Ljava/lang/String;
    :cond_149
    move v12, v13

    .line 1518
    goto/16 :goto_9b

    .restart local v6       #mmsSentbox:Ljava/lang/String;
    :cond_14c
    move v12, v13

    .line 1520
    goto/16 :goto_b5

    .restart local v3       #mmsDraftbox:Ljava/lang/String;
    :cond_14f
    move v12, v13

    .line 1522
    goto/16 :goto_cf

    .restart local v0       #contacts:Ljava/lang/String;
    :cond_152
    move v12, v13

    .line 1525
    goto :goto_e9

    .restart local v1       #incomingCall:Ljava/lang/String;
    :cond_154
    move v12, v13

    .line 1530
    goto :goto_103

    .restart local v7       #outgoingCall:Ljava/lang/String;
    :cond_156
    move v12, v13

    .line 1532
    goto :goto_11d
.end method

.method private setWidget()V
    .registers 3

    .prologue
    .line 236
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonToFileCopy:Landroid/widget/Button;

    .line 237
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonToFileCopy:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonToFileCopyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonOk:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxOk:Landroid/widget/Button;

    .line 241
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxOk:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSInBox:Landroid/widget/EditText;

    .line 244
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSOutBox:Landroid/widget/EditText;

    .line 245
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSDraftBox:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditSMSSentBox:Landroid/widget/EditText;

    .line 248
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSInBox:Landroid/widget/EditText;

    .line 249
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSOutBox:Landroid/widget/EditText;

    .line 250
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSDraftBox:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMMSSentBox:Landroid/widget/EditText;

    .line 253
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mContactPerson:Landroid/widget/EditText;

    .line 255
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditIncomingCall:Landroid/widget/EditText;

    .line 256
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditOutgoingCall:Landroid/widget/EditText;

    .line 257
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mEditMissedCall:Landroid/widget/EditText;

    .line 258
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .parameter "content"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/samsungtest/DataCopy/DataCopy$5;

    invoke-direct {v1, p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy$5;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1548
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->setContentView(I)V

    .line 208
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy;->init()V

    .line 209
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy;->registerFilter()V

    .line 214
    return-void
.end method
