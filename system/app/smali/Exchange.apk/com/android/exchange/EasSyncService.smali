.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;,
        Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;
    }
.end annotation


# static fields
.field protected static CHECK_PROVISIONING_IN_PROGRESS:Z

.field private static flagPerformWipeCalled:Z

.field private static flagRemoteWipe:Z

.field private static mFormatExtStorageThread:Ljava/lang/Thread;

.field public static protocolVersion:D


# instance fields
.field public CollectionId:Ljava/lang/String;

.field public SyncKey:Ljava/lang/String;

.field UserAgentSplited:[Ljava/lang/String;

.field public commandFinished:Z

.field private isLookBackChanged:Z

.field private mAttIdToFetchAttachment:J

.field private mAttSize:J

.field mAuthString:Ljava/lang/String;

.field mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

.field private mBindArguments:[Ljava/lang/String;

.field mCmdString:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mDeviceTypeForUserAgent:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mEasNeedsProvisioning:Z

.field mEmailAddress:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field public mIsHTMLDisabled:Z

.field public mIsValid:Z

.field mModelName_DeviceType:Ljava/lang/String;

.field mModelName_UserAgent:Ljava/lang/String;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMsgIdToFetchAttachment:J

.field public mPassword:Ljava/lang/String;

.field public volatile mPendingMessageId:J

.field protected volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

.field private mPingChangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPingForceHeartbeat:I

.field mPingHeartbeat:I

.field mPingHeartbeatDropped:Z

.field private mPingHighWaterMark:I

.field mPingMaxHeartbeat:I

.field mPingMinHeartbeat:I

.field private mPostAborted:Z

.field private mPostReset:Z

.field mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mSsl:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSyncHeartbeat:I

.field private mTrustSsl:Z

.field mUserAgent:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 563
    sput-boolean v2, Lcom/android/exchange/EasSyncService;->CHECK_PROVISIONING_IN_PROGRESS:Z

    .line 743
    const-wide/high16 v0, 0x4004

    sput-wide v0, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    .line 757
    sput-boolean v2, Lcom/android/exchange/EasSyncService;->flagRemoteWipe:Z

    .line 759
    sput-boolean v2, Lcom/android/exchange/EasSyncService;->flagPerformWipeCalled:Z

    .line 761
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/EasSyncService;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 892
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x1d6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 900
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;)V

    .line 561
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 587
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 615
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 621
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    const-string v1, "\\-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 635
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 637
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 653
    iput-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 665
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 668
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 676
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 682
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 690
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 698
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 702
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mSyncHeartbeat:I

    .line 703
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 707
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 719
    iput-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 731
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 733
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 735
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 753
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 755
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 764
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 766
    new-instance v0, Lcom/android/exchange/EasSyncService$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1;-><init>(Lcom/android/exchange/EasSyncService;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 902
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x1d6

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 872
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;J)V

    .line 561
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 587
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 615
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 621
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    const-string v3, "\\-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 635
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 637
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 653
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 665
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 668
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 676
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 682
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 690
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 698
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 702
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mSyncHeartbeat:I

    .line 703
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 707
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 731
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 733
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 735
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 753
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 755
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 764
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 766
    new-instance v0, Lcom/android/exchange/EasSyncService$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1;-><init>(Lcom/android/exchange/EasSyncService;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 874
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 876
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 878
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_81
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 880
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8e

    :goto_89
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 882
    return-void

    :cond_8c
    move v0, v2

    .line 878
    goto :goto_81

    :cond_8e
    move v1, v2

    .line 880
    goto :goto_89
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x1d6

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 838
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 561
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 587
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 615
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 621
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    const-string v3, "\\-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 635
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 637
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 653
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 665
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 668
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 676
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 682
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 690
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 698
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 702
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mSyncHeartbeat:I

    .line 703
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 707
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 731
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 733
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 735
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 753
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 755
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 764
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 766
    new-instance v0, Lcom/android/exchange/EasSyncService$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1;-><init>(Lcom/android/exchange/EasSyncService;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 842
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 844
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_81
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 846
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8e

    :goto_89
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 848
    return-void

    :cond_8c
    move v0, v2

    .line 844
    goto :goto_81

    :cond_8e
    move v1, v2

    .line 846
    goto :goto_89
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x1d6

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 561
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 587
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 615
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 621
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    const-string v3, "\\-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 635
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 637
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 653
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 665
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 668
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 676
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 682
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 690
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 698
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 702
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mSyncHeartbeat:I

    .line 703
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 707
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 731
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 733
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 735
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 753
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 755
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 764
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 766
    new-instance v0, Lcom/android/exchange/EasSyncService$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1;-><init>(Lcom/android/exchange/EasSyncService;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 805
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 807
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_79

    .line 809
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 829
    :goto_78
    return-void

    .line 815
    :cond_79
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 817
    if-nez v3, :cond_86

    .line 819
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_78

    .line 825
    :cond_86
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_98

    move v0, v1

    :goto_8d
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 827
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9a

    :goto_95
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_78

    :cond_98
    move v0, v2

    .line 825
    goto :goto_8d

    :cond_9a
    move v1, v2

    .line 827
    goto :goto_95
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x1d6

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 561
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 587
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 615
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 621
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    const-string v3, "\\-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 635
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 637
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 653
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 665
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 668
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 676
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 682
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 690
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 698
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 702
    iput v8, p0, Lcom/android/exchange/EasSyncService;->mSyncHeartbeat:I

    .line 703
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 707
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 719
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 731
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 733
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 735
    iput-wide v6, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 753
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 755
    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 764
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 766
    new-instance v0, Lcom/android/exchange/EasSyncService$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1;-><init>(Lcom/android/exchange/EasSyncService;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 860
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 862
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8c

    move v0, v1

    :goto_81
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 864
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8e

    :goto_89
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 866
    return-void

    :cond_8c
    move v0, v2

    .line 862
    goto :goto_81

    :cond_8e
    move v1, v2

    .line 864
    goto :goto_89
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x1d6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 886
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 561
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 587
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 615
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 621
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    const-string v1, "\\-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    .line 635
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 637
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 653
    iput-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 659
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 665
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 668
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 676
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 682
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 690
    const/16 v0, 0xdca

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 698
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 702
    iput v6, p0, Lcom/android/exchange/EasSyncService;->mSyncHeartbeat:I

    .line 703
    iput v2, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 707
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 711
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 719
    iput-boolean v7, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 727
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 731
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 733
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 735
    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 753
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 755
    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 764
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 766
    new-instance v0, Lcom/android/exchange/EasSyncService$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1;-><init>(Lcom/android/exchange/EasSyncService;)V

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 888
    return-void
.end method

.method private AutoDiscoverPart1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2056
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart2(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1e} :catch_1f
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_1e} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_108

    .line 2179
    :goto_1e
    return-void

    .line 2058
    :catch_1f
    move-exception v0

    .line 2062
    :try_start_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "autodiscover."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart2(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_40} :catch_41
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_20 .. :try_end_40} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_f0

    goto :goto_1e

    .line 2064
    :catch_41
    move-exception v0

    .line 2070
    :try_start_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/utility/HttpRedirect;->getRedirectURI(Ljava/net/URI;)Ljava/net/URI;
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_62} :catch_92

    move-result-object v0

    .line 2084
    :goto_63
    if-nez v0, :cond_86

    .line 2086
    :try_start_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://autodiscover."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/utility/HttpRedirect;->getRedirectURI(Ljava/net/URI;)Ljava/net/URI;
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_85} :catch_98

    move-result-object v0

    .line 2100
    :cond_86
    :goto_86
    if-nez v0, :cond_9e

    .line 2102
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1e

    .line 2074
    :catch_92
    move-exception v0

    .line 2076
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 2078
    goto :goto_63

    .line 2092
    :catch_98
    move-exception v0

    .line 2094
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 2096
    goto :goto_86

    .line 2108
    :cond_9e
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2110
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_b7

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 2114
    const-string v2, "https://"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2121
    :cond_b7
    :try_start_b7
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart2(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_be} :catch_c0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b7 .. :try_end_be} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_be} :catch_d8

    goto/16 :goto_1e

    .line 2123
    :catch_c0
    move-exception v0

    .line 2125
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 2131
    :catch_cc
    move-exception v0

    .line 2133
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 2139
    :catch_d8
    move-exception v0

    .line 2141
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 2151
    :catch_e4
    move-exception v0

    .line 2153
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 2157
    :catch_f0
    move-exception v0

    .line 2159
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 2165
    :catch_fc
    move-exception v0

    .line 2167
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 2171
    :catch_108
    move-exception v0

    .line 2173
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1e
.end method

