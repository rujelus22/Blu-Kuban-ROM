.class public Lcom/sec/dsm/system/osp/ServerTimeManager;
.super Ljava/lang/Object;
.source "ServerTimeManager.java"


# instance fields
.field private baseAppId:Ljava/lang/String;

.field private baseAppSecret:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private offsetTime:J

.field private uriPathTimeInitialization:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/ServerTimeException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->offsetTime:J

    .line 45
    :try_start_7
    iput-object p1, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    .line 47
    new-instance v1, Lcom/sec/dsm/system/osp/PropertyManager;

    invoke-direct {v1, p1}, Lcom/sec/dsm/system/osp/PropertyManager;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    const-string v2, "uri.path.time.initialization"

    invoke-virtual {v1, v2}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->uriPathTimeInitialization:Ljava/lang/String;

    .line 51
    const-string v2, "base.app.id"

    invoke-virtual {v1, v2}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->baseAppId:Ljava/lang/String;

    .line 52
    const-string v2, "base.app.secret"

    invoke-virtual {v1, v2}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->baseAppSecret:Ljava/lang/String;
    :try_end_26
    .catch Lcom/sec/dsm/system/osp/PropertyException; {:try_start_7 .. :try_end_26} :catch_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_30

    .line 58
    return-void

    .line 53
    .end local v1           #propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    :catch_27
    move-exception v0

    .line 54
    .local v0, e:Lcom/sec/dsm/system/osp/PropertyException;
    new-instance v2, Lcom/sec/dsm/system/osp/ServerTimeException;

    const-string v3, "Can\'t read the properties."

    invoke-direct {v2, v3, v0}, Lcom/sec/dsm/system/osp/ServerTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 55
    .end local v0           #e:Lcom/sec/dsm/system/osp/PropertyException;
    :catch_30
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/sec/dsm/system/osp/ServerTimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sec/dsm/system/osp/ServerTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private requestServerTime()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/ServerTimeException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 114
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/dsm/system/osp/ServerURIUtil;->getServerURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->uriPathTimeInitialization:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, requestURI:Ljava/lang/String;
    new-instance v0, Lcom/sec/dsm/system/osp/RestClient;

    iget-object v10, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->baseAppId:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->baseAppSecret:Ljava/lang/String;

    invoke-direct {v0, v10, v11, v12}, Lcom/sec/dsm/system/osp/RestClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, client:Lcom/sec/dsm/system/osp/RestClient;
    sget-object v10, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->GET:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    const-string v11, ""

    sget-object v12, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->APP_SECRET:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    invoke-virtual {v0, v10, v5, v11, v12}, Lcom/sec/dsm/system/osp/RestClient;->execute(Lcom/sec/dsm/system/osp/RestClient$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 121
    .local v6, response:Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 122
    .local v1, content:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 123
    .local v9, statusLine:Lorg/apache/http/StatusLine;
    const/4 v8, 0x0

    .line 125
    .local v8, statusCode:I
    if-eqz v6, :cond_4e

    .line 126
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_44

    .line 128
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 130
    :cond_44
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 131
    if-eqz v9, :cond_4e

    .line 132
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 136
    :cond_4e
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_85

    .line 137
    if-nez v1, :cond_68

    .line 138
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Response content is null."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5c

    .line 148
    .end local v0           #client:Lcom/sec/dsm/system/osp/RestClient;
    .end local v1           #content:Ljava/io/InputStream;
    .end local v5           #requestURI:Ljava/lang/String;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    .end local v9           #statusLine:Lorg/apache/http/StatusLine;
    :catch_5c
    move-exception v2

    .line 149
    .local v2, e:Ljava/lang/Exception;
    const-wide/16 v10, 0x0

    :try_start_5f
    invoke-direct {p0, v10, v11}, Lcom/sec/dsm/system/osp/ServerTimeManager;->setServerTime(J)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_90

    .line 151
    if-eqz v4, :cond_67

    .line 153
    :try_start_64
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_97

    .line 159
    .end local v2           #e:Ljava/lang/Exception;
    :cond_67
    :goto_67
    return-void

    .line 140
    .restart local v0       #client:Lcom/sec/dsm/system/osp/RestClient;
    .restart local v1       #content:Ljava/io/InputStream;
    .restart local v5       #requestURI:Ljava/lang/String;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #statusCode:I
    .restart local v9       #statusLine:Lorg/apache/http/StatusLine;
    :cond_68
    :try_start_68
    new-instance v7, Lcom/sec/dsm/system/osp/ServerTimeResult;

    invoke-direct {v7}, Lcom/sec/dsm/system/osp/ServerTimeResult;-><init>()V

    .line 141
    .local v7, serverTimeResult:Lcom/sec/dsm/system/osp/ServerTimeResult;
    invoke-virtual {v7, v1}, Lcom/sec/dsm/system/osp/ServerTimeResult;->fromXML(Ljava/io/InputStream;)V

    .line 143
    invoke-virtual {v7}, Lcom/sec/dsm/system/osp/ServerTimeResult;->getCurrentServerTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-direct {p0, v10, v11}, Lcom/sec/dsm/system/osp/ServerTimeManager;->setServerTime(J)V
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7a} :catch_5c

    .line 151
    .end local v7           #serverTimeResult:Lcom/sec/dsm/system/osp/ServerTimeResult;
    :goto_7a
    if-eqz v4, :cond_67

    .line 153
    :try_start_7c
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_67

    .line 154
    :catch_80
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :cond_85
    :try_start_85
    new-instance v3, Lcom/sec/dsm/system/osp/ErrorResultHandler;

    iget-object v10, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    invoke-direct {v3, v10}, Lcom/sec/dsm/system/osp/ErrorResultHandler;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, errorResultUtil:Lcom/sec/dsm/system/osp/ErrorResultHandler;
    invoke-virtual {v3, v1}, Lcom/sec/dsm/system/osp/ErrorResultHandler;->handleErrorResult(Ljava/io/InputStream;)V
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_5c

    goto :goto_7a

    .line 151
    .end local v0           #client:Lcom/sec/dsm/system/osp/RestClient;
    .end local v1           #content:Ljava/io/InputStream;
    .end local v3           #errorResultUtil:Lcom/sec/dsm/system/osp/ErrorResultHandler;
    .end local v5           #requestURI:Ljava/lang/String;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    .end local v9           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_90
    move-exception v10

    if-eqz v4, :cond_96

    .line 153
    :try_start_93
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9c

    .line 156
    :cond_96
    :goto_96
    throw v10

    .line 154
    .local v2, e:Ljava/lang/Exception;
    :catch_97
    move-exception v2

    .line 155
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 154
    .end local v2           #e:Ljava/io/IOException;
    :catch_9c
    move-exception v2

    .line 155
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96
.end method

