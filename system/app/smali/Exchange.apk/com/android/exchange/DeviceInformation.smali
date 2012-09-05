.class public Lcom/android/exchange/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mFriendlyName:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mModel:Ljava/lang/String;

.field public mNetworkOperator:Ljava/lang/String;

.field public mOs:Ljava/lang/String;

.field public mOsLanguage:Ljava/lang/String;

.field public mOutBoundSms:Z

.field public mPhoneNumber:Ljava/lang/String;

.field public mProtocolVersion:D

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .registers 5
    .parameter "protocolVersion"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "DeviceInformation"

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mModel:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mFriendlyName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mOs:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mUserAgent:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mNetworkOperator:Ljava/lang/String;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    .line 95
    iput-wide p1, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    .line 97
    return-void
.end method


# virtual methods
.method public buildCommand()Lcom/android/exchange/adapter/Serializer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/DeviceInformation;->buildCommand(Z)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public buildCommand(Z)Lcom/android/exchange/adapter/Serializer;
    .registers 7
    .parameter "isProvision"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-wide v1, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_a

    .line 267
    const/4 v0, 0x0

    .line 317
    :cond_9
    :goto_9
    return-object v0

    .line 271
    :cond_a
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 275
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    if-eqz p1, :cond_cf

    .line 277
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 285
    :goto_16
    const/16 v1, 0x496

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x488

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x497

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x498

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x499

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x49a

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x49b

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x49c

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 297
    iget-wide v1, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_bd

    .line 299
    const/16 v1, 0x4a0

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x4a1

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d6

    const-string v1, "1"

    :goto_a6
    invoke-virtual {v2, v1}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x4a2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 307
    :cond_bd
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 311
    if-nez p1, :cond_9

    .line 313
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    goto/16 :goto_9

    .line 281
    :cond_cf
    const/16 v1, 0x485

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_16

    .line 299
    :cond_d6
    const-string v1, "0"

    goto :goto_a6
.end method

.method public prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 10
    .parameter "context"
    .parameter "userAgent"
    .parameter "account"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    if-nez p1, :cond_c

    .line 113
    const-string v3, "DeviceInformation"

    const-string v4, "context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_b
    return v2

    .line 121
    :cond_c
    if-nez p2, :cond_17

    .line 123
    const-string v4, "DeviceInformation"

    const-string v5, "userAgent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string p2, ""

    .line 133
    :cond_17
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 137
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_29

    .line 139
    const-string v3, "DeviceInformation"

    const-string v4, "tm is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 147
    :cond_29
    iput-object p2, p0, Lcom/android/exchange/DeviceInformation;->mUserAgent:Ljava/lang/String;

    .line 153
    :try_start_2b
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v4, :cond_88

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_31
    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mModel:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_8b

    .line 167
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    .line 169
    iget-object v4, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    if-nez v4, :cond_41

    .line 171
    const-string v4, ""

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    .line 179
    :cond_41
    :try_start_41
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_98

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    :goto_47
    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mFriendlyName:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_9b

    .line 193
    const-string v4, "Android"

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mOs:Ljava/lang/String;

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    .line 199
    iget-object v4, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    if-nez v4, :cond_5f

    .line 201
    const-string v4, "English"

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    .line 205
    :cond_5f
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    .line 207
    iget-object v4, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    if-nez v4, :cond_74

    .line 209
    const-string v4, "DeviceInformation"

    const-string v5, "mPhoneNumber is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v4, ""

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    .line 219
    :cond_74
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/DeviceInformation;->mNetworkOperator:Ljava/lang/String;

    .line 225
    if-eqz p3, :cond_a8

    .line 227
    iget v4, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_83

    move v2, v3

    :cond_83
    iput-boolean v2, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    .line 243
    :goto_85
    const/4 v1, 0x0

    move v2, v3

    .line 247
    goto :goto_b

    .line 153
    :cond_88
    :try_start_88
    const-string v4, "Android"
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_8b

    goto :goto_31

    .line 155
    :catch_8b
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DeviceInformation"

    const-string v4, "Accessing Build.Model caused Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :cond_98
    :try_start_98
    const-string v4, "Android"
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9a} :catch_9b

    goto :goto_47

    .line 181
    :catch_9b
    move-exception v0

    .line 183
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DeviceInformation"

    const-string v4, "Accessing Build.Product caused Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 231
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a8
    iput-boolean v2, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    goto :goto_85
.end method
