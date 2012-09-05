.class public Lcom/android/exchange/EasDevInfoSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasDevInfoSvc.java"


# instance fields
.field private isIrmtemplateRefreshNeeded:Z

.field private mEnableOutboundSMS:I

.field private mFriendlyName:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mMobileOperator:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOS:Ljava/lang/String;

.field private mOSLanguage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mTeleohonyManager:Landroid/telephony/TelephonyManager;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 5
    .parameter "_context"
    .parameter "_acc"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasDevInfoSvc;->isIrmtemplateRefreshNeeded:Z

    .line 167
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 173
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .registers 5
    .parameter "_context"
    .parameter "_acc"
    .parameter "isIrmtemplateRefreshNeeded"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasDevInfoSvc;->isIrmtemplateRefreshNeeded:Z

    .line 153
    iput-boolean p3, p0, Lcom/android/exchange/EasDevInfoSvc;->isIrmtemplateRefreshNeeded:Z

    .line 155
    return-void
.end method

.method private collectDeviceInformation()V
    .registers 5

    .prologue
    .line 197
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mModel:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mImei:Ljava/lang/String;

    .line 201
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mFriendlyName:Ljava/lang/String;

    .line 203
    const-string v0, "Android-Linux"

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mOS:Ljava/lang/String;

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mOSLanguage:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mPhoneNumber:Ljava/lang/String;

    .line 209
    const-string v0, "EasDevInfoSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasDevInfoSvc;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mImei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasDevInfoSvc;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mFriendlyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasDevInfoSvc;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mPhoneNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasDevInfoSvc;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mOSLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasDevInfoSvc;->mOSLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_a5

    .line 215
    const-string v0, "Android/0.3"

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mUserAgent:Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mEnableOutboundSMS:I

    .line 219
    iget-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mMobileOperator:Ljava/lang/String;

    .line 221
    const-string v0, "EasDevInfoSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/EasDevInfoSvc;->mMobileOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_a5
    return-void
.end method