.method private setServerTime(J)V
    .registers 13
    .parameter "currentTimestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/ServerTimeException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 162
    const-wide/16 v0, 0x0

    .line 163
    .local v0, deviceTime:J
    const-wide/16 v4, 0x0

    .line 166
    .local v4, settingTime:J
    cmp-long v6, p1, v6

    if-eqz v6, :cond_33

    .line 167
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 168
    sub-long v6, p1, v0

    iput-wide v6, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->offsetTime:J

    .line 169
    move-wide v4, v0

    .line 175
    :goto_17
    new-instance v3, Lcom/sec/dsm/system/osp/PropertyManager;

    iget-object v6, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/sec/dsm/system/osp/PropertyManager;-><init>(Landroid/content/Context;)V

    .line 177
    .local v3, propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    const-string v6, "ServerTime.settingTime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/dsm/system/osp/PropertyManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v6, "ServerTime.offsetTime"

    iget-wide v7, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->offsetTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/dsm/system/osp/PropertyManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 171
    .end local v3           #propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    :cond_33
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->offsetTime:J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_3a

    .line 172
    const-wide/16 v4, 0x0

    goto :goto_17

    .line 179
    :catch_3a
    move-exception v2

    .line 180
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    new-instance v6, Lcom/sec/dsm/system/osp/ServerTimeException;

    const-string v7, "Can\'t set the Sever Time."

    invoke-direct {v6, v7, v2}, Lcom/sec/dsm/system/osp/ServerTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public getServerTime()J
    .registers 15

    .prologue
    .line 66
    const-wide/16 v6, 0x0

    .line 67
    .local v6, ret:J
    const-wide/16 v8, 0x0

    .line 68
    .local v8, settingTime:J
    const-wide/16 v2, 0x0

    .line 69
    .local v2, deviceTime:J
    const-wide/16 v0, 0x0

    .line 72
    .local v0, dayTime:J
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 73
    const-wide/32 v0, 0x15180

    .line 75
    new-instance v5, Lcom/sec/dsm/system/osp/PropertyManager;

    iget-object v10, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/dsm/system/osp/PropertyManager;-><init>(Landroid/content/Context;)V

    .line 77
    .local v5, propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    const-string v10, "ServerTime.settingTime"

    const-string v11, "0"

    invoke-virtual {v5, v10, v11}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 79
    const-string v10, "ServerTime.offsetTime"

    const-string v11, "0"

    invoke-virtual {v5, v10, v11}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->offsetTime:J

    .line 82
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_48

    add-long v10, v8, v0

    cmp-long v10, v10, v2

    if-gez v10, :cond_4b

    .line 83
    :cond_48
    invoke-direct {p0}, Lcom/sec/dsm/system/osp/ServerTimeManager;->requestServerTime()V

    .line 86
    :cond_4b
    iget-wide v10, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->offsetTime:J
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_50

    add-long v6, v10, v2

    .line 91
    .end local v5           #propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    :goto_4f
    return-wide v6

    .line 87
    :catch_50
    move-exception v4

    .line 88
    .local v4, e:Ljava/lang/Exception;
    move-wide v6, v2

    goto :goto_4f
.end method

.method public resetServerTime()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/ServerTimeException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v1, Lcom/sec/dsm/system/osp/PropertyManager;

    iget-object v2, p0, Lcom/sec/dsm/system/osp/ServerTimeManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/dsm/system/osp/PropertyManager;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    const-string v2, "ServerTime.settingTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/dsm/system/osp/PropertyManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "ServerTime.offsetTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/dsm/system/osp/PropertyManager;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 107
    return-void

    .line 103
    .end local v1           #propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    :catch_1c
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    new-instance v2, Lcom/sec/dsm/system/osp/ServerTimeException;

    const-string v3, "Can\'t set the Sever Time."

    invoke-direct {v2, v3, v0}, Lcom/sec/dsm/system/osp/ServerTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
