.class public Lcom/android/exchange/EasSyncService;
.super Lcom/android/exchange/AbstractSyncService;
.source "EasSyncService.java"


# static fields
.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field mAuthString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBaseUriString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBindArguments:[Ljava/lang/String;

.field private mClientCertAlias:Ljava/lang/String;

.field public mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceId:Ljava/lang/String;

.field public mHostAddress:Ljava/lang/String;

.field public mIsValid:Z

.field public mPassword:Ljava/lang/String;

.field private volatile mPendingPost:Lorg/apache/http/client/methods/HttpPost;

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

.field public mProtocolVersion:Ljava/lang/String;

.field public mProtocolVersionDouble:Ljava/lang/Double;

.field private mSsl:Z

.field private mTrustSsl:Z

.field public mUpsyncFailed:Z

.field public mUserName:Ljava/lang/String;

.field mUserString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EAS-1.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 263
    const-string v0, "EAS Validation"

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 9
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/AbstractSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 197
    const-string v1, "2.5"

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 199
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 200
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 202
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 204
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 213
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 216
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 219
    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 221
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 223
    const/16 v1, 0x122

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 225
    const/16 v1, 0x3f2

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 227
    const/16 v1, 0x1d6

    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 229
    iput v3, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 231
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 235
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 240
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 245
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_48

    .line 246
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 256
    :goto_47
    return-void

    .line 249
    :cond_48
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 250
    .local v0, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-nez v0, :cond_55

    .line 251
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    goto :goto_47

    .line 254
    :cond_55
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_67

    move v1, v2

    :goto_5c
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 255
    iget v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_69

    :goto_64
    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    goto :goto_47

    :cond_67
    move v1, v3

    .line 254
    goto :goto_5c

    :cond_69
    move v2, v3

    .line 255
    goto :goto_64
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/exchange/AbstractSyncService;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 199
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 200
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 202
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 211
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 213
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 221
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 223
    const/16 v0, 0x122

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 225
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 227
    const/16 v0, 0x1d6

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 229
    iput v1, p0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 231
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 237
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 260
    return-void
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
    .line 1551
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x38b

    .line 1556
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1557
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x386

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1558
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1561
    const/16 v1, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1563
    const/16 v1, 0x389

    invoke-virtual {v0, v1, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1564
    invoke-virtual {v0, v3, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1565
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1566
    if-eqz p3, :cond_3e

    .line 1567
    const/16 v1, 0x38c

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1568
    const-string v1, "1"

    invoke-virtual {v0, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1569
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1571
    :cond_3e
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1572
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1574
    :try_start_4f
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1575
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_97

    .line 1576
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1577
    new-instance v2, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v2, v0, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1578
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provision confirmation received for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "PART"

    :goto_7b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " set"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v2}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_4f .. :try_end_8f} :catchall_c2

    move-result-object v0

    .line 1586
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1591
    :goto_93
    return-object v0

    .line 1580
    :cond_94
    :try_start_94
    const-string v0, "FULL"
    :try_end_96
    .catchall {:try_start_94 .. :try_end_96} :catchall_c2

    goto :goto_7b

    .line 1586
    :cond_97
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provision confirmation failed for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "PART"

    :goto_af
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1591
    const/4 v0, 0x0

    goto :goto_93

    .line 1586
    :catchall_c2
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 1589
    :cond_c7
    const-string v0, "FULL"

    goto :goto_af
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
    .line 1547
    const-string v0, "1"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->acknowledgeProvisionImpl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1548
    return-void
.end method

.method private cacheAuthUserAndBaseUriStrings()V
    .registers 5

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    if-nez v0, :cond_a3

    .line 1179
    :cond_c
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&User="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    .line 1184
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeScheme(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Microsoft-Server-ActiveSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1188
    :cond_a3
    return-void
.end method

.method private canProvision()Lcom/android/exchange/adapter/ProvisionParser;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1479
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1480
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1481
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x402c333333333333L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_53

    .line 1483
    const/16 v1, 0x496

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x488

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1484
    const/16 v1, 0x497

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1487
    const/16 v1, 0x49a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1491
    const/16 v1, 0x4a0

    sget-object v2, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1492
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1494
    :cond_53
    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1495
    const/16 v1, 0x387

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x388

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getPolicyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1496
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1497
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1498
    const-string v1, "Provision"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1500
    :try_start_7f
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1501
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_db

    .line 1502
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1503
    new-instance v0, Lcom/android/exchange/adapter/ProvisionParser;

    invoke-direct {v0, v2, p0}, Lcom/android/exchange/adapter/ProvisionParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1504
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->parse()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 1507
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x402c

    cmpl-double v2, v2, v4

    if-nez v2, :cond_bb

    .line 1511
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1513
    if-eqz v2, :cond_b7

    .line 1514
    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/ProvisionParser;->setSecuritySyncKey(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_7f .. :try_end_b7} :catchall_d6

    .line 1532
    :cond_b7
    :goto_b7
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1536
    :goto_ba
    return-object v0

    .line 1516
    :cond_bb
    :try_start_bb
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 1520
    const-string v2, "PolicySet is NOT fully supportable"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1524
    if-eqz v2, :cond_b7

    .line 1525
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ProvisionParser;->clearUnsupportedPolicies()V
    :try_end_d5
    .catchall {:try_start_bb .. :try_end_d5} :catchall_d6

    goto :goto_b7

    .line 1532
    :catchall_d6
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    :cond_db
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1536
    const/4 v0, 0x0

    goto :goto_ba
.end method

.method private exitStatusToServiceStatus(I)I
    .registers 3
    .parameter "exitStatus"

    .prologue
    .line 1623
    packed-switch p1, :pswitch_data_c

    .line 1629
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1625
    :pswitch_5
    const/16 v0, 0x17

    goto :goto_4

    .line 1627
    :pswitch_8
    const/16 v0, 0x16

    goto :goto_4

    .line 1623
    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .registers 2

    .prologue
    .line 1247
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getHttpClient(I)Lorg/apache/http/client/HttpClient;
    .registers 5
    .parameter "timeout"

    .prologue
    .line 1251
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1252
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1253
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1254
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1255
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1256
    .local v0, client:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method private getPolicyType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1468
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

.method private getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .registers 6
    .parameter "resp"
    .parameter "post"

    .prologue
    .line 621
    const-string v2, "X-MS-Location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 622
    .local v1, locHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_1e

    .line 623
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, loc:Ljava/lang/String;
    if-eqz v0, :cond_1e

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 627
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 631
    .end local v0           #loc:Ljava/lang/String;
    .end local p2
    :goto_1d
    return-object p2

    .restart local p2
    :cond_1e
    const/4 p2, 0x0

    goto :goto_1d
.end method

.method private getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1368
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1369
    const/16 v1, 0x42

    if-ne v0, v1, :cond_c

    .line 1370
    const-string v0, "Contacts"

    .line 1374
    :goto_b
    return-object v0

    .line 1371
    :cond_c
    const/16 v1, 0x41

    if-ne v0, v1, :cond_13

    .line 1372
    const-string v0, "Calendar"

    goto :goto_b

    .line 1374
    :cond_13
    const-string v0, "Email"

    goto :goto_b
.end method

.method private isLikelyNatFailure(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1917
    if-nez p1, :cond_4

    .line 1921
    :cond_3
    :goto_3
    return v0

    .line 1918
    :cond_4
    const-string v1, "reset by peer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1919
    const/4 v0, 0x1

    goto :goto_3
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
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 2179
    new-instance v7, Lcom/android/exchange/adapter/PingParser;

    invoke-direct {v7, p1, p0}, Lcom/android/exchange/adapter/PingParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 2180
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->parse()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 2183
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2184
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->getSyncList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    .line 2185
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPingChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2186
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    aput-object v6, v0, v10

    .line 2187
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? and serverId=?"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mBindArguments:[Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2189
    if-nez v1, :cond_4d

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 2191
    :cond_4d
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 2208
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2209
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusType(Ljava/lang/String;)I

    move-result v2

    .line 2211
    if-ne v2, v11, :cond_68

    .line 2212
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getStatusChangeCount(Ljava/lang/String;)I

    move-result v0

    .line 2213
    if-lez v0, :cond_76

    .line 2214
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    :cond_68
    :goto_68
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_72
    .catchall {:try_start_4d .. :try_end_72} :catchall_9c

    .line 2239
    :cond_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .line 2215
    :cond_76
    if-nez v0, :cond_68

    .line 2218
    const/4 v0, 0x1

    :try_start_79
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2219
    invoke-virtual {p3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2220
    if-nez v0, :cond_a1

    .line 2221
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Last ping reported changes in error for: "

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2222
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_9c

    goto :goto_68

    .line 2239
    :catchall_9c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2223
    :cond_a1
    :try_start_a1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v10, :cond_b4

    .line 2225
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/EasSyncService;->pushFallback(J)V
    :try_end_af
    .catchall {:try_start_a1 .. :try_end_af} :catchall_9c

    .line 2239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_27

    .line 2228
    :cond_b4
    const/4 v3, 0x2

    :try_start_b5
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "Last ping reported changes in error for: "

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cf
    .catchall {:try_start_b5 .. :try_end_cf} :catchall_9c

    goto :goto_68

    .line 2243
    :cond_d0
    invoke-virtual {v7}, Lcom/android/exchange/adapter/PingParser;->getSyncStatus()I

    move-result v0

    return v0
.end method

.method private postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    .registers 13
    .parameter "client"
    .parameter "post"
    .parameter "canRetry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 648
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 650
    .local v2, resp:Lcom/android/exchange/EasResponse;
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 652
    .local v1, code:I
    const/16 v3, 0x1c3

    if-ne v1, v3, :cond_59

    .line 653
    iget-object v3, v2, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, v3, p2}, Lcom/android/exchange/EasSyncService;->getRedirect(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p2

    .line 654
    if-eqz p2, :cond_58

    .line 655
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting autodiscover to redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;

    move-result-object v2

    .line 678
    .end local v2           #resp:Lcom/android/exchange/EasResponse;
    :cond_58
    :goto_58
    return-object v2

    .line 659
    .restart local v2       #resp:Lcom/android/exchange/EasResponse;
    :cond_59
    const/16 v3, 0x191

    if-ne v1, v3, :cond_a2

    .line 660
    if-eqz p3, :cond_9b

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 662
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 663
    .local v0, atSignIndex:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 664
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 665
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "401 received; trying username: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 667
    const-string v3, "Authorization"

    invoke-virtual {p2, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 668
    const-string v3, "Authorization"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0, p1, p2, v6}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v2

    goto :goto_58

    .line 671
    .end local v0           #atSignIndex:I
    :cond_9b
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 673
    :cond_a2
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_58

    .line 675
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", throwing IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 676
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private pushFallback(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1893
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1894
    if-nez v1, :cond_a

    .line 1907
    :goto_9
    return-void

    .line 1897
    :cond_a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1898
    const/16 v0, 0x19

    .line 1899
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v3, :cond_16

    .line 1900
    const/4 v0, 0x5

    .line 1902
    :cond_16
    const-string v3, "syncInterval"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1903
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** PING ERROR LOOP: Set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

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

    .line 1906
    const-string v0, "push fallback"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private resetSecurityPolicies()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2499
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2500
    const-string v1, "securityFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2501
    const-string v1, "securitySyncKey"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2502
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 2503
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2505
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    .line 2506
    return-void
.end method

.method private runPingLoop()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 1926
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 1927
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "runPingLoop"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v6, 0x1b7740

    add-long v15, v2, v6

    .line 1930
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1931
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1932
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    const/4 v4, 0x0

    .line 1934
    const-wide/16 v2, -0x1

    move-wide v8, v2

    move v10, v4

    move v11, v5

    .line 1936
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v15

    if-gez v2, :cond_3f1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v2, :cond_3f1

    .line 1938
    const/4 v14, 0x0

    .line 1940
    const/4 v13, 0x0

    .line 1942
    const/4 v12, 0x0

    .line 1944
    new-instance v20, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accountKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND syncInterval IN (-3,-2) AND type!=\"68\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1948
    if-nez v21, :cond_7a

    new-instance v2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v2

    .line 1949
    :cond_7a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1950
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1952
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_3fd

    .line 1953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    move v7, v12

    move v5, v13

    move v8, v14

    .line 1957
    :goto_98
    :try_start_98
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 1958
    add-int/lit8 v6, v8, 0x1

    .line 1962
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1963
    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->pingStatus(J)I

    move-result v4

    .line 1964
    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1965
    if-nez v4, :cond_115

    .line 1966
    const/4 v4, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1967
    if-eqz v4, :cond_c5

    const-string v9, "0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 1969
    :cond_c5
    add-int/lit8 v6, v6, -0x1

    .line 1970
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v8, v6

    .line 1971
    goto :goto_98

    .line 1974
    :cond_cc
    add-int/lit8 v4, v5, 0x1

    if-nez v5, :cond_e7

    .line 1976
    const/16 v5, 0x345

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v9, 0x348

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v9, 0x349

    invoke-virtual {v5, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1982
    :cond_e7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;->getTargetCollectionClassFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1983
    const/16 v9, 0x34a

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v12, 0x34b

    const/4 v13, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v9

    const/16 v12, 0x34c

    invoke-virtual {v9, v12, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1987
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_112
    move v5, v4

    move v8, v6

    .line 1996
    goto :goto_98

    .line 1988
    :cond_115
    const/4 v9, 0x1

    if-eq v4, v9, :cond_11b

    const/4 v9, 0x2

    if-ne v4, v9, :cond_122

    .line 1990
    :cond_11b
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_112

    .line 1991
    :cond_122
    const/4 v9, 0x3

    if-ne v4, v9, :cond_3fa

    .line 1992
    add-int/lit8 v4, v6, -0x1

    .line 1993
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    const-string v9, " in error state; ignore"

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_137
    .catchall {:try_start_98 .. :try_end_137} :catchall_1bb

    move v8, v4

    .line 1994
    goto/16 :goto_98

    .line 1998
    :cond_13a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2001
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_18d

    .line 2002
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_167

    .line 2003
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ping not ready for: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2005
    :cond_167
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18d

    .line 2006
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ping ready for: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2012
    :cond_18d
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c0

    const/4 v4, 0x5

    if-le v10, v4, :cond_1c0

    const/4 v4, 0x1

    move v6, v4

    .line 2014
    :goto_198
    if-lez v5, :cond_381

    if-eq v5, v8, :cond_19e

    if-eqz v6, :cond_381

    .line 2016
    :cond_19e
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2017
    const/4 v10, 0x0

    .line 2018
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 2019
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 2022
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v4, :cond_1c3

    .line 2158
    :goto_1ba
    return-void

    .line 1998
    :catchall_1bb
    move-exception v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2012
    :cond_1c0
    const/4 v4, 0x0

    move v6, v4

    goto :goto_198

    .line 2024
    :cond_1c3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2027
    if-eqz v6, :cond_1d6

    .line 2028
    const/4 v4, 0x1

    :try_start_1ca
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "Forcing ping after waiting for all boxes to be ready"

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2030
    :cond_1d6
    invoke-virtual/range {v20 .. v20}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v5

    if-eqz v6, :cond_24f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    :goto_1e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/exchange/EasSyncService;->sendPing([BI)Lcom/android/exchange/EasResponse;
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1e5} :catch_217

    move-result-object v5

    .line 2034
    :try_start_1e6
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v4

    .line 2035
    const-string v7, "Ping response: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z

    move-result v7

    if-nez v7, :cond_200

    .line 2040
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 2044
    :cond_200
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-eqz v7, :cond_251

    .line 2045
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Stopping pingLoop"

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_213
    .catchall {:try_start_1e6 .. :try_end_213} :catchall_2c9

    .line 2085
    :try_start_213
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_217

    goto :goto_1ba

    .line 2087
    :catch_217
    move-exception v4

    move-object v8, v4

    move v7, v11

    .line 2088
    :goto_21a
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 2091
    if-eqz v6, :cond_2fb

    const/4 v4, 0x1

    .line 2092
    :goto_221
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException runPingLoop: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v4, :cond_2fe

    move-object v5, v6

    :goto_233
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    if-eqz v5, :cond_302

    :cond_248
    :goto_248
    move v4, v10

    move v5, v7

    :goto_24a
    move-wide v8, v2

    move v10, v4

    move v11, v5

    .line 2154
    goto/16 :goto_2f

    :cond_24f
    move v4, v11

    .line 2030
    goto :goto_1e0

    .line 2049
    :cond_251
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_2ce

    .line 2051
    :try_start_255
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V

    .line 2052
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2b6

    .line 2053
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 2054
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v7, v1}, Lcom/android/exchange/EasSyncService;->parsePingResult(Ljava/io/InputStream;Landroid/content/ContentResolver;Ljava/util/HashMap;)I

    move-result v4

    .line 2058
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2ad

    if-nez v6, :cond_2ad

    .line 2059
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    if-le v11, v4, :cond_28c

    .line 2060
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    .line 2061
    const-string v4, "Setting high water mark at: "

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2063
    :cond_28c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-ge v11, v4, :cond_2ad

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    if-nez v4, :cond_2ad

    .line 2065
    add-int/lit16 v11, v11, 0xb4

    .line 2066
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v11, v4, :cond_2a4

    .line 2067
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 2069
    :cond_2a4
    const-string v4, "Increase ping heartbeat to "

    const-string v6, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2ad
    .catchall {:try_start_255 .. :try_end_2ad} :catchall_2c9

    :cond_2ad
    move v7, v11

    .line 2085
    :goto_2ae
    :try_start_2ae
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b1} :catch_2b2

    goto :goto_248

    .line 2087
    :catch_2b2
    move-exception v4

    move-object v8, v4

    goto/16 :goto_21a

    .line 2073
    :cond_2b6
    const/4 v4, 0x1

    :try_start_2b7
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Ping returned empty result; throwing IOException"

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2074
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_2c9
    .catchall {:try_start_2b7 .. :try_end_2c9} :catchall_2c9

    .line 2085
    :catchall_2c9
    move-exception v4

    :try_start_2ca
    invoke-virtual {v5}, Lcom/android/exchange/EasResponse;->close()V

    throw v4
    :try_end_2ce
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2ce} :catch_217

    .line 2076
    :cond_2ce
    :try_start_2ce
    invoke-static {v4}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v6

    if-eqz v6, :cond_2e6

    .line 2077
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2078
    const-string v6, "Authorization error during Ping: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2079
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 2080
    :cond_2e6
    invoke-static {v4}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v6

    if-eqz v6, :cond_3f7

    .line 2081
    const-string v6, "Provisioning required during Ping: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2082
    new-instance v4, Lcom/android/exchange/CommandStatusException;

    const/16 v6, 0x8e

    invoke-direct {v4, v6}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v4
    :try_end_2fb
    .catchall {:try_start_2ce .. :try_end_2fb} :catchall_2c9

    .line 2091
    :cond_2fb
    const/4 v4, 0x0

    goto/16 :goto_221

    .line 2092
    :cond_2fe
    const-string v5, "[no message]"

    goto/16 :goto_233

    .line 2096
    :cond_302
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-nez v5, :cond_310

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/EasSyncService;->isLikelyNatFailure(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_376

    .line 2097
    :cond_310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    .line 2098
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-le v7, v6, :cond_33e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exchange/EasSyncService;->mPingHighWaterMark:I

    if-le v7, v6, :cond_33e

    .line 2100
    add-int/lit16 v4, v7, -0xb4

    .line 2101
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 2102
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v4, v5, :cond_332

    .line 2103
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 2105
    :cond_332
    const-string v5, "Decreased ping heartbeat to "

    const-string v6, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    :goto_33b
    move v7, v4

    .line 2119
    goto/16 :goto_248

    .line 2106
    :cond_33e
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    if-eqz v6, :cond_353

    .line 2112
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Ping aborted; retry"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v4, v7

    goto :goto_33b

    .line 2113
    :cond_353
    const-wide/16 v11, 0x7d0

    cmp-long v4, v4, v11

    if-gez v4, :cond_367

    .line 2114
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Abort or NAT type return < 2 seconds; throwing IOException"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2115
    throw v8

    .line 2117
    :cond_367
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "NAT type IOException"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v4, v7

    goto :goto_33b

    .line 2119
    :cond_376
    if-eqz v4, :cond_380

    const-string v4, "roken pipe"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_248

    .line 2124
    :cond_380
    throw v8

    .line 2127
    :cond_381
    if-eqz v6, :cond_39d

    .line 2130
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pingLoop waiting 60s for any pingable boxes"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2131
    const-wide/32 v4, 0xea60

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_24a

    .line 2132
    :cond_39d
    if-lez v8, :cond_3ad

    .line 2135
    const-wide/16 v4, 0x7d0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    .line 2136
    add-int/lit8 v10, v10, 0x1

    move v4, v10

    move v5, v11

    goto/16 :goto_24a

    .line 2138
    :cond_3ad
    if-lez v7, :cond_3c4

    .line 2142
    const-string v4, "pingLoop waiting for initial sync of "

    const-string v5, " box(es)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 2143
    const-wide/16 v4, 0x2710

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_24a

    .line 2144
    :cond_3c4
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_3d7

    .line 2146
    const-wide/32 v4, 0xafc8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_24a

    .line 2151
    :cond_3d7
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Account mailbox sleeping for 20m"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2152
    const-wide/32 v4, 0x124f80

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/exchange/EasSyncService;->sleep(JZ)V

    move v4, v10

    move v5, v11

    goto/16 :goto_24a

    .line 2157
    :cond_3f1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    goto/16 :goto_1ba

    :cond_3f7
    move v7, v11

    goto/16 :goto_2ae

    :cond_3fa
    move v4, v5

    goto/16 :goto_112

    :cond_3fd
    move v7, v12

    move v5, v13

    move-wide v2, v8

    move v8, v14

    goto/16 :goto_98
.end method

.method public static searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 939
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 940
    if-eqz v1, :cond_f

    .line 941
    invoke-static {p0, v1}, Lcom/android/exchange/EasSyncService;->setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;

    move-result-object v2

    .line 942
    if-nez v2, :cond_10

    .line 974
    :cond_f
    :goto_f
    return-object v0

    .line 944
    :cond_10
    :try_start_10
    new-instance v1, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v1}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 945
    const/16 v3, 0x3c5

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x3c7

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 946
    const/16 v3, 0x3c8

    const-string v4, "GAL"

    invoke-virtual {v1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x3c9

    invoke-virtual {v3, v4, p3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 947
    const/16 v3, 0x3ca

    invoke-virtual {v1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 948
    const/16 v3, 0x3cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p4, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 949
    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 950
    const-string v3, "Search"

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_68} :catch_94

    move-result-object v3

    .line 952
    :try_start_69
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 953
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_bb

    .line 954
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_b6

    move-result-object v4

    .line 956
    :try_start_75
    new-instance v1, Lcom/android/exchange/adapter/GalParser;

    invoke-direct {v1, v4, v2}, Lcom/android/exchange/adapter/GalParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 957
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->parse()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 958
    invoke-virtual {v1}, Lcom/android/exchange/adapter/GalParser;->getGalResult()Lcom/android/exchange/provider/GalResult;
    :try_end_83
    .catchall {:try_start_75 .. :try_end_83} :catchall_b1

    move-result-object v1

    .line 961
    :try_start_84
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_b6

    .line 967
    :try_start_87
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_94

    move-object v0, v1

    goto :goto_f

    .line 961
    :cond_8c
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_b6

    .line 967
    :goto_8f
    :try_start_8f
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_94

    goto/16 :goto_f

    .line 969
    :catch_94
    move-exception v1

    .line 971
    new-array v3, v9, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GAL lookup exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_f

    .line 961
    :catchall_b1
    move-exception v1

    :try_start_b2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_b6

    .line 967
    :catchall_b6
    move-exception v1

    :try_start_b7
    invoke-virtual {v3}, Lcom/android/exchange/EasResponse;->close()V

    throw v1
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bb} :catch_94

    .line 964
    :cond_bb
    const/4 v4, 0x1

    :try_start_bc
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GAL lookup returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_bc .. :try_end_d7} :catchall_b6

    goto :goto_8f
.end method

.method private sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 983
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1048
    :cond_5
    :goto_5
    return-void

    .line 984
    :cond_6
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 988
    const-string v0, "ORGMAIL"

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 990
    array-length v2, v0

    if-ne v2, v9, :cond_5

    .line 991
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 993
    const-string v2, "DTSTAMP"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 994
    const-string v3, "DTSTART"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 995
    const-string v4, "DTEND"

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 999
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    new-instance v6, Landroid/content/Entity;

    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1003
    const-string v7, "DTSTAMP"

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v2, "dtstart"

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    const-string v2, "dtend"

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const-string v2, "eventLocation"

    const-string v3, "LOC"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v2, "title"

    const-string v3, "TITLE"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v2, "organizer"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    const-string v3, "attendeeRelationship"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    const-string v3, "attendeeEmail"

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v3, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1019
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1020
    const-string v3, "attendeeRelationship"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1029
    packed-switch p2, :pswitch_data_d6

    .line 1038
    :pswitch_b3
    const/16 v0, 0x100

    .line 1041
    :goto_b5
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v3, "UID"

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2, v6, v0, v1, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_5

    .line 1046
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_5

    .line 1031
    :pswitch_d0
    const/16 v0, 0x40

    .line 1032
    goto :goto_b5

    .line 1034
    :pswitch_d3
    const/16 v0, 0x80

    .line 1035
    goto :goto_b5

    .line 1029
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_b3
        :pswitch_d3
    .end packed-switch
.end method

.method private sendSettings()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1595
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1596
    const/16 v1, 0x485

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1597
    const/16 v1, 0x496

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x488

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1598
    const/16 v1, 0x497

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1599
    const/16 v1, 0x49a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1600
    const/16 v1, 0x4a0

    sget-object v2, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1601
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1602
    const-string v1, "Settings"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1604
    :try_start_56
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1605
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6f

    .line 1606
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1607
    new-instance v2, Lcom/android/exchange/adapter/SettingsParser;

    invoke-direct {v2, v0, p0}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1608
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_74

    move-result v0

    .line 1611
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1614
    :goto_6e
    return v0

    .line 1611
    :cond_6f
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    .line 1614
    const/4 v0, 0x0

    goto :goto_6e

    .line 1611
    :catchall_74
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
.end method

.method private setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    .registers 16
    .parameter "service"
    .parameter "versionHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 372
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, supportedVersions:Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Server supports versions: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {p0, v9}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 374
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, supportedVersionsArray:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 377
    .local v5, ourVersion:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v4, :cond_4c

    aget-object v8, v1, v3

    .line 378
    .local v8, version:Ljava/lang/String;
    const-string v9, "2.5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    const-string v9, "12.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    const-string v9, "12.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    const-string v9, "14.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    const-string v9, "14.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 383
    :cond_48
    move-object v5, v8

    .line 377
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 388
    .end local v8           #version:Ljava/lang/String;
    :cond_4c
    if-nez v5, :cond_6e

    .line 389
    iget-object v9, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No supported EAS versions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v9

    .line 394
    :cond_6e
    const-string v9, "14.1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    const-string v9, "Exchange14"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 396
    const-string v5, "14.0"

    .line 398
    :cond_80
    iput-object v5, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 399
    invoke-static {v5}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    iput-object v9, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 400
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 401
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_c1

    .line 402
    iput-object v5, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 404
    iget-object v9, p1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4028

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_c1

    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v9, v9, 0x800

    if-nez v9, :cond_c1

    .line 406
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 407
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v2, cv:Landroid/content/ContentValues;
    iget v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v9, v9, 0x1800

    iput v9, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 410
    const-string v9, "flags"

    iget v10, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    iget-object v9, p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9, v2}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 416
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_c1
    return-void
.end method

.method public static setupServiceForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/exchange/EasSyncService;
    .registers 11
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 427
    iget v7, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_b

    move-object v3, v4

    .line 455
    :goto_a
    return-object v3

    .line 431
    :cond_b
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 432
    .local v2, protocolVersion:Ljava/lang/String;
    if-nez v2, :cond_11

    move-object v3, v4

    .line 433
    goto :goto_a

    .line 435
    :cond_11
    new-instance v3, Lcom/android/exchange/EasSyncService;

    const-string v7, "OutOfBand"

    invoke-direct {v3, v7}, Lcom/android/exchange/EasSyncService;-><init>(Ljava/lang/String;)V

    .line 436
    .local v3, svc:Lcom/android/exchange/EasSyncService;
    iget-wide v7, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 437
    .local v1, ha:Lcom/android/emailcommon/provider/HostAuth;
    iput-object v2, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 438
    invoke-static {v2}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 439
    iput-object p0, v3, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 440
    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 441
    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 442
    iget-object v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 444
    :try_start_34
    iget v7, v1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4f

    move v7, v5

    :goto_3b
    iget v8, v1, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_51

    :goto_41
    iget-object v6, v1, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(ZZLjava/lang/String;)V

    .line 448
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4c} :catch_53
    .catch Ljava/security/cert/CertificateException; {:try_start_34 .. :try_end_4c} :catch_56

    .line 454
    iput-object p1, v3, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    goto :goto_a

    :cond_4f
    move v7, v6

    .line 444
    goto :goto_3b

    :cond_51
    move v5, v6

    goto :goto_41

    .line 449
    :catch_53
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v3, v4

    .line 450
    goto :goto_a

    .line 451
    .end local v0           #e:Ljava/io/IOException;
    :catch_56
    move-exception v0

    .local v0, e:Ljava/security/cert/CertificateException;
    move-object v3, v4

    .line 452
    goto :goto_a
.end method

.method private sleep(JZ)V
    .registers 8
    .parameter "ms"
    .parameter "runAsleep"

    .prologue
    .line 2161
    if-eqz p3, :cond_a

    .line 2162
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 2165
    :cond_a
    :try_start_a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1e
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_15

    .line 2169
    if-eqz p3, :cond_14

    .line 2170
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 2173
    :cond_14
    :goto_14
    return-void

    .line 2166
    :catch_15
    move-exception v0

    .line 2169
    if-eqz p3, :cond_14

    .line 2170
    iget-wide v0, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    goto :goto_14

    .line 2169
    :catchall_1e
    move-exception v0

    if-eqz p3, :cond_26

    .line 2170
    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    :cond_26
    throw v0
.end method

.method private tryProvision()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1390
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v4

    .line 1391
    if-eqz v4, :cond_cf

    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1393
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v5

    .line 1396
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_d3

    .line 1397
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 1401
    :goto_27
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v6, v7, v5, v1}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1403
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V

    .line 1405
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v6, v7}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesUpdated(Landroid/content/Context;J)V

    .line 1406
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getRemoteWipe()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1408
    const-string v0, "!!! Remote wipe request received"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1, v3}, Lcom/android/exchange/SecurityPolicyDelegate;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 1412
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 1415
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/SecurityPolicyDelegate;->isActiveAdmin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1416
    const-string v0, "!!! Not device admin; can\'t wipe"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    move v0, v2

    .line 1464
    :goto_65
    return v0

    .line 1423
    :cond_66
    :try_start_66
    const-string v0, "!!! Acknowledging remote wipe to server"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->acknowledgeRemoteWipe(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_72} :catch_d1

    .line 1430
    :goto_72
    const-string v0, "!!! Executing remote wipe"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/SecurityPolicyDelegate;->remoteWipe(Landroid/content/Context;)V

    move v0, v2

    .line 1432
    goto :goto_65

    .line 1433
    :cond_7e
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1438
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v1, v6, v8

    if-nez v1, :cond_bb

    .line 1439
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v1

    .line 1444
    :goto_96
    if-eqz v1, :cond_cf

    .line 1446
    if-eqz v0, :cond_ad

    .line 1447
    iget-boolean v2, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    iget-boolean v4, v5, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-ne v2, v4, :cond_a6

    iget v0, v0, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    iget v2, v5, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    if-eq v0, v2, :cond_ad

    .line 1449
    :cond_a6
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v2, v5}, Lcom/android/emailcommon/provider/Policy;->setAttachmentFlagsForNewPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 1453
    :cond_ad
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v2, v5, v1}, Lcom/android/emailcommon/provider/Policy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->releaseSecurityHold(Lcom/android/emailcommon/provider/Account;)V

    move v0, v3

    .line 1456
    goto :goto_65

    .line 1441
    :cond_bb
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-direct {p0, v1, v4}, Lcom/android/exchange/EasSyncService;->acknowledgeProvision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_96

    .line 1461
    :cond_c6
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v3, v4}, Lcom/android/exchange/SecurityPolicyDelegate;->policiesRequired(Landroid/content/Context;J)V

    :cond_cf
    move v0, v2

    .line 1464
    goto :goto_65

    .line 1425
    :catch_d1
    move-exception v0

    goto :goto_72

    :cond_d3
    move-object v0, v1

    goto/16 :goto_27
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 366
    :goto_8
    return-void

    .line 365
    :cond_9
    invoke-super {p0, p1}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_8