.method private AutoDiscoverPart2(Ljava/lang/String;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2003
    .line 2005
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2010
    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\' standalone=\'no\' ?><Autodiscover xmlns=\"http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006\"><Request><EMailAddress>%s</EMailAddress><AcceptableResponseSchema>http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006</AcceptableResponseSchema></Request></Autodiscover>"

    .line 2012
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v5, :cond_17

    .line 2014
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mEmailAddress:Ljava/lang/String;

    .line 2018
    :cond_17
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mEmailAddress:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2020
    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2022
    invoke-static {v0}, Lcom/android/exchange/utility/HttpsURLConnectionManager;->getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 2024
    if-eqz v0, :cond_95

    .line 2025
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 2026
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 2028
    const v3, 0x13880

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 2029
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2030
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v3, "MS-ASProtocolVersion"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const-string v3, "Connection"

    const-string v4, "keep-alive"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const-string v3, "User-Agent"

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    const-string v3, "Content-Type"

    const-string v4, "text/xml"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const-string v3, "Content-Length"

    invoke-virtual {v0, v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const-string v2, "Accept"

    const-string v3, "text/xml, text/html"

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    invoke-static {v6}, Ljavax/net/ssl/HttpsURLConnection;->setFollowRedirects(Z)V

    .line 2040
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 2041
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2043
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 2044
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 2046
    invoke-direct {p0, v0, v5}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Ljavax/net/ssl/HttpsURLConnection;Z)V

    .line 2048
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 2050
    :cond_95
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 364
    sget-boolean v0, Lcom/android/exchange/EasSyncService;->flagRemoteWipe:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 364
    sget-object v0, Lcom/android/exchange/EasSyncService;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1
    .parameter "x0"

    .prologue
    .line 364
    sput-object p0, Lcom/android/exchange/EasSyncService;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/exchange/EasSyncService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->formatExtStorage()I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 364
    sget-boolean v0, Lcom/android/exchange/EasSyncService;->flagPerformWipeCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/exchange/EasSyncService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->performWipe()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exchange/EasSyncService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/exchange/EasSyncService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    return p1
.end method

.method private acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "tempKey"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6670
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x38b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 6678
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 6680
    const/16 v2, 0x385

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x386

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 6682
    const/16 v2, 0x387

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 6686
    const/16 v2, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 6688
    const/16 v2, 0x389

    invoke-virtual {v1, v2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 6690
    invoke-virtual {v1, v6, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 6692
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 6694
    if-eqz p3, :cond_41

    .line 6696
    const/16 v2, 0x38c

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 6698
    const-string v2, "1"

    invoke-virtual {v1, v6, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 6700
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 6704
    :cond_41
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 6708
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v2, :cond_66

    .line 6710
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "acknowledgeProvisionImpl(): Wbxml:"

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6712
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    .line 6714
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6716
    new-instance v2, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 6718
    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 6724
    :cond_66
    const-string v2, "Provision"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 6726
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 6730
    :try_start_74
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 6734
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_9c

    .line 6736
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acknowledgeProvisionImpl():Provision command response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6742
    :cond_9c
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_ea

    .line 6744
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 6746
    new-instance v3, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v3, v1, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 6748
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 6752
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_74 .. :try_end_b2} :catchall_cb

    move-result-object v0

    .line 6762
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6764
    :try_start_b8
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_c4

    .line 6766
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6768
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6772
    :cond_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_e7

    .line 6776
    if-eqz v2, :cond_ca

    .line 6778
    :goto_c7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 6786
    :cond_ca
    return-object v0

    .line 6762
    :catchall_cb
    move-exception v0

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6764
    :try_start_d1
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_dd

    .line 6766
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6768
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6772
    :cond_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_e4

    .line 6776
    if-eqz v2, :cond_e3

    .line 6778
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 6762
    :cond_e3
    throw v0

    .line 6772
    :catchall_e4
    move-exception v0

    :try_start_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v0

    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0

    .line 6762
    :cond_ea
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6764
    :try_start_ef
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_fb

    .line 6766
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6768
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6772
    :cond_fb
    monitor-exit v1

    .line 6776
    if-eqz v2, :cond_ca

    goto :goto_c7

    .line 6772
    :catchall_ff
    move-exception v0

    monitor-exit v1
    :try_end_101
    .catchall {:try_start_ef .. :try_end_101} :catchall_ff

    throw v0
.end method

.method private acknowledgeRemoteWipe(Ljava/lang/String;)V
    .registers 4
    .parameter "tempKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6664
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 6666
    return-void
.end method

.method public static addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10384
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 10386
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p3, p4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 10388
    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 10390
    const-string v0, "PROXY4"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10392
    return-void
.end method

.method private cacheAuthAndCmdString()V
    .registers 5

    .prologue
    const/16 v3, 0x3a

    .line 5206
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5212
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    if-eqz v0, :cond_7f

    .line 5214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5224
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 5228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&User="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&DeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 5232
    return-void

    .line 5218
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method private canProvision()Lcom/android/exchange/adapter/ProvisionParser;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x387

    const/16 v8, 0x386

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 6487
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 6489
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_c7

    .line 6491
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sendDeviceInfomationProvision(Landroid/content/Context;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 6493
    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 6495
    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 6511
    :goto_41
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v2, :cond_5f

    .line 6513
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "canProvision(): Wbxml:"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6515
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    .line 6517
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6519
    new-instance v2, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 6521
    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 6531
    :cond_5f
    :try_start_5f
    const-string v2, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 6533
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 6537
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_91

    .line 6539
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canProvision(): Provision command response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6545
    :cond_91
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_14b

    .line 6547
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 6549
    new-instance v0, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 6551
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_121

    .line 6563
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    .line 6575
    if-eqz v1, :cond_ef

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z
    :try_end_b1
    .catchall {:try_start_5f .. :try_end_b1} :catchall_137

    move-result v1

    if-eqz v1, :cond_ef

    .line 6631
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6633
    :try_start_b9
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_c5

    .line 6635
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6637
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6641
    :cond_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_b9 .. :try_end_c6} :catchall_163

    .line 6649
    :goto_c6
    return-object v0

    .line 6501
    :cond_c7
    const/16 v2, 0x385

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 6503
    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_41

    .line 6587
    :cond_ef
    :try_start_ef
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_137

    move-result v1

    if-eqz v1, :cond_10b

    .line 6631
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6633
    :try_start_fa
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_106

    .line 6635
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6637
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6641
    :cond_106
    monitor-exit v1

    goto :goto_c6

    :catchall_108
    move-exception v0

    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_fa .. :try_end_10a} :catchall_108

    throw v0

    .line 6603
    :cond_10b
    :try_start_10b
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_121

    .line 6609
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6617
    if-eqz v1, :cond_121

    .line 6618
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->clearUnsupportedPolicies()V
    :try_end_121
    .catchall {:try_start_10b .. :try_end_121} :catchall_137

    .line 6631
    :cond_121
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6633
    :try_start_126
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_132

    .line 6635
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6637
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6641
    :cond_132
    monitor-exit v1

    goto :goto_c6

    :catchall_134
    move-exception v0

    monitor-exit v1
    :try_end_136
    .catchall {:try_start_126 .. :try_end_136} :catchall_134

    throw v0

    .line 6631
    :catchall_137
    move-exception v0

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6633
    :try_start_13d
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_149

    .line 6635
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6637
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6641
    :cond_149
    monitor-exit v1
    :try_end_14a
    .catchall {:try_start_13d .. :try_end_14a} :catchall_160

    .line 6631
    throw v0

    :cond_14b
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6633
    :try_start_150
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_15c

    .line 6635
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 6637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 6641
    :cond_15c
    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_150 .. :try_end_15d} :catchall_166

    move-object v0, v1

    .line 6649
    goto/16 :goto_c6

    .line 6641
    :catchall_160
    move-exception v0

    :try_start_161
    monitor-exit v1
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_160

    throw v0

    :catchall_163
    move-exception v0

    :try_start_164
    monitor-exit v1
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_163

    throw v0

    :catchall_166
    move-exception v0

    :try_start_167
    monitor-exit v2
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw v0
.end method

.method private doProgressCallback(JJI)V
    .registers 13
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 3680
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 3690
    :goto_b
    return-void

    .line 3684
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static doResolveRecipients(Landroid/content/Context;J[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/RRResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3426
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 3428
    if-eqz v4, :cond_112

    if-eqz p3, :cond_112

    array-length v1, p3

    if-lez v1, :cond_112

    .line 3430
    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    .line 3432
    new-instance v6, Lcom/android/exchange/EasSyncService;

    const-string v1, "%ResolveRecipients%"

    invoke-direct {v6, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 3436
    :try_start_1d
    sput-object p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 3438
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 3440
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 3442
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 3444
    iget v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_62

    move v1, v3

    :goto_32
    iput-boolean v1, v6, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 3446
    iget v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_64

    move v1, v3

    :goto_3b
    iput-boolean v1, v6, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 3448
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 3450
    iput-object v4, v6, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3452
    new-instance v4, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v4}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3454
    const/16 v1, 0x285

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move v1, v2

    .line 3456
    :goto_51
    array-length v5, p3

    if-ge v1, v5, :cond_66

    .line 3458
    aget-object v5, p3, v1

    if-eqz v5, :cond_5f

    .line 3460
    const/16 v5, 0x290

    aget-object v7, p3, v1

    invoke-virtual {v4, v5, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3456
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_62
    move v1, v2

    .line 3444
    goto :goto_32

    :cond_64
    move v1, v2

    .line 3446
    goto :goto_3b

    .line 3468
    :cond_66
    const/16 v1, 0x28f

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3477
    const/4 v1, 0x2

    if-eq p4, v1, :cond_71

    const/4 v1, 0x3

    if-ne p4, v1, :cond_81

    .line 3479
    :cond_71
    const/16 v1, 0x291

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3483
    const/16 v1, 0x293

    const-string v5, "19"

    invoke-virtual {v4, v1, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3493
    :cond_81
    const/16 v1, 0x294

    const-string v5, "19"

    invoke-virtual {v4, v1, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3499
    if-eqz p5, :cond_9e

    if-eqz p6, :cond_9e

    .line 3501
    const/16 v1, 0x296

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3503
    const/16 v1, 0x297

    invoke-virtual {v4, v1, p5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3505
    const/16 v1, 0x298

    invoke-virtual {v4, v1, p6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3509
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3515
    :cond_9e
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3521
    const-string v1, "ResolveRecipients"

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3523
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 3524
    const/16 v7, 0x1c1

    if-eq v5, v7, :cond_c3

    const/16 v7, 0x193

    if-ne v5, v7, :cond_f0

    .line 3525
    :cond_c3
    new-instance v1, Lcom/android/exchange/CommandStatusException;

    const/16 v4, 0x8e

    invoke-direct {v1, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v1
    :try_end_cb
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1d .. :try_end_cb} :catch_cb
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_cb} :catch_12b

    .line 3635
    :catch_cb
    move-exception v0

    .line 3637
    invoke-static {p0, p1, p2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 3639
    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommandStatusException during ValidateCert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v6, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3641
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 3527
    :cond_f0
    if-ne v5, v8, :cond_1a1

    .line 3531
    :try_start_f2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 3537
    if-nez v1, :cond_103

    .line 3539
    const-string v5, "ExchangeService"

    const-string v7, "doResolveRecipients http response has no content"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :cond_103
    new-instance v5, Lcom/android/exchange/adapter/ResolveRecipientsParser;

    invoke-direct {v5, v1, v6}, Lcom/android/exchange/adapter/ResolveRecipientsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3551
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 3557
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 3652
    :cond_112
    :goto_112
    return-object v0

    .line 3561
    :cond_113
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getStatus()I

    move-result v1

    const/16 v7, 0x8c

    if-lt v1, v7, :cond_147

    invoke-virtual {v5}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getStatus()I

    move-result v1

    const/16 v7, 0x90

    if-gt v1, v7, :cond_147

    .line 3562
    new-instance v1, Lcom/android/exchange/CommandStatusException;

    const/16 v4, 0x8e

    invoke-direct {v1, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v1
    :try_end_12b
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_f2 .. :try_end_12b} :catch_cb
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_12b} :catch_12b

    .line 3642
    :catch_12b
    move-exception v1

    .line 3646
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolve Recipients "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_112

    .line 3565
    :cond_147
    :try_start_147
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getStatus()I

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_112

    .line 3567
    const-string v1, "ResolveRecipients"

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3569
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 3571
    if-ne v4, v8, :cond_183

    .line 3575
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 3581
    if-nez v1, :cond_173

    .line 3583
    const-string v4, "ExchangeService"

    const-string v5, "doResolveRecipients repeat http response has no content"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    :cond_173
    new-instance v4, Lcom/android/exchange/adapter/ResolveRecipientsParser;

    invoke-direct {v4, v1, v6}, Lcom/android/exchange/adapter/ResolveRecipientsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3595
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 3601
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ResolveRecipientsParser;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_112

    .line 3613
    :cond_183
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolve Recipients returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-virtual {v6, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_112

    .line 3629
    :cond_1a1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolve Recipients returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v6, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1bd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_147 .. :try_end_1bd} :catch_cb
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_1bd} :catch_12b

    goto/16 :goto_112
.end method

.method private doStatusCallback(JJI)V
    .registers 13
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"

    .prologue
    .line 3662
    if-nez p5, :cond_f

    .line 3663
    :try_start_2
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v6, 0x64

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 3674
    :goto_e
    return-void

    .line 3666
    :cond_f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v6, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 3668
    :catch_1b
    move-exception v0

    goto :goto_e
.end method

.method public static doValidateCert(Landroid/content/Context;J[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2847
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 2849
    if-eqz v4, :cond_c1

    if-eqz p3, :cond_c1

    array-length v1, p3

    if-lez v1, :cond_c1

    .line 2851
    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    .line 2853
    new-instance v6, Lcom/android/exchange/EasSyncService;

    const-string v1, "%ValidateCert%"

    invoke-direct {v6, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 2857
    :try_start_1c
    sput-object p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 2859
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 2861
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2863
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2865
    iget v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_67

    move v1, v3

    :goto_31
    iput-boolean v1, v6, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 2867
    iget v1, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_69

    move v1, v3

    :goto_3a
    iput-boolean v1, v6, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 2869
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 2871
    iput-object v4, v6, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2873
    new-instance v4, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v4}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2875
    const/16 v1, 0x2c5

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2877
    if-eqz p4, :cond_6e

    array-length v1, p4

    if-lez v1, :cond_6e

    .line 2879
    const/16 v1, 0x2c8

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2881
    array-length v5, p4

    move v1, v2

    :goto_5b
    if-ge v1, v5, :cond_6b

    aget-object v7, p4, v1

    .line 2883
    const/16 v8, 0x2c7

    invoke-virtual {v4, v8, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2881
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_67
    move v1, v2

    .line 2865
    goto :goto_31

    :cond_69
    move v1, v2

    .line 2867
    goto :goto_3a

    .line 2885
    :cond_6b
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2889
    :cond_6e
    const/16 v1, 0x2c6

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2891
    array-length v5, p3

    move v1, v2

    :goto_75
    if-ge v1, v5, :cond_81

    aget-object v7, p3, v1

    .line 2893
    const/16 v8, 0x2c7

    invoke-virtual {v4, v8, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2891
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 2895
    :cond_81
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2897
    if-eqz p5, :cond_8d

    .line 2899
    const/16 v1, 0x2c9

    const-string v5, "1"

    invoke-virtual {v4, v1, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2901
    :cond_8d
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2903
    const-string v1, "ValidateCert"

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2905
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 2907
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_103

    .line 2909
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 2911
    new-instance v5, Lcom/android/exchange/adapter/ValidateCertParser;

    invoke-direct {v5, v1}, Lcom/android/exchange/adapter/ValidateCertParser;-><init>(Ljava/io/InputStream;)V

    .line 2913
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ValidateCertParser;->parse()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 2915
    invoke-virtual {v5}, Lcom/android/exchange/adapter/ValidateCertParser;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 2986
    :cond_c1
    :goto_c1
    return-object v0

    .line 2919
    :cond_c2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ValidateCert request is not successful. Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-virtual {v6, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_de
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1c .. :try_end_de} :catch_df
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_de} :catch_132

    goto :goto_c1

    .line 2966
    :catch_df
    move-exception v0

    .line 2968
    invoke-static {p0, p1, p2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 2970
    new-array v1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommandStatusException during ValidateCert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v6, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2972
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 2946
    :cond_103
    const/4 v1, 0x1

    :try_start_104
    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http Status code for ValidateCert: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-virtual {v6, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2952
    const/16 v1, 0x1c1

    if-eq v4, v1, :cond_127

    const/16 v1, 0x193

    if-ne v4, v1, :cond_c1

    .line 2954
    :cond_127
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 2956
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v1
    :try_end_132
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_104 .. :try_end_132} :catch_df
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_132} :catch_132

    .line 2978
    :catch_132
    move-exception v1

    .line 2980
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException during ValidateCert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_c1
.end method

.method private formatExtStorage()I
    .registers 16

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6223
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_f

    .line 6224
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "formatExtStorage+++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6226
    :cond_f
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v9

    .line 6227
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 6230
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 6232
    array-length v11, v10

    move v0, v7

    move v8, v7

    move-object v1, v3

    .line 6235
    :goto_21
    if-ge v8, v11, :cond_4f

    .line 6236
    aget-object v2, v10, v8

    .line 6239
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v12

    .line 6241
    iget-object v13, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6242
    if-eqz v12, :cond_45

    const-string v14, "usb"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    const-string v12, "removed"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_49

    .line 6244
    :cond_45
    if-nez v0, :cond_4d

    .line 6245
    add-int/lit8 v0, v0, 0x1

    .line 6235
    :cond_49
    :goto_49
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_21

    :cond_4d
    move-object v1, v2

    .line 6247
    goto :goto_49

    .line 6251
    :cond_4f
    if-nez v9, :cond_53

    move v0, v5

    .line 6313
    :goto_52
    return v0

    .line 6254
    :cond_53
    if-eqz v1, :cond_1a6

    .line 6255
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6256
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6259
    :goto_63
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 6263
    :cond_73
    :try_start_73
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_7e

    .line 6264
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "unmounting Volume..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    :cond_7e
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v9, v0, v1, v2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 6266
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_8e

    .line 6267
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "unmounting Volume done!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_a0
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8e} :catch_90

    :cond_8e
    :goto_8e
    move v0, v7

    .line 6275
    goto :goto_52

    .line 6268
    :catch_90
    move-exception v0

    .line 6269
    :try_start_91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6270
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_8e

    .line 6271
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with mount service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_a0

    goto :goto_8e

    .line 6272
    :catchall_a0
    move-exception v0

    throw v0

    .line 6276
    :cond_a2
    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 6280
    :cond_ba
    :try_start_ba
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_c5

    .line 6281
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "formatting Volume..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    :cond_c5
    invoke-interface {v9, v0}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 6283
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_d3

    .line 6284
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "formatting Volume done!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_ba .. :try_end_d3} :catchall_de
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d3} :catch_d9

    .line 6288
    :cond_d3
    :goto_d3
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->performWipe()V

    move v0, v5

    .line 6313
    goto/16 :goto_52

    .line 6285
    :catch_d9
    move-exception v0

    .line 6286
    :try_start_da
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_de

    goto :goto_d3

    .line 6288
    :catchall_de
    move-exception v0

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->performWipe()V

    throw v0

    .line 6290
    :cond_e3
    const-string v0, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 6291
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_107

    .line 6292
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    move v0, v6

    .line 6293
    goto/16 :goto_52

    .line 6294
    :cond_10a
    const-string v0, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 6295
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_12e

    .line 6296
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6297
    :cond_12e
    const/4 v0, 0x2

    goto/16 :goto_52

    .line 6298
    :cond_131
    const-string v0, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 6299
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_155

    .line 6300
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6301
    :cond_155
    const/4 v0, 0x3

    goto/16 :goto_52

    .line 6302
    :cond_158
    const-string v0, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 6303
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_17c

    .line 6304
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    :cond_17c
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 6306
    const/4 v0, 0x4

    goto/16 :goto_52

    .line 6308
    :cond_184
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_1a0

    .line 6309
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6310
    :cond_1a0
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->stopSelf()V

    move v0, v5

    .line 6311
    goto/16 :goto_52

    :cond_1a6
    move-object v0, v3

    move-object v1, v4

    goto/16 :goto_63
.end method

.method private getCalendarFilterType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8628
    sget-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 8630
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    packed-switch v0, :pswitch_data_18

    .line 8660
    :pswitch_9
    sget-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 8668
    :goto_b
    return-object v0

    .line 8634
    :pswitch_c
    const-string v0, "0"

    goto :goto_b

    .line 8640
    :pswitch_f
    sget-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_MONTH:Ljava/lang/String;

    goto :goto_b

    .line 8646
    :pswitch_12
    const-string v0, "6"

    goto :goto_b

    .line 8652
    :pswitch_15
    const-string v0, "7"

    goto :goto_b

    .line 8630
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method private getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 5347
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 5355
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getClientConnectionManagerForSendMessage(J)Lorg/apache/http/conn/ClientConnectionManager;
    .registers 4
    .parameter "accountId"

    .prologue
    .line 5361
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getClientConnectionManagerForSendMessage(J)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getEmailFilter()Ljava/lang/String;
    .registers 6

    .prologue
    .line 8475
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    .line 8477
    .local v1, filter:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    packed-switch v2, :pswitch_data_3c

    .line 8543
    :cond_9
    :goto_9
    :pswitch_9
    return-object v1

    .line 8481
    :pswitch_a
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_DAY:Ljava/lang/String;

    .line 8483
    goto :goto_9

    .line 8489
    :pswitch_d
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_3_DAYS:Ljava/lang/String;

    .line 8491
    goto :goto_9

    .line 8497
    :pswitch_10
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    .line 8499
    goto :goto_9

    .line 8505
    :pswitch_13
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 8507
    goto :goto_9

    .line 8513
    :pswitch_16
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_MONTH:Ljava/lang/String;

    .line 8515
    goto :goto_9

    .line 8521
    :pswitch_19
    const-string v1, "0"

    .line 8523
    goto :goto_9

    .line 8531
    :pswitch_1c
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 8533
    .local v0, accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v0, :cond_9

    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-eqz v2, :cond_9

    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 8535
    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 8477
    nop

    :pswitch_data_3c
    .packed-switch -0x2
        :pswitch_1c
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method private getEmailFilter(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;
    .registers 7
    .parameter "mailbox"

    .prologue
    .line 8549
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_b

    .line 8550
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v1

    .line 8619
    :cond_a
    :goto_a
    return-object v1

    .line 8552
    :cond_b
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    if-nez v2, :cond_16

    .line 8553
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 8555
    :cond_16
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    .line 8557
    .local v1, filter:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    packed-switch v2, :pswitch_data_52

    :pswitch_1f
    goto :goto_a

    .line 8608
    :pswitch_20
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 8610
    .local v0, accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v0, :cond_a

    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 8612
    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 8561
    .end local v0           #accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    :pswitch_3f
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_DAY:Ljava/lang/String;

    .line 8563
    goto :goto_a

    .line 8569
    :pswitch_42
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_3_DAYS:Ljava/lang/String;

    .line 8571
    goto :goto_a

    .line 8577
    :pswitch_45
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    .line 8579
    goto :goto_a

    .line 8585
    :pswitch_48
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 8587
    goto :goto_a

    .line 8593
    :pswitch_4b
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_MONTH:Ljava/lang/String;

    .line 8595
    goto :goto_a

    .line 8601
    :pswitch_4e
    const-string v1, "0"

    .line 8603
    goto :goto_a

    .line 8557
    nop

    :pswitch_data_52
    .packed-switch -0x2
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
    .end packed-switch
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .registers 8
    .parameter

    .prologue
    .line 5457
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 5459
    const v1, 0x9c40

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5461
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5463
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 5467
    const-wide/32 v1, 0x9c40

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 5471
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5473
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 5475
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_59

    if-ltz v2, :cond_59

    .line 5477
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 5479
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    :cond_59
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 5487
    return-object v1
.end method

.method private getLoadMoreClient(I)Lorg/apache/http/client/HttpClient;
    .registers 8
    .parameter

    .prologue
    .line 5495
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 5497
    const v1, 0x9c40

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5499
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5501
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 5505
    const-wide/32 v1, 0x9c40

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 5509
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5511
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 5513
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_59

    if-ltz v2, :cond_59

    .line 5515
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 5517
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    :cond_59
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 5523
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientConnectionManagerForLoadMore : client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5527
    return-object v1
.end method

.method private getPolicyType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6447
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_f

    const-string v0, "MS-EAS-Provisioning-WBXML"

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "MS-WAP-Provisioning-XML"

    goto :goto_e
.end method

.method private getRedirect(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1876
    const-string v0, "X-MS-Location"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSendMessageClient(IJ)Lorg/apache/http/client/HttpClient;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 5535
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 5537
    const v1, 0x9c40

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5539
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5541
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 5545
    const-wide/32 v1, 0x9c40

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 5549
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5551
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 5553
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_59

    if-ltz v2, :cond_59

    .line 5555
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 5557
    const-string v3, "PROXY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSendMessageClient : Added proxy param host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " port: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    :cond_59
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, p2, p3}, Lcom/android/exchange/EasSyncService;->getClientConnectionManagerForSendMessage(J)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 5563
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSendMessageClient : client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    return-object v1
.end method

.method private isLikelyNatFailure(Ljava/lang/String;JI)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7468
    if-nez p1, :cond_5

    .line 7504
    :cond_4
    :goto_4
    return v0

    .line 7472
    :cond_5
    const-string v2, "reset by peer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 7474
    goto :goto_4

    .line 7482
    :cond_f
    const-string v2, "ead timed out"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-long v2, p4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p2, v2

    if-lez v2, :cond_4

    .line 7494
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Read timed out for long heartbeat. Decrease heartbeat"

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v1

    .line 7496
    goto :goto_4
.end method

.method private parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 8293
    new-instance v8, Lcom/android/exchange/adapter/PingParser;

    invoke-direct {v8, p1, p0}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 8295
    invoke-virtual {v8}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 8301
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 8303
    invoke-virtual {v8}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    .line 8305
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 8307
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    aput-object v6, v0, v7

    .line 8309
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? and serverId=?"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8315
    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 8333
    const/16 v0, 0x10

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8335
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v2

    .line 8339
    if-ne v2, v11, :cond_60

    .line 8341
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v0

    .line 8343
    if-lez v0, :cond_9b

    .line 8345
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8394
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 8396
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 8399
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8401
    if-eqz v3, :cond_7a

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    :cond_7a
    move v0, v7

    .line 8405
    :cond_7b
    if-nez v0, :cond_8d

    const/16 v0, 0x42

    if-eq v2, v0, :cond_97

    const/16 v0, 0x41

    if-eq v2, v0, :cond_97

    const/16 v0, 0x43

    if-eq v2, v0, :cond_97

    const/16 v0, 0x45

    if-eq v2, v0, :cond_97

    .line 8411
    :cond_8d
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_97
    .catchall {:try_start_45 .. :try_end_97} :catchall_c1

    .line 8423
    :cond_97
    :goto_97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 8347
    :cond_9b
    if-nez v0, :cond_60

    .line 8355
    const/4 v0, 0x1

    :try_start_9e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8357
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8359
    if-nez v0, :cond_c6

    .line 8361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Last ping reported changes in error for: "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 8363
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catchall {:try_start_9e .. :try_end_c0} :catchall_c1

    goto :goto_60

    .line 8423
    :catchall_c1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 8365
    :cond_c6
    :try_start_c6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v7, :cond_d5

    .line 8369
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->pushFallback(J)V

    goto :goto_97

    .line 8375
    :cond_d5
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v10, "Last ping reported changes in error for: "

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 8377
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f0
    .catchall {:try_start_c6 .. :try_end_f0} :catchall_c1

    goto/16 :goto_60

    .line 8431
    :cond_f2
    invoke-virtual {v8}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

    move-result v0

    return v0
.end method

.method private parseSyncWithHBIResult(Ljava/io/InputStream;)V
    .registers 13
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 8441
    new-instance v6, Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    invoke-direct {v6, p0}, Lcom/android/exchange/adapter/SyncwithHBIAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 8442
    .local v6, target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    invoke-virtual {v6, p1}, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->parse(Ljava/io/InputStream;)Z

    .line 8443
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    .line 8446
    .local v4, masterAutoSync:Z
    invoke-virtual {v6}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    .line 8448
    .local v5, syncKey:Ljava/lang/String;
    if-eqz v5, :cond_1c

    const-string v7, "0"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 8449
    :cond_1c
    const/4 v4, 0x1

    .line 8452
    :cond_1d
    iget-object v7, v6, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreAvailableSyncHBI:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7c

    .line 8453
    iget-object v7, v6, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreAvailableSyncHBI:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8454
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    sget-object v8, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 8457
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 8458
    .local v3, mailboxType:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2f

    if-nez v4, :cond_6c

    const/16 v7, 0x42

    if-eq v3, v7, :cond_2f

    const/16 v7, 0x41

    if-eq v3, v7, :cond_2f

    const/16 v7, 0x43

    if-eq v3, v7, :cond_2f

    const/16 v7, 0x45

    if-eq v3, v7, :cond_2f

    .line 8462
    :cond_6c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    goto :goto_2f

    .line 8469
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v3           #mailboxType:I
    :cond_7c
    return-void
.end method

.method private performWipe()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6453
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "performWipe() start"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6459
    .local v0, intent:Landroid/content/Intent;
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "performWipe() send FORMAT_AND_FACTORY_RESET"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6460
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6461
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6463
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6464
    sput-boolean v3, Lcom/android/exchange/EasSyncService;->flagPerformWipeCalled:Z

    .line 6472
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "performWipe() end"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6473
    return-void
.end method

.method private postAutodiscover(Ljavax/net/ssl/HttpsURLConnection;Z)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1898
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 1900
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_e

    .line 1904
    invoke-virtual {p0, p1}, Lcom/android/exchange/EasSyncService;->parseAutoDiscoverResponse(Ljavax/net/ssl/HttpsURLConnection;)Lorg/apache/http/client/methods/HttpPost;

    .line 1997
    :cond_d
    :goto_d
    return-void

    .line 1914
    :cond_e
    const/16 v1, 0x1c3

    if-ne v0, v1, :cond_36

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/exchange/EasSyncService;->getRedirect(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 1918
    if-eqz v0, :cond_d

    .line 1920
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting autodiscover to redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1924
    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart2(Ljava/lang/String;)V

    goto :goto_d

    .line 1932
    :cond_36
    const/16 v1, 0x12e

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_7c

    .line 1936
    :cond_3e
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1938
    if-nez v0, :cond_4e

    .line 1940
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No location header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_4e
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_64

    .line 1944
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Same location from prev"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1946
    :cond_64
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_78

    .line 1948
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Prefer to html page"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1952
    :cond_78
    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart2(Ljava/lang/String;)V

    goto :goto_d

    .line 1961
    :cond_7c
    const/16 v1, 0x191

    if-ne v0, v1, :cond_c1

    .line 1963
    if-eqz p2, :cond_ba

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1967
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1969
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1971
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 1973
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "401 received; trying username: "

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1977
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart2(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1983
    :cond_ba
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 1991
    :cond_c1
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", throwing IOException"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1993
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private pushFallback(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 7420
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 7422
    if-nez v1, :cond_a

    .line 7448
    :goto_9
    return-void

    .line 7428
    :cond_a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7430
    const/16 v0, 0x19

    .line 7432
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_16

    .line 7434
    const/4 v0, 0x5

    .line 7438
    :cond_16
    const-string v3, "syncInterval"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7440
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** PING ERROR LOOP: Set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 7446
    const-string v0, "push fallback"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private runPingLoop()V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 7511
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 7512
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "runPingLoop"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0x1b7740

    add-long v17, v3, v7

    .line 7515
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 7516
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 7517
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 7518
    const/4 v5, 0x0

    .line 7519
    const-wide/16 v3, -0x1

    move-wide v9, v3

    move v11, v5

    move v12, v6

    .line 7521
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v17

    if-gez v3, :cond_5f1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v3, :cond_5f1

    .line 7523
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 7525
    const/16 v16, 0x0

    .line 7527
    const/4 v15, 0x0

    .line 7529
    const/4 v14, 0x0

    .line 7532
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 7533
    sget-object v3, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_137

    sget-object v3, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v13, v3

    .line 7536
    :goto_7a
    new-instance v23, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 7537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7540
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 7541
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 7542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/EasRefs;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 7544
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_d3

    .line 7545
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v9

    .line 7549
    :cond_d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    move v6, v14

    move v5, v15

    move/from16 v4, v16

    .line 7553
    :goto_df
    :try_start_df
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1cb

    .line 7554
    add-int/lit8 v7, v4, 0x1

    .line 7559
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 7560
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 7561
    invoke-static {v14, v15}, Lcom/android/exchange/ExchangeService;->pingStatus(J)I

    move-result v4

    .line 7562
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7563
    if-nez v4, :cond_1a2

    .line 7564
    const/4 v4, 0x7

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 7567
    const/4 v4, 0x5

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 7570
    if-eqz v15, :cond_110

    const-string v4, "0"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    :cond_110
    const/4 v4, 0x1

    .line 7572
    :goto_111
    if-eqz v4, :cond_114

    .line 7573
    const/4 v3, 0x1

    .line 7576
    :cond_114
    if-nez v4, :cond_130

    if-nez v3, :cond_13d

    const/16 v4, 0x42

    move/from16 v0, v26

    if-eq v0, v4, :cond_130

    const/16 v4, 0x41

    move/from16 v0, v26

    if-eq v0, v4, :cond_130

    const/16 v4, 0x43

    move/from16 v0, v26

    if-eq v0, v4, :cond_130

    const/16 v4, 0x45

    move/from16 v0, v26

    if-ne v0, v4, :cond_13d

    .line 7584
    :cond_130
    add-int/lit8 v7, v7, -0x1

    .line 7585
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    .line 7586
    goto :goto_df

    .line 7533
    :cond_137
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_7a

    .line 7570
    :cond_13b
    const/4 v4, 0x0

    goto :goto_111

    .line 7589
    :cond_13d
    add-int/lit8 v4, v5, 0x1

    if-nez v5, :cond_141

    .line 7599
    :cond_141
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 7603
    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 7604
    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x800

    move/from16 v27, v0

    if-nez v27, :cond_16f

    move v5, v4

    move v4, v7

    .line 7606
    goto/16 :goto_df

    .line 7610
    :cond_16f
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v5, v28, v29

    const/4 v5, 0x1

    aput-object v15, v28, v5

    const/4 v5, 0x2

    aput-object v16, v28, v5

    const/4 v5, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v28, v5

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7621
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19e
    move v5, v4

    move v4, v7

    .line 7630
    goto/16 :goto_df

    .line 7622
    :cond_1a2
    const/4 v15, 0x1

    if-eq v4, v15, :cond_1a8

    const/4 v15, 0x2

    if-ne v4, v15, :cond_1af

    .line 7624
    :cond_1a8
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_19e

    .line 7625
    :cond_1af
    const/4 v15, 0x3

    if-ne v4, v15, :cond_5ff

    .line 7626
    add-int/lit8 v4, v7, -0x1

    .line 7627
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v7, v15

    const/4 v14, 0x1

    const-string v15, " in error state; ignore"

    aput-object v15, v7, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1c4
    .catchall {:try_start_df .. :try_end_1c4} :catchall_1c6

    goto/16 :goto_df

    .line 7632
    :catchall_1c6
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1cb
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7634
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_21e

    .line 7635
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f8

    .line 7636
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ping not ready for: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7638
    :cond_1f8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21e

    .line 7639
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ping ready for: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7645
    :cond_21e
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_253

    const/4 v3, 0x5

    if-le v11, v3, :cond_253

    const/4 v8, 0x1

    .line 7646
    :goto_228
    if-lez v5, :cond_581

    if-eq v5, v4, :cond_22e

    if-eqz v8, :cond_581

    .line 7650
    :cond_22e
    const/4 v3, 0x0

    .line 7651
    const-wide/high16 v4, 0x402c

    cmpg-double v4, v24, v4

    if-gez v4, :cond_255

    move-object/from16 v3, p0

    move-object/from16 v4, v23

    move-object/from16 v5, v22

    move v6, v12

    move v7, v13

    .line 7652
    invoke-virtual/range {v3 .. v8}, Lcom/android/exchange/EasSyncService;->createPingRequest(Lcom/android/exchange/adapter/Serializer;Ljava/util/HashMap;IIZ)Z

    move-result v3

    .line 7659
    :goto_241
    const/4 v11, 0x0

    .line 7660
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 7661
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 7663
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v4, :cond_25f

    .line 7939
    :cond_252
    :goto_252
    return-void

    .line 7645
    :cond_253
    const/4 v8, 0x0

    goto :goto_228

    .line 7655
    :cond_255
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/exchange/EasSyncService;->createSyncHBIRequest(Lcom/android/exchange/adapter/Serializer;Ljava/util/HashMap;I)V

    goto :goto_241

    .line 7665
    :cond_25f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 7668
    if-eqz v8, :cond_272

    .line 7669
    const/4 v4, 0x1

    :try_start_266
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Forcing ping after waiting for all boxes to be ready"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7673
    :cond_272
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_2fa

    if-nez v3, :cond_2fa

    .line 7674
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "runPingLoop:Wbxml"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7675
    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    .line 7676
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7677
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 7678
    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 7692
    :cond_298
    :goto_298
    const-wide/high16 v4, 0x402c

    cmpg-double v4, v24, v4

    if-gez v4, :cond_364

    .line 7693
    if-eqz v3, :cond_350

    .line 7694
    const/4 v4, 0x0

    if-eqz v8, :cond_34d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    :goto_2a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 7706
    :goto_2ad
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2b0
    .catch Ljava/net/SocketTimeoutException; {:try_start_266 .. :try_end_2b0} :catch_2e9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_266 .. :try_end_2b0} :catch_319
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_2b0} :catch_40c

    move-result-object v4

    .line 7708
    :try_start_2b1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 7709
    const-string v3, "Ping response: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 7716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_2cf

    .line 7717
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 7725
    :cond_2cf
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v3, :cond_37c

    .line 7727
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Stopping pingLoop"

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2e2
    .catchall {:try_start_2b1 .. :try_end_2e2} :catchall_405

    .line 7802
    if-eqz v4, :cond_252

    .line 7803
    :try_start_2e4
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_2e4 .. :try_end_2e7} :catch_2e9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2e4 .. :try_end_2e7} :catch_319
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2e7} :catch_40c

    goto/16 :goto_252

    .line 7806
    :catch_2e9
    move-exception v3

    move v3, v12

    .line 7807
    :goto_2eb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v5, " [runPingLoop] SocketTimeOutException Caught...simply reissue ping"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f4
    :goto_2f4
    move v4, v3

    move v3, v11

    :goto_2f6
    move v11, v3

    move v12, v4

    .line 7936
    goto/16 :goto_2f

    .line 7679
    :cond_2fa
    :try_start_2fa
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_298

    .line 7680
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "runPingLoop:Wbxml"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7681
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Sticky ping Request"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_318
    .catch Ljava/net/SocketTimeoutException; {:try_start_2fa .. :try_end_318} :catch_2e9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2fa .. :try_end_318} :catch_319
    .catch Ljava/io/IOException; {:try_start_2fa .. :try_end_318} :catch_40c

    goto :goto_298

    .line 7810
    :catch_319
    move-exception v3

    move-object v4, v3

    move v3, v12

    .line 7812
    :goto_31c
    iget v5, v4, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 7813
    invoke-static {v5}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isServerError(I)Z

    move-result v6

    if-eqz v6, :cond_4db

    .line 7814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [runPingLoop] Sync with HBI Got Server error Status: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 7815
    const-string v4, " [runPingLoop] Ping loop sleeping for 5m"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 7816
    const-wide/32 v4, 0x493e0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    goto :goto_2f4

    :cond_34d
    move v3, v12

    .line 7694
    goto/16 :goto_2a7

    .line 7696
    :cond_350
    :try_start_350
    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    if-eqz v8, :cond_362

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    :goto_35a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lorg/apache/http/HttpResponse;

    move-result-object v3

    goto/16 :goto_2ad

    :cond_362
    move v3, v12

    goto :goto_35a

    .line 7701
    :cond_364
    const-string v3, "Sync"

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v23 .. v23}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v5, v12, 0x5

    mul-int/lit16 v5, v5, 0x3e8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;IZ)Lorg/apache/http/HttpResponse;
    :try_end_379
    .catch Ljava/net/SocketTimeoutException; {:try_start_350 .. :try_end_379} :catch_2e9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_350 .. :try_end_379} :catch_319
    .catch Ljava/io/IOException; {:try_start_350 .. :try_end_379} :catch_40c

    move-result-object v3

    goto/16 :goto_2ad

    .line 7732
    :cond_37c
    const/4 v3, -0x1

    .line 7733
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_45f

    .line 7737
    :try_start_381
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V

    .line 7739
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    long-to-int v5, v5

    .line 7742
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->getHttpInputStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v6

    .line 7744
    if-eqz v5, :cond_446

    .line 7747
    const-wide/high16 v15, 0x402c

    cmpg-double v7, v24, v15

    if-gez v7, :cond_3ff

    .line 7748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v3, v1}, Lcom/android/exchange/EasSyncService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v3

    .line 7762
    :cond_3a7
    :goto_3a7
    const-wide/high16 v6, 0x402c

    cmpg-double v6, v24, v6

    if-gez v6, :cond_3b4

    if-eqz v5, :cond_3b4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3b4

    if-eqz v8, :cond_3be

    :cond_3b4
    const-wide/high16 v6, 0x402c

    cmpl-double v3, v24, v6

    if-ltz v3, :cond_3f4

    if-nez v5, :cond_3f4

    if-nez v8, :cond_3f4

    .line 7766
    :cond_3be
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    if-le v12, v3, :cond_3d3

    .line 7767
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 7768
    const-string v3, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 7770
    :cond_3d3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-ge v12, v3, :cond_3f4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    if-nez v3, :cond_3f4

    .line 7771
    add-int/lit16 v12, v12, 0xb4

    .line 7772
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v12, v3, :cond_3eb

    .line 7773
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 7775
    :cond_3eb
    const-string v3, "Increase ping heartbeat to "

    const-string v5, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3f4
    .catchall {:try_start_381 .. :try_end_3f4} :catchall_405

    :cond_3f4
    move v3, v12

    .line 7802
    :goto_3f5
    if-eqz v4, :cond_2f4

    .line 7803
    :try_start_3f7
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3fa
    .catch Ljava/net/SocketTimeoutException; {:try_start_3f7 .. :try_end_3fa} :catch_3fc
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3f7 .. :try_end_3fa} :catch_5fc
    .catch Ljava/io/IOException; {:try_start_3f7 .. :try_end_3fa} :catch_5f7

    goto/16 :goto_2f4

    .line 7806
    :catch_3fc
    move-exception v4

    goto/16 :goto_2eb

    .line 7750
    :cond_3ff
    :try_start_3ff
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/EasSyncService;->parseSyncWithHBIResult(Ljava/io/InputStream;)V
    :try_end_404
    .catchall {:try_start_3ff .. :try_end_404} :catchall_405

    goto :goto_3a7

    .line 7802
    :catchall_405
    move-exception v3

    if-eqz v4, :cond_40b

    .line 7803
    :try_start_408
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 7802
    :cond_40b
    throw v3
    :try_end_40c
    .catch Ljava/net/SocketTimeoutException; {:try_start_408 .. :try_end_40c} :catch_2e9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_408 .. :try_end_40c} :catch_319
    .catch Ljava/io/IOException; {:try_start_408 .. :try_end_40c} :catch_40c

    .line 7823
    :catch_40c
    move-exception v3

    move-object v7, v3

    move v6, v12

    .line 7824
    :goto_40f
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 7829
    if-eqz v5, :cond_4fc

    const/4 v3, 0x1

    .line 7830
    :goto_416
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException runPingLoop: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v3, :cond_4ff

    move-object v4, v5

    :goto_428
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7833
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v12, v15, v13

    .line 7834
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    if-eqz v4, :cond_503

    move v3, v6

    goto/16 :goto_2f4

    .line 7753
    :cond_446
    const-wide/high16 v6, 0x402c

    cmpg-double v6, v24, v6

    if-gez v6, :cond_3a7

    .line 7754
    const/4 v3, 0x1

    :try_start_44d
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Ping returned empty result; throwing IOException"

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7755
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 7780
    :cond_45f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_48a

    .line 7781
    const-string v3, "AT&T TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try Provisioin for Ping isProvisionError code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7783
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 7784
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 7785
    :cond_48a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_4bc

    .line 7786
    const-string v3, "AT&T TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mExitStatus = EXIT_LOGIN_FAILURE for Ping isAuthError code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7789
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 7790
    const-string v3, "Authorization error during Ping: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 7791
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 7794
    :cond_4bc
    const/16 v3, 0x1f4

    if-eq v5, v3, :cond_4c8

    const/16 v3, 0x1f7

    if-eq v5, v3, :cond_4c8

    const/16 v3, 0x1f8

    if-ne v5, v3, :cond_4d8

    .line 7797
    :cond_4c8
    const-string v3, " [runPingLoop] Ping loop sleeping for 5m"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 7798
    const-wide/32 v5, 0x493e0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v3}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V
    :try_end_4d8
    .catchall {:try_start_44d .. :try_end_4d8} :catchall_405

    :cond_4d8
    move v3, v12

    goto/16 :goto_3f5

    .line 7817
    :cond_4db
    invoke-static {v5}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v6

    if-eqz v6, :cond_4fb

    .line 7818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [runPingLoop] Sync with HBI Got transient error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_2f4

    .line 7820
    :cond_4fb
    throw v4

    .line 7829
    :cond_4fc
    const/4 v3, 0x0

    goto/16 :goto_416

    .line 7830
    :cond_4ff
    const-string v4, "[no message]"

    goto/16 :goto_428

    .line 7838
    :cond_503
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-nez v4, :cond_511

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13, v6}, Lcom/android/exchange/EasSyncService;->isLikelyNatFailure(Ljava/lang/String;JI)Z

    move-result v4

    if-eqz v4, :cond_573

    .line 7847
    :cond_511
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-le v6, v3, :cond_539

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    if-le v6, v3, :cond_539

    .line 7849
    add-int/lit16 v3, v6, -0xb4

    .line 7850
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 7851
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v3, v4, :cond_52e

    .line 7852
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 7854
    :cond_52e
    const-string v4, "Decreased ping heartbeat to "

    const-string v5, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2f4

    .line 7855
    :cond_539
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v3, :cond_54f

    .line 7864
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Ping aborted; retry"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v3, v6

    goto/16 :goto_2f4

    .line 7865
    :cond_54f
    const-wide/16 v3, 0x7d0

    cmp-long v3, v12, v3

    if-gez v3, :cond_563

    .line 7866
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7867
    throw v7

    .line 7869
    :cond_563
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAT type IOException"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v3, v6

    goto/16 :goto_2f4

    .line 7871
    :cond_573
    if-eqz v3, :cond_580

    const-string v3, "roken pipe"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_580

    move v3, v6

    goto/16 :goto_2f4

    .line 7878
    :cond_580
    throw v7

    .line 7901
    :cond_581
    if-eqz v8, :cond_59d

    .line 7905
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pingLoop waiting 60s for any pingable boxes"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7906
    const-wide/32 v3, 0xea60

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v3, v11

    move v4, v12

    goto/16 :goto_2f6

    .line 7907
    :cond_59d
    if-lez v4, :cond_5ad

    .line 7911
    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 7912
    add-int/lit8 v11, v11, 0x1

    move v3, v11

    move v4, v12

    goto/16 :goto_2f6

    .line 7915
    :cond_5ad
    if-lez v6, :cond_5c4

    .line 7921
    const-string v3, "pingLoop waiting for initial sync of "

    const-string v4, " box(es)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 7922
    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v3, v11

    move v4, v12

    goto/16 :goto_2f6

    .line 7923
    :cond_5c4
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_5d7

    .line 7926
    const-wide/32 v3, 0xafc8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v3, v11

    move v4, v12

    goto/16 :goto_2f6

    .line 7933
    :cond_5d7
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Account mailbox sleeping for 20m"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7934
    const-wide/32 v3, 0x124f80

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v3, v11

    move v4, v12

    goto/16 :goto_2f6

    .line 7938
    :cond_5f1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    goto/16 :goto_252

    .line 7823
    :catch_5f7
    move-exception v4

    move-object v7, v4

    move v6, v3

    goto/16 :goto_40f

    .line 7810
    :catch_5fc
    move-exception v4

    goto/16 :goto_31c

    :cond_5ff
    move v4, v5

    goto/16 :goto_19e
