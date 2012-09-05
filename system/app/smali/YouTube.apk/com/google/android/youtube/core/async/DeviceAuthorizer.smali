.class public final Lcom/google/android/youtube/core/async/DeviceAuthorizer;
.super Lcom/google/android/youtube/core/converter/http/ao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/SharedPreferences;

.field private final f:Lcom/google/android/youtube/core/utils/s;

.field private volatile g:Z

.field private final h:Landroid/os/ConditionVariable;

.field private volatile i:Lcom/google/android/youtube/core/model/d;

.field private volatile j:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/s;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/ao;-><init>()V

    .line 74
    iput-object p5, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->e:Landroid/content/SharedPreferences;

    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->a:Lorg/apache/http/client/HttpClient;

    .line 78
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->b:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->c:[B

    .line 80
    iput-object p4, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->d:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->f:Lcom/google/android/youtube/core/utils/s;

    .line 83
    const-string v0, "device_id"

    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "device_key"

    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_3d

    if-eqz v0, :cond_3d

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v0, Lcom/google/android/youtube/core/model/d;

    invoke-direct {v0, v2, v3}, Lcom/google/android/youtube/core/model/d;-><init>(Ljava/lang/String;[B)V

    :goto_2f
    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    if-nez v0, :cond_3a

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    :cond_3a
    iput-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->h:Landroid/os/ConditionVariable;

    .line 85
    return-void

    :cond_3d
    move-object v0, v1

    .line 83
    goto :goto_2f
.end method

.method private a(Ljava/lang/String;)[B
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x14

    const/4 v2, 0x0

    .line 150
    :try_start_3
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_8} :catch_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_8} :catch_38

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->c:[B

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 162
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 165
    :try_start_13
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 167
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 168
    array-length v0, v1

    if-le v0, v5, :cond_3f

    .line 169
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 170
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_30
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_30} :catch_41
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_30} :catch_48
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_30} :catch_4f

    .line 173
    :goto_30
    return-object v0

    .line 155
    :catch_31
    move-exception v0

    .line 156
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :catch_38
    move-exception v0

    .line 158
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3f
    move-object v0, v1

    .line 173
    goto :goto_30

    .line 175
    :catch_41
    move-exception v0

    .line 176
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :catch_48
    move-exception v0

    .line 178
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 179
    :catch_4f
    move-exception v0

    .line 180
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "DeviceId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceKey"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_22

    if-eqz v0, :cond_22

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/model/d;

    invoke-direct {v2, v1, v0}, Lcom/google/android/youtube/core/model/d;-><init>(Ljava/lang/String;[B)V

    return-object v2

    :cond_22
    new-instance v0, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v1, "invalid device registration response"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    if-eqz v0, :cond_d

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/d;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_c
    return-object v0

    .line 102
    :cond_d
    monitor-enter p0

    .line 103
    :try_start_e
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->g:Z

    if-nez v0, :cond_6f

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->g:Z

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    move v0, v1

    .line 108
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_5f

    .line 110
    if-eqz v0, :cond_62

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->a:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->d:Ljava/lang/String;

    new-instance v4, Lcom/google/android/youtube/core/converter/http/ch;

    sget-object v5, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/converter/http/ch;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    new-instance v5, Lcom/google/android/youtube/core/async/w;

    invoke-direct {v5, v0, v4, p0}, Lcom/google/android/youtube/core/async/w;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->f:Lcom/google/android/youtube/core/utils/s;

    const-string v6, "https://www.google.com/youtube/accounts/registerDevice"

    invoke-virtual {v4, v6}, Lcom/google/android/youtube/core/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?developer=%s&serialNumber=%s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->b:Ljava/lang/String;

    aput-object v6, v4, v2

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0, p0}, Lcom/google/android/youtube/core/async/w;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    .line 116
    :goto_58
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->j:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    if-eqz v0, :cond_68

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->j:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    throw v0

    .line 108
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_62
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_58

    .line 119
    :cond_68
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/d;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_6f
    move v0, v2

    goto :goto_1b
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    new-instance v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->j:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->g:Z

    const-string v0, "device registration failed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p2, Lcom/google/android/youtube/core/model/d;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->j:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->i:Lcom/google/android/youtube/core/model/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->e:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/d;->a(Lcom/google/android/youtube/core/model/d;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->g:Z

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    return-void
.end method
