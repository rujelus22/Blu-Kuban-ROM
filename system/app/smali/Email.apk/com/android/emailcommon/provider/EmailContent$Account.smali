.class public final Lcom/android/emailcommon/provider/EmailContent$Account;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# static fields
.field public static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri;

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ID_PROJECTION:[Ljava/lang/String;

.field public static DEVICE_IS_ALLOWED:I

.field public static DEVICE_IS_BLOCKED:I

.field public static DEVICE_IS_QUARANTINED:I

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

.field public static mIRMTemplateTimeStamp:Ljava/lang/String;


# instance fields
.field public accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

.field public mAccountKey:J

.field public mAccountType:I

.field public mAttachmentEnabled:I

.field public mAutoDownload:Z

.field public mAutoRetryTimes:I

.field public mCalendarSyncLookback:I

.field public mCbaCertificateAlias:Ljava/lang/String;

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mConflictFlags:I

.field public mConversationMode:I

.field public mDays:Ljava/lang/String;

.field public mDeviceInfoSent:I

.field public mDisplayName:Ljava/lang/String;

.field public mEasLocalChangeEnabled:Z

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailMessageDiffEnabled:I

.field public mEmailRetrieveSizeValues:[Ljava/lang/String;

.field public mEmailSize:I

.field public mFlags:I

.field public mForwardWithFiles:Z

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public transient mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field public mIsDefault:Z

.field public mIsInPeakPeriod:Z

.field public mMessageFormat:I

.field public mNewMessageCount:I

.field public mOffPeakTime:I

.field public mPeakEndTime:Ljava/lang/String;

.field public mPeakStartTime:Ljava/lang/String;

.field public mPeakTime:I

.field public mPolicyKey:Ljava/lang/String;

.field public mProtocolVersion:Ljava/lang/String;

.field public mRecentMessages:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mSecurityFlags:J

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSevenAccountKey:J

.field public mShowImage:Z

.field public mSignature:Ljava/lang/String;

.field public mSizeLimit:J

.field public mSmimeEncryptAll:Z

.field public mSmimeEncryptionAlgorithm:I

.field public mSmimeOwnCertificateAlias:Ljava/lang/String;

.field public mSmimeSignAlgorithm:I

.field public mSmimeSignAll:Z

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field private mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

.field public mTextPreviewSize:I

.field public mTimeLimit:J

.field public mTypeMsg:I

.field public mWhileroaming:I

.field public mdeviceBlockedType:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 3592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resetNewMessageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 3847
    sput v3, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    .line 3849
    sput v4, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    .line 3851
    sput v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_QUARANTINED:I

    .line 4004
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isDefault"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "compatibilityUuid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "emailsize"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "peakDays"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "peakStartMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "peakEndMinute"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "peakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "offPeakSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "roamingSchedule"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "calendarSyncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sevenAccountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sizeLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "timeLimit"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "peakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "offPeakTime"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "days"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "peakStartTime"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "peakEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "whileRoaming"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "attachmentEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "smimeOwnCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "smimeOptionsFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "smimeSignAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "smimeEncryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "conversationMode"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "textPreview"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "deviceInfoSent"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "deviceBlockedType"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "conflict"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "IRMTemplateTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "cbaCertificateAlias"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "messageFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "easLocalChange"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "forwardWithFiles"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "autoDownload"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "recentMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "showImage"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "autoRetryTimes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 4099
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    .line 4107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 4133
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    .line 5830
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v4, -0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 4140
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 3741
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 3743
    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 3824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    .line 3911
    iput v10, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4141
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 4144
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULTRINGTONEURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 4146
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4147
    .local v7, msalesCode:Ljava/lang/String;
    if-eqz v7, :cond_44

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "PTR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "CEL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "PCL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4151
    :cond_40
    const-string v0, "content://media/internal/audio/media/18"

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 4164
    :cond_44
    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 4166
    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 4167
    const/16 v0, 0x2001

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 4168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 4181
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4182
    const-string v0, "U1_NA_SPR"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 4183
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4186
    :cond_65
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    .line 4188
    iput v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 4190
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 4191
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x1e0

    const/16 v2, 0x3fc

    const/16 v3, 0x3e

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 4203
    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsInPeakPeriod:Z

    .line 4206
    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4208
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    .line 4210
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 4213
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 4216
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 4220
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 4221
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 4225
    iput-boolean v9, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 4226
    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 4228
    iput v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    .line 4229
    iput-boolean v6, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 4232
    iput v10, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4235
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5921
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 3741
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 3743
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 3824
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    .line 3911
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 5922
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 5923
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5924
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 5925
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 5926
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 5927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 5928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 5929
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 5930
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 5931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5932
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_11b

    move v0, v1

    :goto_51
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 5933
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 5934
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 5935
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 5936
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 5937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 5938
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 5939
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 5940
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 5942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 5943
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_11e

    move v0, v1

    :goto_90
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    .line 5946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 5947
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 5948
    const-class v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    .line 5950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 5952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 5955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 5958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 5962
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5963
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_d3

    .line 5964
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5967
    :cond_d3
    iput-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5968
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_e2

    .line 5969
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5972
    :cond_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    .line 5976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 5977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 5981
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_121

    move v0, v1

    :goto_fb
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 5982
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_123

    move v0, v1

    :goto_104
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 5984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    .line 5985
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_125

    :goto_112
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 5988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 5990
    return-void

    :cond_11b
    move v0, v2

    .line 5932
    goto/16 :goto_51

    :cond_11e
    move v0, v2

    .line 5943
    goto/16 :goto_90

    :cond_121
    move v0, v2

    .line 5981
    goto :goto_fb

    :cond_123
    move v0, v2

    .line 5982
    goto :goto_104

    :cond_125
    move v1, v2

    .line 5985
    goto :goto_112
.end method

.method public static clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 5475
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5477
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5482
    .local v8, c:Landroid/database/Cursor;
    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5484
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5487
    .local v6, accountId:J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 5488
    .local v10, flags:I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_f

    and-int/lit16 v1, v10, 0x4000

    if-nez v1, :cond_f

    .line 5490
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 5491
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5492
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 5493
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_43

    goto :goto_f

    .line 5499
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_43
    move-exception v1

    if-eqz v8, :cond_4f

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 5500
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v1

    .line 5499
    :cond_50
    if-eqz v8, :cond_5b

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 5500
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5502
    :cond_5b
    return-void
.end method

.method public static getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 7
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 5427
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 5428
    .local v0, accountId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 5429
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 5431
    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static getAccountIdForMessageId(Landroid/content/Context;J)J
    .registers 5
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 5416
    const-string v0, "accountKey"

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 14
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    .line 5314
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "com.android.email.provider"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    move-wide v0, v10

    .line 5335
    :goto_1d
    return-wide v0

    .line 5318
    :cond_1e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 5319
    .local v9, ps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    const-string v0, "account"

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_35
    move-wide v0, v10

    .line 5320
    goto :goto_1d

    .line 5324
    :cond_37
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5329
    .local v8, id:Ljava/lang/String;
    :try_start_3d
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_40} :catch_42

    move-result-wide v0

    goto :goto_1d

    .line 5330
    :catch_42
    move-exception v0

    .line 5335
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "compatibilityUuid =?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v6

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1d
.end method

.method public static getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J
    .registers 9
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 5395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5398
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5399
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_34

    move-result-wide v0

    .line 5402
    if-eqz v6, :cond_25

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_25

    .line 5403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5405
    :cond_25
    :goto_25
    return-wide v0

    .line 5402
    :cond_26
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_31

    .line 5403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5405
    :cond_31
    const-wide/16 v0, -0x1

    goto :goto_25

    .line 5402
    :catchall_34
    move-exception v0

    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_40

    .line 5403
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0
.end method

.method public static getDefaultAccountId(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 5351
    const-string v2, "isDefault=1"

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 5352
    .local v0, id:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 5356
    const-string v2, "displayName is not \'##snc##\'"

    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 5359
    :cond_12
    return-wide v0
.end method

.method private static getDefaultAccountWhere(Landroid/content/Context;Ljava/lang/String;)J
    .registers 11
    .parameter "context"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 5277
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->DEFAULT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEmailSize(B)I
    .registers 3
    .parameter "size"

    .prologue
    const v0, 0xf000

    .line 4636
    if-nez p0, :cond_8

    .line 4637
    const/16 v0, 0x600

    .line 4644
    :cond_7
    :goto_7
    return v0

    .line 4638
    :cond_8
    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    .line 4640
    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    .line 4641
    const v0, 0x19000

    goto :goto_7
.end method

.method private getId(Landroid/net/Uri;)J
    .registers 4
    .parameter "u"

    .prologue
    .line 4563
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInboxId(Landroid/content/Context;J)J
    .registers 12
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 5463
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type = 0 AND accountKey =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

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

.method public static getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 5371
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5372
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_b

    .line 5373
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5375
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter "uuid"

    .prologue
    .line 5298
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isSecurityHold(Landroid/content/Context;J)Z
    .registers 13
    .parameter "context"
    .parameter "accountId"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 5454
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_23

    :goto_22
    return v6

    :cond_23
    const/4 v6, 0x0

    goto :goto_22
.end method

.method public static isValidId(Landroid/content/Context;J)Z
    .registers 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5441
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 5444
    :goto_8
    return v7

    :cond_9
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v7, v6

    goto :goto_8
.end method

.method public static restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4275
    .line 4277
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailAddress=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_4f

    move-result-object v1

    .line 4280
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4281
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_75

    .line 4289
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_41

    .line 4290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    :goto_41
    return-object v0

    .line 4289
    :cond_42
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    move-object v0, v6

    goto :goto_41

    .line 4285
    :catch_4f
    move-exception v0

    move-object v1, v6

    .line 4286
    :goto_51
    :try_start_51
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccountWithId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_72

    .line 4289
    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_63

    .line 4290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    move-object v0, v6

    goto :goto_41

    .line 4289
    :catchall_65
    move-exception v0

    :goto_66
    if-eqz v6, :cond_71

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_71

    .line 4290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_71
    throw v0

    .line 4289
    :catchall_72
    move-exception v0

    move-object v6, v1

    goto :goto_66

    .line 4285
    :catch_75
    move-exception v0

    goto :goto_51
.end method

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4238
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4241
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_13} :catch_32

    move-result-object v1

    .line 4244
    if-nez v1, :cond_18

    move-object v0, v6

    .line 4262
    :cond_17
    :goto_17
    return-object v0

    .line 4248
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4249
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_5a
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_26} :catch_49

    .line 4257
    if-eqz v1, :cond_17

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_17

    .line 4260
    :catch_32
    move-exception v0

    .line 4261
    const-string v1, "EmailContent >>"

    const-string v2, "RuntimeException in restoreAccountWithId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 4262
    goto :goto_17

    .line 4257
    :cond_3c
    if-eqz v1, :cond_47

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_47

    .line 4258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_47} :catch_32

    :cond_47
    move-object v0, v6

    goto :goto_17

    .line 4253
    :catch_49
    move-exception v0

    .line 4254
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    .line 4257
    if-eqz v1, :cond_58

    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_58

    .line 4258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    move-object v0, v6

    goto :goto_17

    .line 4257
    :catchall_5a
    move-exception v0

    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_66

    .line 4258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v0
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_67} :catch_32
.end method