.end method

.method public static searchDocument(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2997
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 3000
    new-instance v0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    .line 3001
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 3002
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 3003
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    .line 3004
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->total:I

    .line 3006
    if-eqz v2, :cond_aa

    .line 3008
    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 3010
    if-eqz v3, :cond_121

    .line 3012
    new-instance v4, Lcom/android/exchange/EasSyncService;

    const-string v1, "%EmailDocSearch%"

    invoke-direct {v4, v1}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 3016
    :try_start_27
    sput-object p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 3018
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 3020
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 3022
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 3024
    iget v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_ab

    const/4 v1, 0x1

    :goto_3c
    iput-boolean v1, v4, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 3026
    iget v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_ad

    const/4 v1, 0x1

    :goto_45
    iput-boolean v1, v4, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 3028
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 3030
    iput-object v2, v4, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3032
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    iput-object v1, v4, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 3034
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchDocument: mailboxID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v4, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3036
    invoke-static {p0, v2, p7}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->buildEasDocSearchRequest(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    .line 3041
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Doc Search "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v4, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3043
    const-string v2, "Search"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3045
    if-nez v1, :cond_af

    .line 3048
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "searchDocument: sendHttpClientPost returns null"

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3118
    :cond_aa
    :goto_aa
    return-object v0

    .line 3024
    :cond_ab
    const/4 v1, 0x0

    goto :goto_3c

    .line 3026
    :cond_ad
    const/4 v1, 0x0

    goto :goto_45

    .line 3053
    :cond_af
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 3055
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_104

    .line 3059
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/exchange/EasSyncService;->getHttpInputStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 3061
    if-nez v2, :cond_da

    .line 3063
    const-string v1, "ExchangeService"

    const-string v2, "searchDocument http response has no content"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->result:I
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_cf} :catch_d0

    goto :goto_aa

    .line 3103
    :catch_d0
    move-exception v1

    .line 3107
    const-string v2, "EasSyncService"

    invoke-virtual {v4, v2, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3108
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_aa

    .line 3072
    :cond_da
    const/4 v1, 0x0

    .line 3074
    if-eqz v2, :cond_f5

    .line 3076
    :try_start_dd
    new-instance v1, Lcom/android/exchange/adapter/EasDocSearchParser;

    new-instance v3, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v1, v2, v3}, Lcom/android/exchange/adapter/EasDocSearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 3079
    invoke-virtual {v1, p5, p6}, Lcom/android/exchange/adapter/EasDocSearchParser;->setFoldId(J)V

    .line 3083
    const-string v2, "ExchangeService"

    const-string v3, "searchDocument - parsing response"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    invoke-virtual {v1}, Lcom/android/exchange/adapter/EasDocSearchParser;->parse_doc_response()Lcom/android/exchange/provider/EmailResult;

    move-result-object v1

    .line 3091
    :cond_f5
    const-wide/16 v2, 0x7d0

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 3093
    const-string v2, "ExchangeService"

    const-string v3, "searchDocument - parsing done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3095
    goto :goto_aa

    .line 3099
    :cond_104
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search Email returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_120} :catch_d0

    goto :goto_aa

    .line 3111
    :cond_121
    const-string v1, "searchDocument: ha is null"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 3112
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_aa
.end method

.method public static searchEmail(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2729
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 2733
    if-eqz v1, :cond_e5

    .line 2735
    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 2737
    new-instance v3, Lcom/android/exchange/EasSyncService;

    const-string v0, "%EmailSearch%"

    invoke-direct {v3, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 2741
    :try_start_13
    sput-object p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 2743
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 2745
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2747
    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2749
    iget v0, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    :goto_28
    iput-boolean v0, v3, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 2751
    iget v0, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    :goto_31
    iput-boolean v0, v3, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 2753
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 2755
    iput-object v1, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 2757
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 2759
    const-string v0, "EasSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fzhang search mailboxID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    invoke-static {p0, v1, p7}, Lcom/android/exchange/adapter/EasEmailSearchAdapter;->buildEasEmailSearchRequest(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/exchange/SearchRequest;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 2767
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Email Search "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2769
    const-string v2, "Search"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2771
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 2773
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 2775
    new-instance v4, Lcom/android/exchange/adapter/EasEmailSearchParser;

    new-instance v5, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v5, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v4, v0, v5}, Lcom/android/exchange/adapter/EasEmailSearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 2777
    invoke-virtual {v4, p5, p6}, Lcom/android/exchange/adapter/EasEmailSearchParser;->setFoldId(J)V

    .line 2781
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_b1

    .line 2783
    invoke-virtual {v4}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parse_email_response()Lcom/android/exchange/provider/EmailResult;

    move-result-object v0

    .line 2831
    :goto_ab
    return-object v0

    .line 2749
    :cond_ac
    const/4 v0, 0x0

    goto/16 :goto_28

    .line 2751
    :cond_af
    const/4 v0, 0x0

    goto :goto_31

    .line 2789
    :cond_b1
    const-string v0, "EasSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fzhang search response is not mormal, return code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search Email returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v3, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_e5
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_13 .. :try_end_e5} :catch_f8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_e5} :catch_10a

    .line 2821
    :cond_e5
    :goto_e5
    new-instance v0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    .line 2823
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 2825
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 2827
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    .line 2829
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/provider/EmailResult;->total:I

    goto :goto_ab

    .line 2797
    :catch_f8
    move-exception v0

    .line 2799
    new-instance v0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    .line 2801
    const/16 v2, 0xd

    iput v2, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 2803
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v3, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    goto :goto_ab

    .line 2807
    :catch_10a
    move-exception v0

    .line 2811
    const-string v1, "EasSyncService"

    const-string v2, "fzhang search fail "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EasSyncService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_e5
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;II)Lcom/android/exchange/provider/GalResult;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3276
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 3277
    if-nez v3, :cond_1e7

    .line 3280
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    move-object v4, v3

    .line 3282
    :goto_e
    if-eqz v4, :cond_16

    .line 3284
    iget v3, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_17

    .line 3401
    :cond_16
    :goto_16
    return-object v0

    .line 3287
    :cond_17
    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    .line 3288
    new-instance v6, Lcom/android/exchange/EasSyncService;

    const-string v3, "%GalLookupk%"

    invoke-direct {v6, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 3293
    :try_start_24
    iget-object v3, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_1bb
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_26} :catch_19c

    .line 3294
    if-nez v3, :cond_2c

    .line 3397
    :cond_28
    :goto_28
    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    goto :goto_16

    .line 3297
    :cond_2c
    :try_start_2c
    iput-object v3, v6, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 3298
    invoke-static {v3}, Lcom/android/emailcommon/EasRefs;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v6, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 3300
    sput-object p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 3301
    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 3302
    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 3303
    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 3304
    iget v3, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_161

    move v3, v1

    :goto_49
    iput-boolean v3, v6, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 3305
    iget v3, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_164

    :goto_51
    iput-boolean v1, v6, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 3306
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 3307
    iput-object v4, v6, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3309
    sget-wide v1, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_GALSEARCH:J

    iput-wide v1, v6, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 3311
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3312
    const/16 v2, 0x3c5

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x3c7

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3313
    const/16 v2, 0x3c8

    const-string v3, "GAL"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x3c9

    invoke-virtual {v2, v3, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3314
    const/16 v2, 0x3ca

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3320
    if-ltz p4, :cond_8f

    iget-object v2, v6, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v7, 0x4028

    cmpg-double v2, v2, v7

    if-gez v2, :cond_167

    .line 3322
    :cond_8f
    const/16 v2, 0x3cb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, p5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3332
    :goto_ad
    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_d4

    .line 3333
    const/16 v2, 0x3e1

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3334
    const/16 v2, 0x3e2

    const-string v3, "102400"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3337
    const/16 v2, 0x3e3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3338
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3341
    :cond_d4
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3345
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v2, :cond_103

    .line 3346
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "searchGal(): Wbxml:"

    aput-object v4, v2, v3

    invoke-virtual {v6, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    .line 3348
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3349
    new-instance v2, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v2, v6}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 3350
    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 3353
    :cond_103
    const-string v2, "Search"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 3354
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_110
    .catchall {:try_start_2c .. :try_end_110} :catchall_1bb
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_110} :catch_19c

    move-result-object v2

    .line 3356
    :try_start_111
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 3359
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_139

    .line 3360
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchGal() Search command response code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3364
    :cond_139
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1c0

    .line 3367
    const/4 v1, 0x0

    iput v1, v6, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 3369
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_143
    .catchall {:try_start_111 .. :try_end_143} :catchall_195

    move-result-object v3

    .line 3371
    :try_start_144
    new-instance v1, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {v1, v3, v6}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 3372
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result v4

    if-eqz v4, :cond_1e3

    .line 3375
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;
    :try_end_152
    .catchall {:try_start_144 .. :try_end_152} :catchall_190

    move-result-object v1

    .line 3381
    :try_start_153
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_195

    .line 3387
    if-eqz v2, :cond_15b

    .line 3388
    :try_start_158
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_1bb
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15b} :catch_19c

    .line 3397
    :cond_15b
    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    move-object v0, v1

    .line 3375
    goto/16 :goto_16

    :cond_161
    move v3, v2

    .line 3304
    goto/16 :goto_49

    :cond_164
    move v1, v2

    .line 3305
    goto/16 :goto_51

    .line 3325
    :cond_167
    const/16 v2, 0x3cb

    :try_start_169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, p5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_18d
    .catchall {:try_start_169 .. :try_end_18d} :catchall_1bb
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_18d} :catch_19c

    .line 3327
    sub-int/2addr p5, p4

    goto/16 :goto_ad

    .line 3381
    :catchall_190
    move-exception v1

    :try_start_191
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_195
    .catchall {:try_start_191 .. :try_end_195} :catchall_195

    .line 3387
    :catchall_195
    move-exception v1

    if-eqz v2, :cond_19b

    .line 3388
    :try_start_198
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 3387
    :cond_19b
    throw v1
    :try_end_19c
    .catchall {:try_start_198 .. :try_end_19c} :catchall_1bb
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19c} :catch_19c

    .line 3391
    :catch_19c
    move-exception v1

    .line 3393
    const/4 v2, 0x1

    :try_start_19e
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GAL lookup exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v6, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1b9
    .catchall {:try_start_19e .. :try_end_1b9} :catchall_1bb

    goto/16 :goto_28

    .line 3397
    :catchall_1bb
    move-exception v0

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    throw v0

    .line 3384
    :cond_1c0
    const/4 v3, 0x1

    :try_start_1c1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GAL lookup returned "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v6, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1c1 .. :try_end_1dc} :catchall_195

    .line 3387
    :goto_1dc
    if-eqz v2, :cond_28

    .line 3388
    :try_start_1de
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1e1
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_1bb
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e1} :catch_19c

    goto/16 :goto_28

    .line 3381
    :cond_1e3
    :try_start_1e3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e6
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_195

    goto :goto_1dc

    :cond_1e7
    move-object v4, v3

    goto/16 :goto_e
.end method

.method private sendBroadcastSyncCompleted(Landroid/content/Context;J)V
    .registers 10
    .parameter "mContext"
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 10657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10658
    .local v0, tIntent:Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10659
    const-string v1, "id_array"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 10660
    const-string v1, "intentType"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10661
    const-string v1, "status"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10662
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10663
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "sendBroadcastSyncCompleted(): send intent to SocialHub "

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10664
    return-void
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 4663
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 4665
    if-nez v1, :cond_b

    .line 4791
    :cond_a
    :goto_a
    return-void

    .line 4677
    :cond_b
    const-string v0, "ORGMAIL"

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 4681
    array-length v2, v0

    if-ne v2, v9, :cond_a

    .line 4685
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4687
    const-string v2, "DTSTAMP"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4689
    const-string v3, "DTSTART"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4691
    const-string v4, "DTEND"

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4699
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4701
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 4705
    const-string v7, "DTSTAMP"

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4709
    const-string v2, "dtstart"

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4711
    const-string v2, "dtend"

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4713
    const-string v2, "eventLocation"

    const-string v3, "LOC"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    const-string v2, "title"

    const-string v3, "TITLE"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4717
    const-string v2, "organizer"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4721
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4723
    const-string v3, "attendeeRelationship"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4725
    const-string v3, "attendeeEmail"

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4727
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 4731
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4733
    const-string v3, "attendeeRelationship"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4735
    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4737
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 4753
    and-int/lit8 v0, p2, 0x3

    packed-switch v0, :pswitch_data_d6

    .line 4771
    :pswitch_b3
    const/16 v0, 0x100

    .line 4777
    :goto_b5
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v3, "UID"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v6, v0, v1, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 4785
    if-eqz v0, :cond_a

    .line 4787
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_a

    .line 4757
    :pswitch_d0
    const/16 v0, 0x40

    .line 4759
    goto :goto_b5

    .line 4763
    :pswitch_d3
    const/16 v0, 0x80

    .line 4765
    goto :goto_b5

    .line 4753
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_b3
        :pswitch_d3
    .end packed-switch
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 14
    .parameter "msg"
    .parameter "draft"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    .line 4569
    invoke-virtual {p0, p1, p3}, Lcom/android/exchange/EasSyncService;->createResponseEntity(Lcom/android/emailcommon/provider/EmailContent$Message;I)Landroid/content/Entity;

    move-result-object v2

    .line 4571
    .local v2, entity:Landroid/content/Entity;
    new-instance v9, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 4575
    .local v9, meetingInfo:Lcom/android/emailcommon/mail/PackedString;
    and-int/lit8 v0, p3, 0x3

    packed-switch v0, :pswitch_data_8c

    .line 4593
    :pswitch_11
    const/16 v3, 0x100

    .line 4599
    .local v3, flag:I
    :goto_13
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    .line 4601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 4605
    :cond_1e
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v7

    .line 4606
    .local v7, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v7, :cond_4d

    .line 4607
    const/4 v8, 0x0

    .local v8, i:I
    :goto_29
    array-length v0, v7

    if-ge v8, v0, :cond_4d

    .line 4609
    aget-object v0, v7, v8

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 4611
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v0, :cond_3d

    .line 4613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 4617
    :cond_3d
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    aget-object v1, v7, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4607
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 4579
    .end local v3           #flag:I
    .end local v7           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v8           #i:I
    :pswitch_47
    const/16 v3, 0x40

    .line 4581
    .restart local v3       #flag:I
    goto :goto_13

    .line 4585
    .end local v3           #flag:I
    :pswitch_4a
    const/16 v3, 0x80

    .line 4587
    .restart local v3       #flag:I
    goto :goto_13

    .line 4622
    .restart local v7       #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_4d
    if-eqz v2, :cond_5d

    .line 4623
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v1, "UID"

    invoke-virtual {v9, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->updateMessageForEntity(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 4636
    :cond_5d
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 4638
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 4640
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v4, v5, p2}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 4642
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4647
    return-void

    .line 4575
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_47
        :pswitch_11
        :pswitch_4a
    .end packed-switch
.end method

.method private setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1368
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1370
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Server supports versions: "

    aput-object v2, v1, v0

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1372
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1374
    const/4 v1, 0x0

    .line 1378
    array-length v5, v4

    move v2, v0

    move-object v0, v1

    :goto_1c
    if-ge v2, v5, :cond_4d

    aget-object v1, v4, v2

    .line 1380
    const-string v6, "2.5"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "12.0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "12.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "14.0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "14.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    :cond_48
    move-object v0, v1

    .line 1378
    :cond_49
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c

    .line 1408
    :cond_4d
    if-nez v0, :cond_6f

    .line 1410
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No supported EAS versions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 1416
    :cond_6f
    iput-object v0, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 1418
    invoke-static {v0}, Lcom/android/emailcommon/EasRefs;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 1420
    iget-object v1, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_7f

    .line 1422
    iget-object v1, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 1430
    :cond_7f
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    .line 1451
    return-void
.end method

.method private shutdownConnectionManager()V
    .registers 2

    .prologue
    .line 5377
    sget-object v0, Lcom/android/exchange/ExchangeService;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_b

    .line 5385
    invoke-static {}, Lcom/android/exchange/ExchangeService;->newClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 5387
    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->mClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 5389
    return-void
.end method

.method private shutdownConnectionManagerForLoadMore()V
    .registers 3

    .prologue
    .line 5395
    sget-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_12

    .line 5397
    const-string v0, "Email"

    const-string v1, "shutdownConnectionManagerForLoadMore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getClientConnectionManagerForLoadMore()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 5403
    :cond_12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ExchangeService;->lmClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 5405
    return-void
.end method

.method private sleep(JZ)V
    .registers 8
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 8258
    if-eqz p3, :cond_a

    .line 8260
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 8266
    :cond_a
    :try_start_a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_1e

    .line 8276
    if-eqz p3, :cond_14

    .line 8278
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    :goto_11
    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 8284
    :cond_14
    return-void

    .line 8276
    :catchall_15
    move-exception v0

    if-eqz p3, :cond_1d

    .line 8278
    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 8276
    :cond_1d
    throw v0

    .line 8268
    :catch_1e
    move-exception v0

    .line 8276
    if-eqz p3, :cond_14

    .line 8278
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    goto :goto_11
.end method

.method private stopSelf()V
    .registers 1

    .prologue
    .line 6318
    return-void
.end method

.method private tryProvision()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6336
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v3

    .line 6337
    if-eqz v3, :cond_12f

    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 6340
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 6344
    if-eqz v0, :cond_1c

    .line 6345
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/android/emailcommon/service/PolicySet;->writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 6346
    :cond_1c
    sget-object v4, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Lcom/android/exchange/SecurityPolicyDelegate;->updatePolicies(Landroid/content/Context;J)V

    .line 6348
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 6350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Remote Wipe got from Provision Parser"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6353
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_6e

    .line 6354
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 6356
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 6358
    :cond_6e
    sput-boolean v2, Lcom/android/exchange/EasSyncService;->flagRemoteWipe:Z

    .line 6360
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v4, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 6363
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 6368
    :try_start_7e
    const-string v0, "!!! Acknowledging remote wipe to server"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 6369
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v0

    .line 6370
    if-eqz v0, :cond_98

    :goto_89
    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8c} :catch_9b

    .line 6382
    :goto_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->formatExtStorage()I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_a4

    move-result v0

    .line 6388
    :goto_90
    packed-switch v0, :pswitch_data_15c

    .line 6397
    :pswitch_93
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->performWipe()V

    :pswitch_96
    move v0, v1

    .line 6443
    :goto_97
    return v0

    .line 6370
    :cond_98
    :try_start_98
    const-string v0, ""
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9a} :catch_9b

    goto :goto_89

    .line 6371
    :catch_9b
    move-exception v0

    .line 6375
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "acknowledgeRemoteWipe exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 6383
    :catch_a4
    move-exception v0

    .line 6384
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "Exception is caughted. formatExtStorage() "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6386
    const/4 v0, 0x5

    goto :goto_90

    .line 6401
    :cond_b1
    sget-object v4, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v4

    if-eqz v4, :cond_123

    .line 6405
    invoke-virtual {v3}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicyKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-direct {p0, v3, v4}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6406
    if-eqz v3, :cond_12c

    .line 6409
    if-eqz v0, :cond_ce

    .line 6410
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v4, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/emailcommon/service/PolicySet;->writeAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;ZLandroid/content/Context;)Z

    .line 6412
    :cond_ce
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 6416
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/SecurityPolicyDelegate;->reducePolicies(Landroid/content/Context;)V

    .line 6418
    if-eqz v0, :cond_11b

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11b

    .line 6421
    :try_start_e8
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 6422
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v0

    .line 6424
    new-instance v1, Lcom/android/exchange/PasswordRecoveryService;

    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v1, v3, v4, v0}, Lcom/android/exchange/PasswordRecoveryService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)V

    .line 6426
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(PasswordRecovery)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6428
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_11b} :catch_11e

    :cond_11b
    :goto_11b
    move v0, v2

    .line 6433
    goto/16 :goto_97

    .line 6429
    :catch_11e
    move-exception v0

    .line 6430
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11b

    .line 6437
    :cond_123
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    :cond_12c
    :goto_12c
    move v0, v1

    .line 6443
    goto/16 :goto_97

    .line 6441
    :cond_12f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pp is null. Or, has unsupported policies. CANNOT PROVISION"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 6388
    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_96
        :pswitch_93
        :pswitch_96
        :pswitch_93
        :pswitch_96
    .end packed-switch
.end method


# virtual methods
.method public abortPendingPost([JJJ)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1119
    const-string v0, "abortPendingPost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start. accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    if-eqz p1, :cond_1d

    array-length v0, p1

    if-gtz v0, :cond_25

    .line 1122
    :cond_1d
    const-string v0, "abortPendingPost"

    const-string v1, "do nothing. messageIds == null || messageIds.length <=0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_24
    return-void

    .line 1125
    :cond_25
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1126
    :try_start_2a
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_c1

    .line 1127
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_9f

    .line 1129
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1130
    instance-of v2, p0, Lcom/android/exchange/EasOutboxService;

    if-eqz v2, :cond_9f

    .line 1132
    const-string v2, "Cmd=SendMail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "Cmd=SmartReply"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "Cmd=SmartForward"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1134
    :cond_56
    const-string v0, "abortPendingPost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset, aborting sendMessage. for thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_2a .. :try_end_74} :catchall_a1

    .line 1137
    :try_start_74
    array-length v2, p1

    const/4 v0, 0x0

    :goto_76
    if-ge v0, v2, :cond_9f

    aget-wide v3, p1, v0

    .line 1138
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_a4

    .line 1139
    const-string v0, "abortPendingPost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abort for mPendingMessageId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_9f
    .catchall {:try_start_74 .. :try_end_9f} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_9f} :catch_a7

    .line 1155
    :cond_9f
    :goto_9f
    :try_start_9f
    monitor-exit v1

    goto :goto_24

    :catchall_a1
    move-exception v0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a1

    throw v0

    .line 1137
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 1146
    :catch_a7
    move-exception v0

    .line 1147
    :try_start_a8
    const-string v2, "abortPendingPost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 1153
    :cond_c1
    const-string v0, "abortPendingPost"

    const-string v2, "mPendingPost = null "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_a8 .. :try_end_c8} :catchall_a1

    goto :goto_9f
.end method

.method public activateDevice(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 10341
    new-instance v0, Lcom/android/exchange/adapter/EasActivator;

    invoke-direct {v0, p1}, Lcom/android/exchange/adapter/EasActivator;-><init>(Landroid/content/Context;)V

    .line 10343
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EasActivator;->actionActivateDevice()Ljava/lang/String;

    move-result-object v0

    .line 10345
    if-nez v0, :cond_13

    .line 10347
    const-string v1, "ExchangeActivation"

    const-string v2, "Activation failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10355
    :goto_12
    return-object v0

    .line 10351
    :cond_13
    const-string v1, "ExchangeActivation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activation successful - key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public addRequest(Lcom/android/exchange/Request;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1219
    :goto_8
    return-void

    .line 1217
    :cond_9
    invoke-super {p0, p1}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_8
.end method

.method public alarm()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 924
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_8

    move v0, v1

    .line 1044
    :goto_7
    return v0

    .line 928
    :cond_8
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 930
    new-array v4, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarm() called for for thread:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_29
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 948
    :try_start_3b
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 950
    if-eqz v5, :cond_e3

    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v0, :cond_e3

    .line 956
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_66

    .line 958
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 960
    if-eqz v0, :cond_d1

    .line 962
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 964
    if-nez v0, :cond_55

    .line 966
    const-string v0, "POST"

    .line 970
    :cond_55
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, ": Alert, aborting "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 982
    :cond_66
    :goto_66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 984
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 996
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_3b .. :try_end_6d} :catchall_e0

    .line 1002
    const-wide/16 v6, 0x2710

    :try_start_6f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_f9

    .line 1008
    :goto_72
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .line 1010
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_9e

    .line 1012
    new-array v4, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": State = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1016
    :cond_9e
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1024
    :try_start_a3
    sget-object v4, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    invoke-virtual {v4, v0}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 1030
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1032
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Interrupting..."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1036
    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_a3 .. :try_end_cb} :catchall_f6

    move v0, v2

    goto/16 :goto_7

    .line 930
    :cond_ce
    const/4 v0, 0x0

    goto/16 :goto_29

    .line 974
    :cond_d1
    const/4 v0, 0x2

    :try_start_d2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v0, v6

    const/4 v6, 0x1

    const-string v7, ": Alert, no URI?"

    aput-object v7, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_66

    .line 996
    :catchall_e0
    move-exception v0

    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_d2 .. :try_end_e2} :catchall_e0

    throw v0

    .line 990
    :cond_e3
    const/4 v0, 0x1

    :try_start_e4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Alert, no pending POST"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 992
    monitor-exit v4
    :try_end_ef
    .catchall {:try_start_e4 .. :try_end_ef} :catchall_e0

    move v0, v1

    goto/16 :goto_7

    .line 1040
    :cond_f2
    :try_start_f2
    monitor-exit v3

    move v0, v1

    .line 1044
    goto/16 :goto_7

    .line 1040
    :catchall_f6
    move-exception v0

    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_f6

    throw v0

    .line 1004
    :catch_f9
    move-exception v0

    goto/16 :goto_72
.end method

