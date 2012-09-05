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

.field public mAccountType:I

.field public transient mAmAccount:Landroid/accounts/Account;

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

.field public mPolicySet:Lcom/android/emailcommon/service/PolicySet;

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


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 5824
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationMode()I
    .registers 2

    .prologue
    .line 4936
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConversationMode:I

    return v0
.end method

.method public getDeviceInfoSent()I
    .registers 2

    .prologue
    .line 4733
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

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

.method public getEmailMessageDiffEnabled()I
    .registers 2

    .prologue
    .line 4654
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailMessageDiffEnabled:I

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

.method public refresh(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 4405
    const/4 v6, 0x0

    .line 4407
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4409
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4410
    invoke-virtual {p0, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_24

    .line 4415
    if-eqz v6, :cond_23

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_23

    .line 4416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4419
    :cond_23
    :goto_23
    return-void

    .line 4411
    :catch_24
    move-exception v7

    .line 4412
    .local v7, e:Ljava/lang/Exception;
    :try_start_25
    const-string v0, "EmailContent >>"

    const-string v1, "Exception in refresh"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_38

    .line 4415
    if-eqz v6, :cond_23

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_23

    .line 4416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 4415
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_44

    .line 4416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
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

.method public setDeviceInfoSent(I)V
    .registers 2
    .parameter "devInfo"

    .prologue
    .line 4741
    iput p1, p0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDeviceInfoSent:I

    .line 4742
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
