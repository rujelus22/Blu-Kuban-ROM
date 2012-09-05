.class public final Ltwitter4j/conf/PropertyConfiguration;
.super Ltwitter4j/conf/ConfigurationBase;
.source "PropertyConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASYNC_DISPATCHER_IMPL:Ljava/lang/String; = "async.dispatcherImpl"

.field public static final ASYNC_NUM_THREADS:Ljava/lang/String; = "async.numThreads"

.field public static final CLIENT_URL:Ljava/lang/String; = "clientURL"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final HTTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connectionTimeout"

.field public static final HTTP_DEFAULT_MAX_PER_ROUTE:Ljava/lang/String; = "http.defaultMaxPerRoute"

.field public static final HTTP_GZIP:Ljava/lang/String; = "http.gzip"

.field public static final HTTP_MAX_TOTAL_CONNECTIONS:Ljava/lang/String; = "http.maxTotalConnections"

.field public static final HTTP_PRETTY_DEBUG:Ljava/lang/String; = "http.prettyDebug"

.field public static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_HOST_FALLBACK:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_PORT_FALLBACK:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_USER:Ljava/lang/String; = "http.proxyUser"

.field public static final HTTP_READ_TIMEOUT:Ljava/lang/String; = "http.readTimeout"

.field public static final HTTP_RETRY_COUNT:Ljava/lang/String; = "http.retryCount"

.field public static final HTTP_RETRY_INTERVAL_SECS:Ljava/lang/String; = "http.retryIntervalSecs"

.field public static final HTTP_STREAMING_READ_TIMEOUT:Ljava/lang/String; = "http.streamingReadTimeout"

.field public static final HTTP_USER_AGENT:Ljava/lang/String; = "http.userAgent"

.field public static final HTTP_USE_SSL:Ljava/lang/String; = "http.useSSL"

.field public static final INCLUDE_ENTITIES:Ljava/lang/String; = "includeEntities"

.field public static final INCLUDE_RTS:Ljava/lang/String; = "includeRTs"

.field public static final JSON_STORE_ENABLED:Ljava/lang/String; = "jsonStoreEnabled"

.field public static final MBEAN_ENABLED:Ljava/lang/String; = "mbeanEnabled"

.field public static final MEDIA_PROVIDER:Ljava/lang/String; = "media.provider"

.field public static final MEDIA_PROVIDER_API_KEY:Ljava/lang/String; = "media.providerAPIKey"

.field public static final MEDIA_PROVIDER_PARAMETERS:Ljava/lang/String; = "media.providerParameters"

.field public static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "oauth.accessToken"

.field public static final OAUTH_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "oauth.accessTokenSecret"

.field public static final OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "oauth.accessTokenURL"

.field public static final OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "oauth.authenticationURL"

.field public static final OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "oauth.authorizationURL"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth.consumerKey"

.field public static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth.consumerSecret"

.field public static final OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "oauth.requestTokenURL"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final REST_BASE_URL:Ljava/lang/String; = "restBaseURL"

.field public static final SEARCH_BASE_URL:Ljava/lang/String; = "searchBaseURL"

.field public static final SITE_STREAM_BASE_URL:Ljava/lang/String; = "siteStreamBaseURL"

.field public static final STREAM_BASE_URL:Ljava/lang/String; = "streamBaseURL"

.field public static final STREAM_USER_REPLIES_ALL:Ljava/lang/String; = "stream.user.repliesAll"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USER_STREAM_BASE_URL:Ljava/lang/String; = "userStreamBaseURL"

