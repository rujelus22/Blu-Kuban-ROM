.class Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
.super Ljava/lang/Object;
.source "ProvisionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ProvisionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShadowPolicySet"
.end annotation


# instance fields
.field public mAllowBluetoothMode:I

.field public mAllowBrowser:Z

.field public mAllowCamera:Z

.field public mAllowDesktopSync:Z

.field public mAllowHTMLEmail:Z

.field public mAllowInternetSharing:Z

.field public mAllowIrDA:Z

.field public mAllowPOPIMAPEmail:Z

.field public mAllowSMIMEEncryptionAlgorithmNegotiation:I

.field public mAllowSMIMESoftCerts:Z

.field public mAllowStorageCard:Z

.field public mAllowTextMessaging:Z

.field public mAllowWifi:Z

.field public mAttachmentsEnabled:Z

.field mDeviceEncryptionEnabled:Z

.field public mMaxAttachmentSize:I

.field public mMaxCalendarAgeFilter:I

.field public mMaxEmailAgeFilter:I

.field public mMaxEmailBodyTruncationSize:I

.field public mMaxEmailHtmlBodyTruncationSize:I

.field mMaxPasswordFails:I

.field mMaxScreenLockTime:I

.field mMinPasswordLength:I

.field mPasswordComplexChars:I

.field mPasswordExpiration:I

.field mPasswordHistory:I

.field mPasswordMode:I

.field public mPasswordRecoverable:Z

.field public mRequireEncryptedSMIMEMessages:Z

.field mRequireEncryption:Z

.field public mRequireEncryptionSMIMEAlgorithm:I

.field public mRequireManualSyncWhenRoaming:Z

.field public mRequireSignedSMIMEAlgorithm:I

.field public mRequireSignedSMIMEMessages:Z

.field public mSimplePasswordEnabled:Z

.field final synthetic this$0:Lcom/android/exchange/adapter/ProvisionParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/ProvisionParser;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 470
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->this$0:Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    .line 474
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    .line 475
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    .line 476
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpiration:I

    .line 477
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    .line 478
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordComplexChars:I

    .line 481
    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryption:Z

    .line 482
    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mDeviceEncryptionEnabled:Z

    .line 485
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    .line 486
    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordRecoverable:Z

    .line 489
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAttachmentsEnabled:Z

    .line 490
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mSimplePasswordEnabled:Z

    .line 491
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxAttachmentSize:I

    .line 492
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowHTMLEmail:Z

    .line 493
    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireManualSyncWhenRoaming:Z

    .line 494
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxCalendarAgeFilter:I

    .line 495
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailAgeFilter:I

    .line 496
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailBodyTruncationSize:I

    .line 497
    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    .line 498
    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEMessages:Z

    .line 499
    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptedSMIMEMessages:Z

    .line 500
    iput v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireSignedSMIMEAlgorithm:I

    .line 501
    iput v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    .line 502
    iput v2, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 503
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowSMIMESoftCerts:Z

    .line 506
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowStorageCard:Z

    .line 507
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowCamera:Z

    .line 508
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowWifi:Z

    .line 509
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowTextMessaging:Z

    .line 510
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowPOPIMAPEmail:Z

    .line 511
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBrowser:Z

    .line 512
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowInternetSharing:Z

    .line 513
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowBluetoothMode:I

    .line 514
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowDesktopSync:Z

    .line 515
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mAllowIrDA:Z

    return-void
.end method