.method public static restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4296
    .line 4298
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sevenAccountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_4f

    move-result-object v1

    .line 4301
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4302
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_75

    .line 4310
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_41

    .line 4311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    :goto_41
    return-object v0

    .line 4310
    :cond_42
    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    move-object v0, v6

    goto :goto_41

    .line 4306
    :catch_4f
    move-exception v0

    move-object v1, v6

    .line 4307
    :goto_51
    :try_start_51
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccountWithSevenAccountId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_72

    .line 4310
    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_63

    .line 4311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    move-object v0, v6

    goto :goto_41

    .line 4310
    :catchall_65
    move-exception v0

    :goto_66
    if-eqz v6, :cond_71

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_71

    .line 4311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_71
    throw v0

    .line 4310
    :catchall_72
    move-exception v0

    move-object v6, v1

    goto :goto_66

    .line 4306
    :catch_75
    move-exception v0

    goto :goto_51
.end method

.method public static restoreAccounts(Landroid/content/Context;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4366
    .line 4368
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_77

    move-result-object v2

    .line 4370
    if-eqz v2, :cond_1a

    :try_start_13
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_a0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 4390
    :cond_1a
    if-eqz v2, :cond_25

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4391
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_25
    move-object v0, v6

    .line 4395
    :goto_26
    return-object v0

    .line 4373
    :cond_27
    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3d

    .line 4374
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_a0

    .line 4390
    if-eqz v2, :cond_3b

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 4391
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3b
    move-object v0, v6

    goto :goto_26

    .line 4377
    :cond_3d
    :try_start_3d
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 4378
    const/4 v0, 0x0

    .line 4379
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6a

    move v3, v0

    .line 4381
    :goto_4b
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    aput-object v0, v1, v3

    .line 4382
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5a} :catch_a0

    move-result v0

    if-nez v0, :cond_a3

    .line 4390
    if-eqz v2, :cond_68

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_68

    .line 4391
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_68
    move-object v0, v1

    .line 4395
    goto :goto_26

    .line 4390
    :cond_6a
    if-eqz v2, :cond_75

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_75

    .line 4391
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_75
    move-object v0, v6

    goto :goto_26

    .line 4386
    :catch_77
    move-exception v0

    move-object v1, v6

    .line 4387
    :goto_79
    :try_start_79
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccounts(Context context)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_9d

    .line 4390
    if-eqz v1, :cond_8b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 4391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8b
    move-object v0, v6

    goto :goto_26

    .line 4390
    :catchall_8d
    move-exception v0

    move-object v2, v6

    :goto_8f
    if-eqz v2, :cond_9a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 4391
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9a
    throw v0

    .line 4390
    :catchall_9b
    move-exception v0

    goto :goto_8f

    :catchall_9d
    move-exception v0

    move-object v2, v1

    goto :goto_8f

    .line 4386
    :catch_a0
    move-exception v0

    move-object v1, v2

    goto :goto_79

    :cond_a3
    move v3, v4

    goto :goto_4b