.end method

.method public alarm()Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 276
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    if-nez v7, :cond_7

    .line 330
    :goto_6
    return v5

    .line 277
    :cond_7
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, threadName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 283
    :try_start_12
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 284
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_ab

    .line 285
    sget-boolean v8, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v8, :cond_39

    .line 286
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 287
    .local v4, uri:Ljava/net/URI;
    if-eqz v4, :cond_99

    .line 288
    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_28

    .line 290
    const-string v1, "POST"

    .line 292
    :cond_28
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, ": Alert, aborting "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 298
    .end local v1           #query:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :cond_39
    :goto_39
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exchange/EasSyncService;->mPostAborted:Z

    .line 299
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 305
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_a8

    .line 309
    const-wide/16 v7, 0x2710

    :try_start_42
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_bf

    .line 313
    :goto_45
    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 314
    .local v2, s:Ljava/lang/Thread$State;
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_71

    .line 315
    new-array v7, v5, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 318
    :cond_71
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 321
    :try_start_76
    sget-object v8, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v2, v8, :cond_b9

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v8, :cond_b9

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-ne v8, v0, :cond_b9

    .line 322
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 323
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 324
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Interrupting..."

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 326
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_76 .. :try_end_96} :catchall_bc

    move v5, v6

    goto/16 :goto_6

    .line 294
    .end local v2           #s:Ljava/lang/Thread$State;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_99
    const/4 v8, 0x2

    :try_start_9a
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const-string v10, ": Alert, no URI?"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_39

    .line 305
    .end local v0           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #uri:Ljava/net/URI;
    :catchall_a8
    move-exception v5

    monitor-exit v7
    :try_end_aa
    .catchall {:try_start_9a .. :try_end_aa} :catchall_a8

    throw v5

    .line 302
    .restart local v0       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_ab
    const/4 v6, 0x1

    :try_start_ac
    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Alert, no pending POST"

    aput-object v9, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 303
    monitor-exit v7
    :try_end_b7
    .catchall {:try_start_ac .. :try_end_b7} :catchall_a8

    goto/16 :goto_6

    .line 328
    .restart local v2       #s:Ljava/lang/Thread$State;
    :cond_b9
    :try_start_b9
    monitor-exit v7

    goto/16 :goto_6

    :catchall_bc
    move-exception v5

    monitor-exit v7
    :try_end_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_bc

    throw v5

    .line 310
    .end local v2           #s:Ljava/lang/Thread$State;
    :catch_bf
    move-exception v7

    goto :goto_45
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;I)Lcom/android/exchange/EasResponse;
    .registers 5
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;
    .registers 11
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1295
    :try_start_5
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1296
    add-int/lit16 v2, p3, 0x7530

    int-to-long v0, v2

    .line 1297
    .local v0, alarmTime:J
    if-eqz p4, :cond_2b

    .line 1298
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 1302
    :goto_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_31

    .line 1304
    :try_start_12
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_3d

    move-result-object v2

    .line 1306
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1307
    if-eqz p4, :cond_34

    .line 1308
    :try_start_21
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1312
    :goto_26
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1313
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_3a

    return-object v2

    .line 1300
    :cond_2b
    :try_start_2b
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v0, v1}, Lcom/android/exchange/ExchangeService;->setWatchdogAlarm(JJ)V

    goto :goto_11

    .line 1302
    .end local v0           #alarmTime:J
    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v2

    .line 1310
    .restart local v0       #alarmTime:J
    :cond_34
    :try_start_34
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_26

    .line 1313
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v2

    .line 1306
    :catchall_3d
    move-exception v2

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1307
    if-eqz p4, :cond_4f

    .line 1308
    :try_start_45
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1312
    :goto_4a
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1313
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_55

    throw v2

    .line 1310
    :cond_4f
    :try_start_4f
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V

    goto :goto_4a

    .line 1313
    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_55

    throw v2
