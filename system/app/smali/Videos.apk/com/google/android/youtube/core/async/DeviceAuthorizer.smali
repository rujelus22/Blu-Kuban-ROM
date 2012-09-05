.class public Lcom/google/android/youtube/core/async/DeviceAuthorizer;
.super Ljava/lang/Object;
.source "DeviceAuthorizer.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Lcom/google/android/youtube/core/model/DeviceAuth;",
        ">;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Lcom/google/android/youtube/core/model/DeviceAuth;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile authorizingDevice:Z

.field private final developerKey:Ljava/lang/String;

.field private final developerSecret:[B

.field private volatile deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

.field private final deviceRegistrationBlocker:Landroid/os/ConditionVariable;

.field private final deviceSerial:Ljava/lang/String;

.field private volatile error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

.field private final httpsClient:Lorg/apache/http/client/HttpClient;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/UriRewriter;)V
    .registers 9
    .parameter "httpsClient"
    .parameter "developerKey"
    .parameter "developerSecret"
    .parameter "serial"
    .parameter "preferences"
    .parameter "uriRewriter"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p5, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->preferences:Landroid/content/SharedPreferences;

    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->httpsClient:Lorg/apache/http/client/HttpClient;

    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerKey:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerSecret:[B

    .line 80
    iput-object p4, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceSerial:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 83
    invoke-static {p5}, Lcom/google/android/youtube/core/model/DeviceAuth;->load(Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/model/DeviceAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    :goto_24
    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    .line 85
    return-void

    .line 84
    :cond_27
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private decryptDeviceKey(Ljava/lang/String;)[B
    .registers 12
    .parameter "encryptedDeviceKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 152
    const/4 v0, 0x0

    .line 156
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_4
    const-string v7, "AES/ECB/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_9} :catch_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_9} :catch_39

    move-result-object v0

    .line 163
    iget-object v7, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerSecret:[B

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 164
    .local v1, decodedDevSecret:[B
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 167
    .local v2, decodedDeviceKey:[B
    :try_start_14
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 168
    .local v6, secretKey:Ljavax/crypto/SecretKey;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 169
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 170
    .local v3, deviceKey:[B
    array-length v7, v3

    if-le v7, v9, :cond_40

    .line 171
    const/16 v7, 0x14

    new-array v5, v7, [B

    .line 172
    .local v5, paddedKey:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-static {v3, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_31
    .catch Ljava/security/InvalidKeyException; {:try_start_14 .. :try_end_31} :catch_42
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_31} :catch_49
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14 .. :try_end_31} :catch_50

    .line 175
    .end local v5           #paddedKey:[B
    :goto_31
    return-object v5

    .line 157
    .end local v1           #decodedDevSecret:[B
    .end local v2           #decodedDeviceKey:[B
    .end local v3           #deviceKey:[B
    .end local v6           #secretKey:Ljavax/crypto/SecretKey;
    :catch_32
    move-exception v4

    .line 158
    .local v4, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 159
    .end local v4           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_39
    move-exception v4

    .line 160
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v1       #decodedDevSecret:[B
    .restart local v2       #decodedDeviceKey:[B
    .restart local v3       #deviceKey:[B
    .restart local v6       #secretKey:Ljavax/crypto/SecretKey;
    :cond_40
    move-object v5, v3

    .line 175
    goto :goto_31

    .line 177
    .end local v3           #deviceKey:[B
    .end local v6           #secretKey:Ljavax/crypto/SecretKey;
    :catch_42
    move-exception v4

    .line 178
    .local v4, e:Ljava/security/InvalidKeyException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 179
    .end local v4           #e:Ljava/security/InvalidKeyException;
    :catch_49
    move-exception v4

    .line 180
    .local v4, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 181
    .end local v4           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_50
    move-exception v4

    .line 182
    .local v4, e:Ljavax/crypto/BadPaddingException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private registerDevice(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V
    .registers 11
    .parameter "httpClient"
    .parameter "deviceSerial"

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v4}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    .line 124
    .local v0, requestConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;
    new-instance v2, Lcom/google/android/youtube/core/async/HttpRequester;

    invoke-direct {v2, p1, v0, p0}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 127
    .local v2, requester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/DeviceAuth;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    const-string v5, "https://www.google.com/youtube/accounts/registerDevice"

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, requestUri:Ljava/lang/StringBuilder;
    const-string v4, "?developer=%s&serialNumber=%s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerKey:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 131
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v2, v3, p0}, Lcom/google/android/youtube/core/async/HttpRequester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 132
    return-void
.end method


# virtual methods
.method public convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/DeviceAuth;
    .registers 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 137
    .local v4, props:Ljava/util/Properties;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 138
    const-string v5, "DeviceId"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, deviceId:Ljava/lang/String;
    const-string v5, "DeviceKey"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, encryptedDeviceKey:Ljava/lang/String;
    if-eqz v0, :cond_2a

    if-eqz v3, :cond_2a

    .line 141
    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->decryptDeviceKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 142
    .local v1, deviceKey:[B
    new-instance v5, Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-direct {v5, v0, v1}, Lcom/google/android/youtube/core/model/DeviceAuth;-><init>(Ljava/lang/String;[B)V

    return-object v5

    .line 144
    .end local v1           #deviceKey:[B
    :cond_2a
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v6, "invalid device registration response"

    invoke-direct {v5, v6}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_32

    .line 146
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v3           #encryptedDeviceKey:Ljava/lang/String;
    .end local v4           #props:Ljava/util/Properties;
    :catch_32
    move-exception v2

    .line 147
    .local v2, e:Ljava/io/IOException;
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v5, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/DeviceAuth;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    if-eqz v1, :cond_b

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/model/DeviceAuth;->getXGDataDeviceHeaderValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_a
    return-object v1

    .line 100
    :cond_b
    const/4 v0, 0x0

    .line 102
    .local v0, doRegisterDevice:Z
    monitor-enter p0

    .line 103
    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    if-nez v1, :cond_1a

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    .line 105
    const/4 v0, 0x1

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 108
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_2b

    .line 110
    if-eqz v0, :cond_2e

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->httpsClient:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceSerial:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->registerDevice(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V

    .line 116
    :goto_24
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    if-eqz v1, :cond_34

    .line 117
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    throw v1

    .line 108
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1

    .line 113
    :cond_2e
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_24

    .line 119
    :cond_34
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/model/DeviceAuth;->getXGDataDeviceHeaderValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 4
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    .line 197
    new-instance v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    .line 198
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    .line 200
    const-string v0, "device registration failed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Lcom/google/android/youtube/core/model/DeviceAuth;)V
    .registers 5
    .parameter "uri"
    .parameter "response"

    .prologue
    .line 187
    iput-object p2, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/DeviceAuth;->save(Lcom/google/android/youtube/core/model/DeviceAuth;Landroid/content/SharedPreferences;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    .line 192
    const-string v0, "device registered"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/DeviceAuth;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->onResponse(Landroid/net/Uri;Lcom/google/android/youtube/core/model/DeviceAuth;)V

    return-void
.end method
