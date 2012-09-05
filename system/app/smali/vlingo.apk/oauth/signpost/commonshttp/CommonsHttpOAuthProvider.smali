.class public Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
.super Loauth/signpost/AbstractOAuthProvider;
.source "CommonsHttpOAuthProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Loauth/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 53
    return-void
.end method


# virtual methods
.method protected retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
    .registers 16
    .parameter "consumer"
    .parameter "endpointUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthCommunicationException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 61
    .local v0, defaultHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_18

    .line 62
    :cond_10
    new-instance v11, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v12, "Consumer key or secret not set"

    invoke-direct {v11, v12}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 65
    :cond_18
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .local v3, header:Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v3, v11}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 69
    .end local v3           #header:Ljava/lang/String;
    :cond_3b
    const/4 v6, 0x0

    .line 73
    .local v6, response:Lorg/apache/http/HttpResponse;
    :try_start_3c
    new-instance v11, Loauth/signpost/commonshttp/HttpRequestAdapter;

    invoke-direct {v11, v5}, Loauth/signpost/commonshttp/HttpRequestAdapter;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    invoke-interface {p1, v11}, Loauth/signpost/OAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    .line 75
    iget-object v11, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v11, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 77
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 79
    .local v9, statusCode:I
    const/16 v11, 0x191

    if-ne v9, v11, :cond_6b

    .line 80
    new-instance v11, Loauth/signpost/exception/OAuthNotAuthorizedException;

    invoke-direct {v11}, Loauth/signpost/exception/OAuthNotAuthorizedException;-><init>()V

    throw v11
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5e
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_3c .. :try_end_5c} :catch_5c
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_3c .. :try_end_5c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5c} :catch_b6

    .line 101
    .end local v9           #statusCode:I
    :catch_5c
    move-exception v1

    .line 102
    .local v1, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :try_start_5d
    throw v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 108
    .end local v1           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catchall_5e
    move-exception v11

    if-eqz v6, :cond_6a

    .line 109
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 110
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_6a

    .line 113
    :try_start_67
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_bd

    .line 119
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :cond_6a
    :goto_6a
    throw v11

    .line 83
    .restart local v9       #statusCode:I
    :cond_6b
    :try_start_6b
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v7

    .line 86
    .local v7, responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "oauth_token"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 87
    .local v10, token:Ljava/lang/String;
    const-string v11, "oauth_token_secret"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 88
    .local v8, secret:Ljava/lang/String;
    const-string v11, "oauth_token"

    invoke-interface {v7, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v11, "oauth_token_secret"

    invoke-interface {v7, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, v7}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->setResponseParameters(Ljava/util/Map;)V

    .line 93
    if-eqz v10, :cond_98

    if-nez v8, :cond_a2

    .line 94
    :cond_98
    new-instance v11, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v12, "Request token or token secret not set in server reply. The service provider you use is probably buggy."

    invoke-direct {v11, v12}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_a0
    .catchall {:try_start_6b .. :try_end_a0} :catchall_5e
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_6b .. :try_end_a0} :catch_5c
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_6b .. :try_end_a0} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_a0} :catch_b6

    .line 103
    .end local v7           #responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #secret:Ljava/lang/String;
    .end local v9           #statusCode:I
    .end local v10           #token:Ljava/lang/String;
    :catch_a0
    move-exception v1

    .line 104
    .local v1, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :try_start_a1
    throw v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_5e

    .line 99
    .end local v1           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    .restart local v7       #responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #secret:Ljava/lang/String;
    .restart local v9       #statusCode:I
    .restart local v10       #token:Ljava/lang/String;
    :cond_a2
    :try_start_a2
    invoke-interface {p1, v10, v8}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_5e
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_a2 .. :try_end_a5} :catch_5c
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_a2 .. :try_end_a5} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_b6

    .line 108
    if-eqz v6, :cond_b0

    .line 109
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 110
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_b0

    .line 113
    :try_start_ad
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 121
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :cond_b0
    :goto_b0
    return-void

    .line 114
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :catch_b1
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    .line 105
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #secret:Ljava/lang/String;
    .end local v9           #statusCode:I
    .end local v10           #token:Ljava/lang/String;
    :catch_b6
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    :try_start_b7
    new-instance v11, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v11, v1}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v11
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_5e

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :catch_bd
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a
.end method

.method setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .registers 2
    .parameter "httpClient"

    .prologue
    .line 124
    iput-object p1, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 125
    return-void
.end method