.method protected checkGzipRequired(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 6095
    const-string v0, ".txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, ".xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 6103
    :cond_40
    const/4 v0, 0x1

    .line 6107
    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method createPingRequest(Lcom/android/exchange/adapter/Serializer;Ljava/util/HashMap;IIZ)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;IIZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/16 v9, 0x345

    const/4 v2, 0x0

    const/16 v8, 0x349

    .line 7945
    .line 7949
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 7950
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 7952
    if-eq p3, p4, :cond_2b

    .line 7953
    invoke-virtual {p1, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v4, 0x348

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 7957
    :cond_2b
    if-eqz v0, :cond_bd

    .line 7958
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7960
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 7963
    if-eq p3, p4, :cond_ab

    .line 7964
    invoke-virtual {p1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move v1, v3

    .line 7974
    :goto_51
    if-nez v1, :cond_1be

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq v4, v0, :cond_1be

    .line 7975
    add-int/lit8 v0, v1, 0x1

    .line 7976
    if-eq p3, p4, :cond_b4

    .line 7977
    invoke-virtual {p1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move v4, v0

    .line 7989
    :goto_65
    if-ne v4, v5, :cond_6a

    .line 7990
    invoke-virtual {p1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 7993
    :cond_6a
    if-eqz v4, :cond_13f

    .line 7994
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7995
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7996
    const/16 v1, 0x34a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v7, 0x34b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v7, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0x34c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v5, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_74

    .line 7967
    :cond_ab
    invoke-virtual {p1, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move v1, v3

    .line 7969
    goto :goto_51

    .line 7980
    :cond_b4
    invoke-virtual {p1, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move v4, v0

    goto :goto_65

    :cond_bd
    move v4, v5

    .line 7984
    goto :goto_65

    .line 7999
    :cond_bf
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    move v1, v2

    .line 8008
    :goto_cb
    if-eqz p5, :cond_14c

    .line 8011
    if-eqz v4, :cond_e4

    if-eqz v6, :cond_e4

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_e4

    .line 8012
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8015
    :cond_e4
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8026
    :goto_f7
    const-string v0, "Sticky Ping"

    const-string v2, " start--"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8027
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_108
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_175

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8029
    const-string v3, "Sticky Ping"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPingFoldersMaps key["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 8000
    :cond_13f
    if-eq p3, p4, :cond_14a

    .line 8003
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->done()V

    move v1, v2

    goto :goto_cb

    :cond_14a
    move v1, v3

    .line 8006
    goto :goto_cb

    .line 8020
    :cond_14c
    if-eqz v4, :cond_163

    if-eqz v6, :cond_163

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_163

    .line 8021
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8024
    :cond_163
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    .line 8032
    :cond_175
    sget-object v0, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8034
    const-string v3, "Sticky Ping"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPingHeartBeatIntervalMap key["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    .line 8037
    :cond_1b6
    const-string v0, "Sticky Ping"

    const-string v2, " end--"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8041
    return v1

    :cond_1be
    move v4, v1

    goto/16 :goto_65

    :cond_1c1
    move v1, v2

    goto/16 :goto_51
.end method

.method createResponseEntity(Lcom/android/emailcommon/provider/EmailContent$Message;I)Landroid/content/Entity;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 4473
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 4475
    if-nez v1, :cond_d

    .line 4561
    :cond_c
    :goto_c
    return-object v0

    .line 4487
    :cond_d
    const-string v2, "ORGMAIL"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 4491
    array-length v3, v2

    if-ne v3, v9, :cond_c

    .line 4495
    aget-object v0, v2, v4

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 4497
    aget-object v0, v2, v4

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    .line 4499
    const-string v0, "DTSTAMP"

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4501
    const-string v0, "DTSTART"

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4503
    const-string v0, "DTEND"

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4511
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 4513
    new-instance v0, Landroid/content/Entity;

    invoke-direct {v0, v6}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 4517
    const-string v7, "DTSTAMP"

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    const-string v2, "dtstart"

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4523
    const-string v2, "dtend"

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4525
    const-string v2, "eventLocation"

    const-string v4, "LOC"

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    const-string v2, "title"

    const-string v4, "TITLE"

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    const-string v1, "organizer"

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4533
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4535
    const-string v2, "attendeeRelationship"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4537
    const-string v2, "attendeeEmail"

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 4543
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4545
    const-string v2, "attendeeRelationship"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4547
    const-string v2, "attendeeEmail"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_c
.end method

.method createSyncHBIRequest(Lcom/android/exchange/adapter/Serializer;Ljava/util/HashMap;I)V
    .registers 13
    .parameter "s"
    .parameter
    .parameter "pingHeartbeat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8046
    .local p2, syncHBIFolderMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 8047
    .local v1, folderClassIndex:I
    const/4 v5, 0x1

    .line 8048
    .local v5, syncKeyIndex:I
    const/4 v3, 0x2

    .line 8049
    .local v3, mailboxServerIDIndex:I
    const/4 v4, 0x3

    .line 8051
    .local v4, mailboxTypeIndex:I
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 8053
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8054
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    const/16 v6, 0xf

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xb

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v7, v8, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0x12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v7, v8, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8057
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/exchange/EasSyncService;->syncHBIFolderDetail(Lcom/android/exchange/adapter/Serializer;J)V

    .line 8058
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_16

    .line 8061
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_57
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 8062
    const/16 v6, 0x29

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8063
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 8064
    return-void
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;
    .registers 12
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .parameter "isAbortNotNeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5638
    new-instance v0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V

    .local v0, redirectionHandler:Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 5639
    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->execPost(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method protected fetchAttachment(Lcom/android/exchange/PartRequest;Z)V
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 3834
    if-eqz p1, :cond_15

    .line 3836
    iget-object v7, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3838
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    .line 3840
    if-nez v8, :cond_16

    .line 3841
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "msg is null. should not happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :cond_15
    :goto_15
    return-void

    .line 3845
    :cond_16
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 3847
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 3849
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 3851
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8b

    .line 3853
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 3856
    if-eqz v0, :cond_8b

    .line 3857
    iget v1, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    int-to-long v1, v1

    .line 3859
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-nez v0, :cond_50

    .line 3861
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "IT SecurityPolicy: Attachments disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_15

    .line 3867
    :cond_50
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_8b

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_8b

    .line 3869
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IT SecurityPolicy: Attachment Maxsize exceeded. request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_15

    .line 3885
    :cond_8b
    const/4 v6, 0x0

    .line 3890
    :try_start_8c
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->checkGzipRequired(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->setGZipEnable(Z)V

    .line 3892
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->makeFetchAttachmentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_9c
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_8c .. :try_end_9c} :catch_187
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_9c} :catch_194

    move-result-object v0

    .line 3910
    :goto_9d
    if-eqz v0, :cond_235

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_235

    .line 3912
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_cb

    .line 3914
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAttachment(): GetAttachment command http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 3918
    :cond_cb
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 3920
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 3922
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 3927
    if-eqz v1, :cond_103

    .line 3929
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 3932
    if-eqz v0, :cond_103

    .line 3933
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 3934
    if-eqz v0, :cond_103

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3936
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment unzip start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3940
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment unzip end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 3949
    :cond_103
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1ac

    .line 3950
    new-instance v0, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v2, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-double v3, v3

    const-wide v5, 0x3ff547ae147ae148L

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;J)V

    move-object v1, v0

    .line 3960
    :goto_11b
    :try_start_11b
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 3997
    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;
    :try_end_124
    .catchall {:try_start_11b .. :try_end_124} :catchall_220
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11b .. :try_end_124} :catch_207

    move-result-object v9

    .line 4002
    const/4 v0, 0x0

    .line 4006
    :try_start_126
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v9}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_12b
    .catchall {:try_start_126 .. :try_end_12b} :catchall_220
    .catch Ljava/io/FileNotFoundException; {:try_start_126 .. :try_end_12b} :catch_1bb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_126 .. :try_end_12b} :catch_207

    move-result-object v0

    move-object v6, v0

    .line 4014
    :goto_12d
    if-eqz v6, :cond_1f6

    .line 4016
    :try_start_12f
    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/ItemOperationsParser;->setOutputStream(Ljava/io/OutputStream;)V

    .line 4018
    invoke-virtual {v1, p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->setObserver(Ljava/util/Observer;)V

    .line 4025
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->parse()Z

    move-result v0

    .line 4027
    invoke-virtual {v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->getStatus()I

    move-result v1

    .line 4029
    if-nez v0, :cond_1ce

    .line 4034
    const/16 v0, 0xb

    if-ne v1, v0, :cond_1ce

    .line 4036
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v5, 0x12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 4039
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 4041
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_153
    .catchall {:try_start_12f .. :try_end_153} :catchall_220
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12f .. :try_end_153} :catch_207

    .line 4045
    :try_start_153
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v0

    .line 4049
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4051
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4053
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 4055
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 4057
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 4059
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_172
    .catchall {:try_start_153 .. :try_end_172} :catchall_220
    .catch Ljava/lang/IllegalArgumentException; {:try_start_153 .. :try_end_172} :catch_1ca
    .catch Ljava/lang/OutOfMemoryError; {:try_start_153 .. :try_end_172} :catch_207

    .line 4126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 4130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 4132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 4137
    :goto_181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->setGZipEnable(Z)V

    goto/16 :goto_15

    .line 3894
    :catch_187
    move-exception v0

    .line 3896
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    move-object v0, v6

    .line 3902
    goto/16 :goto_9d

    .line 3898
    :catch_194
    move-exception v0

    .line 3899
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "get IOException while getAttachment http request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 3901
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 3952
    :cond_1ac
    new-instance v0, Lcom/android/exchange/adapter/ItemOperationsParser;

    new-instance v2, Lcom/android/exchange/adapter/ItemOperationsAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/ItemOperationsAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ItemOperationsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;J)V

    move-object v1, v0

    goto/16 :goto_11b

    .line 4008
    :catch_1bb
    move-exception v2

    .line 4010
    const/4 v2, 0x1

    :try_start_1bd
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Can\'t get attachment; write file not found?"

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move-object v6, v0

    goto/16 :goto_12d

    .line 4063
    :catch_1ca
    move-exception v0

    .line 4065
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 4076
    :cond_1ce
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 4078
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 4084
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 4103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4105
    const-string v1, "contentUri"

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 4109
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V
    :try_end_1f6
    .catchall {:try_start_1bd .. :try_end_1f6} :catchall_220
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1bd .. :try_end_1f6} :catch_207

    .line 4126
    :cond_1f6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 4130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 4132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    goto/16 :goto_181

    .line 4120
    :catch_207
    move-exception v0

    .line 4122
    :try_start_208
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Fetching attachment is Out of Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20f
    .catchall {:try_start_208 .. :try_end_20f} :catchall_220

    .line 4126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 4130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 4132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    goto/16 :goto_181

    .line 4126
    :catchall_220
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4128
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 4130
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 4132
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 4137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->setGZipEnable(Z)V

    .line 4126
    throw v0

    .line 4143
    :cond_235
    iget-wide v1, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_15
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10511
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    if-nez v0, :cond_6f

    .line 10514
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 10516
    const/4 v0, 0x1

    :goto_c
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 10517
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->UserAgentSplited:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    .line 10516
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 10520
    :cond_20
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 10522
    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 10523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    .line 10529
    :goto_45
    const-string v0, "EasSynService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create and return deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10530
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    const-string v1, "\\p{Space}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10535
    :goto_69
    return-object v0

    .line 10526
    :cond_6a
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_DeviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    goto :goto_45

    .line 10533
    :cond_6f
    const-string v0, "EasSynService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10535
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceType:Ljava/lang/String;

    goto :goto_69
.end method

.method public getHttpInputStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 9
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10626
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_38

    const/4 v1, 0x0

    .line 10628
    .local v1, is:Ljava/io/InputStream;
    :goto_b
    if-eqz v1, :cond_37

    .line 10632
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 10634
    .local v0, encodingType:Lorg/apache/http/Header;
    if-eqz v0, :cond_37

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 10638
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v4, "getHttpInputStream() - resp: GZIPInputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10640
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10642
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v4, "getAttachment unzip end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 10648
    .end local v0           #encodingType:Lorg/apache/http/Header;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_37
    return-object v1

    .line 10626
    :cond_38
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_b
.end method

.method public getIRMTemplates()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6797
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_24

    .line 6799
    const-string v0, "IRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Inside getIRMTemplates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6803
    :cond_24
    new-instance v1, Lcom/android/exchange/irm/IRMSettingsAdapter;

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v1, v0, p0}, Lcom/android/exchange/irm/IRMSettingsAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 6805
    invoke-virtual {v1}, Lcom/android/exchange/irm/IRMSettingsAdapter;->buildSettingsRequest()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 6807
    const-string v2, "Settings"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 6809
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 6811
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_69

    .line 6813
    const-string v3, "IRM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":getIRMTemplates response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    :cond_69
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_83

    .line 6819
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 6821
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    .line 6823
    if-eqz v3, :cond_83

    .line 6825
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 6827
    invoke-virtual {v1, v0}, Lcom/android/exchange/irm/IRMSettingsAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 6829
    const/4 v0, 0x0

    .line 6850
    :cond_83
    :goto_83
    return v0

    .line 6835
    :cond_84
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_ae

    .line 6837
    const-string v0, "IRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":getIRMTemplates parse status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/exchange/irm/IRMSettingsAdapter;->mIrmStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6842
    :cond_ae
    iget v0, v1, Lcom/android/exchange/irm/IRMSettingsAdapter;->mIrmStatus:I

    goto :goto_83
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 6201
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_12

    .line 6203
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6205
    if-eqz v0, :cond_15

    .line 6207
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    .line 6218
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMountService:Landroid/os/storage/IMountService;

    return-object v0

    .line 6211
    :cond_15
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_12

    .line 6212
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t get mount service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public getPath(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 10669
    const-string v0, "/Microsoft-Server-ActiveSync"

    .line 10670
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_27

    .line 10671
    invoke-static {p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 10672
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 10673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10676
    :cond_27
    return-object v0
.end method

.method getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 6167
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 6169
    const/16 v1, 0x42

    if-ne v0, v1, :cond_c

    .line 6171
    const-string v0, "Contacts"

    .line 6193
    :goto_b
    return-object v0

    .line 6173
    :cond_c
    const/16 v1, 0x41

    if-ne v0, v1, :cond_13

    .line 6175
    const-string v0, "Calendar"

    goto :goto_b

    .line 6179
    :cond_13
    const/16 v1, 0x43

    if-ne v0, v1, :cond_1a

    .line 6181
    const-string v0, "Tasks"

    goto :goto_b

    .line 6185
    :cond_1a
    const/16 v1, 0x45

    if-ne v0, v1, :cond_21

    .line 6189
    const-string v0, "Notes"

    goto :goto_b

    .line 6193
    :cond_21
    const-string v0, "Email"

    goto :goto_b
.end method

.method public getTasksFilterType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8678
    const-string v0, "8"

    .line 8682
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 10544
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserAgent:Ljava/lang/String;

    if-nez v0, :cond_5a

    .line 10546
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 10548
    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 10549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAMSUNG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    .line 10555
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/EasRefs;->PLATFORM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserAgent:Ljava/lang/String;

    .line 10558
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserAgent:Ljava/lang/String;

    .line 10564
    :goto_54
    return-object v0

    .line 10552
    :cond_55
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mModelName_UserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceTypeForUserAgent:Ljava/lang/String;

    goto :goto_29

    .line 10562
    :cond_5a
    const-string v0, "EasSynService"

    const-string v1, "getUserAgent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10564
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserAgent:Ljava/lang/String;

    goto :goto_54
.end method

.method protected isAuthError(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 1230
    const/16 v0, 0x191

    if-eq p1, v0, :cond_8

    const/16 v0, 0x193

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isIrmError(I)I
    .registers 2
    .parameter "code"

    .prologue
    .line 6856
    packed-switch p1, :pswitch_data_6

    .line 6872
    const/4 p1, -0x1

    .end local p1
    :pswitch_4
    return p1

    .line 6856
    nop

    :pswitch_data_6
    .packed-switch 0xa8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected isProvisionError(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 1245
    const/16 v0, 0x1c1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x193

    if-ne p1, v0, :cond_a

    .line 1247
    :cond_8
    const/4 v0, 0x1

    .line 1251
    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    goto :goto_9
.end method

.method protected isProvisionError(Ljava/io/InputStream;I)Z
    .registers 6
    .parameter "is"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1263
    const/16 v2, 0x1c1

    if-eq p2, v2, :cond_9

    const/16 v2, 0x193

    if-ne p2, v2, :cond_a

    .line 1285
    :cond_9
    :goto_9
    return v1

    .line 1271
    :cond_a
    if-eqz p1, :cond_17

    :try_start_c
    new-instance v2, Lcom/android/exchange/adapter/FourteenProvisionParser;

    invoke-direct {v2, p1}, Lcom/android/exchange/adapter/FourteenProvisionParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/exchange/adapter/FourteenProvisionParser;->checkForProvisioning()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_19

    move-result v2

    if-nez v2, :cond_9

    .line 1285
    :cond_17
    :goto_17
    const/4 v1, 0x0

    goto :goto_9

    .line 1277
    :catch_19
    move-exception v0

    .line 1279
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method protected loadAttachment(Lcom/android/exchange/PartRequest;Z)V
    .registers 17
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4169
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1d

    .line 4171
    invoke-virtual/range {p0 .. p2}, Lcom/android/exchange/EasSyncService;->fetchAttachment(Lcom/android/exchange/PartRequest;Z)V
    :try_end_f
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_0 .. :try_end_f} :catch_10

    .line 4467
    :cond_f
    :goto_f
    return-void

    .line 4177
    :catch_10
    move-exception v0

    .line 4179
    iget-wide v1, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-object v0, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_f

    .line 4187
    :cond_1d
    iget-object v9, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 4189
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 4191
    if-nez v10, :cond_31

    .line 4192
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "msg is null. should not happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4196
    :cond_31
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 4199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9f

    .line 4201
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 4204
    if-eqz v0, :cond_9f

    .line 4205
    iget v1, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    int-to-long v1, v1

    .line 4207
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-nez v0, :cond_63

    .line 4209
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "IT SecurityPolicy: Attachments disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto :goto_f

    .line 4215
    :cond_63
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_9f

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_9f

    .line 4217
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IT SecurityPolicy: Attachment Maxsize exceeded. request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x17

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_f

    .line 4235
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAttachment&AttachmentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4239
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment http request start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    const/4 v1, 0x0

    const v2, 0x13880

    :try_start_cb
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_1bf

    move-result-object v0

    .line 4265
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getattachment http response received"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 4273
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_fe

    .line 4275
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAttachment(): GetAttachment command http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4281
    :cond_fe
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_20c

    .line 4283
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 4285
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v11, v1

    .line 4287
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 4291
    if-eqz v1, :cond_237

    .line 4293
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 4295
    if-eqz v0, :cond_237

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 4299
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment unzip start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4303
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "getAttachment unzip end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 4311
    :goto_143
    const/4 v0, 0x0

    .line 4313
    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v12

    .line 4315
    const/4 v1, 0x0

    .line 4319
    :try_start_14d
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 4321
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment filename retrieved as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_16f
    .catch Ljava/io/FileNotFoundException; {:try_start_14d .. :try_end_16f} :catch_1d2

    move-object v8, v0

    .line 4329
    :goto_170
    if-eqz v8, :cond_f

    .line 4335
    if-eqz v11, :cond_195

    .line 4339
    :try_start_174
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4341
    const/16 v0, 0x4000

    new-array v13, v0, [B

    .line 4351
    const/4 v0, 0x0

    .line 4353
    const-string v1, "Attachment content-length: "

    invoke-virtual {p0, v1, v11}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    move v1, v0

    .line 4357
    :goto_181
    const/4 v0, 0x0

    .line 4359
    if-eqz v6, :cond_18b

    .line 4360
    const/4 v0, 0x0

    const/16 v2, 0x4000

    invoke-virtual {v6, v13, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 4365
    :cond_18b
    if-gez v0, :cond_1e0

    .line 4367
    const-string v0, "Attachment load reached EOF, totalRead: "

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_192
    .catchall {:try_start_174 .. :try_end_192} :catchall_1f4

    .line 4415
    :goto_192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4421
    :cond_195
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 4423
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 4429
    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4431
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4433
    const-string v1, "contentUri"

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 4437
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_f

    .line 4251
    :catch_1bf
    move-exception v6

    .line 4253
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "get IOException while getAttachment http request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    .line 4257
    throw v6

    .line 4323
    :catch_1d2
    move-exception v1

    .line 4325
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Can\'t get attachment; write file not found?"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_170

    .line 4377
    :cond_1e0
    add-int v7, v1, v0

    .line 4381
    const/4 v1, 0x0

    :try_start_1e3
    invoke-virtual {v8, v13, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 4389
    if-lez v11, :cond_209

    instance-of v0, v6, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_209

    .line 4395
    if-le v7, v11, :cond_1f9

    .line 4397
    const-string v0, "totalRead is greater than attachment length?"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_1f3
    .catchall {:try_start_1e3 .. :try_end_1f3} :catchall_1f4

    goto :goto_192

    .line 4415
    :catchall_1f4
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    throw v0

    .line 4403
    :cond_1f9
    mul-int/lit8 v0, v7, 0x64

    :try_start_1fb
    div-int v5, v0, v11

    .line 4405
    const/16 v0, 0x64

    if-ge v5, v0, :cond_209

    .line 4407
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V
    :try_end_209
    .catchall {:try_start_1fb .. :try_end_209} :catchall_1f4

    :cond_209
    move v1, v7

    .line 4411
    goto/16 :goto_181

    .line 4445
    :cond_20c
    const/16 v0, 0x19d

    if-ne v1, v0, :cond_22b

    .line 4447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 4449
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    .line 4451
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    .line 4453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    .line 4455
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/high16 v5, 0x12

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_f

    .line 4463
    :cond_22b
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doStatusCallback(JJI)V

    goto/16 :goto_f

    :cond_237
    move-object v6, v1

    goto/16 :goto_143
.end method

.method protected makeFetchAttachmentRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x605

    const/16 v7, 0x508

    const-wide v5, 0x402c333333333333L

    .line 3776
    const/4 v0, 0x0

    .line 3778
    if-eqz p1, :cond_70

    .line 3780
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 3782
    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x506

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x507

    const-string v3, "Mailbox"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x451

    invoke-virtual {v1, v2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3788
    if-eqz p2, :cond_71

    if-eqz p3, :cond_71

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_71

    .line 3790
    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x514

    invoke-virtual {v1, v2, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x515

    invoke-virtual {v1, v2, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3794
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_58

    .line 3796
    const-string v1, "1"

    invoke-virtual {v0, v8, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3800
    :cond_58
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3813
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 3818
    const-string v1, "ItemOperations;"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3823
    :cond_70
    return-object v0

    .line 3804
    :cond_71
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_5b

    .line 3806
    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v8, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_5b
.end method

.method makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5238
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 5240
    :cond_8
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 5251
    :cond_b
    const/4 v0, 0x0

    .line 5253
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2d

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_2d

    .line 5257
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v1, :cond_2d

    .line 5259
    const/4 v0, 0x1

    .line 5270
    :cond_2d
    new-instance v2, Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v1, :cond_7c

    const-string v1, "httpts"

    :goto_39
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5273
    const-string v1, "://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v0, :cond_82

    const-string v0, ":443"

    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :goto_5a
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/exchange/EasSyncService;->getPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5275
    if-eqz p1, :cond_72

    .line 5277
    const-string v0, "?Cmd="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5281
    :cond_72
    if-eqz p2, :cond_77

    .line 5283
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5287
    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5270
    :cond_7c
    const-string v1, "https"

    goto :goto_39

    :cond_7f
    const-string v1, "http"

    goto :goto_39

    .line 5273
    :cond_82
    const-string v0, ""

    goto :goto_4c

    :cond_85
    const-wide/16 v0, -0x1

    goto :goto_5a
.end method

.method protected messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 4807
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 4809
    if-nez v6, :cond_f

    .line 4974
    :cond_e
    :goto_e
    return-void

    .line 4813
    :cond_f
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "mailboxKey"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4825
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_fe

    move-result v0

    if-nez v0, :cond_2f

    .line 4833
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 4829
    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_fe

    move-result-object v0

    .line 4833
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4837
    if-eqz v0, :cond_e

    .line 4841
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/exchange/MessageMoveRequest;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 4843
    if-eqz v1, :cond_e

    .line 4847
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 4849
    const/16 v3, 0x145

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x146

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 4851
    const/16 v3, 0x147

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4853
    const/16 v3, 0x148

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4855
    const/16 v3, 0x149

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 4857
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 4859
    const-string v1, "MoveItems"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 4861
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 4865
    :try_start_87
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 4867
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_141

    .line 4869
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    .line 4871
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 4873
    if-eqz v3, :cond_f7

    .line 4875
    new-instance v3, Lcom/android/exchange/adapter/MoveItemsParser;

    invoke-direct {v3, v1, p0}, Lcom/android/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 4877
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->parse()Z

    .line 4879
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v1

    .line 4881
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4883
    if-ne v1, v9, :cond_10f

    .line 4889
    const-string v3, "mailboxKey"

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4892
    const-string v3, "flagMoved"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4894
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_87 .. :try_end_d9} :catchall_108

    .line 4899
    :try_start_d9
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v0, 0x42

    invoke-interface {v3, v4, v5, v0}, Lcom/android/emailcommon/service/IEmailServiceCallback;->moveItemStatus(JI)V
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_108
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_e4} :catch_103

    .line 4924
    :cond_e4
    :goto_e4
    if-eq v1, v8, :cond_e8

    if-ne v1, v9, :cond_f7

    .line 4936
    :cond_e8
    :try_start_e8
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_e8 .. :try_end_f7} :catchall_108

    .line 4966
    :cond_f7
    if-eqz v2, :cond_e

    .line 4968
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_e

    .line 4833
    :catchall_fe
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4902
    :catch_103
    move-exception v0

    .line 4904
    :try_start_104
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_e4

    .line 4966
    :catchall_108
    move-exception v0

    if-eqz v2, :cond_10e

    .line 4968
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 4966
    :cond_10e
    throw v0

    .line 4907
    :cond_10f
    if-ne v1, v8, :cond_e4

    .line 4911
    :try_start_111
    const-string v0, "syncServerId"

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4913
    const-string v0, "flags"

    iget v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4915
    const-string v0, "flagMoved"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4918
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e4

    .line 4952
    :cond_141
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 4954
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 4958
    :cond_14d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Move items request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 4960
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_16f
    .catchall {:try_start_111 .. :try_end_16f} :catchall_108
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2479
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2483
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2541
    :cond_7
    return-void

    .line 2489
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2493
    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2495
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2497
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2501
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseError(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 2505
    :cond_2a
    const-string v1, "Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 2507
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2509
    if-eqz v0, :cond_0

    .line 2511
    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2513
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 2515
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v0, :cond_59

    const-string v0, "httpts://"

    .line 2517
    :goto_43
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2519
    if-lez v1, :cond_0

    .line 2521
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2523
    invoke-direct {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2515
    :cond_59
    const-string v0, "https://"

    goto :goto_43

    .line 2531
    :cond_5c
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseAutoDiscoverResponse(Ljavax/net/ssl/HttpsURLConnection;)Lorg/apache/http/client/methods/HttpPost;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2246
    .line 2254
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2256
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 2258
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2260
    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2262
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 2264
    if-nez v0, :cond_77

    .line 2266
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2268
    const/4 v2, 0x2

    if-ne v0, v2, :cond_77

    .line 2270
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2272
    const-string v2, "Autodiscover"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2274
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    .line 2276
    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 2280
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 2291
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_79

    .line 2293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 2303
    :goto_5f
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 2305
    const/16 v1, 0x1bb

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 2307
    const-string v1, "eas"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 2311
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 2327
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v2, "autodiscover_host_auth"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2363
    :cond_77
    :goto_77
    const/4 v0, 0x0

    return-object v0

    .line 2297
    :cond_79
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_5f

    .line 2355
    :catch_7e
    move-exception v0

    .line 2359
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_77

    .line 2331
    :cond_83
    :try_start_83
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-boolean v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    if-eqz v0, :cond_94

    .line 2333
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 2340
    :cond_94
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v1, "autodiscover_error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_9e} :catch_7e

    goto :goto_77
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2691
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 2695
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2713
    :cond_7
    return-void

    .line 2701
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2705
    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2707
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseError(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2553
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2557
    if-ne v0, v4, :cond_9

    .line 2597
    :cond_8
    return-void

    .line 2563
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2567
    :cond_18
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2569
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    .line 2571
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2573
    const-string v1, "Status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2577
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Error Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 2579
    :cond_4a
    const-string v1, "Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2581
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2583
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Error Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 2585
    :cond_71
    const-string v1, "DebugData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2587
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2589
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, Error DebugData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2651
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2655
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2683
    :cond_7
    return-void

    .line 2661
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2665
    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2667
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2669
    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2671
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    .line 2673
    :cond_2a
    const-string v1, "Action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2675
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2373
    move v0, v1

    .line 2377
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 2381
    if-ne v3, v2, :cond_a

    .line 2435
    :cond_9
    return-void

    .line 2387
    :cond_a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2391
    :cond_19
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2393
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2395
    const-string v4, "Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2397
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobileSync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 2399
    goto :goto_3

    .line 2407
    :cond_36
    if-eqz v0, :cond_3

    const-string v4, "Url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2409
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2411
    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autodiscover, server URL :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2419
    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "/microsoft-server-activesync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2421
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2423
    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 2425
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Autodiscover, hostAuth.mAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 7
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2443
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 2447
    .local v1, type:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 2471
    :cond_7
    return-void

    .line 2453
    :cond_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2457
    :cond_17
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2459
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, name:Ljava/lang/String;
    const-string v2, "Server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2463
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2607
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2611
    if-ne v0, v4, :cond_9

    .line 2643
    :cond_8
    return-void

    .line 2617
    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2621
    :cond_18
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2623
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2625
    const-string v1, "EMailAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2627
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2629
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 2631
    :cond_46
    const-string v1, "DisplayName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2635
    new-array v1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected declared-synchronized processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 9595
    monitor-enter p0

    .line 9597
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 9603
    :goto_5
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_1f

    .line 9605
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->hasChangedItems()Z

    move-result v1

    if-nez v1, :cond_21

    .line 9607
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "processCommand(): No changed items."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_5c

    .line 9755
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 9613
    :cond_21
    const/4 v1, 0x1

    :try_start_22
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCommand(): Iteration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_5c

    .line 9619
    :try_start_3d
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 9623
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 9625
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 9627
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "sendLocalChanges returned false. Returning ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_5c
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_3d .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_56} :catch_a8

    goto :goto_1f

    .line 9723
    :catch_57
    move-exception v0

    .line 9725
    :try_start_58
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->cleanup()V

    .line 9727
    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .line 9595
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 9633
    :cond_5f
    :try_start_5f
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 9635
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v1, 0x7530

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 9639
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 9641
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_11d

    .line 9643
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 9645
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 9647
    if-eqz v2, :cond_95

    .line 9649
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_8f
    .catchall {:try_start_5f .. :try_end_8f} :catchall_5c
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_5f .. :try_end_8f} :catch_57
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_8f} :catch_a8

    move-result-object v1

    .line 9651
    if-eqz v1, :cond_fb

    .line 9656
    :try_start_92
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_5c
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_92 .. :try_end_95} :catch_9a
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_92 .. :try_end_95} :catch_57
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_a8

    .line 9751
    :cond_95
    :goto_95
    const/4 v1, 0x0

    :try_start_96
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_98
    .catchall {:try_start_96 .. :try_end_98} :catchall_5c

    goto/16 :goto_5

    .line 9658
    :catch_9a
    move-exception v0

    .line 9663
    :try_start_9b
    iget v0, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 9665
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 9667
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_5c
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_9b .. :try_end_a6} :catch_57
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a6} :catch_a8

    goto/16 :goto_1f

    .line 9729
    :catch_a8
    move-exception v0

    .line 9731
    :try_start_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCommand(): Caught IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 9733
    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->callback(I)V

    .line 9735
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->cleanup()V

    .line 9737
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_d3

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v1, :cond_15c

    .line 9739
    :cond_d3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "processCommand(): Post is stopped or aborted. Throwing IOException back to caller"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 9741
    throw v0
    :try_end_df
    .catchall {:try_start_a9 .. :try_end_df} :catchall_5c

    .line 9669
    :cond_df
    :try_start_df
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTooManyPartnerships(I)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 9670
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1f

    .line 9673
    :cond_eb
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 9675
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1f

    .line 9679
    :cond_f6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1f

    .line 9690
    :cond_fb
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Empty input stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_95

    .line 9698
    :cond_11d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;->getCommandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Response error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 9700
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 9702
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1f

    .line 9706
    :cond_142
    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 9708
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1f

    .line 9710
    :cond_14d
    const/16 v0, 0x1f5

    if-ne v2, v0, :cond_157

    .line 9712
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_1f

    .line 9715
    :cond_157
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_15a
    .catchall {:try_start_df .. :try_end_15a} :catchall_5c
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_df .. :try_end_15a} :catch_57
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_15a} :catch_a8

    goto/16 :goto_1f

    .line 9745
    :cond_15c
    const/4 v0, 0x0

    :try_start_15d
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_15f
    .catchall {:try_start_15d .. :try_end_15f} :catchall_5c

    goto/16 :goto_1f
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1053
    :try_start_5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v0, :cond_4e

    .line 1059
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_4e

    .line 1063
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v2, "Cmd=Ping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1067
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset, aborting Ping. for thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 1071
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1075
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManager()V

    .line 1109
    :cond_4e
    :goto_4e
    monitor-exit v1

    .line 1111
    return-void

    .line 1089
    :cond_50
    const-string v2, "Cmd=ItemOperations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "Cmd=Sync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4004

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4e

    .line 1093
    :cond_6c
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset, aborting loadMore. for thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 1097
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1099
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->shutdownConnectionManagerForLoadMore()V

    goto :goto_4e

    .line 1109
    :catchall_96
    move-exception v0

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_5 .. :try_end_98} :catchall_96

    throw v0
.end method

.method resetHeartbeats(I)V
    .registers 6
    .parameter "legalHeartbeat"

    .prologue
    const/4 v3, 0x0

    .line 7342
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting min/max heartbeat, legal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7354
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-le p1, v0, :cond_39

    .line 7366
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_26

    .line 7368
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 7372
    :cond_26
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_2c

    .line 7374
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 7380
    :cond_2c
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_34

    .line 7382
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 7410
    :cond_34
    :goto_34
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 7414
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 7416
    return-void

    .line 7386
    :cond_39
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_34

    .line 7396
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 7400
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_34

    .line 7402
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    goto :goto_34
.end method

.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/16 v2, 0x20

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9852
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v0

    if-nez v0, :cond_e

    .line 10323
    :cond_d
    :goto_d
    return-void

    .line 9858
    :cond_e
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_d

    .line 9883
    :try_start_12
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1109

    .line 9885
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 9888
    if-eqz v0, :cond_55

    .line 9889
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_121

    move v0, v4

    :goto_27
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    .line 9890
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exchange IT Policy has disabled HTML email. mIsHTMLDisabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". mAccount.mId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 9902
    :cond_55
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 9904
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_63
    .catchall {:try_start_12 .. :try_end_63} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_12 .. :try_end_63} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_12 .. :try_end_63} :catch_366
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_63} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_12 .. :try_end_63} :catch_528
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_63} :catch_603

    if-nez v0, :cond_124

    .line 10057
    :cond_65
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_74

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_74
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_ea7

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1310

    .line 10185
    :pswitch_c8
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_cf
    :goto_cf
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_df

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_fb1

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_fb1

    .line 10280
    :cond_df
    :try_start_df
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_eb

    if-ne v0, v2, :cond_eb

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_eb

    move v0, v3

    .line 10286
    :cond_eb
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_fc9

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_fa} :catch_fd5

    .line 10312
    :cond_fa
    :goto_fa
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_11a

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_11a

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_11a
    const-string v0, "sync finished"

    :goto_11c
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_121
    move v0, v3

    .line 9889
    goto/16 :goto_27

    .line 9908
    :cond_124
    :try_start_124
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1e8

    .line 9910
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->runAccountMailbox()V
    :try_end_12f
    .catchall {:try_start_124 .. :try_end_12f} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_124 .. :try_end_12f} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_124 .. :try_end_12f} :catch_366
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_12f} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_124 .. :try_end_12f} :catch_528
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12f} :catch_603

    .line 10057
    :goto_12f
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_13e

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_13e
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_fd8

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_132c

    .line 10185
    :pswitch_192
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_199
    :goto_199
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_1a9

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_10e2

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_10e2

    .line 10280
    :cond_1a9
    :try_start_1a9
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_1b5

    if-ne v0, v2, :cond_1b5

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_1b5

    move v0, v3

    .line 10286
    :cond_1b5
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_10fa

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1a9 .. :try_end_1c4} :catch_1106

    .line 10312
    :cond_1c4
    :goto_1c4
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_1e4

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_1e4

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_1e4

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_1e4
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 9916
    :cond_1e8
    :try_start_1e8
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_260

    .line 9918
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 9964
    :cond_1f5
    :goto_1f5
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_20c

    .line 9966
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Looping for user request..."

    aput-object v6, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 9968
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 9974
    :cond_20c
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_21c

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_253

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I
    :try_end_219
    .catchall {:try_start_1e8 .. :try_end_219} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_1e8 .. :try_end_219} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_1e8 .. :try_end_219} :catch_366
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_219} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1e8 .. :try_end_219} :catch_528
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_219} :catch_603

    const/4 v5, 0x2

    if-ne v1, v5, :cond_253

    .line 9979
    :cond_21c
    :try_start_21c
    const-string v1, "Deepak"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EasSyncService run mailboxId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " progress IN_PROGRESS 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSyncReason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9983
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v1, v5, v6, v7, v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_253
    .catchall {:try_start_21c .. :try_end_253} :catchall_718
    .catch Landroid/os/RemoteException; {:try_start_21c .. :try_end_253} :catch_12f2
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_21c .. :try_end_253} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_21c .. :try_end_253} :catch_366
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_253} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21c .. :try_end_253} :catch_528
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_253} :catch_603

    .line 9997
    :cond_253
    :goto_253
    :try_start_253
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 9999
    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_1f5

    goto/16 :goto_12f

    .line 9920
    :cond_260
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_350

    .line 9922
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_26d
    .catchall {:try_start_253 .. :try_end_26d} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_253 .. :try_end_26d} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_253 .. :try_end_26d} :catch_366
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_26d} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_253 .. :try_end_26d} :catch_528
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_26d} :catch_603

    goto :goto_1f5

    .line 10003
    :catch_26e
    move-exception v0

    .line 10005
    :try_start_26f
    const-string v1, "DeviceAccessPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10009
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 10011
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V
    :try_end_297
    .catchall {:try_start_26f .. :try_end_297} :catchall_718

    .line 10057
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_2a6

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_2a6

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_2a6
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_8b2

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1348

    .line 10185
    :pswitch_2fa
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_301
    :goto_301
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_311

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_9bc

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_9bc

    .line 10280
    :cond_311
    :try_start_311
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_31d

    if-ne v0, v2, :cond_31d

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_31d

    move v0, v3

    .line 10286
    :cond_31d
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_9d4

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_32c
    .catch Landroid/os/RemoteException; {:try_start_311 .. :try_end_32c} :catch_9e0

    .line 10312
    :cond_32c
    :goto_32c
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_34c

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_34c

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_34c

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_34c
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 9924
    :cond_350
    :try_start_350
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x43

    if-ne v0, v1, :cond_42e

    .line 9926
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "Syncing Tasks.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9928
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_364
    .catchall {:try_start_350 .. :try_end_364} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_350 .. :try_end_364} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_350 .. :try_end_364} :catch_366
    .catch Ljava/io/IOException; {:try_start_350 .. :try_end_364} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_350 .. :try_end_364} :catch_528
    .catch Ljava/lang/Exception; {:try_start_350 .. :try_end_364} :catch_603

    goto/16 :goto_1f5

    .line 10013
    :catch_366
    move-exception v0

    .line 10015
    const/4 v0, 0x1

    :try_start_368
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Caught authentication error"

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10017
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_375
    .catchall {:try_start_368 .. :try_end_375} :catchall_718

    .line 10057
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_384

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_384

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_384
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_9e3

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1364

    .line 10185
    :pswitch_3d8
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_3df
    :goto_3df
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_3ef

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_aed

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_aed

    .line 10280
    :cond_3ef
    :try_start_3ef
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_3fb

    if-ne v0, v2, :cond_3fb

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_3fb

    move v0, v3

    .line 10286
    :cond_3fb
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_b05

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_40a
    .catch Landroid/os/RemoteException; {:try_start_3ef .. :try_end_40a} :catch_b11

    .line 10312
    :cond_40a
    :goto_40a
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_42a

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_42a

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_42a

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_42a
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 9936
    :cond_42e
    :try_start_42e
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x45

    if-ne v0, v1, :cond_517

    .line 9938
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_43b
    .catchall {:try_start_42e .. :try_end_43b} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_42e .. :try_end_43b} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_42e .. :try_end_43b} :catch_366
    .catch Ljava/io/IOException; {:try_start_42e .. :try_end_43b} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_42e .. :try_end_43b} :catch_528
    .catch Ljava/lang/Exception; {:try_start_42e .. :try_end_43b} :catch_603

    goto/16 :goto_1f5

    .line 10019
    :catch_43d
    move-exception v0

    .line 10022
    :try_start_43e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 10023
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 10025
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Caught IOException: "

    aput-object v6, v1, v5

    const/4 v5, 0x1

    if-nez v0, :cond_452

    const-string v0, "No message"

    :cond_452
    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10029
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v0, v10, :cond_45e

    .line 10030
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_45e
    .catchall {:try_start_43e .. :try_end_45e} :catchall_718

    .line 10057
    :cond_45e
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_46d

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_46d

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_46d
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_b14

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1380

    .line 10185
    :pswitch_4c1
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_4c8
    :goto_4c8
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_4d8

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_c1e

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_c1e

    .line 10280
    :cond_4d8
    :try_start_4d8
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_4e4

    if-ne v0, v2, :cond_4e4

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_4e4

    move v0, v3

    .line 10286
    :cond_4e4
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_c36

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_4f3
    .catch Landroid/os/RemoteException; {:try_start_4d8 .. :try_end_4f3} :catch_c42

    .line 10312
    :cond_4f3
    :goto_4f3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_513

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_513

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_513

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_513
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 9944
    :cond_517
    :try_start_517
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x61

    if-ne v0, v1, :cond_5fc

    .line 9946
    new-instance v0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0, v1, p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    :try_end_526
    .catchall {:try_start_517 .. :try_end_526} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_517 .. :try_end_526} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_517 .. :try_end_526} :catch_366
    .catch Ljava/io/IOException; {:try_start_517 .. :try_end_526} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_517 .. :try_end_526} :catch_528
    .catch Ljava/lang/Exception; {:try_start_517 .. :try_end_526} :catch_603

    goto/16 :goto_1f5

    .line 10036
    :catch_528
    move-exception v0

    .line 10038
    :try_start_529
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 10040
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Caught SQLiteDisk IOException: "

    aput-object v6, v1, v5

    const/4 v5, 0x1

    if-nez v0, :cond_53a

    const-string v0, "No message"

    :cond_53a
    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10042
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_543
    .catchall {:try_start_529 .. :try_end_543} :catchall_718

    .line 10057
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_552

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_552

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_552
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_c45

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_139c

    .line 10185
    :pswitch_5a6
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_5ad
    :goto_5ad
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_5bd

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_d4f

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_d4f

    .line 10280
    :cond_5bd
    :try_start_5bd
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_5c9

    if-ne v0, v2, :cond_5c9

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_5c9

    move v0, v3

    .line 10286
    :cond_5c9
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_d67

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_5d8
    .catch Landroid/os/RemoteException; {:try_start_5bd .. :try_end_5d8} :catch_d73

    .line 10312
    :cond_5d8
    :goto_5d8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_5f8

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_5f8

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_5f8

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_5f8
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 9952
    :cond_5fc
    :try_start_5fc
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_601
    .catchall {:try_start_5fc .. :try_end_601} :catchall_718
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_5fc .. :try_end_601} :catch_26e
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_5fc .. :try_end_601} :catch_366
    .catch Ljava/io/IOException; {:try_start_5fc .. :try_end_601} :catch_43d
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5fc .. :try_end_601} :catch_528
    .catch Ljava/lang/Exception; {:try_start_5fc .. :try_end_601} :catch_603

    goto/16 :goto_1f5

    .line 10046
    :catch_603
    move-exception v0

    .line 10048
    :try_start_604
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10049
    const-string v1, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_60c
    .catchall {:try_start_604 .. :try_end_60c} :catchall_718

    .line 10057
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_61b

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_61b

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_61b
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_d76

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_13b8

    .line 10185
    :pswitch_66f
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_676
    :goto_676
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_686

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_e80

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_e80

    .line 10280
    :cond_686
    :try_start_686
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_692

    if-ne v0, v2, :cond_692

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_692

    move v0, v3

    .line 10286
    :cond_692
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_e98

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_6a1
    .catch Landroid/os/RemoteException; {:try_start_686 .. :try_end_6a1} :catch_ea4

    .line 10312
    :cond_6a1
    :goto_6a1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_6c1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_6c1

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_6c1

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_6c1
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 10128
    :pswitch_6c5
    const/16 v1, 0x16

    .line 10259
    :cond_6c7
    :goto_6c7
    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_6d7

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v5, :cond_88b

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_88b

    .line 10280
    :cond_6d7
    :try_start_6d7
    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6e3

    if-ne v1, v2, :cond_6e3

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v2, v10, :cond_6e3

    move v1, v3

    .line 10286
    :cond_6e3
    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v2, v10, :cond_8a3

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v7, -0x20

    invoke-interface {v2, v5, v6, v1, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_6f2
    .catch Landroid/os/RemoteException; {:try_start_6d7 .. :try_end_6f2} :catch_8af

    .line 10312
    :cond_6f2
    :goto_6f2
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Send intent about finished sync to SocialHub"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_712

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_712

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_712

    .line 10314
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_712
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 10053
    throw v0

    :catchall_718
    move-exception v0

    .line 10057
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v1, :cond_728

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_728

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_728
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_785

    .line 10066
    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "Sync finished"

    aput-object v5, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync finished exit status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_13d4

    .line 10185
    :pswitch_77c
    const/16 v1, 0x15

    .line 10187
    const-string v5, "Sync ended due to an exception."

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_6c7

    .line 10195
    :cond_785
    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "Stopped sync finished."

    aput-object v5, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 10201
    if-eqz v1, :cond_7a6

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v5, -0x2

    if-eq v1, v5, :cond_7a6

    .line 10205
    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v7, 0x1f40

    invoke-static {v5, v6, v7, v8}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_7a6
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_13f0

    move v1, v3

    .line 10247
    goto/16 :goto_6c7

    .line 10107
    :pswitch_7ae
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v5, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10113
    const-string v6, "syncStatus"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_130d

    .line 10121
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v1, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v5, v6, v1}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v1, v3

    goto/16 :goto_6c7

    .line 10085
    :pswitch_80d
    const-string v1, "InitialSync"

    const-string v5, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v5, "InitialSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v5, "syncKey"

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v2

    .line 10101
    goto/16 :goto_6c7

    .line 10134
    :pswitch_84e
    const/16 v1, 0x17

    .line 10144
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v5, :cond_6c7

    .line 10146
    sget-object v5, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_6c7

    .line 10153
    :pswitch_85f
    const/4 v1, 0x3

    .line 10155
    goto/16 :goto_6c7

    .line 10161
    :pswitch_862
    const/4 v1, 0x4

    .line 10163
    goto/16 :goto_6c7

    .line 10177
    :pswitch_865
    const/high16 v1, 0x11

    .line 10179
    goto/16 :goto_6c7

    .line 10168
    :pswitch_869
    const/16 v1, 0xad

    .line 10170
    goto/16 :goto_6c7

    .line 10213
    :pswitch_86d
    const/4 v1, 0x3

    .line 10215
    const-string v5, "DeviceAccessPermission"

    const-string v6, "Service is stopped as server block this device"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c7

    .line 10225
    :pswitch_877
    const/4 v1, 0x4

    .line 10227
    const-string v5, "DeviceAccessPermission"

    const-string v6, "Service is stopped as server qurantined this device"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c7

    .line 10238
    :pswitch_881
    const-string v1, "Connection Error "

    const-string v5, "Service is stopped as Network Connectivity Failed"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 10240
    goto/16 :goto_6c7

    .line 10301
    :cond_88b
    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_6f2

    .line 10303
    :try_start_891
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v1, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_89b
    .catch Landroid/os/RemoteException; {:try_start_891 .. :try_end_89b} :catch_89d

    goto/16 :goto_6f2

    .line 10304
    :catch_89d
    move-exception v1

    .line 10306
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6f2

    .line 10291
    :cond_8a3
    :try_start_8a3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v1, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_8ad
    .catch Landroid/os/RemoteException; {:try_start_8a3 .. :try_end_8ad} :catch_8af

    goto/16 :goto_6f2

    .line 10295
    :catch_8af
    move-exception v1

    goto/16 :goto_6f2

    .line 10195
    :cond_8b2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_8d3

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8d3

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_8d3
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_13fa

    move v0, v3

    .line 10247
    goto/16 :goto_301

    .line 10107
    :pswitch_8db
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_130a

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_301

    .line 10085
    :pswitch_93a
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_301

    .line 10128
    :pswitch_97b
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_301

    .line 10134
    :pswitch_97f
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_301

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_301

    .line 10153
    :pswitch_990
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_301

    .line 10161
    :pswitch_993
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_301

    .line 10177
    :pswitch_996
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_301

    .line 10168
    :pswitch_99a
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_301

    .line 10213
    :pswitch_99e
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_301

    .line 10225
    :pswitch_9a8
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_301

    .line 10238
    :pswitch_9b2
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_301

    .line 10301
    :cond_9bc
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_32c

    .line 10303
    :try_start_9c2
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_9cc
    .catch Landroid/os/RemoteException; {:try_start_9c2 .. :try_end_9cc} :catch_9ce

    goto/16 :goto_32c

    .line 10304
    :catch_9ce
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_32c

    .line 10291
    :cond_9d4
    :try_start_9d4
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_9de
    .catch Landroid/os/RemoteException; {:try_start_9d4 .. :try_end_9de} :catch_9e0

    goto/16 :goto_32c

    .line 10295
    :catch_9e0
    move-exception v0

    goto/16 :goto_32c

    .line 10195
    :cond_9e3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_a04

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_a04

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_a04
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1404

    move v0, v3

    .line 10247
    goto/16 :goto_3df

    .line 10107
    :pswitch_a0c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_1307

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_3df

    .line 10085
    :pswitch_a6b
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_3df

    .line 10128
    :pswitch_aac
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_3df

    .line 10134
    :pswitch_ab0
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3df

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_3df

    .line 10153
    :pswitch_ac1
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_3df

    .line 10161
    :pswitch_ac4
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_3df

    .line 10177
    :pswitch_ac7
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_3df

    .line 10168
    :pswitch_acb
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_3df

    .line 10213
    :pswitch_acf
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3df

    .line 10225
    :pswitch_ad9
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3df

    .line 10238
    :pswitch_ae3
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_3df

    .line 10301
    :cond_aed
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_40a

    .line 10303
    :try_start_af3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_afd
    .catch Landroid/os/RemoteException; {:try_start_af3 .. :try_end_afd} :catch_aff

    goto/16 :goto_40a

    .line 10304
    :catch_aff
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_40a

    .line 10291
    :cond_b05
    :try_start_b05
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_b0f
    .catch Landroid/os/RemoteException; {:try_start_b05 .. :try_end_b0f} :catch_b11

    goto/16 :goto_40a

    .line 10295
    :catch_b11
    move-exception v0

    goto/16 :goto_40a

    .line 10195
    :cond_b14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_b35

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_b35

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_b35
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_140e

    move v0, v3

    .line 10247
    goto/16 :goto_4c8

    .line 10107
    :pswitch_b3d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_1304

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_4c8

    .line 10085
    :pswitch_b9c
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_4c8

    .line 10128
    :pswitch_bdd
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_4c8

    .line 10134
    :pswitch_be1
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_4c8

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_4c8

    .line 10153
    :pswitch_bf2
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_4c8

    .line 10161
    :pswitch_bf5
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_4c8

    .line 10177
    :pswitch_bf8
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_4c8

    .line 10168
    :pswitch_bfc
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_4c8

    .line 10213
    :pswitch_c00
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c8

    .line 10225
    :pswitch_c0a
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c8

    .line 10238
    :pswitch_c14
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_4c8

    .line 10301
    :cond_c1e
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4f3

    .line 10303
    :try_start_c24
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_c2e
    .catch Landroid/os/RemoteException; {:try_start_c24 .. :try_end_c2e} :catch_c30

    goto/16 :goto_4f3

    .line 10304
    :catch_c30
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_4f3

    .line 10291
    :cond_c36
    :try_start_c36
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_c40
    .catch Landroid/os/RemoteException; {:try_start_c36 .. :try_end_c40} :catch_c42

    goto/16 :goto_4f3

    .line 10295
    :catch_c42
    move-exception v0

    goto/16 :goto_4f3

    .line 10195
    :cond_c45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_c66

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_c66

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_c66
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1418

    move v0, v3

    .line 10247
    goto/16 :goto_5ad

    .line 10107
    :pswitch_c6e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_1301

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_5ad

    .line 10085
    :pswitch_ccd
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_5ad

    .line 10128
    :pswitch_d0e
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_5ad

    .line 10134
    :pswitch_d12
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_5ad

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_5ad

    .line 10153
    :pswitch_d23
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_5ad

    .line 10161
    :pswitch_d26
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_5ad

    .line 10177
    :pswitch_d29
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_5ad

    .line 10168
    :pswitch_d2d
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_5ad

    .line 10213
    :pswitch_d31
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5ad

    .line 10225
    :pswitch_d3b
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5ad

    .line 10238
    :pswitch_d45
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_5ad

    .line 10301
    :cond_d4f
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5d8

    .line 10303
    :try_start_d55
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_d5f
    .catch Landroid/os/RemoteException; {:try_start_d55 .. :try_end_d5f} :catch_d61

    goto/16 :goto_5d8

    .line 10304
    :catch_d61
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5d8

    .line 10291
    :cond_d67
    :try_start_d67
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_d71
    .catch Landroid/os/RemoteException; {:try_start_d67 .. :try_end_d71} :catch_d73

    goto/16 :goto_5d8

    .line 10295
    :catch_d73
    move-exception v0

    goto/16 :goto_5d8

    .line 10195
    :cond_d76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_d97

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_d97

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_d97
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1422

    move v0, v3

    .line 10247
    goto/16 :goto_676

    .line 10107
    :pswitch_d9f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_12fe

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_676

    .line 10085
    :pswitch_dfe
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_676

    .line 10128
    :pswitch_e3f
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_676

    .line 10134
    :pswitch_e43
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_676

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_676

    .line 10153
    :pswitch_e54
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_676

    .line 10161
    :pswitch_e57
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_676

    .line 10177
    :pswitch_e5a
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_676

    .line 10168
    :pswitch_e5e
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_676

    .line 10213
    :pswitch_e62
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_676

    .line 10225
    :pswitch_e6c
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_676

    .line 10238
    :pswitch_e76
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_676

    .line 10301
    :cond_e80
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6a1

    .line 10303
    :try_start_e86
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_e90
    .catch Landroid/os/RemoteException; {:try_start_e86 .. :try_end_e90} :catch_e92

    goto/16 :goto_6a1

    .line 10304
    :catch_e92
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6a1

    .line 10291
    :cond_e98
    :try_start_e98
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_ea2
    .catch Landroid/os/RemoteException; {:try_start_e98 .. :try_end_ea2} :catch_ea4

    goto/16 :goto_6a1

    .line 10295
    :catch_ea4
    move-exception v0

    goto/16 :goto_6a1

    .line 10195
    :cond_ea7
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_ec8

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_ec8

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_ec8
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_142c

    move v0, v3

    .line 10247
    goto/16 :goto_cf

    .line 10107
    :pswitch_ed0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_12fb

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_cf

    .line 10085
    :pswitch_f2f
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_cf

    .line 10128
    :pswitch_f70
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_cf

    .line 10134
    :pswitch_f74
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_cf

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_cf

    .line 10153
    :pswitch_f85
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_cf

    .line 10161
    :pswitch_f88
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_cf

    .line 10177
    :pswitch_f8b
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_cf

    .line 10168
    :pswitch_f8f
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_cf

    .line 10213
    :pswitch_f93
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cf

    .line 10225
    :pswitch_f9d
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cf

    .line 10238
    :pswitch_fa7
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_cf

    .line 10301
    :cond_fb1
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_fa

    .line 10303
    :try_start_fb7
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_fc1
    .catch Landroid/os/RemoteException; {:try_start_fb7 .. :try_end_fc1} :catch_fc3

    goto/16 :goto_fa

    .line 10304
    :catch_fc3
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_fa

    .line 10291
    :cond_fc9
    :try_start_fc9
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_fd3
    .catch Landroid/os/RemoteException; {:try_start_fc9 .. :try_end_fd3} :catch_fd5

    goto/16 :goto_fa

    .line 10295
    :catch_fd5
    move-exception v0

    goto/16 :goto_fa

    .line 10195
    :cond_fd8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_ff9

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_ff9

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_ff9
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1436

    move v0, v3

    .line 10247
    goto/16 :goto_199

    .line 10107
    :pswitch_1001
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_12f8

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_199

    .line 10085
    :pswitch_1060
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_199

    .line 10128
    :pswitch_10a1
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_199

    .line 10134
    :pswitch_10a5
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_199

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_199

    .line 10153
    :pswitch_10b6
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_199

    .line 10161
    :pswitch_10b9
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_199

    .line 10177
    :pswitch_10bc
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_199

    .line 10168
    :pswitch_10c0
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_199

    .line 10213
    :pswitch_10c4
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_199

    .line 10225
    :pswitch_10ce
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_199

    .line 10238
    :pswitch_10d8
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_199

    .line 10301
    :cond_10e2
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1c4

    .line 10303
    :try_start_10e8
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_10f2
    .catch Landroid/os/RemoteException; {:try_start_10e8 .. :try_end_10f2} :catch_10f4

    goto/16 :goto_1c4

    .line 10304
    :catch_10f4
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1c4

    .line 10291
    :cond_10fa
    :try_start_10fa
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1104
    .catch Landroid/os/RemoteException; {:try_start_10fa .. :try_end_1104} :catch_1106

    goto/16 :goto_1c4

    .line 10295
    :catch_1106
    move-exception v0

    goto/16 :goto_1c4

    .line 10057
    :cond_1109
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    if-eqz v0, :cond_1118

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_1118

    .line 10058
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->updateLookBackValue()V

    .line 10059
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 10064
    :cond_1118
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_11c2

    .line 10066
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Sync finished"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10068
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 10072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished exit status :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10076
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_1440

    .line 10185
    :pswitch_116c
    const/16 v0, 0x15

    .line 10187
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 10259
    :cond_1173
    :goto_1173
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_1183

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_12cb

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_12cb

    .line 10280
    :cond_1183
    :try_start_1183
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_118f

    if-ne v0, v2, :cond_118f

    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-eq v1, v10, :cond_118f

    move v0, v3

    .line 10286
    :cond_118f
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    if-ne v1, v10, :cond_12e3

    .line 10287
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/16 v2, -0x20

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_119e
    .catch Landroid/os/RemoteException; {:try_start_1183 .. :try_end_119e} :catch_12ef

    .line 10312
    :cond_119e
    :goto_119e
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Send intent about finished sync to SocialHub"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10313
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_11be

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_11be

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_11be

    .line 10314
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendBroadcastSyncCompleted(Landroid/content/Context;J)V

    .line 10319
    :cond_11be
    const-string v0, "sync finished"

    goto/16 :goto_11c

    .line 10195
    :cond_11c2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Stopped sync finished."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10199
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 10201
    if-eqz v0, :cond_11e3

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_11e3

    .line 10205
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const-wide/16 v5, 0x1f40

    invoke-static {v0, v1, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10209
    :cond_11e3
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_145c

    move v0, v3

    .line 10247
    goto :goto_1173

    .line 10107
    :pswitch_11ea
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10109
    const-string v1, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10113
    const-string v5, "syncStatus"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10115
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10119
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_12f5

    .line 10121
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v0, v1, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    move v0, v3

    goto/16 :goto_1173

    .line 10085
    :pswitch_1249
    const-string v0, "InitialSync"

    const-string v1, "In EasSyncService: Inside run(): EXIT_IO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10089
    const-string v1, "InitialSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In EasSyncService: Updating the synckey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10092
    const-string v1, "syncKey"

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10094
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 10101
    goto/16 :goto_1173

    .line 10128
    :pswitch_128a
    const/16 v0, 0x16

    .line 10130
    goto/16 :goto_1173

    .line 10134
    :pswitch_128e
    const/16 v0, 0x17

    .line 10144
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_1173

    .line 10146
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v5, v6, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1173

    .line 10153
    :pswitch_129f
    const/4 v0, 0x3

    .line 10155
    goto/16 :goto_1173

    .line 10161
    :pswitch_12a2
    const/4 v0, 0x4

    .line 10163
    goto/16 :goto_1173

    .line 10177
    :pswitch_12a5
    const/high16 v0, 0x11

    .line 10179
    goto/16 :goto_1173

    .line 10168
    :pswitch_12a9
    const/16 v0, 0xad

    .line 10170
    goto/16 :goto_1173

    .line 10213
    :pswitch_12ad
    const/4 v0, 0x3

    .line 10215
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server block this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1173

    .line 10225
    :pswitch_12b7
    const/4 v0, 0x4

    .line 10227
    const-string v1, "DeviceAccessPermission"

    const-string v5, "Service is stopped as server qurantined this device"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1173

    .line 10238
    :pswitch_12c1
    const-string v0, "Connection Error "

    const-string v1, "Service is stopped as Network Connectivity Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 10240
    goto/16 :goto_1173

    .line 10301
    :cond_12cb
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_119e

    .line 10303
    :try_start_12d1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_12db
    .catch Landroid/os/RemoteException; {:try_start_12d1 .. :try_end_12db} :catch_12dd

    goto/16 :goto_119e

    .line 10304
    :catch_12dd
    move-exception v0

    .line 10306
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_119e

    .line 10291
    :cond_12e3
    :try_start_12e3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v5, v6, v0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_12ed
    .catch Landroid/os/RemoteException; {:try_start_12e3 .. :try_end_12ed} :catch_12ef

    goto/16 :goto_119e

    .line 10295
    :catch_12ef
    move-exception v0

    goto/16 :goto_119e

    .line 9987
    :catch_12f2
    move-exception v1

    goto/16 :goto_253

    :cond_12f5
    move v0, v3

    goto/16 :goto_1173

    :cond_12f8
    move v0, v3

    goto/16 :goto_199

    :cond_12fb
    move v0, v3

    goto/16 :goto_cf

    :cond_12fe
    move v0, v3

    goto/16 :goto_676

    :cond_1301
    move v0, v3

    goto/16 :goto_5ad

    :cond_1304
    move v0, v3

    goto/16 :goto_4c8

    :cond_1307
    move v0, v3

    goto/16 :goto_3df

    :cond_130a
    move v0, v3

    goto/16 :goto_301

    :cond_130d
    move v1, v3

    goto/16 :goto_6c7

    .line 10076
    :pswitch_data_1310
    .packed-switch 0x0
        :pswitch_ed0
        :pswitch_f2f
        :pswitch_f70
        :pswitch_c8
        :pswitch_f74
        :pswitch_c8
        :pswitch_f85
        :pswitch_f88
        :pswitch_c8
        :pswitch_f8b
        :pswitch_c8
        :pswitch_f8f
    .end packed-switch

    :pswitch_data_132c
    .packed-switch 0x0
        :pswitch_1001
        :pswitch_1060
        :pswitch_10a1
        :pswitch_192
        :pswitch_10a5
        :pswitch_192
        :pswitch_10b6
        :pswitch_10b9
        :pswitch_192
        :pswitch_10bc
        :pswitch_192
        :pswitch_10c0
    .end packed-switch

    :pswitch_data_1348
    .packed-switch 0x0
        :pswitch_8db
        :pswitch_93a
        :pswitch_97b
        :pswitch_2fa
        :pswitch_97f
        :pswitch_2fa
        :pswitch_990
        :pswitch_993
        :pswitch_2fa
        :pswitch_996
        :pswitch_2fa
        :pswitch_99a
    .end packed-switch

    :pswitch_data_1364
    .packed-switch 0x0
        :pswitch_a0c
        :pswitch_a6b
        :pswitch_aac
        :pswitch_3d8
        :pswitch_ab0
        :pswitch_3d8
        :pswitch_ac1
        :pswitch_ac4
        :pswitch_3d8
        :pswitch_ac7
        :pswitch_3d8
        :pswitch_acb
    .end packed-switch

    :pswitch_data_1380
    .packed-switch 0x0
        :pswitch_b3d
        :pswitch_b9c
        :pswitch_bdd
        :pswitch_4c1
        :pswitch_be1
        :pswitch_4c1
        :pswitch_bf2
        :pswitch_bf5
        :pswitch_4c1
        :pswitch_bf8
        :pswitch_4c1
        :pswitch_bfc
    .end packed-switch

    :pswitch_data_139c
    .packed-switch 0x0
        :pswitch_c6e
        :pswitch_ccd
        :pswitch_d0e
        :pswitch_5a6
        :pswitch_d12
        :pswitch_5a6
        :pswitch_d23
        :pswitch_d26
        :pswitch_5a6
        :pswitch_d29
        :pswitch_5a6
        :pswitch_d2d
    .end packed-switch

    :pswitch_data_13b8
    .packed-switch 0x0
        :pswitch_d9f
        :pswitch_dfe
        :pswitch_e3f
        :pswitch_66f
        :pswitch_e43
        :pswitch_66f
        :pswitch_e54
        :pswitch_e57
        :pswitch_66f
        :pswitch_e5a
        :pswitch_66f
        :pswitch_e5e
    .end packed-switch

    :pswitch_data_13d4
    .packed-switch 0x0
        :pswitch_7ae
        :pswitch_80d
        :pswitch_6c5
        :pswitch_77c
        :pswitch_84e
        :pswitch_77c
        :pswitch_85f
        :pswitch_862
        :pswitch_77c
        :pswitch_865
        :pswitch_77c
        :pswitch_869
    .end packed-switch

    .line 10209
    :pswitch_data_13f0
    .packed-switch 0x6
        :pswitch_86d
        :pswitch_877
        :pswitch_881
    .end packed-switch

    :pswitch_data_13fa
    .packed-switch 0x6
        :pswitch_99e
        :pswitch_9a8
        :pswitch_9b2
    .end packed-switch

    :pswitch_data_1404
    .packed-switch 0x6
        :pswitch_acf
        :pswitch_ad9
        :pswitch_ae3
    .end packed-switch

    :pswitch_data_140e
    .packed-switch 0x6
        :pswitch_c00
        :pswitch_c0a
        :pswitch_c14
    .end packed-switch

    :pswitch_data_1418
    .packed-switch 0x6
        :pswitch_d31
        :pswitch_d3b
        :pswitch_d45
    .end packed-switch

    :pswitch_data_1422
    .packed-switch 0x6
        :pswitch_e62
        :pswitch_e6c
        :pswitch_e76
    .end packed-switch

    :pswitch_data_142c
    .packed-switch 0x6
        :pswitch_f93
        :pswitch_f9d
        :pswitch_fa7
    .end packed-switch

    :pswitch_data_1436
    .packed-switch 0x6
        :pswitch_10c4
        :pswitch_10ce
        :pswitch_10d8
    .end packed-switch

    .line 10076
    :pswitch_data_1440
    .packed-switch 0x0
        :pswitch_11ea
        :pswitch_1249
        :pswitch_128a
        :pswitch_116c
        :pswitch_128e
        :pswitch_116c
        :pswitch_129f
        :pswitch_12a2
        :pswitch_116c
        :pswitch_12a5
        :pswitch_116c
        :pswitch_12a9
    .end packed-switch

    .line 10209
    :pswitch_data_145c
    .packed-switch 0x6
        :pswitch_12ad
        :pswitch_12b7
        :pswitch_12c1
    .end packed-switch
.end method

.method public runAccountMailbox()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6916
    iput v7, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 6919
    :try_start_5
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_54b
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_5 .. :try_end_12} :catch_16b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_18a

    .line 6926
    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_25

    .line 6927
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "runAccountMailbox returns due to SECURITY HOLD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6928
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 7331
    :cond_24
    :goto_24
    return-void

    .line 6932
    :cond_25
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_51

    .line 6933
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 6934
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Account syncKey INIT to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6935
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6936
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6937
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 6940
    :cond_51
    const-string v0, "0"

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 6941
    if-eqz v0, :cond_68

    .line 6942
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Initial FolderSync"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6971
    :cond_68
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 6972
    const-string v0, "syncInterval"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6973
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=? and syncInterval=-3"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_96

    .line 6977
    const-string v0, "change ping boxes to push"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 6983
    :cond_96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_125

    .line 6984
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Determine EAS protocol version"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6985
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 6986
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 6987
    const-string v2, "OPTIONS response: "

    invoke-virtual {p0, v2, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 6988
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1a6

    .line 6989
    const-string v1, "MS-ASProtocolCommands"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 6990
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6991
    const-string v1, "ms-asprotocolversions"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_de
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_12 .. :try_end_de} :catch_16b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_de} :catch_18a

    move-result-object v0

    .line 6993
    :try_start_df
    invoke-direct {p0, p0, v0}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 6996
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Using version "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_f2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_df .. :try_end_f2} :catch_183
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_df .. :try_end_f2} :catch_16b
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_f2} :catch_18a

    .line 7004
    :try_start_f2
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 7006
    const-string v0, "protocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7008
    const-string v0, "deviceBlockedType"

    sget v1, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_ALLOWED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7010
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 7011
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 7013
    const-string v0, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7014
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 7023
    :cond_125
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v0, v11, :cond_13a

    .line 7025
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/ExchangeService;->setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V

    .line 7029
    :cond_13a
    :goto_13a
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_24

    .line 7031
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 7035
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 7037
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c6

    .line 7046
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "runAccountMailbox(): Provisioning needed. Sending Provision..."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7047
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v0

    if-nez v0, :cond_1b1

    .line 7049
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_169
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_f2 .. :try_end_169} :catch_16b
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_169} :catch_18a

    goto/16 :goto_24

    .line 7273
    :catch_16b
    move-exception v0

    .line 7281
    iget v0, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 7282
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v1

    if-eqz v1, :cond_4fa

    .line 7285
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_24

    .line 7288
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v0

    if-nez v0, :cond_24

    .line 7290
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_24

    .line 6997
    :catch_183
    move-exception v0

    .line 7001
    :try_start_184
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_18a
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_184 .. :try_end_18a} :catch_16b
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_18a} :catch_18a

    .line 7310
    :catch_18a
    move-exception v0

    .line 7315
    :try_start_18b
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_19c

    .line 7321
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_18b .. :try_end_19c} :catch_545

    .line 7328
    :cond_19c
    :goto_19c
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "runAccountMailbox(): Caught IO exception. Sending to run()"

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7329
    throw v0

    .line 7016
    :cond_1a6
    :try_start_1a6
    const-string v0, "OPTIONS command failed; throwing IOException"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 7017
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 7055
    :cond_1b1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    .line 7056
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 7058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 7059
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    goto/16 :goto_24

    .line 7069
    :cond_1c6
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 7071
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sending Account syncKey: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7073
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 7074
    const/16 v1, 0x1d6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1d2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 7078
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_223

    .line 7079
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "runAccountMailbox(): Wbxml:"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7080
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 7081
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7082
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 7083
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_223
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1a6 .. :try_end_223} :catch_16b
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_223} :catch_18a

    .line 7089
    :cond_223
    :try_start_223
    const-string v1, "FolderSync"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 7090
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_22f
    .catchall {:try_start_223 .. :try_end_22f} :catchall_38a

    if-eqz v1, :cond_248

    .line 7190
    :try_start_231
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_236
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_231 .. :try_end_236} :catch_16b
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_236} :catch_18a

    .line 7191
    :try_start_236
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_242

    .line 7192
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_242
    monitor-exit v1

    goto/16 :goto_24

    :catchall_245
    move-exception v0

    monitor-exit v1
    :try_end_247
    .catchall {:try_start_236 .. :try_end_247} :catchall_245

    :try_start_247
    throw v0
    :try_end_248
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_247 .. :try_end_248} :catch_16b
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_248} :catch_18a

    .line 7092
    :cond_248
    :try_start_248
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 7094
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_270

    .line 7095
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runAccountMailbox(): FolderSync command http response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7100
    :cond_270
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2b3

    .line 7104
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 7106
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 7107
    if-eqz v2, :cond_2b3

    .line 7108
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 7110
    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v3, Lcom/android/exchange/adapter/AccountSyncAdapter;

    invoke-direct {v3, p0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v2, v0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v2}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_299
    .catchall {:try_start_248 .. :try_end_299} :catchall_38a

    move-result v0

    if-eqz v0, :cond_2b3

    .line 7190
    :try_start_29c
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2a1
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_29c .. :try_end_2a1} :catch_16b
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_2a1} :catch_18a

    .line 7191
    :try_start_2a1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_2ad

    .line 7192
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_2ad
    monitor-exit v1

    goto/16 :goto_13a

    :catchall_2b0
    move-exception v0

    monitor-exit v1
    :try_end_2b2
    .catchall {:try_start_2a1 .. :try_end_2b2} :catchall_2b0

    :try_start_2b2
    throw v0
    :try_end_2b3
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2b2 .. :try_end_2b3} :catch_16b
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b3} :catch_18a

    .line 7119
    :cond_2b3
    :try_start_2b3
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v0, :cond_2d9

    .line 7120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WARNING!!! Thread execution stopped. Exit runAccountMailbox!"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2c2
    .catchall {:try_start_2b3 .. :try_end_2c2} :catchall_38a

    .line 7190
    :try_start_2c2
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2c7
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2c2 .. :try_end_2c7} :catch_16b
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2c7} :catch_18a

    .line 7191
    :try_start_2c7
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_2d3

    .line 7192
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_2d3
    monitor-exit v1

    goto/16 :goto_24

    :catchall_2d6
    move-exception v0

    monitor-exit v1
    :try_end_2d8
    .catchall {:try_start_2c7 .. :try_end_2d8} :catchall_2d6

    :try_start_2d8
    throw v0
    :try_end_2d9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2d8 .. :try_end_2d9} :catch_16b
    .catch Ljava/io/IOException; {:try_start_2d8 .. :try_end_2d9} :catch_18a

    .line 7126
    :cond_2d9
    :try_start_2d9
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-nez v0, :cond_31d

    .line 7133
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeviceInfoSent()I

    move-result v0

    if-ne v0, v6, :cond_33e

    move v0, v6

    .line 7135
    :goto_2e8
    if-nez v0, :cond_31d

    .line 7136
    const-string v0, "EasSyncService"

    const-string v2, "Device info not yet sent"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f1
    .catchall {:try_start_2d9 .. :try_end_2f1} :catchall_38a

    .line 7138
    :try_start_2f1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_31d

    .line 7139
    new-instance v0, Lcom/android/exchange/DeviceInformation;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/DeviceInformation;-><init>(D)V
    :try_end_308
    .catchall {:try_start_2f1 .. :try_end_308} :catchall_38a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f1 .. :try_end_308} :catch_385

    .line 7142
    :try_start_308
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/exchange/DeviceInformation;->prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_340

    .line 7144
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "INIT_ERROR Device Information"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31d
    .catchall {:try_start_308 .. :try_end_31d} :catchall_38a
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_31d} :catch_379
    .catch Ljava/lang/IllegalArgumentException; {:try_start_308 .. :try_end_31d} :catch_385

    .line 7175
    :cond_31d
    :goto_31d
    :try_start_31d
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v0

    if-eqz v0, :cond_3a7

    .line 7179
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I
    :try_end_327
    .catchall {:try_start_31d .. :try_end_327} :catchall_38a

    .line 7190
    :try_start_327
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_32c
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_327 .. :try_end_32c} :catch_16b
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_32c} :catch_18a

    .line 7191
    :try_start_32c
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_338

    .line 7192
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_338
    monitor-exit v1

    goto/16 :goto_13a

    :catchall_33b
    move-exception v0

    monitor-exit v1
    :try_end_33d
    .catchall {:try_start_32c .. :try_end_33d} :catchall_33b

    :try_start_33d
    throw v0
    :try_end_33e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_33d .. :try_end_33e} :catch_16b
    .catch Ljava/io/IOException; {:try_start_33d .. :try_end_33e} :catch_18a

    :cond_33e
    move v0, v7

    .line 7133
    goto :goto_2e8

    .line 7146
    :cond_340
    :try_start_340
    invoke-virtual {v0}, Lcom/android/exchange/DeviceInformation;->buildCommand()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 7147
    if-eqz v0, :cond_39e

    .line 7148
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->sendDeviceInformation(Landroid/content/Context;Lcom/android/exchange/adapter/Serializer;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_31d

    .line 7150
    const-string v0, "EasSyncService"

    const-string v2, "Device Info sent, set to 1 in db"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7152
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeviceInfoSent(I)V

    .line 7153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7154
    const-string v2, "deviceInfoSent"

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeviceInfoSent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7156
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_378
    .catchall {:try_start_340 .. :try_end_378} :catchall_38a
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_378} :catch_379
    .catch Ljava/lang/IllegalArgumentException; {:try_start_340 .. :try_end_378} :catch_385

    goto :goto_31d

    .line 7162
    :catch_379
    move-exception v0

    .line 7163
    :try_start_37a
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "INIT_ERROR Device Information"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_384
    .catchall {:try_start_37a .. :try_end_384} :catchall_38a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37a .. :try_end_384} :catch_385

    goto :goto_31d

    .line 7167
    :catch_385
    move-exception v0

    .line 7168
    :try_start_386
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_389
    .catchall {:try_start_386 .. :try_end_389} :catchall_38a

    goto :goto_31d

    .line 7190
    :catchall_38a
    move-exception v0

    :try_start_38b
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_390
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_38b .. :try_end_390} :catch_16b
    .catch Ljava/io/IOException; {:try_start_38b .. :try_end_390} :catch_18a

    .line 7191
    :try_start_390
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_39c

    .line 7192
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_39c
    monitor-exit v1
    :try_end_39d
    .catchall {:try_start_390 .. :try_end_39d} :catchall_53f

    .line 7190
    :try_start_39d
    throw v0
    :try_end_39e
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_39d .. :try_end_39e} :catch_16b
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_39e} :catch_18a

    .line 7159
    :cond_39e
    :try_start_39e
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "deviceSerializer is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a5
    .catchall {:try_start_39e .. :try_end_3a5} :catchall_38a
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3a5} :catch_379
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39e .. :try_end_3a5} :catch_385

    goto/16 :goto_31d

    .line 7182
    :cond_3a7
    :try_start_3a7
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_3c7

    .line 7183
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3b0
    .catchall {:try_start_3a7 .. :try_end_3b0} :catchall_38a

    .line 7190
    :try_start_3b0
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3b5
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3b0 .. :try_end_3b5} :catch_16b
    .catch Ljava/io/IOException; {:try_start_3b0 .. :try_end_3b5} :catch_18a

    .line 7191
    :try_start_3b5
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_3c1

    .line 7192
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_3c1
    monitor-exit v1

    goto/16 :goto_24

    :catchall_3c4
    move-exception v0

    monitor-exit v1
    :try_end_3c6
    .catchall {:try_start_3b5 .. :try_end_3c6} :catchall_3c4

    :try_start_3c6
    throw v0
    :try_end_3c7
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3c6 .. :try_end_3c7} :catch_16b
    .catch Ljava/io/IOException; {:try_start_3c6 .. :try_end_3c7} :catch_18a

    .line 7186
    :cond_3c7
    :try_start_3c7
    const-string v0, "FolderSync response error: "

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_3cc
    .catchall {:try_start_3c7 .. :try_end_3cc} :catchall_38a

    .line 7190
    :try_start_3cc
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3d1
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3cc .. :try_end_3d1} :catch_16b
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_3d1} :catch_18a

    .line 7191
    :try_start_3d1
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_3dd

    .line 7192
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 7193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 7195
    :cond_3dd
    monitor-exit v1
    :try_end_3de
    .catchall {:try_start_3d1 .. :try_end_3de} :catchall_542

    .line 7199
    :try_start_3de
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 7200
    const-string v0, "syncInterval"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7201
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=? and syncInterval=-4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_410

    .line 7205
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Set push/hold boxes to push..."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_410
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_3de .. :try_end_410} :catch_16b
    .catch Ljava/io/IOException; {:try_start_3de .. :try_end_410} :catch_18a

    .line 7208
    :cond_410
    :try_start_410
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_41e
    .catch Landroid/os/RemoteException; {:try_start_410 .. :try_end_41e} :catch_548
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_410 .. :try_end_41e} :catch_16b
    .catch Ljava/io/IOException; {:try_start_410 .. :try_end_41e} :catch_18a

    .line 7216
    :goto_41e
    :try_start_41e
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v0, :cond_42f

    .line 7217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WARNING!!! Thread execution stopped. Exit runAccountMailbox!"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_24

    .line 7227
    :cond_42f
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 7228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_472

    .line 7233
    new-instance v0, Lcom/android/emailcommon/service/PolicySet;

    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/service/PolicySet;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 7234
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v0

    if-nez v0, :cond_472

    .line 7235
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 7236
    const-string v0, "securityFlags"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7237
    const-string v0, "securitySyncKey"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 7238
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 7239
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7242
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    .line 7248
    :cond_472
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4b2

    .line 7249
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set to syncInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". runPingloop not started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_24

    .line 7256
    :cond_4b2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_4b9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_41e .. :try_end_4b9} :catch_16b
    .catch Ljava/io/IOException; {:try_start_41e .. :try_end_4b9} :catch_18a

    .line 7258
    :try_start_4b9
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->runPingLoop()V
    :try_end_4bc
    .catchall {:try_start_4b9 .. :try_end_4bc} :catchall_4ef
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_4b9 .. :try_end_4bc} :catch_4c7
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_4b9 .. :try_end_4bc} :catch_4de

    .line 7268
    :try_start_4bc
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_4c5
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_4bc .. :try_end_4c5} :catch_16b
    .catch Ljava/io/IOException; {:try_start_4bc .. :try_end_4c5} :catch_18a

    goto/16 :goto_13a

    .line 7259
    :catch_4c7
    move-exception v0

    .line 7261
    const/4 v0, 0x1

    :try_start_4c9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Ping interrupted; folder list requires sync..."

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_4d3
    .catchall {:try_start_4c9 .. :try_end_4d3} :catchall_4ef

    .line 7268
    :try_start_4d3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_4dc
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_4d3 .. :try_end_4dc} :catch_16b
    .catch Ljava/io/IOException; {:try_start_4d3 .. :try_end_4dc} :catch_18a

    goto/16 :goto_13a

    .line 7262
    :catch_4de
    move-exception v0

    .line 7266
    :try_start_4df
    iget v0, v0, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->resetHeartbeats(I)V
    :try_end_4e4
    .catchall {:try_start_4df .. :try_end_4e4} :catchall_4ef

    .line 7268
    :try_start_4e4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_13a

    :catchall_4ef
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
    :try_end_4fa
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_4e4 .. :try_end_4fa} :catch_16b
    .catch Ljava/io/IOException; {:try_start_4e4 .. :try_end_4fa} :catch_18a

    .line 7295
    :cond_4fa
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTooManyPartnerships(I)Z

    move-result v1

    if-eqz v1, :cond_506

    .line 7296
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_24

    .line 7298
    :cond_506
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isServerError(I)Z

    move-result v1

    if-eqz v1, :cond_512

    .line 7299
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_24

    .line 7300
    :cond_512
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v1

    if-eqz v1, :cond_51c

    .line 7301
    iput v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_24

    .line 7304
    :cond_51c
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 7305
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_24

    .line 7195
    :catchall_53f
    move-exception v0

    :try_start_540
    monitor-exit v1
    :try_end_541
    .catchall {:try_start_540 .. :try_end_541} :catchall_53f

    :try_start_541
    throw v0
    :try_end_542
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_541 .. :try_end_542} :catch_16b
    .catch Ljava/io/IOException; {:try_start_541 .. :try_end_542} :catch_18a

    :catchall_542
    move-exception v0

    :try_start_543
    monitor-exit v1
    :try_end_544
    .catchall {:try_start_543 .. :try_end_544} :catchall_542

    :try_start_544
    throw v0
    :try_end_545
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_544 .. :try_end_545} :catch_16b
    .catch Ljava/io/IOException; {:try_start_544 .. :try_end_545} :catch_18a

    .line 7324
    :catch_545
    move-exception v1

    goto/16 :goto_19c

    .line 7209
    :catch_548
    move-exception v0

    goto/16 :goto_41e

    .line 6921
    :catch_54b
    move-exception v0

    goto/16 :goto_12
