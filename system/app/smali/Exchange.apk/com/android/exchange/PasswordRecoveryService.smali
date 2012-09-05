.class public Lcom/android/exchange/PasswordRecoveryService;
.super Lcom/android/exchange/EasSyncService;
.source "PasswordRecoveryService.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/android/exchange/PasswordRecoveryService;->getMailboxForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 32
    const-class v0, Lcom/android/exchange/PasswordRecoveryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    :try_start_17
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_32

    .line 45
    :goto_1d
    iput-object p3, p0, Lcom/android/exchange/PasswordRecoveryService;->mPassword:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 48
    return-void

    .line 41
    :catch_32
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while getting device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private static getMailboxForAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 6
    .parameter "context"
    .parameter "acc"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz p1, :cond_b

    .line 54
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v3, 0x44

    invoke-static {p0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 56
    :cond_b
    return-object v0
.end method

.method private logResponse(Lorg/apache/http/HttpResponse;)V
    .registers 12
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v7, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    const-string v8, "logResponse"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez p1, :cond_a

    .line 151
    :cond_9
    :goto_9
    return-void

    .line 110
    :cond_a
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 111
    .local v6, resp:I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_71

    .line 114
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    const v9, -0x8001

    and-int/2addr v8, v9

    iput v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 116
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 117
    .local v2, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_9

    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_27
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_2a} :catch_58
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_5d

    move-result-object v3

    .line 128
    :goto_2b
    iget-object v7, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    const-string v8, "creating parser"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v4, 0x0

    .line 131
    .local v4, parser:Lcom/android/exchange/adapter/Parser;
    :try_start_33
    new-instance v5, Lcom/android/exchange/adapter/SettingsParser;

    invoke-direct {v5, v3}, Lcom/android/exchange/adapter/SettingsParser;-><init>(Ljava/io/InputStream;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_62

    .end local v4           #parser:Lcom/android/exchange/adapter/Parser;
    .local v5, parser:Lcom/android/exchange/adapter/Parser;
    move-object v4, v5

    .line 136
    .end local v5           #parser:Lcom/android/exchange/adapter/Parser;
    .restart local v4       #parser:Lcom/android/exchange/adapter/Parser;
    :goto_39
    if-eqz v4, :cond_3e

    .line 138
    :try_start_3b
    invoke-virtual {v4}, Lcom/android/exchange/adapter/SettingsParser;->parse()Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_67
    .catch Lcom/android/exchange/EasException; {:try_start_3b .. :try_end_3e} :catch_6c

    .line 148
    .end local v2           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #parser:Lcom/android/exchange/adapter/Parser;
    :cond_3e
    :goto_3e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v0, cv:Landroid/content/ContentValues;
    const-string v7, "flags"

    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v8, Lcom/android/exchange/PasswordRecoveryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_9

    .line 122
    .end local v0           #cv:Landroid/content/ContentValues;
    .restart local v2       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catch_58
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2b

    .line 124
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_5d
    move-exception v1

    .line 125
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 132
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #parser:Lcom/android/exchange/adapter/Parser;
    :catch_62
    move-exception v1

    .line 133
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    :catch_67
    move-exception v1

    .line 140
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 141
    .end local v1           #e:Ljava/io/IOException;
    :catch_6c
    move-exception v1

    .line 142
    .local v1, e:Lcom/android/exchange/EasException;
    invoke-virtual {v1}, Lcom/android/exchange/EasException;->printStackTrace()V

    goto :goto_3e

    .line 146
    .end local v1           #e:Lcom/android/exchange/EasException;
    .end local v2           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #parser:Lcom/android/exchange/adapter/Parser;
    :cond_71
    iget-object v7, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    const v9, 0x8000

    or-int/2addr v8, v9

    iput v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_3e
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 62
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    const-string v7, "run"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/exchange/PasswordRecoveryService;->setupService()Z

    .line 66
    new-instance v5, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v5}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 68
    .local v5, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v6, 0x485

    :try_start_11
    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 69
    const/16 v6, 0x494

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 70
    const/16 v6, 0x488

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 71
    const/16 v6, 0x495

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exchange/PasswordRecoveryService;->mPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 72
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 73
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 74
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->done()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3a} :catch_82

    .line 80
    :goto_3a
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending http post with recovery password, mUsername:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_54
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    if-eqz v6, :cond_74

    .line 84
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "PasswordRecoverySerice:run(): Wbxml:"

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/PasswordRecoveryService;->userLog([Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v0

    .line 86
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    .local v1, byTe:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/exchange/adapter/LogAdapter;

    invoke-direct {v4, p0}, Lcom/android/exchange/adapter/LogAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 88
    .local v4, logA:Lcom/android/exchange/adapter/LogAdapter;
    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/LogAdapter;->parse(Ljava/io/InputStream;)Z

    .line 92
    .end local v0           #b:[B
    .end local v1           #byTe:Ljava/io/ByteArrayInputStream;
    .end local v4           #logA:Lcom/android/exchange/adapter/LogAdapter;
    :cond_74
    const-string v6, "Settings"

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/exchange/PasswordRecoveryService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 93
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lcom/android/exchange/PasswordRecoveryService;->logResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_81
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_54 .. :try_end_81} :catch_87
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_81} :catch_b1

    .line 103
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_81
    return-void

    .line 75
    :catch_82
    move-exception v2

    .line 76
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 94
    .end local v2           #e:Ljava/io/IOException;
    :catch_87
    move-exception v2

    .line 95
    .local v2, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    const-string v6, "DeviceAccessPermission"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught Exceptoin, Device is blocked or quarantined "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/emailcommon/utility/DeviceAccessException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v6, 0x6

    iput v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 98
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v8, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v6, v7, v8}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    goto :goto_81

    .line 99
    .end local v2           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :catch_b1
    move-exception v2

    .line 100
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/exchange/PasswordRecoveryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught IO Exception: message :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81
.end method