.end method

.method public static restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4318
    .line 4321
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_76

    move-result-object v2

    .line 4323
    if-eqz v2, :cond_19

    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_9f

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 4347
    :cond_19
    if-eqz v2, :cond_24

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_24

    .line 4348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_24
    move-object v0, v6

    .line 4351
    :goto_25
    return-object v0

    .line 4327
    :cond_26
    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3c

    .line 4328
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_9f

    .line 4347
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3a
    move-object v0, v6

    goto :goto_25

    .line 4331
    :cond_3c
    :try_start_3c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 4332
    const/4 v0, 0x0

    .line 4334
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_69

    move v3, v0

    .line 4336
    :goto_4a
    add-int/lit8 v4, v3, 0x1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    aput-object v0, v1, v3

    .line 4337
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_59} :catch_9f

    move-result v0

    if-nez v0, :cond_a2

    .line 4347
    if-eqz v2, :cond_67

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_67

    .line 4348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_67
    move-object v0, v1

    .line 4351
    goto :goto_25

    .line 4347
    :cond_69
    if-eqz v2, :cond_74

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_74

    .line 4348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_74
    move-object v0, v6

    goto :goto_25

    .line 4341
    :catch_76
    move-exception v0

    move-object v1, v6

    .line 4342
    :goto_78
    :try_start_78
    const-string v2, "EmailContent >>"

    const-string v3, "IllegalStateException in restoreAccounts(Context context, String where)"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_9c

    .line 4347
    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 4348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8a
    move-object v0, v6

    goto :goto_25

    .line 4347
    :catchall_8c
    move-exception v0

    move-object v2, v6

    :goto_8e
    if-eqz v2, :cond_99

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_99

    .line 4348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_99
    throw v0

    .line 4347
    :catchall_9a
    move-exception v0

    goto :goto_8e

    :catchall_9c
    move-exception v0

    move-object v2, v1

    goto :goto_8e

    .line 4341
    :catch_9f
    move-exception v0

    move-object v1, v2

    goto :goto_78

    :cond_a2
    move v3, v4

    goto :goto_4a