.end method

.method public sendDeviceInfomationProvision(Landroid/content/Context;)Lcom/android/exchange/adapter/Serializer;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 10578
    if-nez p1, :cond_a

    .line 10580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10584
    :cond_a
    new-instance v1, Lcom/android/exchange/DeviceInformation;

    sget-wide v2, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    invoke-direct {v1, v2, v3}, Lcom/android/exchange/DeviceInformation;-><init>(D)V

    .line 10588
    :try_start_11
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/exchange/DeviceInformation;->prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_20

    .line 10598
    :goto_1a
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/exchange/DeviceInformation;->buildCommand(Z)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0

    .line 10590
    :catch_20
    move-exception v0

    .line 10592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public sendDeviceInformation(Landroid/content/Context;Lcom/android/exchange/adapter/Serializer;)I
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 10454
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 10456
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10460
    :cond_c
    const-string v0, "Settings"

    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 10464
    if-nez v1, :cond_21

    .line 10466
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v1, "unable to get response from the server"

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10468
    const/4 v0, -0x1

    .line 10506
    :cond_20
    :goto_20
    return v0

    .line 10472
    :cond_21
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 10474
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10476
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_85

    .line 10478
    new-instance v2, Lcom/android/exchange/adapter/SettingsParser;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V

    .line 10482
    :try_start_52
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z

    move-result v1

    if-nez v1, :cond_20

    .line 10484
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server responded with error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for settings command"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10488
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->getStatus()I
    :try_end_7d
    .catch Lcom/android/exchange/EasException; {:try_start_52 .. :try_end_7d} :catch_7f

    move-result v0

    goto :goto_20

    .line 10492
    :catch_7f
    move-exception v0

    .line 10494
    invoke-virtual {v0}, Lcom/android/exchange/EasException;->printStackTrace()V

    .line 10496
    const/4 v0, -0x2

    goto :goto_20

    .line 10502
    :cond_85
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "unable to send device information to the server"

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method protected sendHttpClientOptions()Lorg/apache/http/HttpResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6115
    const v0, 0x13880

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 6117
    const-string v1, "OPTIONS"

    invoke-virtual {p0, v1, v9}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6119
    new-instance v2, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 6121
    invoke-virtual {p0, v2, v7}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 6125
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_71

    .line 6127
    new-array v3, v8, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHttpClientOptions(): URI String:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 6129
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpOptions;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v1

    .line 6131
    :cond_3e
    :goto_3e
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 6133
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    .line 6135
    if-eqz v3, :cond_3e

    .line 6137
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_3e

    .line 6147
    :cond_71
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6149
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 6151
    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8c

    if-ltz v3, :cond_8c

    .line 6153
    sget-object v4, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v2, v1, v3}, Lcom/android/exchange/EasSyncService;->addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;I)V

    .line 6158
    :cond_8c
    new-instance v1, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;

    invoke-direct {v1, p0, v9}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V

    .line 6159
    invoke-virtual {v1, v0, v2}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->execOption(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpOptions;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter "cmd"
    .parameter "entity"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;IZ)Lorg/apache/http/HttpResponse;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5653
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHttpClientPost: isHBISyncCommand = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5656
    const-string v2, "Ping"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    if-eqz p4, :cond_2ac

    :cond_2c
    const/4 v2, 0x1

    move v10, v2

    .line 5658
    :goto_2e
    const-string v2, "SendMail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "SmartReply"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "SmartForward"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b0

    :cond_4c
    const/4 v2, 0x1

    move v11, v2

    .line 5675
    :goto_4e
    const-string v2, "ItemOperations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "Sync"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4004

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2b4

    .line 5677
    :cond_70
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getLoadMoreClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v9

    .line 5703
    :cond_78
    :goto_78
    const-string v2, "SendMail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "SmartReply"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "SmartForward"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    :cond_96
    move-object v2, v9

    .line 5704
    check-cast v2, Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v3, Lcom/android/exchange/EasSyncService$2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/exchange/EasSyncService$2;-><init>(Lcom/android/exchange/EasSyncService;IZ)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 5731
    :cond_a5
    const-string v2, "GetAttachment&AttachmentName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    .line 5733
    const/4 v3, 0x0

    .line 5741
    const-string v2, "ItemOperations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 5745
    if-eqz v2, :cond_d5

    .line 5749
    const-string v2, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5751
    array-length v4, v2

    .line 5753
    const/4 v5, 0x0

    aget-object p1, v2, v5

    .line 5755
    const/4 v5, 0x2

    if-lt v4, v5, :cond_d2

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const-string v5, "MULTIPART"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 5759
    :cond_d2
    const/4 v2, 0x3

    if-lt v4, v2, :cond_d5

    .line 5767
    :cond_d5
    const-string v2, "Search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 5774
    :cond_df
    const/4 v4, 0x1

    .line 5778
    const/4 v5, 0x0

    .line 5780
    const/4 v2, 0x0

    .line 5782
    const-string v6, "SmartForward&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f6

    const-string v6, "SmartReply&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31a

    .line 5784
    :cond_f6
    const/16 v2, 0x26

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 5786
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 5788
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v12, 0x402c

    cmpl-double v2, v6, v12

    if-ltz v2, :cond_317

    .line 5794
    const/4 v2, 0x0

    :goto_11c
    move v12, v2

    .line 5822
    :goto_11d
    const-string v2, "Ping"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_131

    const-string v2, "Options"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33c

    .line 5824
    :cond_131
    const/4 v2, 0x0

    move v6, v2

    move-object/from16 v4, p1

    .line 5844
    :goto_135
    if-eqz v14, :cond_4dc

    .line 5846
    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 5848
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5850
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendHttpClientPost cmd for attachment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v2

    .line 5858
    :goto_163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v7, "2.5"

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v2, v2, v7

    if-nez v2, :cond_19d

    .line 5860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_19d

    .line 5862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v2, :cond_19d

    .line 5864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 5866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 5874
    :cond_19d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProtocolVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5878
    const-string v7, "0"

    .line 5880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_1fd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-eqz v2, :cond_1fd

    .line 5882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 5884
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PolicyKey is set. PolicyKey:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5892
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v15, 0x402c333333333333L

    cmpg-double v2, v2, v15

    if-lez v2, :cond_226

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_226

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_35e

    .line 5913
    :cond_226
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5917
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_24e

    .line 5919
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendHttpClientPost:URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5923
    :cond_24e
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 5928
    if-eqz v10, :cond_34e

    .line 5929
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/exchange/EasSyncService;->setHeadersPingCommand(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    :cond_25e
    :goto_25e
    move-object v5, v2

    .line 5993
    :goto_25f
    if-eqz v12, :cond_453

    .line 5995
    const-string v2, "Content-Type"

    const-string v3, "message/rfc822"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6033
    :cond_268
    :goto_268
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 6037
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_48e

    .line 6039
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 6041
    :cond_275
    :goto_275
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48e

    .line 6043
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    .line 6045
    if-eqz v3, :cond_275

    .line 6047
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_275

    .line 5656
    :cond_2ac
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_2e

    .line 5658
    :cond_2b0
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_4e

    .line 5681
    :cond_2b4
    if-eqz v11, :cond_301

    .line 5682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_2ec

    .line 5683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendHttpClientPost(). isOutboxSendMailCommand. mAccount.mId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->getSendMessageClient(IJ)Lorg/apache/http/client/HttpClient;

    move-result-object v9

    goto/16 :goto_78

    .line 5686
    :cond_2ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "sendHttpClientPost(). isOutboxSendMailCommand. mAccount is null. abnormal case."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->getSendMessageClient(IJ)Lorg/apache/http/client/HttpClient;

    move-result-object v9

    goto/16 :goto_78

    .line 5692
    :cond_301
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v9

    .line 5694
    const-string v2, "ItemOperations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 5696
    const-string p1, "ItemOperations"

    goto/16 :goto_78

    .line 5798
    :cond_317
    const/4 v2, 0x1

    goto/16 :goto_11c

    .line 5804
    :cond_31a
    const-string v6, "SendMail&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e4

    .line 5808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v12, 0x402c

    cmpl-double v2, v6, v12

    if-ltz v2, :cond_338

    .line 5810
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_11d

    .line 5814
    :cond_338
    const/4 v2, 0x1

    move v12, v2

    goto/16 :goto_11d

    .line 5826
    :cond_33c
    const-string v2, "NHProvision"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4df

    .line 5832
    const/4 v2, 0x0

    .line 5838
    const-string p1, "Provision"

    move v6, v2

    move-object/from16 v4, p1

    goto/16 :goto_135

    .line 5931
    :cond_34e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 5933
    if-eqz v11, :cond_25e

    .line 5934
    const-string v3, "Connection"

    const-string v5, "close"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25e

    .line 5940
    :cond_35e
    new-instance v2, Lcom/android/exchange/adapter/EasBase64EncodedURI;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v8, v15}, Lcom/android/exchange/adapter/EasBase64EncodedURI;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 5944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getUriString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5950
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_3a5

    .line 5952
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendHttpClientPost:URI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5956
    :cond_3a5
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 5960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5962
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-nez v5, :cond_432

    .line 5964
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5968
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 5970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&User="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&DeviceId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&DeviceType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/EasSyncService;->mCmdString:Ljava/lang/String;

    .line 5976
    :cond_432
    const-string v3, "Authorization"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5980
    if-nez v10, :cond_43f

    if-eqz v11, :cond_449

    .line 5981
    :cond_43f
    const-string v3, "Connection"

    const-string v5, "close"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto/16 :goto_25f

    .line 5983
    :cond_449
    const-string v3, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto/16 :goto_25f

    .line 5999
    :cond_453
    if-eqz p2, :cond_473

    .line 6000
    const-string v2, "Content-Type"

    const-string v3, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6002
    const-string v2, "Sync"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->isGZipEnabled()Z

    move-result v2

    if-eqz v2, :cond_268

    .line 6003
    :cond_46a
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_268

    .line 6007
    :cond_473
    if-eqz v14, :cond_268

    if-eqz v13, :cond_268

    .line 6015
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 6017
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->checkGzipRequired(Ljava/lang/String;)Z

    move-result v2

    .line 6019
    if-eqz v2, :cond_268

    .line 6021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "sendHttpClientPost setheader:gzip "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_268

    .line 6057
    :cond_48e
    const/4 v7, 0x0

    .line 6059
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 6063
    const-string v2, "Sync"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b5

    const-string v2, "FolderSync"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b5

    const-string v2, "Provision"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b5

    const-string v2, "Ping"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b5

    .line 6067
    const/4 v7, 0x1

    .line 6075
    :cond_4b5
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exchange/utility/ProxyUtils;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6077
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/exchange/utility/ProxyUtils;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 6079
    if-eqz v2, :cond_4d0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4d0

    if-ltz v3, :cond_4d0

    .line 6081
    sget-object v4, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v4, v9, v5, v2, v3}, Lcom/android/exchange/EasSyncService;->addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;I)V

    :cond_4d0
    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v5

    move/from16 v5, p3

    move v6, v10

    .line 6087
    invoke-virtual/range {v2 .. v7}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2

    :cond_4dc
    move-object v13, v3

    goto/16 :goto_163

    :cond_4df
    move v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_135

    :cond_4e4
    move v12, v2

    goto/16 :goto_11d
