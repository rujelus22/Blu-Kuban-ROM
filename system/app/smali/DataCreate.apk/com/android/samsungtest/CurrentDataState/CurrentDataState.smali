.class public Lcom/android/samsungtest/CurrentDataState/CurrentDataState;
.super Landroid/app/Activity;
.source "CurrentDataState.java"


# static fields
.field private static final EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

.field private static final INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

.field private static final SYSTEM_DCIM_FOLDER:Ljava/lang/String;

.field private static final SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

.field private static final USER_FILE_COPY_FOLDER:Ljava/lang/String;

.field static mAudeoSize:Ljava/lang/Long;

.field static mPhotoSize:Ljava/lang/Long;

.field static mVideoSize:Ljava/lang/Long;

.field static mVoiceSize:Ljava/lang/Long;

.field static mp3Count:Ljava/lang/Long;

.field static photoCount:Ljava/lang/Long;

.field private static uriDefaultRingtone:Landroid/net/Uri;

.field static videoCount:Ljava/lang/Long;

.field static voiceCount:Ljava/lang/Long;


# instance fields
.field private final CONTENT_URI_CALLLOG:Landroid/net/Uri;

.field private final CONTENT_URI_CONTACTS:Landroid/net/Uri;

.field private final CONTENT_URI_DRAFTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_FAILED:Landroid/net/Uri;

.field private final CONTENT_URI_INBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMSDRAFTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMSINBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMSOUTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_MMSSENTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_OUTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_QUEUED:Landroid/net/Uri;

.field private final CONTENT_URI_SENTBOX:Landroid/net/Uri;

.field private final CONTENT_URI_SMS:Landroid/net/Uri;

.field private final DEFAULT_IMEI:Ljava/lang/String;

.field private IMEI_key:Ljava/lang/String;

.field private final INCOMING_TYPE:I

.field private final MISSED_TYPE:I

.field private final OUTGOING_TYPE:I

.field private final STARTRINGTONECONTENT:I

.field private final SYSTEM_FREE_SPACE:I

.field private final SYSTEM_SPACE:I

.field private final USER_SPACE:I

.field private callLogOfIncomingCallNum:I

.field private callLogOfOutgoingCallNum:I

.field private callLogOfmissedCallNum:I

.field private draftboxNum:Landroid/widget/TextView;

.field private errorLogFlag:Landroid/widget/TextView;

.field private failedboxNum:Landroid/widget/TextView;

.field private imeiEsnFlag:Landroid/widget/TextView;

.field private inboxNum:Landroid/widget/TextView;

.field private incomingCallNum:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIMEI_num:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRingtoneName:Ljava/lang/String;

.field private missedCallNum:Landroid/widget/TextView;

.field private mmsNumberOfDraftbox:I

.field private mmsNumberOfInbox:I

.field private mmsNumberOfOutbox:I

.field private mmsNumberOfSentbox:I

.field private mmsdraftboxNum:Landroid/widget/TextView;

.field private mmsinboxNum:Landroid/widget/TextView;

.field private mmsoutboxNum:Landroid/widget/TextView;

.field private mmssentboxNum:Landroid/widget/TextView;

.field private mp3Num:Landroid/widget/TextView;

.field private outboxNum:Landroid/widget/TextView;

.field private outgoingCallNum:Landroid/widget/TextView;

.field private phoneBook:Landroid/widget/TextView;

.field private phoneBookNumber:I

.field private phoneBookSim:Landroid/widget/TextView;

.field private phoneBookSimNumber:I

.field private photoNum:Landroid/widget/TextView;

.field private queuedboxNum:Landroid/widget/TextView;

.field private ringtoneName:Landroid/widget/TextView;

.field private screenName:Landroid/widget/TextView;

.field private sentboxNum:Landroid/widget/TextView;

.field private smsNumberOfDraftbox:I

.field private smsNumberOfFailed:I

.field private smsNumberOfInbox:I

.field private smsNumberOfOutbox:I

.field private smsNumberOfQueued:I

.field private smsNumberOfSentbox:I

.field private systemNum:Landroid/widget/TextView;

.field private t:Ljava/lang/Thread;

.field private videoNum:Landroid/widget/TextView;