.end method

.method makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1193
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1194
    if-eqz p1, :cond_24

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?Cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mUserString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :cond_24
    if-eqz p2, :cond_37

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    :cond_37
    return-object v0
.end method

.method protected messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1058
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 1059
    if-nez v6, :cond_f

    .line 1123
    :cond_e
    :goto_e
    return-void

    .line 1060
    :cond_f
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "mailboxKey"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1062
    if-nez v1, :cond_2d

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 1065
    :cond_2d
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_de

    move-result v0

    if-nez v0, :cond_37

    .line 1068
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 1066
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_de

    move-result-object v0

    .line 1068
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1070
    if-eqz v0, :cond_e

    .line 1071
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/exchange/MessageMoveRequest;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1072
    if-eqz v1, :cond_e

    .line 1073
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1074
    const/16 v3, 0x145

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x146

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1075
    const/16 v3, 0x147

    iget-object v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1076
    const/16 v3, 0x148

    iget-object v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1077
    const/16 v3, 0x149

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1078
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1079
    const-string v1, "MoveItems"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1081
    :try_start_8b
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 1082
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_110

    .line 1083
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d9

    .line 1084
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1085
    new-instance v3, Lcom/android/exchange/adapter/MoveItemsParser;

    invoke-direct {v3, v2, p0}, Lcom/android/exchange/adapter/MoveItemsParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    .line 1086
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->parse()Z

    .line 1087
    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getStatusCode()I

    move-result v2

    .line 1088
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1089
    if-ne v2, v9, :cond_e3

    .line 1091
    const-string v3, "mailboxKey"

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1103
    :cond_c6
    :goto_c6
    if-eq v2, v7, :cond_ca

    if-ne v2, v9, :cond_d9

    .line 1107
    :cond_ca
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_8b .. :try_end_d9} :catchall_10b

    .line 1121
    :cond_d9
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_e

    .line 1068
    :catchall_de
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1095
    :cond_e3
    if-ne v2, v7, :cond_c6

    .line 1097
    :try_start_e5
    const-string v0, "syncServerId"

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MoveItemsParser;->getNewServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v0, "flags"

    iget v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/exchange/MessageMoveRequest;->mMessageId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_e5 .. :try_end_10a} :catchall_10b

    goto :goto_c6

    .line 1121
    :catchall_10b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 1114
    :cond_110
    :try_start_110
    invoke-static {v2}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1115
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0

    .line 1117
    :cond_11c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Move items request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1118
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_13e
    .catchall {:try_start_110 .. :try_end_13e} :catchall_10b