.method private deviceInfoCb(JII)V
    .registers 6
    .parameter "accId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->setDeviceInfoStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 191
    :goto_7
    return-void

    .line 185
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private refreshIRMTemplatesCb(JII)V
    .registers 6
    .parameter "accId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 389
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->refreshIRMTemplatesStatus(JII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 395
    :goto_7
    return-void

    .line 391
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private setDeviceInformation()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x64

    .line 235
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10, v12}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    .line 239
    const/4 v4, 0x0

    .line 241
    .local v4, result:I
    new-instance v5, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v5}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 245
    .local v5, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct {p0}, Lcom/android/exchange/EasDevInfoSvc;->collectDeviceInformation()V

    .line 249
    const/16 v8, 0x485

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x496

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x488

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 255
    const/16 v8, 0x497

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 257
    const/16 v8, 0x498

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mImei:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 259
    const/16 v8, 0x499

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 261
    const/16 v8, 0x49a

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mOS:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 263
    const/16 v8, 0x49b

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mOSLanguage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 265
    const/16 v8, 0x49c

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 269
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    const-string v9, "14.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 271
    const/16 v8, 0x4a0

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 273
    const/16 v8, 0x4a1

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/exchange/EasDevInfoSvc;->mEnableOutboundSMS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 275
    const/16 v8, 0x4a2

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mMobileOperator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 281
    :cond_d3
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 283
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 287
    const-string v8, "Settings"

    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v10, 0x4e20

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/exchange/EasDevInfoSvc;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 293
    .local v3, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 295
    .local v7, status:I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_142

    .line 299
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 303
    .local v0, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v2, v8

    .line 307
    .local v2, len:I
    if-eqz v2, :cond_13a

    .line 309
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 313
    .local v1, in:Ljava/io/InputStream;
    new-instance v6, Lcom/android/exchange/adapter/OoOCommandParser;

    new-instance v8, Lcom/android/exchange/adapter/SettingsCommandAdapter;

    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v8, v9, p0}, Lcom/android/exchange/adapter/SettingsCommandAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v6, v1, v8}, Lcom/android/exchange/adapter/OoOCommandParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 317
    .local v6, sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    invoke-virtual {v6}, Lcom/android/exchange/adapter/OoOCommandParser;->parse()Z

    move-result v8

    if-eqz v8, :cond_128

    .line 321
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v12, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    .line 373
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #len:I
    .end local v6           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :goto_127
    return v4

    .line 329
    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #len:I
    .restart local v6       #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :cond_128
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasDevInfoSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_138

    .line 331
    const/16 v4, 0x17

    .line 339
    :goto_130
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    goto :goto_127

    .line 335
    :cond_138
    const/4 v4, -0x7

    goto :goto_130

    .line 347
    .end local v1           #in:Ljava/io/InputStream;
    .end local v6           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :cond_13a
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v12, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    goto :goto_127

    .line 353
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #len:I
    :cond_142
    const/16 v4, 0x15

    .line 355
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasDevInfoSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_154

    .line 357
    const/16 v4, 0x17

    .line 365
    :cond_14c
    :goto_14c
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    goto :goto_127

    .line 359
    :cond_154
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasDevInfoSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_14c

    .line 361
    const/16 v4, 0x16

    goto :goto_14c
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 405
    invoke-virtual {p0}, Lcom/android/exchange/EasDevInfoSvc;->setupService()Z

    .line 409
    iget-boolean v3, p0, Lcom/android/exchange/EasDevInfoSvc;->isIrmtemplateRefreshNeeded:Z

    if-ne v3, v7, :cond_3f

    .line 411
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v3, v4, v7, v8}, Lcom/android/exchange/EasDevInfoSvc;->refreshIRMTemplatesCb(JII)V

    .line 415
    const/4 v3, 0x0

    :try_start_11
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Lcom/android/exchange/EasDevInfoSvc;->getIRMTemplates()I

    move-result v2

    .line 419
    .local v2, status:I
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x64

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/exchange/EasDevInfoSvc;->refreshIRMTemplatesCb(JII)V

    .line 421
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_27} :catch_2b

    .line 431
    .end local v2           #status:I
    :goto_27
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 585
    :goto_2a
    return-void

    .line 423
    :catch_2b
    move-exception v0

    .line 425
    .local v0, e:Ljava/io/IOException;
    :try_start_2c
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, -0x3

    const/16 v6, 0x64

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/exchange/EasDevInfoSvc;->refreshIRMTemplatesCb(JII)V

    .line 427
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3a

    goto :goto_27

    .line 431
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v3

    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    throw v3

    .line 443
    :cond_3f
    const/4 v3, 0x0

    :try_start_40
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 447
    const/4 v1, 0x0

    .line 455
    .local v1, result:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpg-double v3, v3, v5

    if-gez v3, :cond_86

    .line 459
    const/4 v1, -0x2

    .line 461
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v5, 0x64

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    .line 469
    :goto_5d
    const/16 v3, 0x17

    if-ne v1, v3, :cond_8b

    .line 471
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_ec
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_64} :catch_93
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_64} :catch_be

    .line 509
    :goto_64
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DevInfo finished"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 511
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 513
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_160

    goto :goto_2a

    .line 517
    :pswitch_76
    const/16 v2, 0x17

    .line 529
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_14d

    .line 531
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    .end local v1           #result:I
    :goto_82
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    goto :goto_2a

    .line 465
    .end local v2           #status:I
    .restart local v1       #result:I
    :cond_86
    :try_start_86
    invoke-direct {p0}, Lcom/android/exchange/EasDevInfoSvc;->setDeviceInformation()I

    move-result v1

    goto :goto_5d

    .line 473
    :cond_8b
    const/16 v3, 0x16

    if-ne v1, v3, :cond_b6

    .line 475
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_ec
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_92} :catch_93
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_92} :catch_be

    goto :goto_64

    .line 493
    .end local v1           #result:I
    :catch_93
    move-exception v0

    .line 495
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_95
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_ec

    .line 509
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DevInfo finished"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 511
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 513
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_166

    goto :goto_2a

    .line 517
    :pswitch_a9
    const/16 v2, 0x17

    .line 529
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_124

    .line 531
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto :goto_82

    .line 479
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #status:I
    .restart local v1       #result:I
    :cond_b6
    const/16 v3, 0x15

    if-ne v1, v3, :cond_e7

    .line 481
    const/4 v3, 0x3

    :try_start_bb
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_bd
    .catchall {:try_start_bb .. :try_end_bd} :catchall_ec
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bd} :catch_93
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bd} :catch_be

    goto :goto_64

    .line 497
    .end local v1           #result:I
    :catch_be
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    :try_start_bf
    const-string v3, "Exception caught in EasOOFSvc"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasDevInfoSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 501
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_ec

    .line 509
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DevInfo finished"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 511
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 513
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_16c

    goto/16 :goto_2a

    .line 517
    :pswitch_da
    const/16 v2, 0x17

    .line 529
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_13a

    .line 531
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v4, v3, v8

    goto :goto_82

    .line 487
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    .restart local v1       #result:I
    :cond_e7
    const/4 v3, 0x0

    :try_start_e8
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_ea
    .catchall {:try_start_e8 .. :try_end_ea} :catchall_ec
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ea} :catch_93
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ea} :catch_be

    goto/16 :goto_64

    .line 507
    .end local v1           #result:I
    :catchall_ec
    move-exception v3

    .line 509
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "DevInfo finished"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 511
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 513
    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v4, :pswitch_data_172

    .line 507
    :goto_fe
    throw v3

    .line 517
    :pswitch_ff
    const/16 v2, 0x17

    .line 529
    .restart local v2       #status:I
    sget-boolean v4, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v4, :cond_10f

    .line 531
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    goto :goto_fe

    .line 535
    :cond_10f
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 537
    sget-object v4, Lcom/android/exchange/EasDevInfoSvc;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 539
    sput-boolean v7, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_fe

    .line 535
    .local v0, e:Ljava/io/IOException;
    :cond_124
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 537
    sget-object v3, Lcom/android/exchange/EasDevInfoSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 539
    .end local v0           #e:Ljava/io/IOException;
    :goto_136
    sput-boolean v7, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_2a

    .line 535
    .local v0, e:Ljava/lang/Exception;
    :cond_13a
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 537
    sget-object v3, Lcom/android/exchange/EasDevInfoSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_136

    .line 535
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:I
    :cond_14d
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 537
    sget-object v3, Lcom/android/exchange/EasDevInfoSvc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_136

    .line 513
    :pswitch_data_160
    .packed-switch 0x4
        :pswitch_76
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x4
        :pswitch_a9
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x4
        :pswitch_da
    .end packed-switch

    :pswitch_data_172
    .packed-switch 0x4
        :pswitch_ff
    .end packed-switch
.end method