.field private voice_memo:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FileCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FileCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->SYSTEM_DCIM_FOLDER:Ljava/lang/String;

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mPhotoSize:Ljava/lang/Long;

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVideoSize:Ljava/lang/Long;

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVoiceSize:Ljava/lang/Long;

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mAudeoSize:Ljava/lang/Long;

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->photoCount:Ljava/lang/Long;

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->videoCount:Ljava/lang/Long;

    .line 258
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mp3Count:Ljava/lang/Long;

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->voiceCount:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfInbox:I

    .line 92
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfOutbox:I

    .line 94
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfDraftbox:I

    .line 96
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfSentbox:I

    .line 98
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfFailed:I

    .line 100
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfQueued:I

    .line 104
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_SMS:Landroid/net/Uri;

    .line 106
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_INBOX:Landroid/net/Uri;

    .line 108
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_OUTBOX:Landroid/net/Uri;

    .line 110
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_SENTBOX:Landroid/net/Uri;

    .line 112
    const-string v0, "content://sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_DRAFTBOX:Landroid/net/Uri;

    .line 114
    const-string v0, "content://sms/failed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_FAILED:Landroid/net/Uri;

    .line 116
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_QUEUED:Landroid/net/Uri;

    .line 124
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfInbox:I

    .line 126
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfOutbox:I

    .line 128
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfDraftbox:I

    .line 130
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfSentbox:I

    .line 134
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSINBOX:Landroid/net/Uri;

    .line 136
    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSOUTBOX:Landroid/net/Uri;

    .line 138
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSSENTBOX:Landroid/net/Uri;

    .line 140
    const-string v0, "content://mms/drafts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSDRAFTBOX:Landroid/net/Uri;

    .line 154
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_CONTACTS:Landroid/net/Uri;

    .line 158
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookNumber:I

    .line 160
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookSimNumber:I

    .line 168
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_CALLLOG:Landroid/net/Uri;

    .line 172
    iput v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INCOMING_TYPE:I

    .line 174
    iput v3, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->OUTGOING_TYPE:I

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->MISSED_TYPE:I

    .line 180
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfIncomingCallNum:I

    .line 182
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfOutgoingCallNum:I

    .line 184
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfmissedCallNum:I

    .line 208
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->STARTRINGTONECONTENT:I

    .line 222
    const-string v0, "ril.IMEI"

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->IMEI_key:Ljava/lang/String;

    .line 224
    const-string v0, "00000000000000000"

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->DEFAULT_IMEI:Ljava/lang/String;

    .line 234
    iput v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->SYSTEM_SPACE:I

    .line 236
    iput v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->SYSTEM_FREE_SPACE:I

    .line 238
    iput v3, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->USER_SPACE:I

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setFileInfo(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;Ljava/io/File;JI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->calculateUsingSpace(Ljava/io/File;JI)V

    return-void
.end method

.method private calculateUsingSpace(Ljava/io/File;JI)V
    .registers 15
    .parameter "file"
    .parameter "usedSize"
    .parameter "depth"

    .prologue
    .line 889
    const/16 v6, 0x14

    if-lt p4, v6, :cond_2b

    .line 891
    const-string v6, "MemoryStatusCalculating :"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stop Calculating in folder\'s depth =\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\',"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_2a
    :goto_2a
    return-void

    .line 899
    :cond_2b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 901
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 903
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2a

    .line 905
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3a
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    .line 907
    .local v1, f:Ljava/io/File;
    add-int/lit8 v6, p4, 0x1

    invoke-direct {p0, v1, p2, p3, v6}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->calculateUsingSpace(Ljava/io/File;JI)V

    .line 905
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 913
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_46
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, temp:Ljava/lang/String;
    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "gif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "bmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "wbmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 923
    :cond_8a
    sget-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mPhotoSize:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sput-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mPhotoSize:Ljava/lang/Long;

    goto :goto_2a

    .line 949
    :cond_9c
    const-string v6, "mp3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cc

    const-string v6, "wav"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cc

    const-string v6, "aac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cc

    const-string v6, "smaf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cc

    const-string v6, "wma"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_cc

    const-string v6, "imy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 953
    :cond_cc
    sget-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mAudeoSize:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sput-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mAudeoSize:Ljava/lang/Long;

    goto/16 :goto_2a

    .line 959
    :cond_df
    const-string v6, "mpeg4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_107

    const-string v6, "3gp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_107

    const-string v6, "wmv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_107

    const-string v6, "avi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_107

    const-string v6, "mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 963
    :cond_107
    sget-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVideoSize:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sput-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVideoSize:Ljava/lang/Long;

    goto/16 :goto_2a

    .line 969
    :cond_11a
    const-string v6, "amr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 973
    sget-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVoiceSize:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sput-object v6, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVoiceSize:Ljava/lang/Long;

    goto/16 :goto_2a
.end method

.method private getMemorySpace(I)J
    .registers 10
    .parameter "type"

    .prologue
    .line 853
    packed-switch p1, :pswitch_data_44

    .line 869
    :pswitch_3
    sget-object v3, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 875
    .local v3, storageDirectory:Ljava/lang/String;
    :goto_5
    const-string v4, "CurrentDataState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMemorySpace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 879
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 881
    .local v0, remaining:J
    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    return-wide v4

    .line 857
    .end local v0           #remaining:J
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :pswitch_3e
    sget-object v3, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 859
    .restart local v3       #storageDirectory:Ljava/lang/String;
    goto :goto_5

    .line 863
    .end local v3           #storageDirectory:Ljava/lang/String;
    :pswitch_41
    sget-object v3, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 865
    .restart local v3       #storageDirectory:Ljava/lang/String;
    goto :goto_5

    .line 853
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3
        :pswitch_41
    .end packed-switch
.end method

.method private getNumberFromDB()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 401
    iput v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfIncomingCallNum:I

    .line 403
    iput v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfOutgoingCallNum:I

    .line 405
    iput v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfmissedCallNum:I

    .line 407
    iput v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookNumber:I

    .line 409
    iput v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfFailed:I

    .line 411
    iput v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfQueued:I

    .line 415
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_CALLLOG:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 417
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4d

    .line 419
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 423
    const/4 v8, 0x0

    .local v8, i:I
    :goto_25
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_4d

    .line 425
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_18c

    .line 447
    :goto_32
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 423
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 429
    :pswitch_38
    iget v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfIncomingCallNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfIncomingCallNum:I

    goto :goto_32

    .line 435
    :pswitch_3f
    iget v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfOutgoingCallNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfOutgoingCallNum:I

    goto :goto_32

    .line 441
    :pswitch_46
    iget v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfmissedCallNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfmissedCallNum:I

    goto :goto_32

    .line 453
    .end local v8           #i:I
    :cond_4d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 457
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_CONTACTS:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "account_type"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 459
    const-string v0, "CurrentDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact count :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz v7, :cond_bf

    .line 465
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_82
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_bf

    .line 469
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 471
    .local v9, type:Ljava/lang/String;
    const-string v0, "CurrentDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 475
    iget v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookNumber:I

    .line 481
    :goto_b2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 467
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    .line 479
    :cond_b8
    iget v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookSimNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookSimNumber:I

    goto :goto_b2

    .line 487
    .end local v8           #i:I
    .end local v9           #type:Ljava/lang/String;
    :cond_bf
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 495
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_INBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfInbox:I

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_OUTBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 505
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfOutbox:I

    .line 507
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 511
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_SENTBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 513
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfSentbox:I

    .line 515
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 519
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_DRAFTBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 521
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfDraftbox:I

    .line 523
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 527
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_FAILED:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 529
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfFailed:I

    .line 531
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 535
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_QUEUED:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfQueued:I

    .line 539
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 543
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSINBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 545
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfInbox:I

    .line 547
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 551
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSOUTBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfOutbox:I

    .line 555
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 559
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSSENTBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 561
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfSentbox:I

    .line 563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 567
    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->CONTENT_URI_MMSDRAFTBOX:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 569
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfDraftbox:I

    .line 571
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 593
    return-void

    .line 425
    nop

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3f
        :pswitch_46
    .end packed-switch
.end method

.method private getRingtoneName()V
    .registers 5

    .prologue
    const/16 v3, 0x11

    .line 649
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->uriDefaultRingtone:Landroid/net/Uri;

    .line 655
    const-string v0, "null"

    sget-object v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->uriDefaultRingtone:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_97

    sget-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->uriDefaultRingtone:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 657
    sget-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->uriDefaultRingtone:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_70

    .line 663
    const-string v0, "CurrentDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeforeSubString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    .line 667
    const-string v0, "CurrentDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AfterSubString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_6f
    return-void

    .line 671
    :cond_70
    const-string v0, "CurrentDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ringtone is abnormal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->uriDefaultRingtone:Landroid/net/Uri;

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v0, "Not Set"

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    goto :goto_6f

    .line 679
    :cond_97
    const-string v0, "CurrentDataState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriDefaultRingtone is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->uriDefaultRingtone:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v0, "Not Set"

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    goto :goto_6f
.end method

.method private getSystemFreeSpace()J
    .registers 9

    .prologue
    .line 835
    sget-object v3, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 837
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 839
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 841
    .local v0, remaining:J
    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    return-wide v4
.end method

.method private static getWallpaperName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 8
    .parameter "ctx"
    .parameter "resolver"

    .prologue
    .line 693
    const-string v3, "wallpaper"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 694
    .local v1, wallpaperManager:Landroid/app/WallpaperManager;
    const/4 v0, 0x0

    .line 695
    .local v0, wallpaperInfo:Landroid/app/WallpaperInfo;
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_2c

    .line 698
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, wallpaperName:Ljava/lang/String;
    const-string v3, "CurrentDataState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wallpaperName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_2b
    return-object v2

    .line 701
    .end local v2           #wallpaperName:Ljava/lang/String;
    :cond_2c
    const-string v3, "CurrentDataState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wallpaperInfo is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v2, "Static image\nwallpaper"

    .restart local v2       #wallpaperName:Ljava/lang/String;
    goto :goto_2b
.end method

.method private intVars()V
    .registers 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    .line 333
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->incomingCallNum:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->outgoingCallNum:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->missedCallNum:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->photoNum:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->videoNum:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mp3Num:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->voice_memo:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBook:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookSim:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->inboxNum:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->outboxNum:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->sentboxNum:Landroid/widget/TextView;

    .line 363
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->draftboxNum:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->queuedboxNum:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->failedboxNum:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsinboxNum:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsoutboxNum:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmssentboxNum:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsdraftboxNum:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->ringtoneName:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->screenName:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->imeiEsnFlag:Landroid/widget/TextView;

    .line 389
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->errorLogFlag:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->systemNum:Landroid/widget/TextView;

    .line 395
    return-void
.end method

.method private setFileInfo(Z)V
    .registers 14
    .parameter "isCalculateDone"

    .prologue
    const-wide/32 v10, 0x100000

    const v8, 0x7f050020

    .line 739
    if-eqz p1, :cond_104

    .line 741
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getMemorySpace(I)J

    move-result-wide v2

    .line 743
    .local v2, systemMemorySpace:J
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getMemorySpace(I)J

    move-result-wide v4

    .line 745
    .local v4, userMemorySpace:J
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->systemNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getSystemFreeSpace()J

    move-result-wide v8

    sub-long v8, v2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    move-wide v0, v4

    .line 749
    .local v0, memoryspace:J
    cmp-long v6, v4, v2

    if-eqz v6, :cond_47

    .line 751
    add-long v0, v2, v4

    .line 753
    :cond_47
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->photoNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mPhotoSize:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->videoNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVideoSize:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mp3Num:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mAudeoSize:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->voice_memo:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVoiceSize:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " /"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .end local v0           #memoryspace:J
    .end local v2           #systemMemorySpace:J
    .end local v4           #userMemorySpace:J
    :goto_103
    return-void

    .line 763
    :cond_104
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->systemNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->photoNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->videoNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mp3Num:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->voice_memo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_103
.end method

.method private setIMEI()V
    .registers 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->IMEI_key:Ljava/lang/String;

    const-string v1, "Default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mIMEI_num:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mIMEI_num:Ljava/lang/String;

    const-string v1, "00000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 715
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->imeiEsnFlag:Landroid/widget/TextView;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :goto_1b
    return-void

    .line 719
    :cond_1c
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->imeiEsnFlag:Landroid/widget/TextView;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method private setNumberFromDB()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->incomingCallNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfIncomingCallNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->outgoingCallNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfOutgoingCallNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->missedCallNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->callLogOfmissedCallNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBook:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookSim:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->phoneBookSimNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->inboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfInbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->outboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfOutbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->draftboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfDraftbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->sentboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfSentbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->queuedboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfQueued:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->failedboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->smsNumberOfFailed:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsinboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfInbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsoutboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfOutbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsdraftboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfDraftbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmssentboxNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mmsNumberOfSentbox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    return-void
.end method

.method private setRingtoneName()V
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->ringtoneName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mRingtoneName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    return-void
.end method

.method private setScreenName()V
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->screenName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getWallpaperName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

.method private sizeReset()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 305
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mPhotoSize:Ljava/lang/Long;

    .line 307
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVideoSize:Ljava/lang/Long;

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mVoiceSize:Ljava/lang/Long;

    .line 311
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mAudeoSize:Ljava/lang/Long;

    .line 317
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->photoCount:Ljava/lang/Long;

    .line 319
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->videoCount:Ljava/lang/Long;

    .line 321
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->mp3Count:Ljava/lang/Long;

    .line 323
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->voiceCount:Ljava/lang/Long;

    .line 325
    return-void
.end method

.method private startFileCalculation()V
    .registers 5

    .prologue
    .line 783
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, f1:Ljava/io/File;
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->startFolderCalculating(Ljava/io/File;JI)V

    .line 787
    return-void
.end method

.method private declared-synchronized startFolderCalculating(Ljava/io/File;JI)V
    .registers 12
    .parameter "file"
    .parameter "size"
    .parameter "depth"

    .prologue
    .line 793
    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;-><init>(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;Ljava/io/File;JI)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->t:Ljava/lang/Thread;

    .line 827
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 829
    monitor-exit p0

    return-void

    .line 793
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 278
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setContentView(I)V

    .line 282
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->intVars()V

    .line 284
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->sizeReset()V

    .line 286
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getNumberFromDB()V

    .line 288
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setNumberFromDB()V

    .line 290
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->getRingtoneName()V

    .line 292
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setRingtoneName()V

    .line 294
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setScreenName()V

    .line 295
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setIMEI()V

    .line 297
    invoke-direct {p0}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->startFileCalculation()V

    .line 299
    return-void
.end method