.end method

.method public sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5575
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const v1, 0x13880

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method sendMeetingEditedResponseCallback(ZJJ)V
    .registers 13
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"

    .prologue
    .line 5181
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMeetingEditedResponseCallback(ZJJ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 5193
    :goto_a
    return-void

    .line 5185
    :catch_b
    move-exception v6

    .line 5189
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4988
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 4990
    if-nez v0, :cond_d

    .line 5173
    :cond_c
    :goto_c
    return-void

    .line 4994
    :cond_d
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 4996
    if-eqz v1, :cond_c

    .line 5000
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 5002
    const/16 v3, 0x207

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x209

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 5006
    const/16 v3, 0x20c

    iget v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    and-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 5012
    const/16 v3, 0x206

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 5014
    const/16 v1, 0x208

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 5016
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 5020
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v1, :cond_6b

    .line 5022
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "sendMeetingResponse(): Wbxml:"

    aput-object v3, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5024
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 5026
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5028
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 5030
    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 5038
    :cond_6b
    const/4 v1, 0x0

    .line 5042
    :try_start_6c
    const-string v3, "MeetingResponse"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 5044
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_183
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_79} :catch_186

    move-result-object v6

    .line 5048
    :try_start_7a
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 5052
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v3, :cond_a2

    .line 5054
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMeetingResponse(): MeetingResponse http response code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5060
    :cond_a2
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_141

    .line 5062
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v1, v3

    .line 5064
    if-eqz v1, :cond_135

    .line 5066
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 5068
    new-instance v2, Lcom/android/exchange/adapter/MeetingResponseParser;

    invoke-direct {v2, v1, p0}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v2}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 5070
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 5072
    if-eqz v1, :cond_e4

    .line 5074
    new-instance v2, Lcom/android/emailcommon/mail/PackedString;

    invoke-direct {v2, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v1, "RESPONSE"

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5084
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 5086
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V
    :try_end_dd
    .catchall {:try_start_7a .. :try_end_dd} :catchall_156
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_dd} :catch_11b

    .line 5165
    if-eqz v6, :cond_c

    .line 5167
    :goto_df
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_c

    .line 5097
    :cond_e4
    const/4 v1, 0x0

    :try_start_e5
    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 5165
    if-eqz v6, :cond_c

    goto :goto_df

    .line 5104
    :cond_f0
    iget v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_101

    .line 5106
    iget v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_10d

    .line 5108
    iget v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 5121
    :cond_101
    :goto_101
    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 5165
    if-eqz v6, :cond_c

    goto :goto_df

    .line 5112
    :cond_10d
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 5115
    iget v2, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_11a
    .catchall {:try_start_e5 .. :try_end_11a} :catchall_156
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_11a} :catch_11b

    goto :goto_101

    .line 5149
    :catch_11b
    move-exception v0

    move-object v7, v6

    move-object v6, v0

    .line 5151
    :goto_11e
    if-eqz v7, :cond_123

    .line 5153
    :try_start_120
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 5157
    :cond_123
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 5159
    throw v6
    :try_end_12d
    .catchall {:try_start_120 .. :try_end_12d} :catchall_12d

    .line 5165
    :catchall_12d
    move-exception v0

    move-object v6, v7

    :goto_12f
    if-eqz v6, :cond_134

    .line 5167
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 5165
    :cond_134
    throw v0

    .line 5127
    :cond_135
    const/4 v1, 0x0

    :try_start_136
    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 5165
    if-eqz v6, :cond_c

    goto :goto_df

    .line 5133
    :cond_141
    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 5135
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 5137
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 5165
    :catchall_156
    move-exception v0

    goto :goto_12f

    .line 5141
    :cond_158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meeting response request failed, code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5143
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/exchange/Request;->mMessageId:J

    iget-wide v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mDraftMessageId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 5145
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_183
    .catchall {:try_start_136 .. :try_end_183} :catchall_156
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_183} :catch_11b

    .line 5165
    :catchall_183
    move-exception v0

    move-object v6, v1

    goto :goto_12f

    .line 5149
    :catch_186
    move-exception v0

    move-object v6, v0

    move-object v7, v1

    goto :goto_11e