.end method

.method public static restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 3
    .parameter "context"

    .prologue
    .line 4268
    const-string v1, "snc@snc.snc"

    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 4269
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    return-object v0
.end method

.method public static setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    .registers 9
    .parameter "context"
    .parameter "acctId"
    .parameter "syncStatus"

    .prologue
    const/4 v5, 0x0

    .line 4430
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4431
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "isInitSyncComplete"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4435
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 5824
    const/4 v0, 0x0

    return v0
.end method

.method public dumpAccountInfo()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x5b

    const/16 v5, 0x5d

    const/16 v4, 0x2f

    .line 6017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6018
    const-string v1, " *** ACCOUNT ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6019
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6020
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6022
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6025
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6028
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6029
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6032
    const-string v1, "[Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6034
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6037
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6041
    const-string v1, "[SyncSchedule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6044
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6046
    const-string v1, "[SMIME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6051
    const-string v1, "[ mMessageFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6052
    const-string v1, "[ mAccountType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6056
    const-string v1, "[ mForwardWithFiles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6057
    const-string v1, "[ mAutoDownload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6059
    const-string v1, "[ mRecentMessages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6060
    const-string v1, "[ mShowImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpHostAuthInfo(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 6066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6067
    const-string v1, " *** HOSTAUTH *** ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6068
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6069
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6070
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6075
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6076
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .registers 2

    .prologue
    .line 5041
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    return v0
.end method

.method public getAutoRetryTimes()I
    .registers 2

    .prologue
    .line 4924
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    return v0
.end method

.method public getCalendarSyncLookback()I
    .registers 2

    .prologue
    .line 4824
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    return v0
.end method

.method public getConflictresolution()I
    .registers 2

    .prologue
    .line 4706
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    return v0
.end method

.method public getConversationMode()I
    .registers 2

    .prologue
    .line 4936
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    return v0
.end method

