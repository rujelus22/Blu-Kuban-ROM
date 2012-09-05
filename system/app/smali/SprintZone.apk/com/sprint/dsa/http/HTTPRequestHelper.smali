.class public Lcom/sprint/dsa/http/HTTPRequestHelper;
.super Ljava/lang/Object;
.source "HTTPRequestHelper.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final GET_TYPE:I = 0x2

.field public static final MIME_FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final MIME_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field private static final POST_TYPE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SprintZone_HTTP"


# instance fields
.field private final m_responseHandler:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sprint/dsa/http/HTTPRequestHelper;->m_responseHandler:Lorg/apache/http/client/ResponseHandler;

    .line 62
    return-void
.end method

.method private execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    .registers 12
    .parameter "client"
    .parameter "method"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 205
    const/4 v4, 0x0

    .line 209
    .local v4, xmlResults:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v5, Lorg/apache/http/ProtocolVersion;

    const-string v7, "HTTP_ERROR"

    invoke-direct {v5, v7, v8, v8}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x1f4

    const-string v8, "ERROR"

    invoke-direct {v2, v5, v7, v8}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 212
    .local v2, errorResponse:Lorg/apache/http/message/BasicHttpResponse;
    :try_start_13
    iget-object v5, p0, Lcom/sprint/dsa/http/HTTPRequestHelper;->m_responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {p1, p2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    move-object v5, v4

    .line 226
    :goto_1e
    return-object v5

    .line 214
    :catch_1f
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SprintZone_HTTP"

    const-string v7, "HTTP Client Exception "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/http/message/BasicHttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lcom/sprint/dsa/http/HTTPRequestHelper;->m_responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v5, v2}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_35

    move-object v5, v6

    .line 223
    goto :goto_1e

    .line 219
    :catch_35
    move-exception v3

    .line 220
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "SprintZone_HTTP"

    const-string v7, "HTTP Response Handler Exception "

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 221
    goto :goto_1e
.end method

.method public static getResponseHandlerInstance()Lorg/apache/http/client/ResponseHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/sprint/dsa/http/HTTPRequestHelper$2;

    invoke-direct {v0}, Lcom/sprint/dsa/http/HTTPRequestHelper$2;-><init>()V

    .line 271
    .local v0, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 278
    .local v1, line:Ljava/lang/String;
    :goto_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 281
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 279
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method

.method private performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .registers 23
    .parameter "contentType"
    .parameter "url"
    .parameter "user"
    .parameter "pass"
    .parameter
    .parameter
    .parameter "body"
    .parameter "requestType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 101
    .local p5, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 105
    .local v10, xmlResults:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 108
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz p3, :cond_1c

    if-eqz p4, :cond_1c

    .line 110
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v11

    sget-object v12, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    new-instance v13, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v13, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 114
    :cond_1c
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v9, sendHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_2e

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_2e

    .line 116
    move-object/from16 v0, p5

    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    :cond_2e
    const/4 v11, 0x1

    move/from16 v0, p8

    if-ne v0, v11, :cond_38

    .line 119
    const-string v11, "Content-Type"

    invoke-interface {v9, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_38
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_46

    .line 122
    new-instance v11, Lcom/sprint/dsa/http/HTTPRequestHelper$1;

    invoke-direct {v11, p0, v9}, Lcom/sprint/dsa/http/HTTPRequestHelper$1;-><init>(Lcom/sprint/dsa/http/HTTPRequestHelper;Ljava/util/Map;)V

    invoke-virtual {v2, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 137
    :cond_46
    const/4 v11, 0x1

    move/from16 v0, p8

    if-ne v0, v11, :cond_d8

    .line 141
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 142
    .local v5, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v11, "http.protocol.handle-redirects"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 143
    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 145
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 147
    .local v7, method:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p7, :cond_80

    .line 151
    :try_start_66
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_70
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_70} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_70} :catch_75

    .line 181
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    :cond_70
    :goto_70
    :try_start_70
    invoke-direct {p0, v2, v7}, Lcom/sprint/dsa/http/HTTPRequestHelper;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_cd

    move-result-object v10

    .line 194
    .end local v5           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v7           #method:Lorg/apache/http/client/methods/HttpPost;
    :cond_74
    :goto_74
    return-object v10

    .line 155
    .restart local v5       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v7       #method:Lorg/apache/http/client/methods/HttpPost;
    :catch_75
    move-exception v3

    .line 156
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "SprintZone_HTTP"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 162
    .end local v3           #e:Ljava/lang/Exception;
    :cond_80
    const/4 v8, 0x0

    .line 163
    .local v8, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p6, :cond_9c

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_9c

    .line 164
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .restart local v8       #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_96
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_ab

    .line 170
    :cond_9c
    if-eqz v8, :cond_70

    .line 172
    :try_start_9e
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v12, "UTF-8"

    invoke-direct {v11, v8, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_a8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9e .. :try_end_a8} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a8} :catch_c2

    goto :goto_70

    .line 173
    :catch_a9
    move-exception v11

    goto :goto_70

    .line 165
    :cond_ab
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 167
    .local v6, key:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v13, v6, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 175
    .end local v6           #key:Ljava/lang/String;
    :catch_c2
    move-exception v3

    .line 176
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "SprintZone_HTTP"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 182
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_cd
    move-exception v3

    .line 183
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "SprintZone_HTTP"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 185
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v7           #method:Lorg/apache/http/client/methods/HttpPost;
    :cond_d8
    const/4 v11, 0x2

    move/from16 v0, p8

    if-ne v0, v11, :cond_74

    .line 187
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, method:Lorg/apache/http/client/methods/HttpGet;
    :try_start_e4
    invoke-direct {p0, v2, v7}, Lcom/sprint/dsa/http/HTTPRequestHelper;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e9

    move-result-object v10

    goto :goto_74

    .line 190
    :catch_e9
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "SprintZone_HTTP"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 153
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #httpParams:Lorg/apache/http/params/HttpParams;
    .local v7, method:Lorg/apache/http/client/methods/HttpPost;
    :catch_f4
    move-exception v11

    goto/16 :goto_70
.end method


# virtual methods
.method public performGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .parameter "url"
    .parameter "user"
    .parameter "pass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p4, additionalHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 70
    const/4 v8, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .parameter "contentType"
    .parameter "url"
    .parameter "user"
    .parameter "pass"
    .parameter
    .parameter
    .parameter "body"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    .local p5, additionalHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_11

    .line 80
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_10
    return-object v0

    :cond_11
    const-string v1, "application/x-www-form-urlencoded"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sprint/dsa/http/HTTPRequestHelper;->performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