.end method

.method protected sendPing([BI)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5588
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_62

    .line 5589
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send ping, timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5590
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5596
    :goto_50
    if-eqz p1, :cond_81

    .line 5597
    const-string v0, "Ping"

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v2, p2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 5600
    :goto_61
    return-object v0

    .line 5592
    :cond_62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_50

    .line 5600
    :cond_81
    const-string v0, "Ping"

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_61
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 5302
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5303
    const-string v0, "MS-ASProtocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5304
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5305
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5306
    if-eqz p2, :cond_49

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_49

    .line 5307
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 5308
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_32

    .line 5309
    :cond_30
    const-string v0, "0"

    .line 5311
    :cond_32
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v1, :cond_44

    .line 5312
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Policy key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 5314
    :cond_44
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5316
    :cond_49
    return-void
.end method

.method setHeadersPingCommand(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 5321
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5322
    const-string v0, "MS-ASProtocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5323
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    const-string v0, "User-Agent"

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    if-eqz p2, :cond_35

    .line 5331
    const-string v1, "0"

    .line 5332
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_36

    .line 5333
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 5334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 5338
    :goto_30
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 5340
    :cond_35
    return-void

    :cond_36
    move-object v0, v1

    goto :goto_30
.end method

.method public setmPendingMessageId(J)V
    .registers 7
    .parameter

    .prologue
    .line 1114
    const-string v0, "setmPendingMessageId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iput-wide p1, p0, Lcom/android/exchange/EasSyncService;->mPendingMessageId:J

    .line 1116
    return-void
.end method

.method public setupAdhocService(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 10402
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 10404
    .local v1, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v1, :cond_d

    .line 10438
    :goto_c
    return v4

    .line 10408
    :cond_d
    sput-object p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 10410
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 10412
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 10414
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 10416
    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_48

    move v2, v3

    :goto_22
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 10418
    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4a

    move v2, v3

    :goto_2b
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 10420
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 10422
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 10426
    const/4 v2, 0x0

    :try_start_40
    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_4c

    move v4, v3

    .line 10438
    goto :goto_c

    :cond_48
    move v2, v4

    .line 10416
    goto :goto_22

    :cond_4a
    move v2, v4

    .line 10418
    goto :goto_2b

    .line 10428
    :catch_4c
    move-exception v0

    .line 10430
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get deviceId"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10432
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c
.end method

.method protected setupService()Z
    .registers 9

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 9763
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 9765
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 9767
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9771
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_25

    .line 9775
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 9777
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v3, :cond_28

    .line 9839
    :cond_24
    :goto_24
    return v2

    .line 9771
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    .line 9787
    :cond_28
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 9789
    .local v1, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v1, :cond_3c

    .line 9791
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v4, "ha is null for account"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 9797
    :cond_3c
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 9799
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 9801
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 9805
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 9809
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v3, :cond_56

    .line 9811
    const-string v3, "2.5"

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 9815
    :cond_56
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 9819
    :try_start_62
    sget-object v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6e} :catch_87

    .line 9829
    :goto_6e
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_24

    .line 9833
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 9835
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9839
    const/4 v2, 0x1

    goto :goto_24

    .line 9821
    :catch_87
    move-exception v0

    .line 9823
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "error occruerd here "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e
.end method

.method protected shutdownConnectionManagerForSendMessage(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 5409
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->shutdownSendMessageConnection(J)V

    .line 5411
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1161
    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 1163
    new-array v1, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop() called for thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1171
    :try_start_31
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    if-nez v0, :cond_61

    .line 1179
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop(): Clearing WatchdogAlarm for mailbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1191
    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    .line 1197
    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_31 .. :try_end_62} :catchall_70

    .line 1201
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_6d

    .line 1203
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-wide v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 1205
    :cond_6d
    return-void

    .line 1163
    :cond_6e
    const/4 v0, 0x0

    goto :goto_1f

    .line 1197
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 8696
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 8700
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v4

    .line 8702
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    .line 8704
    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->SyncKey:Ljava/lang/String;

    .line 8706
    iget-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->CollectionId:Ljava/lang/String;

    .line 8712
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "mailboxKey"

    aput-object v2, v3, v1

    .line 8720
    const/4 v2, 0x1

    .line 8722
    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    move-object v1, v4

    .line 8724
    :goto_24
    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_752

    if-nez v8, :cond_30

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasPendingRequests()Z

    move-result v2

    if-eqz v2, :cond_752

    .line 8732
    :cond_30
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_45

    .line 8734
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No connectivity in sync; finishing sync"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 8736
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 9575
    :goto_44
    return-void

    .line 8746
    :cond_45
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 8748
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_44

    .line 8756
    :cond_4f
    if-eqz v1, :cond_d7

    const-string v2, "Email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 8757
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8761
    if-eqz v10, :cond_cc

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_cc

    .line 8764
    const/4 v1, -0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8765
    :cond_86
    :goto_86
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 8766
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 8768
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8772
    if-eqz v1, :cond_86

    if-eqz v1, :cond_aa

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 8777
    :cond_aa
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 8779
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    cmp-long v2, v4, v13

    if-eqz v2, :cond_c0

    .line 8782
    new-instance v2, Lcom/android/exchange/MessageMoveRequest;

    invoke-direct {v2, v11, v12, v4, v5}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 8785
    :cond_c0
    if-eqz v1, :cond_86

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_86

    .line 8786
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_86

    .line 8790
    :cond_cc
    if-eqz v10, :cond_d7

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d7

    .line 8792
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 8802
    :cond_d7
    :goto_d7
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 8804
    :try_start_da
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_237

    .line 8806
    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_25a

    .line 8869
    new-instance v6, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v6}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 8871
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v4

    .line 8873
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    .line 8880
    if-eqz v4, :cond_11a

    if-eqz v2, :cond_11a

    const-string v1, "Email"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    const-string v1, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11a

    move-object/from16 v1, p1

    .line 8883
    check-cast v1, Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 8884
    invoke-virtual {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/android/emailcommon/EasRefs;->FILTER_AUTO:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 8885
    invoke-virtual {v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getAutomaticLookback()V

    .line 8886
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->isLookBackChanged:Z

    .line 8894
    :cond_11a
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "sync, sending "

    aput-object v10, v1, v5

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v5, 0x2

    const-string v10, " syncKey: "

    aput-object v10, v1, v5

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 8902
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x4028333333333333L

    cmpl-double v1, v10, v12

    if-ltz v1, :cond_2ba

    .line 8904
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0x1c

    invoke-virtual {v1, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0x12

    iget-object v10, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v5, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8914
    iget v1, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v1, v5, :cond_2b1

    .line 8920
    const/16 v1, 0x1e

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 8954
    :goto_167
    const v5, 0x13880

    .line 8958
    iget v1, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v10, 0x4

    if-eq v1, v10, :cond_55c

    .line 8962
    iget v1, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v10, 0x61

    if-ne v1, v10, :cond_2e5

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e5

    .line 8966
    const/16 v1, 0x15

    const-string v2, "10"

    invoke-virtual {v6, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8968
    const/16 v1, 0x17

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 8974
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move v1, v5

    .line 9335
    :goto_18d
    iget v2, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x61

    if-eq v2, v5, :cond_763

    .line 9341
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    move v5, v1

    .line 9363
    :cond_199
    :goto_199
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 9367
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v1, :cond_1c8

    .line 9369
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    .line 9371
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "sync(): Wbxml:"

    aput-object v11, v2, v10

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 9373
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9375
    new-instance v1, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 9377
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 9385
    :cond_1c8
    :try_start_1c8
    const-string v1, "Sync"

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 9389
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 9393
    const-string v2, "sync(): sendHttpClientPost HTTP response code: "

    invoke-virtual {p0, v2, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 9395
    const/16 v2, 0xc8

    if-ne v6, v2, :cond_6dc

    .line 9399
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x4028333333333333L

    cmpl-double v2, v10, v12

    if-ltz v2, :cond_5b4

    .line 9401
    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 9403
    if-eqz v2, :cond_5b4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b4

    .line 9405
    const-string v1, "EasSynService"

    const-string v2, "Sync Response has a header [Content-Length: 0]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9407
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setIntervalPing()V

    .line 9409
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_59f

    .line 9411
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_220
    .catchall {:try_start_1c8 .. :try_end_220} :catchall_6a0

    .line 9555
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_225
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_231

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_231
    monitor-exit v2

    goto/16 :goto_44

    :catchall_234
    move-exception v1

    monitor-exit v2
    :try_end_236
    .catchall {:try_start_225 .. :try_end_236} :catchall_234

    throw v1

    .line 8810
    :cond_237
    :try_start_237
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/Request;

    .line 8814
    monitor-exit v2
    :try_end_240
    .catchall {:try_start_237 .. :try_end_240} :catchall_25a

    .line 8822
    instance-of v2, v1, Lcom/android/exchange/PartRequest;

    if-eqz v2, :cond_29d

    .line 8827
    :try_start_244
    move-object v0, v1

    check-cast v0, Lcom/android/exchange/PartRequest;

    move-object v2, v0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/exchange/EasSyncService;->loadAttachment(Lcom/android/exchange/PartRequest;Z)V
    :try_end_24c
    .catch Ljava/io/EOFException; {:try_start_244 .. :try_end_24c} :catch_25d
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_24c} :catch_281

    .line 8861
    :cond_24c
    :goto_24c
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 8863
    :try_start_24f
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    .line 8865
    monitor-exit v2

    goto/16 :goto_d7

    :catchall_257
    move-exception v1

    monitor-exit v2
    :try_end_259
    .catchall {:try_start_24f .. :try_end_259} :catchall_257

    throw v1

    .line 8814
    :catchall_25a
    move-exception v1

    :try_start_25b
    monitor-exit v2
    :try_end_25c
    .catchall {:try_start_25b .. :try_end_25c} :catchall_25a

    throw v1

    .line 8828
    :catch_25d
    move-exception v2

    .line 8831
    :try_start_25e
    check-cast v1, Lcom/android/exchange/PartRequest;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->loadAttachment(Lcom/android/exchange/PartRequest;Z)V
    :try_end_264
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_264} :catch_265

    goto :goto_24c

    .line 8832
    :catch_265
    move-exception v1

    .line 8833
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 8834
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 8835
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Caught IOException in Get Attachment: "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    if-nez v1, :cond_27b

    const-string v1, "No message"

    :cond_27b
    aput-object v1, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_24c

    .line 8838
    :catch_281
    move-exception v1

    .line 8839
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 8840
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 8841
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Caught IOException in Get Attachment: "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    if-nez v1, :cond_297

    const-string v1, "No message"

    :cond_297
    aput-object v1, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_24c

    .line 8847
    :cond_29d
    instance-of v2, v1, Lcom/android/exchange/MeetingResponseRequest;

    if-eqz v2, :cond_2a7

    .line 8849
    check-cast v1, Lcom/android/exchange/MeetingResponseRequest;

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto :goto_24c

    .line 8851
    :cond_2a7
    instance-of v2, v1, Lcom/android/exchange/MessageMoveRequest;

    if-eqz v2, :cond_24c

    .line 8853
    check-cast v1, Lcom/android/exchange/MessageMoveRequest;

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V

    goto :goto_24c

    .line 8926
    :cond_2b1
    const/16 v1, 0x1e

    const-string v5, "0"

    invoke-virtual {v6, v1, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_167

    .line 8932
    :cond_2ba
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0x1c

    invoke-virtual {v1, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v5, 0x12

    iget-object v10, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v5, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8944
    const/16 v1, 0x1e

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_167

    .line 8984
    :cond_2e5
    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_557

    .line 9004
    const/16 v1, 0x13

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 9008
    const-string v1, "100"

    .line 9010
    const-string v2, "Email"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32a

    .line 9012
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v10, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 9016
    if-eqz v1, :cond_4a8

    .line 9018
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v10, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 9022
    if-eqz v1, :cond_4a4

    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v10, "live.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_328

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v2, "hotmail.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a4

    .line 9028
    :cond_328
    const-string v1, "10"

    .line 9044
    :cond_32a
    :goto_32a
    const/16 v2, 0x15

    const-string v10, "Email"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4ac

    :goto_334
    invoke-virtual {v6, v2, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9054
    const/4 v1, 0x0

    .line 9056
    const-string v2, "Email"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    .line 9058
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v10, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 9062
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x402c

    cmpl-double v2, v10, v12

    if-ltz v2, :cond_362

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_362

    .line 9066
    const/16 v2, 0x27

    invoke-virtual {v6, v2}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 9076
    :cond_362
    const/16 v2, 0x17

    invoke-virtual {v6, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 9079
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_37f

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    const/4 v10, 0x1

    if-eq v2, v10, :cond_37f

    .line 9080
    const/16 v2, 0x1b

    iget-object v10, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9086
    :cond_37f
    const-string v2, "Email"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4bc

    .line 9088
    const/16 v2, 0x18

    invoke-direct {p0, v9}, Lcom/android/exchange/EasSyncService;->getEmailFilter(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9140
    :cond_390
    :goto_390
    const-string v2, "Email"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a2

    .line 9142
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v11, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 9148
    :cond_3a2
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x402c333333333333L

    cmpl-double v2, v11, v13

    if-ltz v2, :cond_3b8

    .line 9150
    const/16 v2, 0x605

    const-string v11, "1"

    invoke-virtual {v6, v2, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9157
    :cond_3b8
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/high16 v13, 0x4028

    cmpl-double v2, v11, v13

    if-ltz v2, :cond_53f

    .line 9159
    const/16 v2, 0x445

    invoke-virtual {v6, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 9166
    const/16 v11, 0x446

    if-eqz v10, :cond_4f5

    iget-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-nez v2, :cond_4f5

    const-string v2, "2"

    :goto_3d3
    invoke-virtual {v6, v11, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9185
    if-eqz v10, :cond_506

    .line 9187
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v2

    sget-object v10, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    if-eq v2, v10, :cond_4f9

    .line 9189
    const/16 v2, 0x447

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v10

    invoke-static {v10}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9193
    const-string v2, "EasSyncService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1. Email Size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9234
    :cond_419
    :goto_419
    const-string v2, "Email"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44d

    .line 9236
    if-nez v1, :cond_42d

    .line 9238
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v10, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 9244
    :cond_42d
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x402c

    cmpl-double v2, v10, v12

    if-ltz v2, :cond_44d

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_44d

    .line 9248
    const/16 v2, 0x458

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9256
    :cond_44d
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 9298
    :goto_450
    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 9304
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v10, 0x402c

    cmpl-double v1, v1, v10

    if-ltz v1, :cond_4a1

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v1, :cond_46c

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4a1

    .line 9308
    :cond_46c
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4a1

    .line 9310
    const/16 v1, 0x17

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x10

    const-string v10, "SMS"

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x445

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x446

    const-string v10, "1"

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    :cond_4a1
    move v1, v5

    .line 9323
    goto/16 :goto_18d

    .line 9032
    :cond_4a4
    const-string v1, "100"

    goto/16 :goto_32a

    .line 9038
    :cond_4a8
    const-string v1, "100"

    goto/16 :goto_32a

    .line 9044
    :cond_4ac
    const-string v1, "IPM.StickyNote"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b8

    const-string v1, "6"

    goto/16 :goto_334

    :cond_4b8
    const-string v1, "5"

    goto/16 :goto_334

    .line 9090
    :cond_4bc
    const-string v2, "Calendar"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4cf

    .line 9102
    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getCalendarFilterType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_390

    .line 9106
    :cond_4cf
    const-string v2, "Tasks"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e2

    .line 9108
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getTasksFilterType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_390

    .line 9116
    :cond_4e2
    const-string v2, "IPM.StickyNote"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_390

    .line 9118
    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_390

    .line 9166
    :cond_4f5
    const-string v2, "1"

    goto/16 :goto_3d3

    .line 9201
    :cond_4f9
    const/16 v2, 0x447

    const/high16 v10, 0x10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_419

    .line 9209
    :cond_506
    if-nez v10, :cond_52d

    const-string v2, "IPM.StickyNote"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52d

    .line 9211
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v10, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 9215
    const/16 v10, 0x447

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v10, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_419

    .line 9223
    :cond_52d
    if-nez v10, :cond_419

    .line 9225
    const/16 v2, 0x447

    const-string v10, "400000"

    invoke-virtual {v6, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 9227
    const-string v2, "EasSyncService"

    const-string v10, "2. Email Size = 400000"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_419

    .line 9286
    :cond_53f
    const/16 v2, 0x19

    if-eqz v10, :cond_554

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v1

    invoke-static {v1}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas2_5Text()Ljava/lang/String;

    move-result-object v1

    :goto_54f
    invoke-virtual {v6, v2, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_450

    :cond_554
    const-string v1, "8"

    goto :goto_54f

    .line 9329
    :cond_557
    const v1, 0x1d4c0

    goto/16 :goto_18d

    .line 9347
    :cond_55c
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v10, 0x402c

    cmpl-double v1, v1, v10

    if-ltz v1, :cond_199

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_199

    .line 9351
    const/16 v1, 0x17

    invoke-virtual {v6, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x10

    const-string v10, "SMS"

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x445

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x446

    const-string v10, "1"

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_199

    .line 9555
    :cond_59f
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_5a4
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_5b0

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_5b0
    monitor-exit v2
    :try_end_5b1
    .catchall {:try_start_5a4 .. :try_end_5b1} :catchall_75a

    move-object v1, v4

    .line 9416
    goto/16 :goto_24

    .line 9425
    :cond_5b4
    :try_start_5b4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 9426
    const-string v2, "BodyInsert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content Lenght : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9427
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 9429
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 9431
    if-eqz v1, :cond_760

    .line 9432
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 9433
    if-eqz v1, :cond_760

    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_760

    .line 9434
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5f1
    .catchall {:try_start_5b4 .. :try_end_5f1} :catchall_6a0

    move-object v5, v1

    .line 9438
    :goto_5f2
    if-eqz v5, :cond_6cd

    .line 9443
    :try_start_5f4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v2

    .line 9445
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_65a

    .line 9447
    add-int/lit8 v1, v7, 0x1

    .line 9449
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "** Looping: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 9457
    if-eqz v2, :cond_630

    const/16 v7, 0x64

    if-le v1, v7, :cond_630

    .line 9459
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "** Looping force stopped"

    aput-object v8, v2, v7

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_62f
    .catchall {:try_start_5f4 .. :try_end_62f} :catchall_694
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_5f4 .. :try_end_62f} :catch_65c

    .line 9461
    const/4 v2, 0x0

    .line 9502
    :cond_630
    :goto_630
    if-eqz p1, :cond_635

    :try_start_632
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 9503
    :cond_635
    if-eqz v5, :cond_63a

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 9515
    :cond_63a
    :goto_63a
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v5

    if-eqz v5, :cond_73b

    .line 9517
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_643
    .catchall {:try_start_632 .. :try_end_643} :catchall_6a0

    .line 9555
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_648
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_654

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_654
    monitor-exit v2

    goto/16 :goto_44

    :catchall_657
    move-exception v1

    monitor-exit v2
    :try_end_659
    .catchall {:try_start_648 .. :try_end_659} :catchall_657

    throw v1

    .line 9467
    :cond_65a
    const/4 v1, 0x0

    goto :goto_630

    .line 9471
    :catch_65c
    move-exception v1

    .line 9474
    :try_start_65d
    iget v1, v1, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 9476
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v2

    if-eqz v2, :cond_689

    .line 9478
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_668
    .catchall {:try_start_65d .. :try_end_668} :catchall_694

    .line 9502
    :goto_668
    if-eqz p1, :cond_66d

    :try_start_66a
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 9503
    :cond_66d
    if-eqz v5, :cond_672

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_672
    .catchall {:try_start_66a .. :try_end_672} :catchall_6a0

    .line 9555
    :cond_672
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_677
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_683

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_683
    monitor-exit v2

    goto/16 :goto_44

    :catchall_686
    move-exception v1

    monitor-exit v2
    :try_end_688
    .catchall {:try_start_677 .. :try_end_688} :catchall_686

    throw v1

    .line 9482
    :cond_689
    :try_start_689
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTooManyPartnerships(I)Z

    move-result v2

    if-eqz v2, :cond_6b4

    .line 9483
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_693
    .catchall {:try_start_689 .. :try_end_693} :catchall_694

    goto :goto_668

    .line 9502
    :catchall_694
    move-exception v1

    if-eqz p1, :cond_69a

    :try_start_697
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V

    .line 9503
    :cond_69a
    if-eqz v5, :cond_69f

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 9502
    :cond_69f
    throw v1
    :try_end_6a0
    .catchall {:try_start_697 .. :try_end_6a0} :catchall_6a0

    .line 9555
    :catchall_6a0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_6a6
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_6b2

    .line 9559
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_6b2
    monitor-exit v2
    :try_end_6b3
    .catchall {:try_start_6a6 .. :try_end_6b3} :catchall_757

    .line 9555
    throw v1

    .line 9486
    :cond_6b4
    :try_start_6b4
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isServerError(I)Z

    move-result v2

    if-eqz v2, :cond_6bf

    .line 9487
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_668

    .line 9489
    :cond_6bf
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v1

    if-eqz v1, :cond_6c9

    .line 9491
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto :goto_668

    .line 9495
    :cond_6c9
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_6cc
    .catchall {:try_start_6b4 .. :try_end_6cc} :catchall_694

    goto :goto_668

    .line 9509
    :cond_6cd
    const/4 v1, 0x1

    :try_start_6ce
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "Empty input stream in sync command response"

    aput-object v5, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v1, v7

    move v2, v8

    goto/16 :goto_63a

    .line 9527
    :cond_6dc
    const-string v1, "Sync response error: "

    invoke-virtual {p0, v1, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 9529
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->isProvisionError(I)Z

    move-result v1

    if-eqz v1, :cond_701

    .line 9531
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_6ea
    .catchall {:try_start_6ce .. :try_end_6ea} :catchall_6a0

    .line 9555
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_6ef
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_6fb

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_6fb
    monitor-exit v2

    goto/16 :goto_44

    :catchall_6fe
    move-exception v1

    monitor-exit v2
    :try_end_700
    .catchall {:try_start_6ef .. :try_end_700} :catchall_6fe

    throw v1

    .line 9535
    :cond_701
    :try_start_701
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v1

    if-eqz v1, :cond_721

    .line 9537
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_70a
    .catchall {:try_start_701 .. :try_end_70a} :catchall_6a0

    .line 9555
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_70f
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_71b

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_71b
    monitor-exit v2

    goto/16 :goto_44

    :catchall_71e
    move-exception v1

    monitor-exit v2
    :try_end_720
    .catchall {:try_start_70f .. :try_end_720} :catchall_71e

    throw v1

    .line 9543
    :cond_721
    const/4 v1, 0x1

    :try_start_722
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_724
    .catchall {:try_start_722 .. :try_end_724} :catchall_6a0

    .line 9555
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9557
    :try_start_729
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_735

    .line 9559
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_735
    monitor-exit v2

    goto/16 :goto_44

    :catchall_738
    move-exception v1

    monitor-exit v2
    :try_end_73a
    .catchall {:try_start_729 .. :try_end_73a} :catchall_738

    throw v1

    .line 9555
    :cond_73b
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 9557
    :try_start_740
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v6, :cond_74c

    .line 9559
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 9561
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 9565
    :cond_74c
    monitor-exit v5
    :try_end_74d
    .catchall {:try_start_740 .. :try_end_74d} :catchall_75d

    move v7, v1

    move v8, v2

    move-object v1, v4

    .line 9571
    goto/16 :goto_24

    .line 9573
    :cond_752
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    goto/16 :goto_44

    .line 9565
    :catchall_757
    move-exception v1

    :try_start_758
    monitor-exit v2
    :try_end_759
    .catchall {:try_start_758 .. :try_end_759} :catchall_757

    throw v1

    :catchall_75a
    move-exception v1

    :try_start_75b
    monitor-exit v2
    :try_end_75c
    .catchall {:try_start_75b .. :try_end_75c} :catchall_75a

    throw v1

    :catchall_75d
    move-exception v1

    :try_start_75e
    monitor-exit v5
    :try_end_75f
    .catchall {:try_start_75e .. :try_end_75f} :catchall_75d

    throw v1

    :cond_760
    move-object v5, v2

    goto/16 :goto_5f2

    :cond_763
    move v5, v1

    goto/16 :goto_199
.end method

.method syncHBIFolderDetail(Lcom/android/exchange/adapter/Serializer;J)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x445

    const/16 v10, 0x17

    const/4 v9, 0x1

    const-wide/high16 v7, 0x402c

    const/16 v6, 0x18

    .line 8067
    const/4 v0, 0x0

    .line 8068
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 8069
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_20

    const-wide/16 v2, 0x4

    cmp-long v2, p2, v2

    if-nez v2, :cond_54

    .line 8070
    :cond_20
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 8096
    :cond_25
    :goto_25
    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    .line 8097
    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    .line 8098
    const/16 v3, 0x1e

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 8101
    const-wide/16 v3, 0x4

    cmp-long v3, p2, v3

    if-eqz v3, :cond_251

    .line 8104
    const-wide/16 v3, 0x61

    cmp-long v3, p2, v3

    if-nez v3, :cond_9b

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 8106
    const/16 v0, 0x15

    const-string v1, "5"

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8107
    invoke-virtual {p1, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 8109
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 8252
    :cond_53
    :goto_53
    return-void

    .line 8071
    :cond_54
    const-wide/16 v2, 0x42

    cmp-long v2, p2, v2

    if-nez v2, :cond_60

    .line 8072
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    goto :goto_25

    .line 8073
    :cond_60
    const-wide/16 v2, 0x41

    cmp-long v2, p2, v2

    if-nez v2, :cond_6c

    .line 8074
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    goto :goto_25

    .line 8080
    :cond_6c
    const-wide/16 v2, 0x43

    cmp-long v2, p2, v2

    if-nez v2, :cond_7f

    .line 8082
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    const-string v2, "Syncing Tasks.."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8083
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    goto :goto_25

    .line 8086
    :cond_7f
    const-wide/16 v2, 0x61

    cmp-long v2, p2, v2

    if-nez v2, :cond_8d

    .line 8087
    new-instance v0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0, v2, p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    goto :goto_25

    .line 8092
    :cond_8d
    sget-object v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isPrivateSyncOptionTypeByType(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 8093
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    goto :goto_25

    .line 8114
    :cond_9b
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 8123
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 8125
    const/16 v3, 0x15

    const-string v0, "Email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    const-string v0, "100"

    :goto_b4
    invoke-virtual {p1, v3, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8129
    const-string v0, "Email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 8132
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v4, v7

    if-ltz v0, :cond_d4

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v0

    if-ne v0, v9, :cond_d4

    .line 8134
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 8139
    :cond_d4
    invoke-virtual {p1, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 8142
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    if-eq v0, v9, :cond_ee

    .line 8143
    const/16 v0, 0x1b

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mConflictFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8148
    :cond_ee
    const-string v0, "Email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 8149
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8173
    :cond_fd
    :goto_fd
    invoke-virtual {p1, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    const/16 v5, 0x446

    if-eqz v3, :cond_21e

    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-nez v0, :cond_21e

    const-string v0, "2"

    :goto_10b
    invoke-virtual {v4, v5, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8182
    if-eqz v3, :cond_222

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v0

    sget-object v4, Lcom/android/emailcommon/EasRefs$EmailDataSize;->ALL:Lcom/android/emailcommon/EasRefs$EmailDataSize;

    if-eq v0, v4, :cond_222

    .line 8184
    const/16 v0, 0x447

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v3

    invoke-static {v3}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8186
    const-string v0, "EasSyncService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. Email Size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v4

    invoke-static {v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8204
    :cond_151
    :goto_151
    const-string v0, "Email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 8206
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v7

    if-ltz v2, :cond_176

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getConversationMode()I

    move-result v2

    if-ne v2, v9, :cond_176

    .line 8208
    const/16 v2, 0x458

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTextPreviewSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8212
    :cond_176
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 8215
    if-eqz v0, :cond_192

    .line 8216
    invoke-virtual {p1, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x446

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8217
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 8218
    const/16 v0, 0x22

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8230
    :cond_192
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 8234
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-ltz v0, :cond_53

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_53

    .line 8235
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_53

    .line 8236
    invoke-virtual {p1, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x10

    const-string v2, "SMS"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v6, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_53

    .line 8125
    :cond_1d8
    const-string v0, "IPM.StickyNote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    const-string v0, "6"

    goto/16 :goto_b4

    :cond_1e4
    const-string v0, "5"

    goto/16 :goto_b4

    .line 8150
    :cond_1e8
    const-string v0, "Calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 8152
    sget-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8154
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getCalendarFilterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_fd

    .line 8156
    :cond_1fe
    const-string v0, "Tasks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 8157
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getTasksFilterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_fd

    .line 8160
    :cond_20f
    const-string v0, "IPM.StickyNote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 8161
    const-string v0, "0"

    invoke-virtual {p1, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_fd

    .line 8173
    :cond_21e
    const-string v0, "1"

    goto/16 :goto_10b

    .line 8192
    :cond_222
    if-nez v3, :cond_23f

    const-string v0, "IPM.StickyNote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 8194
    const/16 v0, 0x447

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailSize()B

    move-result v3

    invoke-static {v3}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->parse(B)Lcom/android/emailcommon/EasRefs$EmailDataSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/emailcommon/EasRefs$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_151

    .line 8199
    :cond_23f
    if-nez v3, :cond_151

    .line 8200
    const/16 v0, 0x447

    const-string v3, "400000"

    invoke-virtual {p1, v0, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 8201
    const-string v0, "EasSyncService"

    const-string v3, "2. Email Size = 400000"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151

    .line 8245
    :cond_251
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v7

    if-ltz v0, :cond_53

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_53

    .line 8246
    invoke-virtual {p1, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x10

    const-string v2, "SMS"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v6, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_53
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 11
    .parameter "userName"
    .parameter "password"
    .parameter "domain_user"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2196
    new-instance v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    invoke-direct {v3, p0, v5}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    .line 2198
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v4, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isRedirectTagPresent:Z

    .line 2200
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-boolean v4, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->isErrorTagPresent:Z

    .line 2202
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    #setter for: Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->mAutoDiscoverRetryCount:I
    invoke-static {v3, v4}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->access$602(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;I)I

    .line 2204
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iput-object v5, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->RedirectPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2206
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    .line 2208
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2210
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2212
    iput-object p3, p0, Lcom/android/exchange/EasSyncService;->mDomain:Ljava/lang/String;

    .line 2214
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 2216
    iput-boolean p4, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 2218
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthAndCmdString()V

    .line 2220
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    const-string v4, "autodiscover_error_code"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2224
    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    if-eqz v3, :cond_4f

    const-string v2, "httpts://"

    .line 2226
    .local v2, schema:Ljava/lang/String;
    :goto_41
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2228
    .local v0, amp:I
    if-gez v0, :cond_52

    .line 2230
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3

    .line 2224
    .end local v0           #amp:I
    .end local v2           #schema:Ljava/lang/String;
    :cond_4f
    const-string v2, "https://"

    goto :goto_41

    .line 2234
    .restart local v0       #amp:I
    .restart local v2       #schema:Ljava/lang/String;
    :cond_52
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2236
    .local v1, domain:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/exchange/EasSyncService;->AutoDiscoverPart1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAutoDiscInfo:Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->bundle:Landroid/os/Bundle;

    return-object v3
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 12
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 3757
    instance-of v0, p1, Lcom/android/exchange/adapter/ItemOperationsParser;

    if-eqz v0, :cond_25

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_25

    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 3759
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMsgIdToFetchAttachment:J

    iget-wide v3, p0, Lcom/android/exchange/EasSyncService;->mAttIdToFetchAttachment:J

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/exchange/EasSyncService;->mAttSize:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doProgressCallback(JJI)V

    .line 3765
    :cond_25
    return-void
.end method

.method updateLookBackValue()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 10363
    const-string v2, "0"

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_34

    .line 10365
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10366
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "syncLookback"

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10367
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 10368
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10370
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_34
    return-void
.end method

.method public validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1458
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1460
    const/4 v1, -0x1

    .line 1464
    const/4 v3, 0x6

    :try_start_7
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "Testing EAS: "

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const/4 v3, 0x2

    const-string v5, ", "

    aput-object v5, v4, v3

    const/4 v3, 0x3

    aput-object p2, v4, v3

    const/4 v3, 0x4

    const-string v5, ", ssl = "

    aput-object v5, v4, v3

    const/4 v5, 0x5

    if-eqz p5, :cond_d2

    const-string v3, "1"

    :goto_23
    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1466
    new-instance v6, Lcom/android/exchange/EasSyncService;

    const-string v3, "%TestAccount%"

    invoke-direct {v6, v3}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 1469
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1470
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 1471
    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    .line 1472
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1473
    :cond_49
    iget-object v3, v6, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1474
    const/4 v3, 0x0

    iput-object v3, v6, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 1475
    :cond_56
    iget-object v3, v6, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 1479
    sput-object p7, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 1481
    iput-object p1, v6, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 1483
    iput-object p2, v6, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 1485
    iput-object p3, v6, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 1487
    move/from16 v0, p5

    iput-boolean v0, v6, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1489
    move/from16 v0, p6

    iput-boolean v0, v6, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1499
    invoke-static/range {p7 .. p7}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1501
    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1503
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_77
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_7 .. :try_end_77} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_77} :catch_211

    move-result-object v3

    .line 1507
    :try_start_78
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 1509
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Validation (OPTIONS) response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1511
    const/4 v4, 0x0

    .line 1513
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_259

    .line 1517
    const-string v7, "MS-ASProtocolCommands"

    invoke-interface {v5, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 1519
    const-string v8, "ms-asprotocolversions"

    invoke-interface {v5, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_ac
    .catchall {:try_start_78 .. :try_end_ac} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_78 .. :try_end_ac} :catch_1a2

    move-result-object v5

    .line 1525
    if-eqz v7, :cond_b1

    if-nez v5, :cond_d6

    .line 1527
    :cond_b1
    const/4 v1, 0x1

    :try_start_b2
    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "OPTIONS response without commands or versions"

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1531
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v1
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_1e2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b2 .. :try_end_c3} :catch_c3
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_b2 .. :try_end_c3} :catch_1a2

    .line 1540
    :catch_c3
    move-exception v1

    .line 1542
    :try_start_c4
    const-string v1, "validate_result_code"

    const/16 v4, 0x9

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_c4 .. :try_end_cb} :catch_1a2

    .line 1779
    if-eqz v3, :cond_d0

    .line 1781
    :try_start_cd
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_d0
    move-object v1, v2

    .line 1813
    :goto_d1
    return-object v1

    .line 1464
    :cond_d2
    const-string v3, "0"
    :try_end_d4
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_cd .. :try_end_d4} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d4} :catch_211

    goto/16 :goto_23

    .line 1535
    :cond_d6
    :try_start_d6
    invoke-direct {p0, v6, v5}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V

    .line 1536
    const-string v5, "validate_protocol_version"

    iget-object v7, v6, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_1e2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d6 .. :try_end_e0} :catch_c3
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_d6 .. :try_end_e0} :catch_1a2

    .line 1554
    const/4 v5, 0x1

    :try_start_e1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Try folder sync"

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1560
    const-string v5, "0"

    .line 1562
    const-wide/16 v7, -0x1

    move-object/from16 v0, p7

    invoke-static {v0, v7, v8, p1, p2}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 1566
    if-eqz v7, :cond_fd

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    if-eqz v8, :cond_fd

    .line 1568
    iget-object v5, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 1572
    :cond_fd
    new-instance v7, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v7}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1574
    const/16 v8, 0x1d6

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x1d2

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1580
    sget-boolean v5, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v5, :cond_13d

    .line 1582
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "validateAccount(): Wbxml:"

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    .line 1586
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1588
    new-instance v5, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 1590
    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_13d
    .catchall {:try_start_e1 .. :try_end_13d} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_e1 .. :try_end_13d} :catch_1a2

    .line 1598
    :cond_13d
    :try_start_13d
    const-string v5, "FolderSync"

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1600
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 1602
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_162

    .line 1604
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 1606
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v5, v8

    .line 1608
    if-eqz v5, :cond_162

    .line 1610
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 1618
    :cond_162
    sget-boolean v5, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v5, :cond_182

    .line 1620
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "validateAccount(): FolderSync response code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_182
    .catchall {:try_start_13d .. :try_end_182} :catchall_1ce

    .line 1632
    :cond_182
    :try_start_182
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_187
    .catchall {:try_start_182 .. :try_end_187} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_182 .. :try_end_187} :catch_1a2

    .line 1634
    :try_start_187
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v8, :cond_193

    .line 1636
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1638
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1642
    :cond_193
    monitor-exit v5
    :try_end_194
    .catchall {:try_start_187 .. :try_end_194} :catchall_2eb

    .line 1654
    :try_start_194
    invoke-virtual {p0, v4, v7}, Lcom/android/exchange/EasSyncService;->isProvisionError(Ljava/io/InputStream;I)Z

    move-result v4

    if-eqz v4, :cond_205

    .line 1656
    new-instance v1, Lcom/android/exchange/CommandStatusException;

    const/16 v4, 0x8e

    invoke-direct {v1, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v1
    :try_end_1a2
    .catchall {:try_start_194 .. :try_end_1a2} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_194 .. :try_end_1a2} :catch_1a2

    .line 1721
    :catch_1a2
    move-exception v1

    .line 1723
    :try_start_1a3
    iget v1, v1, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 1725
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v4

    if-eqz v4, :cond_298

    .line 1729
    invoke-direct {v6}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v4

    .line 1731
    if-eqz v4, :cond_285

    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v1

    if-eqz v1, :cond_285

    .line 1736
    const/4 v1, 0x7

    .line 1738
    const-string v5, "validate_policy_set"

    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicySet()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1773
    :goto_1c1
    const-string v4, "validate_result_code"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1c6
    .catchall {:try_start_1a3 .. :try_end_1c6} :catchall_1e2

    .line 1779
    if-eqz v3, :cond_1cb

    .line 1781
    :try_start_1c8
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1cb
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_1c8 .. :try_end_1cb} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_211

    :cond_1cb
    move-object v1, v2

    .line 1774
    goto/16 :goto_d1

    .line 1632
    :catchall_1ce
    move-exception v1

    :try_start_1cf
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1d4
    .catchall {:try_start_1cf .. :try_end_1d4} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1cf .. :try_end_1d4} :catch_1a2

    .line 1634
    :try_start_1d4
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v5, :cond_1e0

    .line 1636
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1638
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1642
    :cond_1e0
    monitor-exit v4
    :try_end_1e1
    .catchall {:try_start_1d4 .. :try_end_1e1} :catchall_2e8

    .line 1632
    :try_start_1e1
    throw v1
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1e1 .. :try_end_1e2} :catch_1a2

    .line 1779
    :catchall_1e2
    move-exception v1

    if-eqz v3, :cond_1e8

    .line 1781
    :try_start_1e5
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1779
    :cond_1e8
    throw v1
    :try_end_1e9
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_1e5 .. :try_end_1e9} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_1e9} :catch_211

    .line 1787
    :catch_1e9
    move-exception v1

    .line 1789
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "DeviceAccessException caught: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/DeviceAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1791
    const/4 v1, 0x6

    .line 1811
    :cond_1fd
    :goto_1fd
    const-string v3, "validate_result_code"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v2

    .line 1813
    goto/16 :goto_d1

    .line 1671
    :cond_205
    const/16 v4, 0x194

    if-ne v7, v4, :cond_242

    .line 1677
    const/16 v1, 0x9

    .line 1779
    :goto_20b
    if-eqz v3, :cond_1fd

    .line 1781
    :try_start_20d
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_210
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_20d .. :try_end_210} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_210} :catch_211

    goto :goto_1fd

    .line 1793
    :catch_211
    move-exception v1

    .line 1795
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 1797
    if-eqz v3, :cond_22e

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_22e

    .line 1799
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "CertificateException caught: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1805
    :cond_22e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "IOException caught: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1807
    const/4 v1, 0x1

    goto :goto_1fd

    .line 1679
    :cond_242
    const/16 v4, 0xc8

    if-eq v7, v4, :cond_24d

    .line 1683
    :try_start_246
    const-string v1, "Unexpected response for FolderSync: "

    invoke-virtual {p0, v1, v7}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1685
    const/4 v1, 0x0

    goto :goto_20b

    .line 1689
    :cond_24d
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "Validation successful"

    aput-object v7, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_20b

    .line 1693
    :cond_259
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->isAuthError(I)Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 1695
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Authentication failed"

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1697
    const/4 v1, 0x5

    goto :goto_20b

    .line 1699
    :cond_26c
    const/16 v1, 0x1f4

    if-ne v7, v1, :cond_27e

    .line 1705
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Internal server error"

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1707
    const/16 v1, 0x4d

    goto :goto_20b

    .line 1715
    :cond_27e
    const-string v1, "Validation failed, reporting I/O error: "

    invoke-virtual {p0, v1, v7}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_283
    .catchall {:try_start_246 .. :try_end_283} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_246 .. :try_end_283} :catch_1a2

    .line 1717
    const/4 v1, 0x1

    goto :goto_20b

    .line 1746
    :cond_285
    const/16 v1, 0x8

    .line 1748
    :try_start_287
    const-string v5, "validate_unsupported_policies"

    if-nez v4, :cond_293

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    :goto_28e
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1c1

    :cond_293
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getUnsupportedPolicies()[Ljava/lang/String;

    move-result-object v4

    goto :goto_28e

    .line 1753
    :cond_298
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTooManyPartnerships(I)Z

    move-result v4

    if-eqz v4, :cond_2b8

    .line 1754
    const/16 v4, 0xb

    iput v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 1755
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Denied access: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1756
    const/16 v1, 0x61

    goto/16 :goto_1c1

    .line 1759
    :cond_2b8
    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v4

    if-eqz v4, :cond_2d3

    .line 1761
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Transient error: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1763
    const/4 v1, 0x1

    goto/16 :goto_1c1

    .line 1767
    :cond_2d3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Unexpected response: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2e5
    .catchall {:try_start_287 .. :try_end_2e5} :catchall_1e2

    .line 1769
    const/4 v1, 0x0

    goto/16 :goto_1c1

    .line 1642
    :catchall_2e8
    move-exception v1

    :try_start_2e9
    monitor-exit v4
    :try_end_2ea
    .catchall {:try_start_2e9 .. :try_end_2ea} :catchall_2e8

    :try_start_2ea
    throw v1
    :try_end_2eb
    .catchall {:try_start_2ea .. :try_end_2eb} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2ea .. :try_end_2eb} :catch_1a2

    :catchall_2eb
    move-exception v1

    :try_start_2ec
    monitor-exit v5
    :try_end_2ed
    .catchall {:try_start_2ec .. :try_end_2ed} :catchall_2eb

    :try_start_2ed
    throw v1
    :try_end_2ee
    .catchall {:try_start_2ed .. :try_end_2ee} :catchall_1e2
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2ed .. :try_end_2ee} :catch_1a2
.end method