.field static class$twitter4j$conf$Configuration:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x59a2240419f3c755L


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 136
    const-string v0, "/"

    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "is"

    .prologue
    .line 95
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 96
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 97
    .local v0, props:Ljava/util/Properties;
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 98
    const-string v1, "/"

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter "treePath"

    .prologue
    .line 111
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 115
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    .line 116
    .local v2, props:Ljava/util/Properties;
    invoke-direct {p0, v2}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_10} :catch_5e

    .line 121
    :goto_10
    const-string v0, "twitter4j.properties"

    .line 123
    .local v0, TWITTER4J_PROPERTIES:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "twitter4j.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 125
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    if-nez v3, :cond_65

    const-string v3, "twitter4j.conf.Configuration"

    invoke-static {v3}, Ltwitter4j/conf/PropertyConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    :goto_3c
    const-string v4, "/twitter4j.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 127
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    if-nez v3, :cond_68

    const-string v3, "twitter4j.conf.Configuration"

    invoke-static {v3}, Ltwitter4j/conf/PropertyConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    :goto_51
    const-string v4, "/WEB-INF/twitter4j.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 129
    invoke-direct {p0, v2, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 130
    return-void

    .line 117
    .end local v0           #TWITTER4J_PROPERTIES:Ljava/lang/String;
    .end local v2           #props:Ljava/util/Properties;
    :catch_5e
    move-exception v1

    .line 119
    .local v1, ignore:Ljava/lang/SecurityException;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .restart local v2       #props:Ljava/util/Properties;
    goto :goto_10

    .line 125
    .end local v1           #ignore:Ljava/lang/SecurityException;
    .restart local v0       #TWITTER4J_PROPERTIES:Ljava/lang/String;
    :cond_65
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    goto :goto_3c

    .line 127
    :cond_68
    sget-object v3, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    goto :goto_51
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3
    .parameter "props"

    .prologue
    .line 102
    const-string v0, "/"

    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 3
    .parameter "props"
    .parameter "treePath"

    .prologue
    .line 106
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 107
    invoke-direct {p0, p1, p2}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .registers 4
    .parameter "props"
    .parameter "is"

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 169
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_7
    return v0

    .line 171
    :catch_8
    move-exception v0

    .line 173
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .registers 8
    .parameter "props"
    .parameter "path"

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 148
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_2c

    .line 149
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_17
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 150
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_45

    .line 151
    const/4 v3, 0x1

    .line 156
    if-eqz v2, :cond_23

    .line 157
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3c

    :cond_23
    :goto_23
    move-object v1, v2

    .line 163
    .end local v0           #file:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_24
    return v3

    .line 156
    .restart local v0       #file:Ljava/io/File;
    :cond_25
    if-eqz v1, :cond_2a

    .line 157
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3e

    .line 163
    .end local v0           #file:Ljava/io/File;
    :cond_2a
    :goto_2a
    const/4 v3, 0x0

    goto :goto_24

    .line 153
    :catch_2c
    move-exception v3

    .line 156
    :goto_2d
    if-eqz v1, :cond_2a

    .line 157
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_2a

    .line 159
    :catch_33
    move-exception v3

    goto :goto_2a

    .line 155
    :catchall_35
    move-exception v3

    .line 156
    :goto_36
    if-eqz v1, :cond_3b

    .line 157
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_40

    .line 161
    :cond_3b
    :goto_3b
    throw v3

    .line 159
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_3c
    move-exception v4

    goto :goto_23

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_3e
    move-exception v3

    goto :goto_2a

    .end local v0           #file:Ljava/io/File;
    :catch_40
    move-exception v4

    goto :goto_3b

    .line 155
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_42
    move-exception v3

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_36

    .line 153
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_45
    move-exception v3

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2d
.end method

.method private normalize(Ljava/util/Properties;)V
    .registers 12
    .parameter "props"

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 178
    .local v4, keys:Ljava/util/Set;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v7, toBeNormalized:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, key:Ljava/lang/Object;
    move-object v3, v2

    .line 180
    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, keyStr:Ljava/lang/String;
    const/4 v8, -0x1

    const-string v9, "twitter4j."

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_f

    .line 182
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 185
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keyStr:Ljava/lang/String;
    :cond_29
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .restart local v3       #keyStr:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, property:Ljava/lang/String;
    const-string v8, "twitter4j."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, index:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    add-int/lit8 v9, v1, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, newKey:Ljava/lang/String;
    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2d

    .line 191
    .end local v1           #index:I
    .end local v3           #keyStr:Ljava/lang/String;
    .end local v5           #newKey:Ljava/lang/String;
    .end local v6           #property:Ljava/lang/String;
    :cond_63
    return-void
.end method

.method private notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 13
    .parameter "props"
    .parameter "prefix"

    .prologue
    const/4 v9, 0x1

    .line 219
    const-string v7, "debug"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 220
    const-string v7, "debug"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setDebug(Z)V

    .line 223
    :cond_12
    const-string v7, "user"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 224
    const-string v7, "user"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUser(Ljava/lang/String;)V

    .line 226
    :cond_23
    const-string v7, "password"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 227
    const-string v7, "password"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setPassword(Ljava/lang/String;)V

    .line 229
    :cond_34
    const-string v7, "http.useSSL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2fc

    .line 230
    const-string v7, "http.useSSL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    .line 236
    :cond_45
    :goto_45
    const-string v7, "http.prettyDebug"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 237
    const-string v7, "http.prettyDebug"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setPrettyDebugEnabled(Z)V

    .line 239
    :cond_56
    const-string v7, "http.gzip"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 240
    const-string v7, "http.gzip"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setGZIPEnabled(Z)V

    .line 242
    :cond_67
    const-string v7, "http.proxyHost"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_311

    .line 243
    const-string v7, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    .line 247
    :cond_78
    :goto_78
    const-string v7, "http.proxyUser"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 248
    const-string v7, "http.proxyUser"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyUser(Ljava/lang/String;)V

    .line 250
    :cond_89
    const-string v7, "http.proxyPassword"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 251
    const-string v7, "http.proxyPassword"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 253
    :cond_9a
    const-string v7, "http.proxyPort"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_324

    .line 254
    const-string v7, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    .line 258
    :cond_ab
    :goto_ab
    const-string v7, "http.connectionTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 259
    const-string v7, "http.connectionTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpConnectionTimeout(I)V

    .line 261
    :cond_bc
    const-string v7, "http.readTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 262
    const-string v7, "http.readTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpReadTimeout(I)V

    .line 264
    :cond_cd
    const-string v7, "http.streamingReadTimeout"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 265
    const-string v7, "http.streamingReadTimeout"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpStreamingReadTimeout(I)V

    .line 267
    :cond_de
    const-string v7, "http.retryCount"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 268
    const-string v7, "http.retryCount"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryCount(I)V

    .line 270
    :cond_ef
    const-string v7, "http.retryIntervalSecs"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 271
    const-string v7, "http.retryIntervalSecs"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryIntervalSeconds(I)V

    .line 273
    :cond_100
    const-string v7, "http.maxTotalConnections"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 274
    const-string v7, "http.maxTotalConnections"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpMaxTotalConnections(I)V

    .line 276
    :cond_111
    const-string v7, "http.defaultMaxPerRoute"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_122

    .line 277
    const-string v7, "http.defaultMaxPerRoute"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpDefaultMaxPerRoute(I)V

    .line 279
    :cond_122
    const-string v7, "oauth.consumerKey"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_133

    .line 280
    const-string v7, "oauth.consumerKey"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 282
    :cond_133
    const-string v7, "oauth.consumerSecret"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_144

    .line 283
    const-string v7, "oauth.consumerSecret"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 285
    :cond_144
    const-string v7, "oauth.accessToken"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_155

    .line 286
    const-string v7, "oauth.accessToken"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 288
    :cond_155
    const-string v7, "oauth.accessTokenSecret"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 289
    const-string v7, "oauth.accessTokenSecret"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 291
    :cond_166
    const-string v7, "async.numThreads"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_177

    .line 292
    const-string v7, "async.numThreads"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    .line 294
    :cond_177
    const-string v7, "async.dispatcherImpl"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_188

    .line 295
    const-string v7, "async.dispatcherImpl"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setDispatcherImpl(Ljava/lang/String;)V

    .line 297
    :cond_188
    const-string v7, "clientVersion"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_199

    .line 298
    const-string v7, "clientVersion"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setClientVersion(Ljava/lang/String;)V

    .line 300
    :cond_199
    const-string v7, "clientURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1aa

    .line 301
    const-string v7, "clientURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setClientURL(Ljava/lang/String;)V

    .line 303
    :cond_1aa
    const-string v7, "http.userAgent"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1bb

    .line 304
    const-string v7, "http.userAgent"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserAgent(Ljava/lang/String;)V

    .line 307
    :cond_1bb
    const-string v7, "oauth.requestTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1cc

    .line 308
    const-string v7, "oauth.requestTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 311
    :cond_1cc
    const-string v7, "oauth.authorizationURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1dd

    .line 312
    const-string v7, "oauth.authorizationURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 315
    :cond_1dd
    const-string v7, "oauth.accessTokenURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ee

    .line 316
    const-string v7, "oauth.accessTokenURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 319
    :cond_1ee
    const-string v7, "oauth.authenticationURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ff

    .line 320
    const-string v7, "oauth.authenticationURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 323
    :cond_1ff
    const-string v7, "restBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_210

    .line 324
    const-string v7, "restBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setRestBaseURL(Ljava/lang/String;)V

    .line 327
    :cond_210
    const-string v7, "searchBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_221

    .line 328
    const-string v7, "searchBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setSearchBaseURL(Ljava/lang/String;)V

    .line 331
    :cond_221
    const-string v7, "streamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_232

    .line 332
    const-string v7, "streamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setStreamBaseURL(Ljava/lang/String;)V

    .line 334
    :cond_232
    const-string v7, "userStreamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_243

    .line 335
    const-string v7, "userStreamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamBaseURL(Ljava/lang/String;)V

    .line 337
    :cond_243
    const-string v7, "siteStreamBaseURL"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_254

    .line 338
    const-string v7, "siteStreamBaseURL"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setSiteStreamBaseURL(Ljava/lang/String;)V

    .line 340
    :cond_254
    const-string v7, "includeRTs"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_265

    .line 341
    const-string v7, "includeRTs"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeRTsEnbled(Z)V

    .line 343
    :cond_265
    const-string v7, "includeEntities"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_276

    .line 344
    const-string v7, "includeEntities"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setIncludeEntitiesEnbled(Z)V

    .line 346
    :cond_276
    const-string v7, "jsonStoreEnabled"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_287

    .line 347
    const-string v7, "jsonStoreEnabled"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setJSONStoreEnabled(Z)V

    .line 349
    :cond_287
    const-string v7, "mbeanEnabled"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_298

    .line 350
    const-string v7, "mbeanEnabled"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMBeanEnabled(Z)V

    .line 352
    :cond_298
    const-string v7, "stream.user.repliesAll"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a9

    .line 353
    const-string v7, "stream.user.repliesAll"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setUserStreamRepliesAllEnabled(Z)V

    .line 355
    :cond_2a9
    const-string v7, "media.provider"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2ba

    .line 356
    const-string v7, "media.provider"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProvider(Ljava/lang/String;)V

    .line 358
    :cond_2ba
    const-string v7, "media.providerAPIKey"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2cb

    .line 359
    const-string v7, "media.providerAPIKey"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderAPIKey(Ljava/lang/String;)V

    .line 361
    :cond_2cb
    const-string v7, "media.providerParameters"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33a

    .line 362
    const-string v7, "media.providerParameters"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-static {v7, v8}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, propsAry:[Ljava/lang/String;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 364
    .local v3, p:Ljava/util/Properties;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2e7
    if-ge v1, v2, :cond_337

    aget-object v6, v0, v1

    .line 365
    .local v6, str:Ljava/lang/String;
    const-string v7, "="

    invoke-static {v6, v7}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, parameter:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    aget-object v8, v4, v9

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e7

    .line 231
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #p:Ljava/util/Properties;
    .end local v4           #parameter:[Ljava/lang/String;
    .end local v5           #propsAry:[Ljava/lang/String;
    .end local v6           #str:Ljava/lang/String;
    :cond_2fc
    const-string v7, "user"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    const-string v7, "password"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 234
    invoke-virtual {p0, v9}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    goto/16 :goto_45

    .line 244
    :cond_311
    const-string v7, "http.proxyHost"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 245
    const-string v7, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 255
    :cond_324
    const-string v7, "http.proxyPort"

    invoke-direct {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 256
    const-string v7, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v7}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    goto/16 :goto_ab

    .line 368
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #p:Ljava/util/Properties;
    .restart local v5       #propsAry:[Ljava/lang/String;
    :cond_337
    invoke-virtual {p0, v3}, Ltwitter4j/conf/PropertyConfiguration;->setMediaProviderParameters(Ljava/util/Properties;)V

    .line 370
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #p:Ljava/util/Properties;
    .end local v5           #propsAry:[Ljava/lang/String;
    :cond_33a
    return-void
.end method

.method private setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 11
    .parameter "props"
    .parameter "treePath"

    .prologue
    .line 203
    const-string v6, ""

    invoke-direct {p0, p1, v6}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 204
    const-string v6, "/"

    invoke-static {p2, v6}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, splitArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 206
    .local v3, prefix:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_f
    if-ge v1, v2, :cond_4e

    aget-object v4, v0, v1

    .line 207
    .local v4, split:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 208
    if-nez v3, :cond_36

    .line 209
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    :goto_30
    invoke-direct {p0, p1, v3}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 206
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 211
    :cond_36
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    .line 216
    .end local v4           #split:Ljava/lang/String;
    :cond_4e
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStreamingReadTimeout()I
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0
.end method

.method protected getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 378
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, value:Ljava/lang/String;
    :try_start_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v2

    .line 382
    :goto_19
    return v2

    .line 381
    :catch_1a
    move-exception v0

    .line 382
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_19
.end method

.method public getMediaProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderAPIKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaProviderParameters()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getMediaProviderParameters()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRestBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSiteStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "props"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getUserStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGZIPEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isGZIPEnabled()Z

    move-result v0

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeEntitiesEnabled()Z

    move-result v0

    return v0
.end method

.method public isIncludeRTsEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isIncludeRTsEnabled()Z

    move-result v0

    return v0
.end method

.method public isJSONStoreEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isJSONStoreEnabled()Z

    move-result v0

    return v0
.end method

.method public isMBeanEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isMBeanEnabled()Z

    move-result v0

    return v0
.end method

.method public isPrettyDebugEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isPrettyDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->isUserStreamRepliesAllEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