.method public getDefaultEmailRetrieveSize(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 4686
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 4687
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4689
    :goto_d
    return v0

    :cond_e
    const v0, 0xc800

    goto :goto_d
.end method

.method public getDeletePolicy()I
    .registers 2

    .prologue
    .line 5104
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailRetrieveSize()I
    .registers 2

    .prologue
    .line 4666
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    return v0
.end method

.method public getEmailSize()B
    .registers 2

    .prologue
    .line 4631
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    int-to-byte v0, v0

    return v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 4998
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    return v0
.end method

.method public getForwardWithFiles()Z
    .registers 2

    .prologue
    .line 4768
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    return v0
.end method

.method public getLargeMsgCriSize(Landroid/content/Context;)I
    .registers 6
    .parameter "context"

    .prologue
    .line 4694
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current EmailRetrieveSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMinEmailRetrieveSize(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 4696
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultEmailRetrieveSize(Landroid/content/Context;)I

    move-result v0

    .line 4700
    .local v0, criSize:I
    :goto_26
    const-string v1, "EmailContent >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LargeMsg criterion size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    return v0

    .line 4698
    .end local v0           #criSize:I
    :cond_3f
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .restart local v0       #criSize:I
    goto :goto_26
.end method

.method public getMessageFormat()I
    .registers 2

    .prologue
    .line 5025
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    return v0
.end method

.method public getMinEmailRetrieveSize(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 4679
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 4680
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailRetrieveSizeValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4682
    :goto_d
    return v0

    :cond_e
    const/16 v0, 0x800

    goto :goto_d
.end method

.method public getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .registers 6
    .parameter "context"

    .prologue
    .line 5222
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_14

    .line 5223
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 5224
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5229
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0

    .line 5226
    :cond_17
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_14
.end method

.method public getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .registers 6
    .parameter "context"

    .prologue
    .line 5211
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_14

    .line 5212
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 5213
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5218
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0

    .line 5215
    :cond_17
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_14
.end method

.method public getProtocol(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 5386
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 5387
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v0, :cond_b

    .line 5388
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 5390
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRingtone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5017
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityFlags()J
    .registers 3

    .prologue
    .line 5118
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    return-wide v0
.end method

.method public getSenderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4603
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 4604
    const-string v0, ""

    .line 4606
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    goto :goto_6
.end method

.method public getSenderUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 5150
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_c

    .line 5151
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5154
    :cond_c
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_19

    .line 5155
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 5156
    .local v0, senderUri:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 5160
    .end local v0           #senderUri:Ljava/lang/String;
    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public getSevenAccountKey()J
    .registers 3

    .prologue
    .line 4961
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeEncryptionAlgorithm()I
    .registers 2

    .prologue
    .line 4901
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    return v0
.end method

.method public getSmimeFlags()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5729
    const/4 v0, 0x0

    .line 5730
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v1, :cond_12

    move v1, v2

    :goto_8
    shl-int/lit8 v0, v1, 0x0

    .line 5731
    iget-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_14

    :goto_e
    shl-int/lit8 v1, v2, 0x1

    or-int/2addr v0, v1

    .line 5732
    return v0

    :cond_12
    move v1, v3

    .line 5730
    goto :goto_8

    :cond_14
    move v2, v3

    .line 5731
    goto :goto_e
.end method

.method public getSmimeOwnCertificate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4846
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSmimeSignAlgorithm()I
    .registers 2

    .prologue
    .line 4884
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    return v0
.end method

.method public getStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 5135
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_c

    .line 5136
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5139
    :cond_c
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_19

    .line 5140
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 5141
    .local v0, storeUri:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 5145
    .end local v0           #storeUri:Ljava/lang/String;
    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public getSyncInterval()I
    .registers 2

    .prologue
    .line 4752
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .registers 2

    .prologue
    .line 4807
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    return v0
.end method

.method public getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;
    .registers 2

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    return-object v0
.end method

.method public getTextPreviewSize()I
    .registers 2

    .prologue
    .line 4717
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    return v0
.end method

.method public getTypeMsg()I
    .registers 2

    .prologue
    .line 4969
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5113
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isEasAccount(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 5250
    const-string v0, "eas"

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .registers 9
    .parameter "cursor"

    .prologue
    const/16 v6, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4439
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 4440
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 4441
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 4442
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4443
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 4444
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 4445
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 4446
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 4447
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 4448
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 4449
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1f4

    move v1, v2

    :goto_4d
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 4450
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 4451
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 4452
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 4453
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 4454
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 4455
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 4456
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 4457
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 4460
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4461
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    if-ne v1, v6, :cond_1f7

    move v1, v2

    :goto_9c
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

    .line 4464
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    .line 4466
    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 4468
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 4470
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakDay(I)V

    .line 4471
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setStartMinute(I)V

    .line 4472
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setEndMinute(I)V

    .line 4473
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x17

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    .line 4476
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4477
    .local v0, value:I
    sparse-switch v0, :sswitch_data_202

    .line 4488
    const/4 v0, -0x2

    .line 4490
    :sswitch_ec
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 4492
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v4, 0x19

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/utility/SyncScheduleData;->setRoamingSchedule(I)V

    .line 4495
    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4497
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    .line 4498
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    .line 4499
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 4500
    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    .line 4508
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    .line 4509
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    .line 4510
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    .line 4511
    const/16 v1, 0x22

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    .line 4512
    const/16 v1, 0x23

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    .line 4513
    const/16 v1, 0x24

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    .line 4514
    const/16 v1, 0x25

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    .line 4517
    const/16 v1, 0x26

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 4521
    const/16 v1, 0x27

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSmimeFlags(I)V

    .line 4522
    const/16 v1, 0x28

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    .line 4523
    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    .line 4527
    const/16 v1, 0x2c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 4530
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mdeviceBlockedType:I

    .line 4532
    const/16 v1, 0x2e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 4535
    const/16 v1, 0x2f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mIRMTemplateTimeStamp:Ljava/lang/String;

    .line 4538
    const/16 v1, 0x30

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    .line 4542
    const/16 v1, 0x31

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 4543
    const/16 v1, 0x32

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 4547
    const/16 v1, 0x33

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1fa

    move v1, v3

    :goto_1c1
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    .line 4551
    const/16 v1, 0x34

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1fc

    move v1, v3

    :goto_1cc
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 4552
    const/16 v1, 0x35

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_1fe

    move v1, v3

    :goto_1d7
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 4554
    const/16 v1, 0x36

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    .line 4555
    const/16 v1, 0x37

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_200

    :goto_1e9
    iput-boolean v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 4558
    const/16 v1, 0x38

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4560
    return-void

    .end local v0           #value:I
    :cond_1f4
    move v1, v3

    .line 4449
    goto/16 :goto_4d

    :cond_1f7
    move v1, v3

    .line 4461
    goto/16 :goto_9c

    .restart local v0       #value:I
    :cond_1fa
    move v1, v2

    .line 4547
    goto :goto_1c1

    :cond_1fc
    move v1, v2

    .line 4551
    goto :goto_1cc

    :cond_1fe
    move v1, v2

    .line 4552
    goto :goto_1d7

    :cond_200
    move v3, v2

    .line 4555
    goto :goto_1e9

    .line 4477
    :sswitch_data_202
    .sparse-switch
        -0x2 -> :sswitch_ec
        -0x1 -> :sswitch_ec
        0x5 -> :sswitch_ec
        0xf -> :sswitch_ec
        0x3c -> :sswitch_ec
        0xf0 -> :sswitch_ec
        0x2d0 -> :sswitch_ec
    .end sparse-switch
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .registers 26
    .parameter "context"

    .prologue
    .line 5573
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 5574
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v21

    .line 5581
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-nez v21, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-nez v21, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v21, v0

    if-nez v21, :cond_29

    .line 5582
    invoke-super/range {p0 .. p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v20

    .line 5717
    :goto_28
    return-object v20

    .line 5585
    :cond_29
    const/4 v9, 0x0

    .line 5586
    .local v9, index:I
    const/16 v17, -0x1

    .line 5587
    .local v17, recvIndex:I
    const/16 v19, -0x1

    .line 5591
    .local v19, sendIndex:I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5592
    .local v15, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_67

    .line 5593
    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .local v10, index:I
    move/from16 v17, v9

    .line 5594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    .line 5597
    .end local v10           #index:I
    .restart local v9       #index:I
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9b

    .line 5598
    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .restart local v10       #index:I
    move/from16 v19, v9

    .line 5599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    .line 5606
    .end local v10           #index:I
    .restart local v9       #index:I
    :cond_9b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v21, v0

    if-eqz v21, :cond_ff

    .line 5616
    invoke-static/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v5

    .local v5, currentDefaultAccountId:J
    const-wide/16 v21, -0x1

    cmp-long v21, v5, v21

    if-eqz v21, :cond_ff

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    cmp-long v21, v5, v21

    if-eqz v21, :cond_ff

    .line 5618
    add-int/lit8 v9, v9, 0x1

    .line 5620
    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    .line 5623
    .local v12, modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 5629
    .local v8, cv1:Landroid/content/ContentValues;
    const-string v21, "isDefault"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5630
    const-string v21, "emailsize"

    iget v0, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5631
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5641
    .end local v5           #currentDefaultAccountId:J
    .end local v8           #cv1:Landroid/content/ContentValues;
    .end local v12           #modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_ff
    const/4 v7, 0x0

    .line 5642
    .local v7, cv:Landroid/content/ContentValues;
    if-gez v17, :cond_104

    if-ltz v19, :cond_127

    .line 5643
    :cond_104
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #cv:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5644
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-ltz v17, :cond_118

    .line 5645
    const-string v21, "hostAuthKeyRecv"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5647
    :cond_118
    if-ltz v19, :cond_127

    .line 5648
    const-string v21, "hostAuthKeySend"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5652
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 5653
    .local v4, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 5654
    if-eqz v7, :cond_13f

    .line 5655
    invoke-virtual {v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 5657
    :cond_13f
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5660
    :try_start_148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.email.provider"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v18

    .line 5663
    .local v18, results:[Landroid/content/ContentProviderResult;
    if-ltz v17, :cond_176

    .line 5664
    aget-object v21, v18, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 5665
    .local v13, newId:J
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    .line 5666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5668
    .end local v13           #newId:J
    :cond_176
    if-ltz v19, :cond_196

    .line 5669
    aget-object v21, v18, v19

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 5670
    .restart local v13       #newId:J
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    .line 5671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5673
    .end local v13           #newId:J
    :cond_196
    aget-object v21, v18, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 5674
    .local v20, u:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getId(Landroid/net/Uri;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5680
    new-instance v21, Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    .line 5681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAccountKey:J

    .line 5683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mSevenAccountKey:J

    .line 5684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTimeLimit:J

    .line 5685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mTypeMsg:I

    .line 5688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakTime:I

    .line 5689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mOffPeakTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mOffPeakTime:I

    .line 5690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDays:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mDays:Ljava/lang/String;

    .line 5691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakStartTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakStartTime:Ljava/lang/String;

    .line 5692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPeakEndTime:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mPeakEndTime:Ljava/lang/String;

    .line 5693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mWhileroaming:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mWhileroaming:I

    .line 5694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAttachmentEnabled:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->mAttachmentEnabled:I

    .line 5696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2cd

    .line 5697
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_29c
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_29c} :catch_2db
    .catch Landroid/content/OperationApplicationException; {:try_start_148 .. :try_end_29c} :catch_2e0

    .line 5698
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_29c
    sget-object v21, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->accountCB:Lcom/android/emailcommon/provider/EmailContent$AccountCB;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->toContentValues()Landroid/content/ContentValues;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5700
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.android.email.provider"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2ca
    .catch Landroid/os/RemoteException; {:try_start_29c .. :try_end_2ca} :catch_2e6
    .catch Landroid/content/OperationApplicationException; {:try_start_29c .. :try_end_2ca} :catch_2e2

    move-result-object v18

    move-object/from16 v15, v16

    .line 5705
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2cd
    :try_start_2cd
    const-string v3, "com.android.email.action.ACCOUNT_UPDATED"

    .line 5706
    .local v3, ACTION:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5707
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2d9
    .catch Landroid/os/RemoteException; {:try_start_2cd .. :try_end_2d9} :catch_2db
    .catch Landroid/content/OperationApplicationException; {:try_start_2cd .. :try_end_2d9} :catch_2e0

    goto/16 :goto_28

    .line 5712
    .end local v3           #ACTION:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v18           #results:[Landroid/content/ContentProviderResult;
    .end local v20           #u:Landroid/net/Uri;
    :catch_2db
    move-exception v21

    .line 5717
    :goto_2dc
    const/16 v20, 0x0

    goto/16 :goto_28

    .line 5714
    :catch_2e0
    move-exception v21

    goto :goto_2dc

    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v18       #results:[Landroid/content/ContentProviderResult;
    .restart local v20       #u:Landroid/net/Uri;
    :catch_2e2
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_2dc

    .line 5712
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_2e6
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_2dc
.end method

.method public setAccountKey(J)V
    .registers 3
    .parameter "accountKey"

    .prologue
    .line 4949
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountKey:J

    .line 4950
    return-void
.end method

.method public setAccountType(I)V
    .registers 2
    .parameter "accountType"

    .prologue
    .line 5050
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 5051
    return-void
.end method

.method public setAutoDownload(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 4780
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    .line 4781
    return-void
.end method

.method public setAutoRetryTimes(I)V
    .registers 2
    .parameter "retryTimes"

    .prologue
    .line 4928
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    .line 4929
    return-void
.end method

.method public setCalendarSyncLookback(I)Z
    .registers 5
    .parameter "days"

    .prologue
    const/4 v2, 0x4

    .line 4829
    if-eq p1, v2, :cond_e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_e

    const/4 v1, 0x6

    if-eq p1, v1, :cond_e

    const/4 v1, 0x7

    if-eq p1, v1, :cond_e

    if-nez p1, :cond_12

    .line 4832
    :cond_e
    const/4 v0, 0x1

    .line 4833
    .local v0, success:Z
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4839
    :goto_11
    return v0

    .line 4835
    .end local v0           #success:Z
    :cond_12
    iput v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    .line 4836
    const/4 v0, 0x0

    .restart local v0       #success:Z
    goto :goto_11
.end method

.method public setCbaCertificate(Ljava/lang/String;)V
    .registers 2
    .parameter "alias"

    .prologue
    .line 4861
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    .line 4862
    return-void
.end method

.method public setConflictresolution(I)V
    .registers 2
    .parameter "conflict"

    .prologue
    .line 4710
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    .line 4711
    return-void
.end method

.method public setConversationMode(I)V
    .registers 2
    .parameter "conv_mode"

    .prologue
    .line 4940
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    .line 4941
    return-void
.end method

.method public setDefaultAccount(Z)V
    .registers 2
    .parameter "newDefaultState"

    .prologue
    .line 5270
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 5271
    return-void
.end method

.method public setDeletePolicy(I)V
    .registers 4
    .parameter "newPolicy"

    .prologue
    .line 5094
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5095
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5096
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 4579
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 4580
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "emailAddress"

    .prologue
    .line 4596
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 4597
    return-void
.end method

.method public setEmailSize(B)V
    .registers 2
    .parameter "emailSize"

    .prologue
    .line 4648
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    .line 4649
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .parameter "newFlags"

    .prologue
    .line 5010
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 5011
    return-void
.end method

.method public setForwardWithFiles(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 4772
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    .line 4773
    return-void
.end method

.method public setMessageFormat(I)V
    .registers 2
    .parameter "messageFormat"

    .prologue
    .line 5034
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    .line 5035
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .registers 2
    .parameter "newUri"

    .prologue
    .line 5061
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    .line 5062
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 4615
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    .line 4616
    return-void
.end method

.method public setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "senderUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5197
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_14

    .line 5198
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 5199
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5205
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1d

    .line 5206
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 5208
    :cond_1d
    return-void

    .line 5201
    :cond_1e
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_14
.end method

.method public setSevenAccountKey(J)V
    .registers 3
    .parameter "sevenAccountKey"

    .prologue
    .line 4957
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    .line 4958
    return-void
.end method

.method public setShowImage(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 4796
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    .line 4797
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2
    .parameter "signature"

    .prologue
    .line 4623
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 4624
    return-void
.end method

.method public setSizeLimit(J)V
    .registers 3
    .parameter "sizeLimit"

    .prologue
    .line 4981
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    .line 4982
    return-void
.end method

.method public setSmimeEncryptAll(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 4880
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    .line 4881
    return-void
.end method

.method public setSmimeEncryptionAlgorithm(I)V
    .registers 2
    .parameter "encryptionAlgorithm"

    .prologue
    .line 4917
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    .line 4918
    return-void
.end method

.method public setSmimeFlags(I)V
    .registers 5
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5742
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_10

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    .line 5743
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    :goto_d
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    .line 5744
    return-void

    :cond_10
    move v0, v2

    .line 5742
    goto :goto_7

    :cond_12
    move v1, v2

    .line 5743
    goto :goto_d
.end method

.method public setSmimeOwnCertificate(Ljava/lang/String;)V
    .registers 2
    .parameter "alias"

    .prologue
    .line 4850
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 4851
    return-void
.end method

.method public setSmimeSignAlgorithm(I)V
    .registers 2
    .parameter "signAlgorithm"

    .prologue
    .line 4897
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    .line 4898
    return-void
.end method

.method public setSmimeSignAll(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 4872
    iput-boolean p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    .line 4873
    return-void
.end method

.method public setStoreUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "storeUri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5174
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v0, :cond_14

    .line 5175
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 5176
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 5182
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_1d

    .line 5183
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V

    .line 5185
    :cond_1d
    return-void

    .line 5178
    :cond_1e
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    goto :goto_14
.end method

.method public setSyncInterval(I)V
    .registers 2
    .parameter "minutes"

    .prologue
    .line 4763
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 4764
    return-void
.end method

.method public setSyncLookback(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 4818
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 4819
    return-void
.end method

.method public setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V
    .registers 4
    .parameter "syncScheduleData"

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakDay(I)V

    .line 5072
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setStartMinute(I)V

    .line 5073
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setEndMinute(I)V

    .line 5074
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setPeakSchedule(I)V

    .line 5075
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 5076
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->setRoamingSchedule(I)V

    .line 5077
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5078
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5079
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5080
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5081
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5082
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 5084
    return-void
.end method

.method public setTextPreviewSize(I)V
    .registers 2
    .parameter "textPreview"

    .prologue
    .line 4721
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    .line 4722
    return-void
.end method

.method public setTimeLimit(J)V
    .registers 3
    .parameter "timeLimit"

    .prologue
    .line 4973
    iput-wide p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    .line 4974
    return-void
.end method

.method public setTypeMsg(I)V
    .registers 2
    .parameter "typeMsg"

    .prologue
    .line 4965
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    .line 4966
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 5751
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5752
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5753
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5754
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5755
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5756
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5757
    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5758
    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5759
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5760
    const-string v1, "isDefault"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5761
    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5762
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5763
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5765
    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5766
    const-string v1, "securityFlags"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5767
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5771
    const-string v1, "emailsize"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5772
    const-string v1, "conflict"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5773
    const-string v1, "policyKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5774
    const-string v1, "peakDays"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5775
    const-string v1, "peakStartMinute"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5776
    const-string v1, "peakEndMinute"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5777
    const-string v1, "peakSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5778
    const-string v1, "offPeakSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5779
    const-string v1, "roamingSchedule"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5782
    const-string v1, "calendarSyncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5784
    const-string v1, "smimeOwnCertificateAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5786
    const-string v1, "smimeOptionsFlags"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5789
    const-string v1, "conversationMode"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5792
    const-string v1, "textPreview"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5795
    const-string v1, "deviceInfoSent"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5799
    const-string v1, "cbaCertificateAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5802
    const-string v1, "messageFormat"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5803
    const-string v1, "accountType"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5807
    const-string v1, "forwardWithFiles"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5808
    const-string v1, "autoDownload"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5810
    const-string v1, "recentMessages"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5811
    const-string v1, "showImage"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5814
    const-string v1, "autoRetryTimes"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5817
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x3a

    .line 5997
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5998
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 5999
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6002
    :cond_1d
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 6003
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6004
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6005
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 6006
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6007
    :cond_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6008
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 6009
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6010
    :cond_3e
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6011
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .registers 12
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v5, 0x0

    .line 5523
    const-string v6, "isDefault"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    const-string v6, "isDefault"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 5525
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5530
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .local v0, currentDefaultAccountId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_58

    iget-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v6, v0, v6

    if-eqz v6, :cond_58

    .line 5533
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 5536
    .local v3, modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5543
    .local v2, cv1:Landroid/content/ContentValues;
    const-string v6, "isDefault"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5544
    const-string v6, "emailsize"

    iget v7, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5545
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5549
    .end local v2           #cv1:Landroid/content/ContentValues;
    .end local v3           #modifyMe:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_58
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5553
    :try_start_6f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.email.provider"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_78} :catch_81
    .catch Landroid/content/OperationApplicationException; {:try_start_6f .. :try_end_78} :catch_7f

    .line 5554
    const/4 v5, 0x1

    .line 5562
    .end local v0           #currentDefaultAccountId:J
    .end local v4           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_79
    return v5

    :cond_7a
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v5

    goto :goto_79

    .line 5557
    .restart local v0       #currentDefaultAccountId:J
    .restart local v4       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_7f
    move-exception v6

    goto :goto_79

    .line 5555
    :catch_81
    move-exception v6

    goto :goto_79
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5845
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5846
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5847
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5848
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5849
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5850
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5851
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5852
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5853
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5854
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v0, :cond_d0

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5855
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5856
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5857
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5858
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5859
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5860
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5861
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5862
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5865
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5866
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5867
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mPolicyKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5868
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncScheduleData:Lcom/android/emailcommon/utility/SyncScheduleData;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5872
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5874
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5877
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5880
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5884
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_d3

    .line 5885
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5886
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5891
    :goto_93
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_d7

    .line 5892
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5893
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5898
    :goto_9f
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5902
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5903
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5907
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    if-eqz v0, :cond_db

    move v0, v1

    :goto_b3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5908
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoDownload:Z

    if-eqz v0, :cond_dd

    move v0, v1

    :goto_bb
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 5910
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mRecentMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5911
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mShowImage:Z

    if-eqz v0, :cond_df

    :goto_c7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5914
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5916
    return-void

    :cond_d0
    move v0, v2

    .line 5854
    goto/16 :goto_34

    .line 5888
    :cond_d3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_93

    .line 5895
    :cond_d7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9f

    :cond_db
    move v0, v2

    .line 5907
    goto :goto_b3

    :cond_dd
    move v0, v2

    .line 5908
    goto :goto_bb

    :cond_df
    move v1, v2

    .line 5911
    goto :goto_c7
.end method
