.class final Lcom/google/android/apps/plus/network/ApiaryOperation$1;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpRequestInitializer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authInitializer:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

.field final synthetic val$authTime:Ljava/lang/Long;

.field final synthetic val$authToken:Ljava/lang/String;

.field final synthetic val$backendOverrideUrl:Ljava/lang/String;

.field final synthetic val$containerUrl:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sdkVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$containerUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$sdkVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authTime:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$backendOverrideUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authToken:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authInitializer:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 14
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v0

    .line 535
    .local v0, androidId:J
    const-string v7, "md5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 536
    .local v3, digest:Ljava/security/MessageDigest;
    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->longToByteArray(J)[B
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$200(J)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 537
    .local v6, out:[B
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "X-Device-ID"

    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->byteArrayToHexString([B)Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$300([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_21} :catch_b4

    .line 543
    .end local v0           #androidId:J
    .end local v3           #digest:Ljava/security/MessageDigest;
    .end local v6           #out:[B
    :goto_21
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/apps/plus/util/AndroidUtils;->getNetworkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, networkId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "X-Network-ID"

    invoke-virtual {v7, v8, v5}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "X-Container-Url"

    iget-object v9, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$containerUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "User-Agent"

    iget-object v9, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$sdkVersion:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->makeUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v8

    const-string v9, "X-Auth-Time"

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authTime:Ljava/lang/Long;

    if-eqz v7, :cond_c2

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    :goto_60
    invoke-virtual {v8, v9, v7}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getC2dmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, c2dmRegistrationId:Ljava/lang/String;
    if-eqz v2, :cond_74

    .line 553
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "X-Android-App-ID"

    invoke-virtual {v7, v8, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_74
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$backendOverrideUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_aa

    .line 560
    const-string v7, "ApiaryOperation"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 561
    const-string v7, "ApiaryOperation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting backend override url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$backendOverrideUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_9f
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "X-Google-Backend-Override"

    iget-object v9, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$backendOverrideUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_aa
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authToken:Ljava/lang/String;

    if-eqz v7, :cond_b3

    .line 566
    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$1;->val$authInitializer:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-virtual {v7, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 568
    :cond_b3
    return-void

    .line 538
    .end local v2           #c2dmRegistrationId:Ljava/lang/String;
    .end local v5           #networkId:Ljava/lang/String;
    :catch_b4
    move-exception v4

    .line 540
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    const-string v8, "X-Device-ID"

    const-string v9, "none"

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    .line 548
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v5       #networkId:Ljava/lang/String;
    :cond_c2
    const-string v7, "none"

    goto :goto_60
.end method