.end method

.method parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
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
    .line 863
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 864
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 877
    return-void

    .line 866
    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 867
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 868
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 870
    const-string v1, "Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 871
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 872
    :cond_48
    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
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
    .line 918
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    .line 919
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Autodiscover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 925
    return-void

    .line 921
    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
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
    .line 901
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 902
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 913
    return-void

    .line 904
    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 905
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 906
    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 907
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 908
    :cond_27
    const-string v1, "Action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 819
    move v0, v1

    .line 821
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 822
    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 843
    return-void

    .line 824
    :cond_17
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 825
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 826
    const-string v4, "Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 827
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobileSync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 828
    goto :goto_3

    .line 830
    :cond_34
    if-eqz v0, :cond_3

    const-string v4, "Url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 831
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 834
    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "/microsoft-server-activesync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 836
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 837
    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 838
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Autodiscover, server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_3
.end method

.method parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
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
    .line 848
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 849
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 858
    return-void

    .line 851
    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 852
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 853
    const-string v1, "Server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/EasSyncService;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 882
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 883
    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 896
    return-void

    .line 885
    :cond_16
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 886
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 887
    const-string v1, "EMailAddress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 888
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 889
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 890
    :cond_44
    const-string v1, "DisplayName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 892
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autodiscover, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 336
    :try_start_5
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_30

    .line 337
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 338
    .local v1, uri:Ljava/net/URI;
    if-eqz v1, :cond_30

    .line 339
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, query:Ljava/lang/String;
    const-string v2, "Cmd=Ping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 341
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Reset, aborting Ping"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exchange/EasSyncService;->mPostReset:Z

    .line 343
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 347
    .end local v0           #query:Ljava/lang/String;
    .end local v1           #uri:Ljava/net/URI;
    :cond_30
    monitor-exit v3

    .line 348
    return-void

    .line 347
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v2
.end method

.method resetHeartbeats(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1859
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

    .line 1863
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-le p1, v0, :cond_39

    .line 1867
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, p1, :cond_26

    .line 1868
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    .line 1870
    :cond_26
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    if-ge v0, p1, :cond_2c

    .line 1871
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingForceHeartbeat:I

    .line 1874
    :cond_2c
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    if-le v0, v1, :cond_34

    .line 1875
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 1887
    :cond_34
    :goto_34
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    .line 1889
    iput-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeatDropped:Z

    .line 1890
    return-void

    .line 1877
    :cond_39
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingHeartbeat:I

    if-ge p1, v0, :cond_34

    .line 1880
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    .line 1882
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mPingMaxHeartbeat:I

    iget v1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    if-ge v0, v1, :cond_34

    .line 1883
    iput p1, p0, Lcom/android/exchange/EasSyncService;->mPingMinHeartbeat:I

    goto :goto_34
.end method

.method public run()V
    .registers 9

    .prologue
    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 2512
    :try_start_3
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->setupService()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2627
    :cond_9
    :goto_9
    return-void

    .line 2514
    :cond_a
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_c
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_3 .. :try_end_c} :catch_5b

    if-nez v0, :cond_9

    .line 2518
    :try_start_e
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 2519
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    .line 2520
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_206
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_e .. :try_end_24} :catch_111
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_24} :catch_162
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_1b2

    if-nez v1, :cond_64

    .line 2568
    :cond_26
    :try_start_26
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2569
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_412

    .line 2570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2571
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_532

    .line 2597
    :pswitch_3d
    const/16 v0, 0x15

    .line 2598
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_44
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_26 .. :try_end_44} :catch_5b

    .line 2612
    :goto_44
    :try_start_44
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_522

    if-ne v0, v2, :cond_522

    .line 2616
    :goto_4b
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_55} :catch_50d
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_44 .. :try_end_55} :catch_5b

    .line 2622
    :goto_55
    :try_start_55
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_5a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_9

    .line 2624
    :catch_5b
    move-exception v0

    .line 2625
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v1, "EmailProvider unavailable; sync ended prematurely"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2522
    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x44

    if-ne v1, v4, :cond_aa

    .line 2523
    or-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2524
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->runAccountMailbox()V
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_206
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_64 .. :try_end_74} :catch_111
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_74} :catch_162
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_74} :catch_1b2

    .line 2568
    :goto_74
    :try_start_74
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2569
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_48e

    .line 2570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2571
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_542

    .line 2597
    :pswitch_8b
    const/16 v0, 0x15

    .line 2598
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_92
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_74 .. :try_end_92} :catch_5b

    .line 2612
    :goto_92
    :try_start_92
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_51f

    if-ne v0, v2, :cond_51f

    .line 2616
    :goto_99
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a3} :catch_50a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_92 .. :try_end_a3} :catch_5b

    .line 2622
    :goto_a3
    :try_start_a3
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_a8
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_a3 .. :try_end_a8} :catch_5b

    goto/16 :goto_9

    .line 2527
    :cond_aa
    :try_start_aa
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x42

    if-ne v1, v4, :cond_fd

    .line 2528
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2529
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 2540
    :cond_bd
    :goto_bd
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_d4

    .line 2541
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Looping for user request..."

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2542
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    .line 2544
    :cond_d4
    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v1

    .line 2545
    iget v4, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x6

    if-ge v4, v5, :cond_e5

    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e2
    .catchall {:try_start_aa .. :try_end_e2} :catchall_206
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_aa .. :try_end_e2} :catch_111
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_e2} :catch_162
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_e2} :catch_1b2

    move-result v1

    if-eqz v1, :cond_f0

    .line 2548
    :cond_e5
    :try_start_e5
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_f0
    .catchall {:try_start_e5 .. :try_end_f0} :catchall_206
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_f0} :catch_51c
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_e5 .. :try_end_f0} :catch_111
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f0} :catch_162
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f0} :catch_1b2

    .line 2554
    :cond_f0
    :goto_f0
    :try_start_f0
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 2555
    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mRequestTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_bd

    goto/16 :goto_74

    .line 2530
    :cond_fd
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x41

    if-ne v1, v4, :cond_156

    .line 2531
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2532
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_110
    .catchall {:try_start_f0 .. :try_end_110} :catchall_206
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_f0 .. :try_end_110} :catch_111
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_110} :catch_162
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_110} :catch_1b2

    goto :goto_bd

    .line 2557
    :catch_111
    move-exception v0

    .line 2558
    const/4 v0, 0x1

    :try_start_113
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Caught authentication error"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2559
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_120
    .catchall {:try_start_113 .. :try_end_120} :catchall_206

    .line 2568
    :try_start_120
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2569
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_29e

    .line 2570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2571
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_552

    .line 2597
    :pswitch_137
    const/16 v0, 0x15

    .line 2598
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_13e
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_120 .. :try_end_13e} :catch_5b

    .line 2612
    :goto_13e
    :try_start_13e
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_52b

    if-ne v0, v2, :cond_52b

    .line 2616
    :goto_145
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_14f} :catch_516
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_13e .. :try_end_14f} :catch_5b

    .line 2622
    :goto_14f
    :try_start_14f
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_154
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_14f .. :try_end_154} :catch_5b

    goto/16 :goto_9

    .line 2534
    :cond_156
    or-int/lit8 v0, v0, 0x0

    :try_start_158
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2535
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V
    :try_end_160
    .catchall {:try_start_158 .. :try_end_160} :catchall_206
    .catch Lcom/android/exchange/EasAuthenticationException; {:try_start_158 .. :try_end_160} :catch_111
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_160} :catch_162
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_160} :catch_1b2

    goto/16 :goto_bd

    .line 2560
    :catch_162
    move-exception v0

    .line 2561
    :try_start_163
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2562
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Caught IOException: "

    aput-object v5, v1, v4

    const/4 v4, 0x1

    if-nez v0, :cond_174

    const-string v0, "No message"

    :cond_174
    aput-object v0, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2563
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_17c
    .catchall {:try_start_163 .. :try_end_17c} :catchall_206

    .line 2568
    :try_start_17c
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2569
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_31a

    .line 2570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2571
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_562

    .line 2597
    :pswitch_193
    const/16 v0, 0x15

    .line 2598
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_19a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_17c .. :try_end_19a} :catch_5b

    .line 2612
    :goto_19a
    :try_start_19a
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_528

    if-ne v0, v2, :cond_528

    .line 2616
    :goto_1a1
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1ab
    .catch Landroid/os/RemoteException; {:try_start_19a .. :try_end_1ab} :catch_513
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_19a .. :try_end_1ab} :catch_5b

    .line 2622
    :goto_1ab
    :try_start_1ab
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_1b0
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1ab .. :try_end_1b0} :catch_5b

    goto/16 :goto_9

    .line 2564
    :catch_1b2
    move-exception v0

    .line 2565
    :try_start_1b3
    const-string v1, "Uncaught exception in EasSyncService"

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1b8
    .catchall {:try_start_1b3 .. :try_end_1b8} :catchall_206

    .line 2568
    :try_start_1b8
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2569
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_396

    .line 2570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Sync finished"

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2571
    iget v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v0, :pswitch_data_572

    .line 2597
    :pswitch_1cf
    const/16 v0, 0x15

    .line 2598
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V
    :try_end_1d6
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1b8 .. :try_end_1d6} :catch_5b

    .line 2612
    :goto_1d6
    :try_start_1d6
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_525

    if-ne v0, v2, :cond_525

    .line 2616
    :goto_1dd
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_1e7
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1e7} :catch_510
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1d6 .. :try_end_1e7} :catch_5b

    .line 2622
    :goto_1e7
    :try_start_1e7
    const-string v0, "sync finished"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_1ec
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1e7 .. :try_end_1ec} :catch_5b

    goto/16 :goto_9

    :pswitch_1ee
    move v1, v2

    .line 2612
    :goto_1ef
    :try_start_1ef
    iget v4, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_52e

    if-ne v1, v2, :cond_52e

    .line 2616
    :goto_1f6
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/4 v2, 0x0

    invoke-interface {v1, v4, v5, v3, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_200
    .catch Landroid/os/RemoteException; {:try_start_1ef .. :try_end_200} :catch_519
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1ef .. :try_end_200} :catch_5b

    .line 2622
    :goto_200
    :try_start_200
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2567
    throw v0

    :catchall_206
    move-exception v0

    .line 2568
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 2569
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_226

    .line 2570
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sync finished"

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2571
    iget v1, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_582

    .line 2597
    :pswitch_21e
    const/16 v1, 0x15

    .line 2598
    const-string v4, "Sync ended due to an exception."

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_1ef

    .line 2602
    :cond_226
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Stopped sync finished."

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v1, v3

    .line 2603
    goto :goto_1ef

    .line 2576
    :pswitch_233
    const/4 v1, 0x0

    .line 2577
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2578
    const-string v5, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2579
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

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2580
    const-string v5, "syncStatus"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v3

    .line 2583
    goto/16 :goto_1ef

    .line 2585
    :pswitch_288
    const/16 v1, 0x16

    .line 2586
    goto/16 :goto_1ef

    .line 2588
    :pswitch_28c
    const/16 v1, 0x17

    .line 2591
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1ef

    .line 2594
    :pswitch_29a
    const/16 v1, 0x19

    .line 2595
    goto/16 :goto_1ef

    .line 2602
    :cond_29e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2603
    goto/16 :goto_13e

    .line 2576
    :pswitch_2ac
    const/4 v0, 0x0

    .line 2577
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2578
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2580
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2583
    goto/16 :goto_13e

    :pswitch_301
    move v0, v2

    .line 2574
    goto/16 :goto_13e

    .line 2585
    :pswitch_304
    const/16 v0, 0x16

    .line 2586
    goto/16 :goto_13e

    .line 2588
    :pswitch_308
    const/16 v0, 0x17

    .line 2591
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_13e

    .line 2594
    :pswitch_316
    const/16 v0, 0x19

    .line 2595
    goto/16 :goto_13e

    .line 2602
    :cond_31a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2603
    goto/16 :goto_19a

    .line 2576
    :pswitch_328
    const/4 v0, 0x0

    .line 2577
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2578
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2580
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2583
    goto/16 :goto_19a

    :pswitch_37d
    move v0, v2

    .line 2574
    goto/16 :goto_19a

    .line 2585
    :pswitch_380
    const/16 v0, 0x16

    .line 2586
    goto/16 :goto_19a

    .line 2588
    :pswitch_384
    const/16 v0, 0x17

    .line 2591
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_19a

    .line 2594
    :pswitch_392
    const/16 v0, 0x19

    .line 2595
    goto/16 :goto_19a

    .line 2602
    :cond_396
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2603
    goto/16 :goto_1d6

    .line 2576
    :pswitch_3a4
    const/4 v0, 0x0

    .line 2577
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2578
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2580
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2583
    goto/16 :goto_1d6

    :pswitch_3f9
    move v0, v2

    .line 2574
    goto/16 :goto_1d6

    .line 2585
    :pswitch_3fc
    const/16 v0, 0x16

    .line 2586
    goto/16 :goto_1d6

    .line 2588
    :pswitch_400
    const/16 v0, 0x17

    .line 2591
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_1d6

    .line 2594
    :pswitch_40e
    const/16 v0, 0x19

    .line 2595
    goto/16 :goto_1d6

    .line 2602
    :cond_412
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2603
    goto/16 :goto_44

    .line 2576
    :pswitch_420
    const/4 v0, 0x0

    .line 2577
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2578
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2580
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2583
    goto/16 :goto_44

    :pswitch_475
    move v0, v2

    .line 2574
    goto/16 :goto_44

    .line 2585
    :pswitch_478
    const/16 v0, 0x16

    .line 2586
    goto/16 :goto_44

    .line 2588
    :pswitch_47c
    const/16 v0, 0x17

    .line 2591
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_44

    .line 2594
    :pswitch_48a
    const/16 v0, 0x19

    .line 2595
    goto/16 :goto_44

    .line 2602
    :cond_48e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "Stopped sync finished."

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    move v0, v3

    .line 2603
    goto/16 :goto_92

    .line 2576
    :pswitch_49c
    const/4 v0, 0x0

    .line 2577
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2578
    const-string v4, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/exchange/EasSyncService;->mSyncReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2580
    const-string v4, "syncStatus"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 2583
    goto/16 :goto_92

    :pswitch_4f1
    move v0, v2

    .line 2574
    goto/16 :goto_92

    .line 2585
    :pswitch_4f4
    const/16 v0, 0x16

    .line 2586
    goto/16 :goto_92

    .line 2588
    :pswitch_4f8
    const/16 v0, 0x17

    .line 2591
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V
    :try_end_504
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_200 .. :try_end_504} :catch_5b

    goto/16 :goto_92

    .line 2594
    :pswitch_506
    const/16 v0, 0x19

    .line 2595
    goto/16 :goto_92

    .line 2617
    :catch_50a
    move-exception v0

    goto/16 :goto_a3

    :catch_50d
    move-exception v0

    goto/16 :goto_55

    :catch_510
    move-exception v0

    goto/16 :goto_1e7

    :catch_513
    move-exception v0

    goto/16 :goto_1ab

    :catch_516
    move-exception v0

    goto/16 :goto_14f

    :catch_519
    move-exception v1

    goto/16 :goto_200

    .line 2550
    :catch_51c
    move-exception v1

    goto/16 :goto_f0

    :cond_51f
    move v3, v0

    goto/16 :goto_99

    :cond_522
    move v3, v0

    goto/16 :goto_4b

    :cond_525
    move v3, v0

    goto/16 :goto_1dd

    :cond_528
    move v3, v0

    goto/16 :goto_1a1

    :cond_52b
    move v3, v0

    goto/16 :goto_145

    :cond_52e
    move v3, v1

    goto/16 :goto_1f6

    .line 2571
    nop

    :pswitch_data_532
    .packed-switch 0x0
        :pswitch_420
        :pswitch_475
        :pswitch_478
        :pswitch_3d
        :pswitch_47c
        :pswitch_48a
    .end packed-switch

    :pswitch_data_542
    .packed-switch 0x0
        :pswitch_49c
        :pswitch_4f1
        :pswitch_4f4
        :pswitch_8b
        :pswitch_4f8
        :pswitch_506
    .end packed-switch

    :pswitch_data_552
    .packed-switch 0x0
        :pswitch_2ac
        :pswitch_301
        :pswitch_304
        :pswitch_137
        :pswitch_308
        :pswitch_316
    .end packed-switch

    :pswitch_data_562
    .packed-switch 0x0
        :pswitch_328
        :pswitch_37d
        :pswitch_380
        :pswitch_193
        :pswitch_384
        :pswitch_392
    .end packed-switch

    :pswitch_data_572
    .packed-switch 0x0
        :pswitch_3a4
        :pswitch_3f9
        :pswitch_3fc
        :pswitch_1cf
        :pswitch_400
        :pswitch_40e
    .end packed-switch

    :pswitch_data_582
    .packed-switch 0x0
        :pswitch_233
        :pswitch_1ee
        :pswitch_288
        :pswitch_21e
        :pswitch_28c
        :pswitch_29a
    .end packed-switch
