.class public final Lcom/google/android/ytremote/backend/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/ytremote/model/PairingCode;)Lorg/apache/http/client/methods/HttpPost;
    .registers 7
    .parameter

    .prologue
    .line 105
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "https://www.youtube.com/api/lounge/pairing/get_screen"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    .line 107
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "pairing_code"

    invoke-virtual {p0}, Lcom/google/android/ytremote/model/PairingCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/ytremote/a/a/b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    :try_start_1c
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_24} :catch_25

    .line 114
    :goto_24
    return-object v0

    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method public static a(Ljava/util/Collection;)Lorg/apache/http/client/methods/HttpPost;
    .registers 7
    .parameter

    .prologue
    .line 92
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "https://www.youtube.com/api/lounge/pairing/get_screen_availability"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    .line 94
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "lounge_token"

    const-string v5, ","

    invoke-static {v5, p0}, Lcom/google/android/ytremote/util/Join;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/ytremote/a/a/b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    :try_start_1e
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_26} :catch_27

    .line 101
    :goto_26
    return-object v0

    :catch_27
    move-exception v1

    goto :goto_26
.end method

.method public static b(Ljava/util/Collection;)Lorg/apache/http/client/methods/HttpPost;
    .registers 6
    .parameter

    .prologue
    .line 141
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "https://www.youtube.com/api/lounge/pairing/get_lounge_token_batch"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "screen_ids"

    const-string v4, ","

    invoke-static {v4, p0}, Lcom/google/android/ytremote/util/Join;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :try_start_1d
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_25} :catch_26

    .line 150
    :goto_25
    return-object v0

    :catch_26
    move-exception v1

    goto :goto_25
.end method
