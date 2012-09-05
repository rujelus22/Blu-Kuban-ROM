.class public Lcom/samsung/swift/network/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final HTTP_OK_RESPONSE:Ljava/lang/String; = "HTTP/1.1 200 OK"

.field private static resourceBundle:Ljava/util/ResourceBundle; = null

.field static final resourceBundleName:Ljava/lang/String; = "com/samsung/swift/servicediscovery/resources/ResourceStrings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceBundle()Ljava/util/ResourceBundle;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/swift/network/Utils;->resourceBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_c

    .line 57
    const-string v0, "com/samsung/swift/servicediscovery/resources/ResourceStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/network/Utils;->resourceBundle:Ljava/util/ResourceBundle;

    .line 60
    :cond_c
    sget-object v0, Lcom/samsung/swift/network/Utils;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public static getResourceString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "stringName"

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/swift/network/Utils;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceDescription(Ljava/lang/String;)Lcom/samsung/swift/network/DiscoveryResponse;
    .registers 12
    .parameter "urlString"

    .prologue
    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, dr:Lcom/samsung/swift/network/DiscoveryResponse;
    const/16 v0, 0xfa

    .line 92
    .local v0, connectTimeout:I
    const/4 v1, 0x3

    .line 94
    .local v1, connectionRetry:I
    :cond_4
    :goto_4
    if-lez v1, :cond_37

    .line 99
    :try_start_6
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 101
    .local v6, huc:Ljava/net/HttpURLConnection;
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 102
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 103
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_4

    .line 105
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 106
    .local v2, contentLength:I
    const/high16 v9, 0x1

    if-ge v2, v9, :cond_4

    .line 108
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 109
    .local v7, ins:Ljava/io/InputStream;
    invoke-static {v7}, Lcom/samsung/swift/network/ResponseParser;->parseResponse(Ljava/io/InputStream;)Lcom/samsung/swift/network/DiscoveryResponse;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_31

    move-result-object v3

    move-object v4, v3

    .line 121
    .end local v2           #contentLength:I
    .end local v3           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .end local v6           #huc:Ljava/net/HttpURLConnection;
    .end local v7           #ins:Ljava/io/InputStream;
    .end local v8           #url:Ljava/net/URL;
    .local v4, dr:Lcom/samsung/swift/network/DiscoveryResponse;
    :goto_30
    return-object v4

    .line 114
    .end local v4           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .restart local v3       #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    :catch_31
    move-exception v5

    .line 116
    .local v5, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, -0x1

    .line 117
    add-int/lit16 v0, v0, 0xfa

    .line 118
    goto :goto_4

    .end local v5           #e:Ljava/lang/Exception;
    :cond_37
    move-object v4, v3

    .line 121
    .end local v3           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .restart local v4       #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    goto :goto_30
.end method

.method public static parseHttpResponseHeader(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .parameter "headerString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "HTTP/1.1 200 OK"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 75
    const-string v5, "\n"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, sa:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_14
    array-length v5, v4

    if-ge v1, v5, :cond_3f

    .line 78
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, s:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, j:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3c

    .line 81
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 85
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #sa:[Ljava/lang/String;
    :cond_3f
    return-object v0
.end method

.method public static showDocument(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 29
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/swift/network/Utils;->showDocument(Ljava/net/URL;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_8} :catch_9

    .line 35
    :goto_8
    return-void

    .line 31
    :catch_9
    move-exception v0

    .line 33
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_8
.end method

.method public static showDocument(Ljava/net/URL;)V
    .registers 1
    .parameter "url"

    .prologue
    .line 50
    .line 51
    return-void
.end method