.end method

.method public runAccountMailbox()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/adapter/Parser$EasParserException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xc8

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1641
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/exchange/provider/MailboxUtilities;->checkMailboxConsistency(Landroid/content/Context;J)V

    .line 1643
    iput v9, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1646
    :try_start_10
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1d} :catch_34d
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_10 .. :try_end_1d} :catch_191
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_1f7

    .line 1652
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 1653
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 1654
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Account syncKey INIT to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1655
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1656
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1660
    :cond_49
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1661
    if-eqz v0, :cond_60

    .line 1662
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Initial FolderSync"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1666
    :cond_60
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1667
    const-string v2, "syncInterval"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1668
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and syncInterval=-3"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8e

    .line 1671
    const-string v2, "change ping boxes to push"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1676
    :cond_8e
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v2, :cond_a6

    if-nez v0, :cond_a6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-lez v0, :cond_107

    .line 1678
    :cond_a6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Determine EAS protocol version"

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_b4
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1d .. :try_end_b4} :catch_191
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_b4} :catch_1f7

    move-result-object v2

    .line 1681
    :try_start_b5
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1682
    const-string v3, "OPTIONS response: "

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1683
    if-ne v0, v12, :cond_1a4

    .line 1684
    const-string v0, "MS-ASProtocolCommands"

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1685
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1686
    const-string v0, "ms-asprotocolversions"

    invoke-virtual {v2, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_d8
    .catchall {:try_start_b5 .. :try_end_d8} :catchall_18c

    move-result-object v0

    .line 1688
    :try_start_d9
    invoke-direct {p0, p0, v0}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_18c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d9 .. :try_end_dc} :catch_185

    .line 1695
    :try_start_dc
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1698
    const-string v0, "protocolVersion"

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1700
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1702
    const-string v0, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1703
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I
    :try_end_104
    .catchall {:try_start_dc .. :try_end_104} :catchall_18c

    .line 1709
    :try_start_104
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    .line 1714
    :cond_107
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_140

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_140

    .line 1716
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1717
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v2, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit16 v2, v2, 0x80

    or-int/lit16 v2, v2, 0x800

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 1719
    const-string v0, "flags"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v2, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1724
    :cond_140
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v0, v11, :cond_178

    .line 1725
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1726
    const-string v0, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and type in (0,68,66,65)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_178

    .line 1730
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Push account; set pushable boxes to push..."

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1734
    :cond_178
    :goto_178
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_184

    .line 1736
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->canAutoSync(Lcom/android/emailcommon/provider/Account;)Z
    :try_end_181
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_104 .. :try_end_181} :catch_191
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_181} :catch_1f7

    move-result v0

    if-nez v0, :cond_1af

    .line 1852
    :cond_184
    :goto_184
    return-void

    .line 1689
    :catch_185
    move-exception v0

    .line 1692
    :try_start_186
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_18c
    .catchall {:try_start_186 .. :try_end_18c} :catchall_18c

    .line 1709
    :catchall_18c
    move-exception v0

    :try_start_18d
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
    :try_end_191
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_18d .. :try_end_191} :catch_191
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_191} :catch_1f7

    .line 1810
    :catch_191
    move-exception v0

    .line 1816
    iget v0, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 1817
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v1

    if-eqz v1, :cond_308

    .line 1818
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->tryProvision()Z

    move-result v0

    if-nez v0, :cond_184

    .line 1820
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_184

    .line 1705
    :cond_1a4
    :try_start_1a4
    const-string v0, "OPTIONS command failed; throwing IOException"

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 1706
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1af
    .catchall {:try_start_1a4 .. :try_end_1af} :catchall_18c

    .line 1737
    :cond_1af
    const/4 v0, 0x2

    :try_start_1b0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sending Account syncKey: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1738
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1739
    const/16 v2, 0x1d6

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1d2

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1741
    const-string v2, "FolderSync"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    :try_end_1ee
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1b0 .. :try_end_1ee} :catch_191
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1ee} :catch_1f7

    move-result-object v2

    .line 1743
    :try_start_1ef
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z
    :try_end_1f1
    .catchall {:try_start_1ef .. :try_end_1f1} :catchall_242

    if-eqz v0, :cond_20a

    .line 1764
    :try_start_1f3
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_1f6
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1f3 .. :try_end_1f6} :catch_191
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1f7

    goto :goto_184

    .line 1836
    :catch_1f7
    move-exception v0

    .line 1840
    :try_start_1f8
    iget-boolean v1, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v1, :cond_209

    .line 1844
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_209
    .catch Landroid/os/RemoteException; {:try_start_1f8 .. :try_end_209} :catch_347

    .line 1850
    :cond_209
    :goto_209
    throw v0

    .line 1744
    :cond_20a
    :try_start_20a
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 1745
    if-ne v0, v12, :cond_22f

    .line 1746
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25f

    .line 1747
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1749
    new-instance v3, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v4, Lcom/android/exchange/adapter/AccountSyncAdapter;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v3, v0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z
    :try_end_227
    .catchall {:try_start_20a .. :try_end_227} :catchall_242

    move-result v0

    if-eqz v0, :cond_25f

    .line 1764
    :try_start_22a
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_22d
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_22a .. :try_end_22d} :catch_191
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22d} :catch_1f7

    goto/16 :goto_178

    .line 1753
    :cond_22f
    :try_start_22f
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 1754
    const-string v1, "FolderSync provisioning error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1755
    new-instance v0, Lcom/android/exchange/CommandStatusException;

    const/16 v1, 0x8e

    invoke-direct {v0, v1}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v0
    :try_end_242
    .catchall {:try_start_22f .. :try_end_242} :catchall_242

    .line 1764
    :catchall_242
    move-exception v0

    :try_start_243
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
    :try_end_247
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_243 .. :try_end_247} :catch_191
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_247} :catch_1f7

    .line 1756
    :cond_247
    :try_start_247
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v3

    if-eqz v3, :cond_25a

    .line 1757
    const-string v1, "FolderSync auth error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 1758
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_255
    .catchall {:try_start_247 .. :try_end_255} :catchall_242

    .line 1764
    :try_start_255
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_258
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_255 .. :try_end_258} :catch_191
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_258} :catch_1f7

    goto/16 :goto_184

    .line 1761
    :cond_25a
    :try_start_25a
    const-string v3, "FolderSync response error: "

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_25f
    .catchall {:try_start_25a .. :try_end_25f} :catchall_242

    .line 1764
    :cond_25f
    :try_start_25f
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    .line 1768
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1769
    const-string v0, "syncInterval"

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1770
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and syncInterval=-4"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_294

    .line 1773
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Set push/hold boxes to push..."

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_294
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_25f .. :try_end_294} :catch_191
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_294} :catch_1f7

    .line 1777
    :cond_294
    :try_start_294
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iget v4, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    invoke-direct {p0, v4}, Lcom/android/exchange/EasSyncService;->exitStatusToServiceStatus(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_2a6
    .catch Landroid/os/RemoteException; {:try_start_294 .. :try_end_2a6} :catch_34a
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_294 .. :try_end_2a6} :catch_191
    .catch Ljava/io/IOException; {:try_start_294 .. :try_end_2a6} :catch_1f7

    .line 1787
    :goto_2a6
    :try_start_2a6
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1788
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c7

    .line 1789
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 1790
    if-eqz v0, :cond_2c7

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/exchange/SecurityPolicyDelegate;->isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v0

    if-nez v0, :cond_2c7

    .line 1791
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    .line 1796
    :cond_2c7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_2ce
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2a6 .. :try_end_2ce} :catch_191
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2ce} :catch_1f7

    move-result-object v2

    .line 1798
    :try_start_2cf
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->runPingLoop()V
    :try_end_2d2
    .catchall {:try_start_2cf .. :try_end_2d2} :catchall_2ff
    .catch Lcom/android/exchange/StaleFolderListException; {:try_start_2cf .. :try_end_2d2} :catch_2db
    .catch Lcom/android/exchange/IllegalHeartbeatException; {:try_start_2cf .. :try_end_2d2} :catch_2f0

    .line 1807
    :try_start_2d2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_2d9
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2d2 .. :try_end_2d9} :catch_191
    .catch Ljava/io/IOException; {:try_start_2d2 .. :try_end_2d9} :catch_1f7

    goto/16 :goto_178

    .line 1799
    :catch_2db
    move-exception v0

    .line 1801
    const/4 v0, 0x1

    :try_start_2dd
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Ping interrupted; folder list requires sync..."

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2e7
    .catchall {:try_start_2dd .. :try_end_2e7} :catchall_2ff

    .line 1807
    :try_start_2e7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_2ee
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2e7 .. :try_end_2ee} :catch_191
    .catch Ljava/io/IOException; {:try_start_2e7 .. :try_end_2ee} :catch_1f7

    goto/16 :goto_178

    .line 1802
    :catch_2f0
    move-exception v0

    .line 1805
    :try_start_2f1
    iget v0, v0, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->resetHeartbeats(I)V
    :try_end_2f6
    .catchall {:try_start_2f1 .. :try_end_2f6} :catchall_2ff

    .line 1807
    :try_start_2f6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_178

    :catchall_2ff
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
    :try_end_308
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2f6 .. :try_end_308} :catch_191
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_308} :catch_1f7

    .line 1823
    :cond_308
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v1

    if-eqz v1, :cond_324

    .line 1824
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 1826
    :try_start_311
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_31f
    .catch Landroid/os/RemoteException; {:try_start_311 .. :try_end_31f} :catch_321

    goto/16 :goto_184

    .line 1828
    :catch_321
    move-exception v0

    goto/16 :goto_184

    .line 1833
    :cond_324
    new-array v1, v10, [Ljava/lang/String;

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

    aput-object v0, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1834
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_184

    .line 1847
    :catch_347
    move-exception v1

    goto/16 :goto_209

    .line 1780
    :catch_34a
    move-exception v0

    goto/16 :goto_2a6

    .line 1648
    :catch_34d
    move-exception v0

    goto/16 :goto_1d
.end method

.method protected sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 1359
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mBaseUriString:Ljava/lang/String;

    .line 1360
    new-instance v1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    .line 1361
    const-string v0, "Authorization"

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v0, "User-Agent"

    sget-object v2, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 1364
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/exchange/EasResponse;->fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    .registers 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1319
    invoke-direct {p0, p3}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 1320
    const-string v0, "Ping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1323
    const/4 v0, 0x0

    .line 1325
    const-string v3, "SmartForward&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "SmartReply&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1326
    :cond_1d
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1327
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v3, v0

    move v0, v1

    .line 1334
    :goto_2d
    invoke-virtual {p0, p1, v3}, Lcom/android/exchange/EasSyncService;->makeUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1335
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 1339
    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x402c

    cmpg-double v0, v7, v9

    if-gez v0, :cond_70

    .line 1340
    const-string v0, "Content-Type"

    const-string v3, "message/rfc822"

    invoke-virtual {v6, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_4f
    :goto_4f
    if-nez v5, :cond_7a

    :goto_51
    invoke-virtual {p0, v6, v1}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 1349
    if-eqz v5, :cond_5d

    .line 1350
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :cond_5d
    invoke-virtual {v6, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1353
    invoke-virtual {p0, v4, v6, p3, v5}, Lcom/android/exchange/EasSyncService;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZ)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0

    .line 1330
    :cond_65
    const-string v3, "SendMail&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    move-object v3, v0

    move v0, v1

    .line 1331
    goto :goto_2d

    .line 1341
    :cond_70
    if-eqz p2, :cond_4f

    .line 1342
    const-string v0, "Content-Type"

    const-string v3, "application/vnd.ms-sync.wbxml"

    invoke-virtual {v6, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_7a
    move v1, v2

    .line 1344
    goto :goto_51

    :cond_7c
    move-object v3, v0

    move v0, v2

    goto :goto_2d
.end method

.method public sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;
    .registers 5
    .parameter "cmd"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1134
    if-nez v0, :cond_b

    .line 1170
    :cond_a
    :goto_a
    return-void

    .line 1135
    :cond_b
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1136
    if-eqz v1, :cond_a

    .line 1137
    new-instance v2, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v2}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 1138
    const/16 v3, 0x207

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x209

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1139
    const/16 v3, 0x20c

    iget v4, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1140
    const/16 v3, 0x206

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1141
    const/16 v1, 0x208

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1142
    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 1143
    const-string v1, "MeetingResponse"

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v1

    .line 1145
    :try_start_53
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v2

    .line 1146
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_92

    .line 1147
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8d

    .line 1148
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1149
    new-instance v3, Lcom/android/exchange/adapter/MeetingResponseParser;

    invoke-direct {v3, v2, p0}, Lcom/android/exchange/adapter/MeetingResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V

    invoke-virtual {v3}, Lcom/android/exchange/adapter/MeetingResponseParser;->parse()Z

    .line 1150
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1151
    if-eqz v2, :cond_88

    .line 1152
    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v2, "RESPONSE"

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_53 .. :try_end_81} :catchall_9e

    move-result v2

    if-eqz v2, :cond_88

    .line 1168
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    goto :goto_a

    .line 1159
    :cond_88
    :try_start_88
    iget v2, p1, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    invoke-direct {p0, v0, v2}, Lcom/android/exchange/EasSyncService;->sendMeetingResponseMail(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_9e

    .line 1168
    :cond_8d
    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_a

    .line 1161
    :cond_92
    :try_start_92
    invoke-static {v2}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1162
    new-instance v0, Lcom/android/exchange/EasAuthenticationException;

    invoke-direct {v0}, Lcom/android/exchange/EasAuthenticationException;-><init>()V

    throw v0
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_9e

    .line 1168
    :catchall_9e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 1164
    :cond_a3
    const/4 v0, 0x1

    :try_start_a4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Meeting response request failed, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 1165
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_c5
    .catchall {:try_start_a4 .. :try_end_c5} :catchall_9e
.end method

.method protected sendPing([BI)Lcom/android/exchange/EasResponse;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1269
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_50

    .line 1270
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

    .line 1272
    :cond_50
    const-string v0, "Ping"

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    add-int/lit8 v2, p2, 0x5

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v0

    return-object v0
.end method

.method protected setConnectionParameters(ZZLjava/lang/String;)V
    .registers 8
    .parameter "useSsl"
    .parameter "trustAllServerCerts"
    .parameter "clientCertAlias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1232
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->getClientConnectionManager()Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    move-result-object v0

    .line 1234
    .local v0, connManager:Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    iput-boolean p1, p0, Lcom/android/exchange/EasSyncService;->mSsl:Z

    .line 1235
    iput-boolean p2, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    .line 1236
    iput-object p3, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    .line 1239
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1242
    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mClientCertAlias:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/exchange/EasSyncService;->mTrustSsl:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->registerClientCert(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1244
    :cond_17
    return-void
.end method

.method setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1209
    const-string v0, "Authorization"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mAuthString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v0, "MS-ASProtocolVersion"

    iget-object v1, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v0, "User-Agent"

    sget-object v1, Lcom/android/exchange/EasSyncService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    if-eqz p2, :cond_33

    .line 1217
    const-string v1, "0"

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_34

    .line 1219
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1224
    :goto_2e
    const-string v1, "X-MS-PolicyKey"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_33
    return-void

    :cond_34
    move-object v0, v1

    goto :goto_2e
.end method

.method protected setupService()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2441
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2442
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    .line 2443
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2444
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    .line 2445
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2c

    .line 2447
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 2448
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v2, :cond_2f

    .line 2491
    :cond_2b
    :goto_2b
    return v0

    .line 2445
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 2449
    :cond_2f
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2450
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_2b

    .line 2451
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 2452
    if-eqz v4, :cond_2b

    .line 2453
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 2454
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 2455
    iget-object v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 2458
    :try_start_57
    iget v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_95

    move v3, v1

    :goto_5e
    iget v2, v4, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_97

    move v2, v1

    :goto_65
    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(ZZLjava/lang/String;)V
    :try_end_6a
    .catch Ljava/security/cert/CertificateException; {:try_start_57 .. :try_end_6a} :catch_99

    .line 2474
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2476
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_78

    .line 2477
    const-string v0, "2.5"

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 2479
    :cond_78
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/exchange/Eas;->getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 2482
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 2483
    if-eqz v0, :cond_93

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    if-eqz v0, :cond_93

    .line 2489
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->resetSecurityPolicies()V

    :cond_93
    move v0, v1

    .line 2491
    goto :goto_2b

    :cond_95
    move v3, v0

    .line 2458
    goto :goto_5e

    :cond_97
    move v2, v0

    goto :goto_65

    .line 2462
    :catch_99
    move-exception v2

    .line 2463
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Couldn\'t retrieve certificate for connection"

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2465
    :try_start_a3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/EasSyncService;->mMailboxId:J

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_af} :catch_b1

    goto/16 :goto_2b

    .line 2467
    :catch_b1
    move-exception v1

    goto/16 :goto_2b
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    .line 353
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 354
    :try_start_8
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_11

    .line 355
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 357
    :cond_11
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public sync(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2252
    iget-object v3, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 2254
    const/4 v1, 0x1

    .line 2255
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    .line 2256
    :cond_6
    :goto_6
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v0, :cond_241

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_241

    .line 2259
    :cond_12
    invoke-virtual {p0}, Lcom/android/exchange/EasSyncService;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2260
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No connectivity in sync; finishing sync"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    .line 2438
    :goto_26
    return-void

    .line 2266
    :cond_27
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isSyncable()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_26

    .line 2278
    :cond_31
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/Request;

    .line 2283
    instance-of v4, v0, Lcom/android/exchange/PartRequest;

    if-eqz v4, :cond_1a8

    .line 2284
    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v4, v5}, Lcom/android/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2286
    new-instance v4, Lcom/android/exchange/adapter/AttachmentLoader;

    check-cast v0, Lcom/android/exchange/PartRequest;

    invoke-direct {v4, p0, v0}, Lcom/android/exchange/adapter/AttachmentLoader;-><init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/PartRequest;)V

    invoke-virtual {v4}, Lcom/android/exchange/adapter/AttachmentLoader;->loadAttachment()V

    .line 2287
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v4}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2296
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    .line 2275
    :cond_62
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2300
    if-eqz v2, :cond_6

    .line 2304
    new-instance v4, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v4}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 2306
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    .line 2307
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    .line 2308
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "sync, sending "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    const-string v8, " syncKey: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2309
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2313
    iget-object v6, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x4028333333333333L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_b3

    .line 2314
    const/16 v6, 0x10

    invoke-virtual {v4, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2316
    :cond_b3
    const/16 v0, 0xb

    invoke-virtual {v4, v0, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v6, 0x12

    iget-object v7, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2320
    const/16 v0, 0x7530

    .line 2321
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1be

    .line 2327
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {p1, v5, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V

    .line 2333
    :goto_cf
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    if-eqz v5, :cond_1c3

    .line 2334
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_de

    .line 2335
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->TAG:Ljava/lang/String;

    const-string v6, "Inhibiting upsync this cycle"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_de
    :goto_de
    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 2342
    const-string v5, "Sync"

    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v4}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v4

    .line 2345
    :try_start_fc
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v0

    .line 2346
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_219

    .line 2352
    const/4 v0, 0x0

    .line 2353
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20b

    .line 2354
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;
    :try_end_10e
    .catchall {:try_start_fc .. :try_end_10e} :catchall_1f8

    move-result-object v5

    .line 2356
    :try_start_10f
    invoke-virtual {p1, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->parse(Ljava/io/InputStream;)Z

    move-result v2

    .line 2358
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    if-eqz v5, :cond_118

    .line 2359
    const/4 v2, 0x1

    .line 2362
    :cond_118
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->isLooping()Z

    move-result v5

    if-eqz v5, :cond_1c8

    .line 2363
    add-int/lit8 v1, v1, 0x1

    .line 2364
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Looping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2367
    if-eqz v2, :cond_14e

    const/16 v5, 0x64

    if-le v1, v5, :cond_14e

    .line 2368
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "** Looping force stopped"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2369
    const/4 v2, 0x0

    .line 2377
    :cond_14e
    :goto_14e
    iget-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    if-nez v5, :cond_1ca

    .line 2378
    invoke-virtual {p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->cleanup()V
    :try_end_155
    .catchall {:try_start_10f .. :try_end_155} :catchall_1f8
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_10f .. :try_end_155} :catch_1ce
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_10f .. :try_end_155} :catch_1dd

    :goto_155
    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v10

    .line 2403
    :goto_159
    if-eqz v2, :cond_23a

    .line 2406
    const/4 v2, 0x1

    :try_start_15c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Empty sync response; finishing"

    aput-object v6, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2407
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_198

    .line 2408
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Changing mailbox from push to ping"

    aput-object v6, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2409
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2410
    const-string v5, "syncInterval"

    const/4 v6, -0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2411
    iget-object v5, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2415
    :cond_198
    iget-object v2, p0, Lcom/android/exchange/EasSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_212

    .line 2416
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_1a3
    .catchall {:try_start_15c .. :try_end_1a3} :catchall_1f8

    .line 2434
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_26

    .line 2288
    :cond_1a8
    instance-of v4, v0, Lcom/android/exchange/MeetingResponseRequest;

    if-eqz v4, :cond_1b3

    .line 2289
    check-cast v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->sendMeetingResponse(Lcom/android/exchange/MeetingResponseRequest;)V

    goto/16 :goto_5d

    .line 2290
    :cond_1b3
    instance-of v4, v0, Lcom/android/exchange/MessageMoveRequest;

    if-eqz v4, :cond_5d

    .line 2291
    check-cast v0, Lcom/android/exchange/MessageMoveRequest;

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->messageMoveRequest(Lcom/android/exchange/MessageMoveRequest;)V

    goto/16 :goto_5d

    .line 2330
    :cond_1be
    const v0, 0x1d4c0

    goto/16 :goto_cf

    .line 2338
    :cond_1c3
    invoke-virtual {p1, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    goto/16 :goto_de

    .line 2372
    :cond_1c8
    const/4 v1, 0x0

    goto :goto_14e

    .line 2380
    :cond_1ca
    const/4 v5, 0x0

    :try_start_1cb
    iput-boolean v5, p0, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z
    :try_end_1cd
    .catchall {:try_start_1cb .. :try_end_1cd} :catchall_1f8
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_1cb .. :try_end_1cd} :catch_1ce
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1cb .. :try_end_1cd} :catch_1dd

    goto :goto_155

    .line 2382
    :catch_1ce
    move-exception v0

    .line 2383
    const/4 v0, 0x1

    :try_start_1d0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Empty stream detected in GZIP response"

    aput-object v6, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 2384
    const/4 v0, 0x1

    .line 2398
    goto/16 :goto_155

    .line 2385
    :catch_1dd
    move-exception v0

    .line 2387
    iget v0, v0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 2388
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 2389
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_1e9
    .catchall {:try_start_1d0 .. :try_end_1e9} :catchall_1f8

    .line 2434
    :goto_1e9
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_26

    .line 2390
    :cond_1ee
    :try_start_1ee
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1fd

    .line 2391
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_1f7
    .catchall {:try_start_1ee .. :try_end_1f7} :catchall_1f8

    goto :goto_1e9

    .line 2434
    :catchall_1f8
    move-exception v0

    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    throw v0

    .line 2392
    :cond_1fd
    :try_start_1fd
    invoke-static {v0}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 2393
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_1e9

    .line 2395
    :cond_207
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_20a
    .catchall {:try_start_1fd .. :try_end_20a} :catchall_1f8

    goto :goto_1e9

    .line 2400
    :cond_20b
    const/4 v0, 0x1

    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v10

    goto/16 :goto_159

    .line 2434
    :cond_212
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    move v2, v1

    move v1, v0

    goto/16 :goto_6

    .line 2423
    :cond_219
    :try_start_219
    const-string v1, "Sync response error: "

    invoke-virtual {p0, v1, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 2424
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 2425
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_227
    .catchall {:try_start_219 .. :try_end_227} :catchall_1f8

    .line 2434
    :goto_227
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_26

    .line 2426
    :cond_22c
    :try_start_22c
    invoke-static {v0}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 2427
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto :goto_227

    .line 2429
    :cond_236
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I
    :try_end_239
    .catchall {:try_start_22c .. :try_end_239} :catchall_1f8

    goto :goto_227

    .line 2434
    :cond_23a
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->close()V

    move v2, v1

    move v1, v0

    .line 2436
    goto/16 :goto_6

    .line 2437
    :cond_241
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasSyncService;->mExitStatus:I

    goto/16 :goto_26
.end method

.method public tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 690
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 691
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 692
    new-instance v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 693
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 694
    const-string v4, "autodiscover_error_code"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    :try_start_1e
    const-string v4, "UTF-8"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 699
    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 700
    const/4 v4, 0x0

    const-string v5, "Autodiscover"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    const/4 v4, 0x0

    const-string v5, "xmlns"

    const-string v6, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    invoke-interface {v2, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    const/4 v4, 0x0

    const-string v5, "Request"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 703
    const/4 v4, 0x0

    const-string v5, "EMailAddress"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "EMailAddress"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    const/4 v4, 0x0

    const-string v5, "AcceptableResponseSchema"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 705
    const-string v4, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 706
    const/4 v4, 0x0

    const-string v5, "AcceptableResponseSchema"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    const/4 v4, 0x0

    const-string v5, "Request"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    const/4 v4, 0x0

    const-string v5, "Autodiscover"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 709
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 710
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    iput-object p1, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 714
    iput-object p2, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 716
    invoke-direct {p0}, Lcom/android/exchange/EasSyncService;->cacheAuthUserAndBaseUriStrings()V

    .line 719
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 721
    if-gez v3, :cond_93

    .line 722
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_8b} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_8b} :catch_fd
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_8b} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1e .. :try_end_8b} :catch_1a3

    .line 800
    :catch_8b
    move-exception v0

    .line 801
    const-string v0, "autodiscover_error_code"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_91
    move-object v0, v1

    .line 814
    :goto_92
    return-object v0

    .line 724
    :cond_93
    add-int/lit8 v3, v3, 0x1

    :try_start_95
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 733
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/autodiscover/autodiscover.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 734
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/EasSyncService;->setHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 735
    const-string v5, "Content-Type"

    const-string v6, "text/xml"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 737
    const/16 v2, 0x7530

    invoke-direct {p0, v2}, Lcom/android/exchange/EasSyncService;->getHttpClient(I)Lorg/apache/http/client/HttpClient;
    :try_end_cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_cf} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_95 .. :try_end_cf} :catch_fd
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_cf} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_95 .. :try_end_cf} :catch_1a3

    move-result-object v2

    .line 740
    const/4 v5, 0x1

    :try_start_d1
    invoke-direct {p0, v2, v4, v5}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_104
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_d4} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_d1 .. :try_end_d4} :catch_fd
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d1 .. :try_end_d4} :catch_1a3

    move-result-object v2

    .line 752
    :goto_d5
    :try_start_d5
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v3

    .line 753
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_d5 .. :try_end_f5} :catchall_1ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_f5} :catch_19d

    .line 754
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_136

    .line 796
    :try_start_f9
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f9 .. :try_end_fc} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_f9 .. :try_end_fc} :catch_fd
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f9 .. :try_end_fc} :catch_1a3

    goto :goto_92

    .line 803
    :catch_fd
    move-exception v0

    .line 804
    const-string v0, "autodiscover_error_code"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_91

    .line 741
    :catch_104
    move-exception v5

    .line 742
    const/4 v5, 0x1

    :try_start_106
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "IOException in autodiscover; trying alternate address"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://autodiscover."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/autodiscover/autodiscover.xml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 747
    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/exchange/EasSyncService;->postAutodiscover(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    :try_end_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_106 .. :try_end_134} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_106 .. :try_end_134} :catch_fd
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_134} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_106 .. :try_end_134} :catch_1a3

    move-result-object v2

    goto :goto_d5

    .line 756
    :cond_136
    :try_start_136
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 759
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 760
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 761
    const-string v4, "UTF-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 762
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 763
    if-nez v0, :cond_184

    .line 764
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 765
    const/4 v4, 0x2

    if-ne v0, v4, :cond_184

    .line 766
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 767
    const-string v4, "Autodiscover"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 768
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 769
    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasSyncService;->parseAutodiscover(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 771
    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_196

    .line 775
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 776
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 779
    const/16 v3, 0x1bb

    iput v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 780
    const-string v3, "eas"

    iput-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 781
    const/4 v3, 0x5

    iput v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 783
    const-string v3, "autodiscover_host_auth"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_184
    .catchall {:try_start_136 .. :try_end_184} :catchall_1ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_184} :catch_19d

    .line 796
    :cond_184
    :goto_184
    :try_start_184
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_187
    .catch Ljava/lang/IllegalArgumentException; {:try_start_184 .. :try_end_187} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_184 .. :try_end_187} :catch_fd
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_184 .. :try_end_187} :catch_1a3

    goto/16 :goto_91

    .line 806
    :catch_189
    move-exception v0

    .line 807
    const-string v2, "IOException in Autodiscover"

    invoke-virtual {p0, v2, v0}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 808
    const-string v0, "autodiscover_error_code"

    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_91

    .line 786
    :cond_196
    :try_start_196
    const-string v0, "autodiscover_error_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_19c
    .catchall {:try_start_196 .. :try_end_19c} :catchall_1ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_196 .. :try_end_19c} :catch_19d

    goto :goto_184

    .line 792
    :catch_19d
    move-exception v0

    .line 796
    :try_start_19e
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_1a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19e .. :try_end_1a1} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_19e .. :try_end_1a1} :catch_fd
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_19e .. :try_end_1a1} :catch_1a3

    goto/16 :goto_91

    .line 810
    :catch_1a3
    move-exception v0

    .line 811
    const-string v0, "autodiscover_error_code"

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_91

    .line 796
    :catchall_1ad
    move-exception v0

    :try_start_1ae
    invoke-virtual {v2}, Lcom/android/exchange/EasResponse;->close()V

    throw v0
    :try_end_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ae .. :try_end_1b2} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_1ae .. :try_end_1b2} :catch_fd
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b2} :catch_189
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1ae .. :try_end_1b2} :catch_1a3
.end method

