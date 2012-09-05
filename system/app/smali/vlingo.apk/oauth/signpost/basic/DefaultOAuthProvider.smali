.class public Loauth/signpost/basic/DefaultOAuthProvider;
.super Loauth/signpost/AbstractOAuthProvider;
.source "DefaultOAuthProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Loauth/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected retrieveToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
    .registers 15
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
    const/4 v11, 0x0

    .line 51
    invoke-virtual {p0}, Loauth/signpost/basic/DefaultOAuthProvider;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 53
    .local v0, defaultHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-interface {p1}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_19

    .line 54
    :cond_11
    new-instance v9, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v10, "Consumer key or secret not set"

    invoke-direct {v9, v10}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 58
    :cond_19
    :try_start_19
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    if-nez v9, :cond_31

    .line 59
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    .line 60
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    :cond_31
    new-instance v4, Loauth/signpost/basic/HttpURLConnectionRequestAdapter;

    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {v4, v9}, Loauth/signpost/basic/HttpURLConnectionRequestAdapter;-><init>(Ljava/net/HttpURLConnection;)V

    .line 63
    .local v4, request:Loauth/signpost/http/HttpRequest;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, header:Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v2, v9}, Loauth/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_58
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_19 .. :try_end_55} :catch_56
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_19 .. :try_end_55} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_55} :catch_b2

    goto :goto_40

    .line 94
    .end local v2           #header:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #request:Loauth/signpost/http/HttpRequest;
    :catch_56
    move-exception v1

    .line 95
    .local v1, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :try_start_57
    throw v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 101
    .end local v1           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catchall_58
    move-exception v9

    iget-object v10, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_64

    .line 102
    iget-object v10, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    iput-object v11, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    :cond_64
    throw v9

    .line 67
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #request:Loauth/signpost/http/HttpRequest;
    :cond_65
    :try_start_65
    invoke-interface {p1, v4}, Loauth/signpost/OAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    .line 69
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 71
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 73
    .local v7, statusCode:I
    const/16 v9, 0x191

    if-ne v7, v9, :cond_7f

    .line 74
    new-instance v9, Loauth/signpost/exception/OAuthNotAuthorizedException;

    invoke-direct {v9}, Loauth/signpost/exception/OAuthNotAuthorizedException;-><init>()V

    throw v9
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_58
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_65 .. :try_end_7d} :catch_56
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_65 .. :try_end_7d} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7d} :catch_b2

    .line 96
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #request:Loauth/signpost/http/HttpRequest;
    .end local v7           #statusCode:I
    :catch_7d
    move-exception v1

    .line 97
    .local v1, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :try_start_7e
    throw v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_58

    .line 77
    .end local v1           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #request:Loauth/signpost/http/HttpRequest;
    .restart local v7       #statusCode:I
    :cond_7f
    :try_start_7f
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v5

    .line 79
    .local v5, responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "oauth_token"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 80
    .local v8, token:Ljava/lang/String;
    const-string v9, "oauth_token_secret"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 81
    .local v6, secret:Ljava/lang/String;
    const-string v9, "oauth_token"

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v9, "oauth_token_secret"

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0, v5}, Loauth/signpost/basic/DefaultOAuthProvider;->setResponseParameters(Ljava/util/Map;)V

    .line 86
    if-eqz v8, :cond_aa

    if-nez v6, :cond_b9

    .line 87
    :cond_aa
    new-instance v9, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v10, "Request token or token secret not set in server reply. The service provider you use is probably buggy."

    invoke-direct {v9, v10}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_b2
    .catchall {:try_start_7f .. :try_end_b2} :catchall_58
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_7f .. :try_end_b2} :catch_56
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_7f .. :try_end_b2} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_b2} :catch_b2

    .line 98
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #request:Loauth/signpost/http/HttpRequest;
    .end local v5           #responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #secret:Ljava/lang/String;
    .end local v7           #statusCode:I
    .end local v8           #token:Ljava/lang/String;
    :catch_b2
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/Exception;
    :try_start_b3
    new-instance v9, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v9, v1}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v9
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_58

    .line 92
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #request:Loauth/signpost/http/HttpRequest;
    .restart local v5       #responseParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #secret:Ljava/lang/String;
    .restart local v7       #statusCode:I
    .restart local v8       #token:Ljava/lang/String;
    :cond_b9
    :try_start_b9
    invoke-interface {p1, v8, v6}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_58
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_b9 .. :try_end_bc} :catch_56
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_b9 .. :try_end_bc} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_b2

    .line 101
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_c7

    .line 102
    iget-object v9, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    iput-object v11, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    .line 106
    :cond_c7
    return-void
.end method

.method setHttpUrlConnection(Ljava/net/HttpURLConnection;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 109
    iput-object p1, p0, Loauth/signpost/basic/DefaultOAuthProvider;->connection:Ljava/net/HttpURLConnection;

    .line 110
    return-void
.end method