.method public validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 26
    .parameter "hostAuth"
    .parameter "context"

    .prologue
    .line 460
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v5, bundle:Landroid/os/Bundle;
    const/4 v14, -0x1

    .line 463
    .local v14, resultCode:I
    const/16 v19, 0x6

    :try_start_8
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    const-string v21, "Testing EAS: "

    aput-object v21, v20, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v20, v19

    const/16 v19, 0x2

    const-string v21, ", "

    aput-object v21, v20, v19

    const/16 v19, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v20, v19

    const/16 v19, 0x4

    const-string v21, ", ssl = "

    aput-object v21, v20, v19

    const/16 v21, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v19

    if-eqz v19, :cond_128

    const-string v19, "1"

    :goto_3e
    aput-object v19, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    .line 466
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 467
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    .line 468
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mPassword:Ljava/lang/String;

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->setConnectionParameters(ZZLjava/lang/String;)V

    .line 474
    invoke-static/range {p2 .. p2}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 475
    new-instance v19, Lcom/android/emailcommon/provider/Account;

    invoke-direct/range {v19 .. v19}, Lcom/android/emailcommon/provider/Account;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendHttpClientOptions()Lcom/android/exchange/EasResponse;
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b4} :catch_24a
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_b4} :catch_302

    move-result-object v13

    .line 479
    .local v13, resp:Lcom/android/exchange/EasResponse;
    :try_start_b5
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v7

    .line 480
    .local v7, code:I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Validation (OPTIONS) response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 481
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v7, v0, :cond_324

    .line 483
    const-string v19, "MS-ASProtocolCommands"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 484
    .local v8, commands:Lorg/apache/http/Header;
    const-string v19, "ms-asprotocolversions"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/exchange/EasResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_f6
    .catchall {:try_start_b5 .. :try_end_f6} :catchall_2fd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_b5 .. :try_end_f6} :catch_1ce

    move-result-object v18

    .line 487
    .local v18, versions:Lorg/apache/http/Header;
    if-eqz v8, :cond_fb

    if-nez v18, :cond_12c

    .line 488
    :cond_fb
    const/16 v19, 0x1

    :try_start_fd
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "OPTIONS response without commands or versions"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 490
    new-instance v19, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v19
    :try_end_118
    .catchall {:try_start_fd .. :try_end_118} :catchall_2fd
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_fd .. :try_end_118} :catch_118
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_fd .. :try_end_118} :catch_1ce

    .line 493
    :catch_118
    move-exception v9

    .line 494
    .local v9, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_119
    const-string v19, "validate_result_code"

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_124
    .catchall {:try_start_119 .. :try_end_124} :catchall_2fd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_119 .. :try_end_124} :catch_1ce

    .line 592
    :try_start_124
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    .line 609
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v9           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v18           #versions:Lorg/apache/http/Header;
    :goto_127
    return-object v5

    .line 463
    :cond_128
    const-string v19, "0"
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_12a} :catch_24a
    .catch Ljava/security/cert/CertificateException; {:try_start_124 .. :try_end_12a} :catch_302

    goto/16 :goto_3e

    .line 492
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_12c
    :try_start_12c
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->setupProtocolVersion(Lcom/android/exchange/EasSyncService;Lorg/apache/http/Header;)V
    :try_end_135
    .catchall {:try_start_12c .. :try_end_135} :catchall_2fd
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_12c .. :try_end_135} :catch_118
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_12c .. :try_end_135} :catch_1ce

    .line 500
    const/16 v19, 0x1

    :try_start_137
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Try folder sync"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 502
    const-string v17, "0"

    .line 503
    .local v17, syncKey:Ljava/lang/String;
    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;

    move-result-object v10

    .line 505
    .local v10, existingAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v10, :cond_172

    iget-object v0, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_172

    .line 506
    iget-object v0, v10, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 508
    :cond_172
    new-instance v15, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v15}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 509
    .local v15, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v19, 0x1d6

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1d2

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 511
    const-string v19, "FolderSync"

    invoke-virtual {v15}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lcom/android/exchange/EasResponse;

    move-result-object v13

    .line 512
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_1ab
    .catchall {:try_start_137 .. :try_end_1ab} :catchall_2fd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_137 .. :try_end_1ab} :catch_1ce

    move-result v7

    .line 514
    const/16 v19, 0x193

    move/from16 v0, v19

    if-ne v7, v0, :cond_1c0

    .line 517
    const/16 v14, 0xe

    .line 592
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v10           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :goto_1b4
    :try_start_1b4
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_24a
    .catch Ljava/security/cert/CertificateException; {:try_start_1b4 .. :try_end_1b7} :catch_302

    .line 608
    .end local v7           #code:I
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    :goto_1b7
    const-string v19, "validate_result_code"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_127

    .line 518
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v10       #existingAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v17       #syncKey:Ljava/lang/String;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_1c0
    :try_start_1c0
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z

    move-result v19

    if-eqz v19, :cond_295

    .line 520
    new-instance v19, Lcom/android/exchange/CommandStatusException;

    const/16 v20, 0x8e

    invoke-direct/range {v19 .. v20}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v19
    :try_end_1ce
    .catchall {:try_start_1c0 .. :try_end_1ce} :catchall_2fd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_1c0 .. :try_end_1ce} :catch_1ce

    .line 558
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v10           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :catch_1ce
    move-exception v9

    .line 559
    .local v9, e:Lcom/android/exchange/CommandStatusException;
    :try_start_1cf
    iget v0, v9, Lcom/android/exchange/CommandStatusException;->mStatus:I

    move/from16 v16, v0

    .line 560
    .local v16, status:I
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v19

    if-eqz v19, :cond_380

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->canProvision()Lcom/android/exchange/adapter/ProvisionParser;

    move-result-object v12

    .line 563
    .local v12, pp:Lcom/android/exchange/adapter/ProvisionParser;
    if-eqz v12, :cond_376

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->hasSupportablePolicySet()Z

    move-result v19

    if-eqz v19, :cond_376

    .line 565
    const/4 v14, 0x7

    .line 566
    const-string v19, "validate_policy_set"

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getPolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/high16 v21, 0x402c

    cmpl-double v19, v19, v21

    if-nez v19, :cond_238

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getSecuritySyncKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/EasSyncService;->sendSettings()Z

    move-result v19

    if-nez v19, :cond_238

    .line 571
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Denied access: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 572
    const/16 v14, 0xe

    .line 578
    :cond_238
    :goto_238
    const-string v20, "validate_unsupported_policies"

    if-nez v12, :cond_37a

    const/16 v19, 0x0

    :goto_23e
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_245
    .catchall {:try_start_1cf .. :try_end_245} :catchall_2fd

    .line 592
    .end local v12           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :goto_245
    :try_start_245
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_248} :catch_24a
    .catch Ljava/security/cert/CertificateException; {:try_start_245 .. :try_end_248} :catch_302

    goto/16 :goto_1b7

    .line 594
    .end local v9           #e:Lcom/android/exchange/CommandStatusException;
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    .end local v16           #status:I
    :catch_24a
    move-exception v9

    .line 595
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 596
    .local v6, cause:Ljava/lang/Throwable;
    if-eqz v6, :cond_275

    instance-of v0, v6, Ljava/security/cert/CertificateException;

    move/from16 v19, v0

    if-eqz v19, :cond_275

    .line 598
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 599
    const/4 v14, 0x4

    .line 601
    :cond_275
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "IOException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 602
    const/4 v14, 0x1

    .line 607
    goto/16 :goto_1b7

    .line 521
    .end local v6           #cause:Ljava/lang/Throwable;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #code:I
    .restart local v8       #commands:Lorg/apache/http/Header;
    .restart local v10       #existingAccount:Lcom/android/emailcommon/provider/Account;
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    .restart local v15       #s:Lcom/android/exchange/adapter/Serializer;
    .restart local v17       #syncKey:Ljava/lang/String;
    .restart local v18       #versions:Lorg/apache/http/Header;
    :cond_295
    const/16 v19, 0x194

    move/from16 v0, v19

    if-ne v7, v0, :cond_29f

    .line 523
    const/16 v14, 0x9

    goto/16 :goto_1b4

    .line 524
    :cond_29f
    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v7, v0, :cond_2b1

    .line 525
    :try_start_2a5
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v19

    if-eqz v19, :cond_2af

    const/16 v14, 0x10

    :goto_2ad
    goto/16 :goto_1b4

    :cond_2af
    const/4 v14, 0x5

    goto :goto_2ad

    .line 528
    :cond_2b1
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v7, v0, :cond_2c3

    .line 530
    const-string v19, "Unexpected response for FolderSync: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 531
    const/4 v14, 0x0

    goto/16 :goto_1b4

    .line 535
    :cond_2c3
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2e6

    .line 536
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 540
    .local v11, is:Ljava/io/InputStream;
    new-instance v19, Lcom/android/exchange/adapter/FolderSyncParser;

    new-instance v20, Lcom/android/exchange/adapter/AccountSyncAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AccountSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v11, v1, v2}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/FolderSyncParser;->parse()Z

    .line 542
    .end local v11           #is:Ljava/io/InputStream;
    :cond_2e6
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Validation successful"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_2fb
    .catchall {:try_start_2a5 .. :try_end_2fb} :catchall_2fd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_2a5 .. :try_end_2fb} :catch_1ce

    goto/16 :goto_1b4

    .line 592
    .end local v7           #code:I
    .end local v8           #commands:Lorg/apache/http/Header;
    .end local v10           #existingAccount:Lcom/android/emailcommon/provider/Account;
    .end local v15           #s:Lcom/android/exchange/adapter/Serializer;
    .end local v17           #syncKey:Ljava/lang/String;
    .end local v18           #versions:Lorg/apache/http/Header;
    :catchall_2fd
    move-exception v19

    :try_start_2fe
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->close()V

    throw v19
    :try_end_302
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_302} :catch_24a
    .catch Ljava/security/cert/CertificateException; {:try_start_2fe .. :try_end_302} :catch_302

    .line 603
    .end local v13           #resp:Lcom/android/exchange/EasResponse;
    :catch_302
    move-exception v9

    .line 605
    .local v9, e:Ljava/security/cert/CertificateException;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "CertificateException caught: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 606
    const/16 v14, 0x11

    goto/16 :goto_1b7

    .line 544
    .end local v9           #e:Ljava/security/cert/CertificateException;
    .restart local v7       #code:I
    .restart local v13       #resp:Lcom/android/exchange/EasResponse;
    :cond_324
    :try_start_324
    invoke-static {v7}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v19

    if-eqz v19, :cond_34b

    .line 545
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Authentication failed"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 546
    invoke-virtual {v13}, Lcom/android/exchange/EasResponse;->isMissingCertificate()Z

    move-result v19

    if-eqz v19, :cond_349

    const/16 v14, 0x10

    :goto_347
    goto/16 :goto_1b4

    :cond_349
    const/4 v14, 0x5

    goto :goto_347

    .line 549
    :cond_34b
    const/16 v19, 0x1f4

    move/from16 v0, v19

    if-ne v7, v0, :cond_36a

    .line 551
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Internal server error"

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 552
    const/16 v14, 0xd

    goto/16 :goto_1b4

    .line 555
    :cond_36a
    const-string v19, "Validation failed, reporting I/O error: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V
    :try_end_373
    .catchall {:try_start_324 .. :try_end_373} :catchall_2fd
    .catch Lcom/android/exchange/CommandStatusException; {:try_start_324 .. :try_end_373} :catch_1ce

    .line 556
    const/4 v14, 0x1

    goto/16 :goto_1b4

    .line 577
    .end local v7           #code:I
    .local v9, e:Lcom/android/exchange/CommandStatusException;
    .restart local v12       #pp:Lcom/android/exchange/adapter/ProvisionParser;
    .restart local v16       #status:I
    :cond_376
    const/16 v14, 0x8

    goto/16 :goto_238

    .line 578
    :cond_37a
    :try_start_37a
    invoke-virtual {v12}, Lcom/android/exchange/adapter/ProvisionParser;->getUnsupportedPolicies()[Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_23e

    .line 581
    .end local v12           #pp:Lcom/android/exchange/adapter/ProvisionParser;
    :cond_380
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v19

    if-eqz v19, :cond_3a7

    .line 582
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Denied access: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 583
    const/16 v14, 0xe

    goto/16 :goto_245

    .line 584
    :cond_3a7
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isTransientError(I)Z

    move-result v19

    if-eqz v19, :cond_3cd

    .line 585
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Transient error: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 586
    const/4 v14, 0x1

    goto/16 :goto_245

    .line 588
    :cond_3cd
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Unexpected response: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3ea
    .catchall {:try_start_37a .. :try_end_3ea} :catchall_2fd

    .line 589
    const/4 v14, 0x0

    goto/16 :goto_245
.end method
