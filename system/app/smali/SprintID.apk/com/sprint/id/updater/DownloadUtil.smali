.class public Lcom/sprint/id/updater/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x7530

.field public static final DEFAULT_MAX_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_RETRY_INTERVAL:J = 0x5265c00L

.field public static final INTERVAL_24_HOURS:J = 0x5265c00L

.field public static final KEY_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final KEY_MAX_RETRY_COUNT:Ljava/lang/String; = "max_retry_count"

.field public static final KEY_RETRY_INTERVAL:Ljava/lang/String; = "retry_interval"

.field public static final KEY_UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field public static final NETWORK_POLL_INTERVAL:I = 0x3e8

.field public static final NETWORK_WAIT_TIMEOUT:I = 0x61a8

.field public static final RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat; = null

.field public static final SOCKET_READ_TIMEOUT:I = 0x7530

.field public static TAG:Ljava/lang/String;

.field private static log:Lcom/sprint/id/logger/Logger;

.field private static sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 30
    const-class v0, Lcom/sprint/id/updater/DownloadUtil;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    .line 48
    const-string v0, "SprintUpdater"

    sput-object v0, Lcom/sprint/id/updater/DownloadUtil;->TAG:Ljava/lang/String;

    .line 143
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    .line 144
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 145
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm:ss Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 146
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 147
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy HH:mm Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 148
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm:ss a z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 149
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm:ss a Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 150
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm a z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 151
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, d MMM yyyy hh:mm a Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 152
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM yyyy HH:mm z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 153
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM yyyy HH:mm:ss z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 142
    sput-object v0, Lcom/sprint/id/updater/DownloadUtil;->RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForUpdate(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/id/updater/Response;
    .registers 19
    .parameter "context"
    .parameter "altUrl"

    .prologue
    .line 51
    move-object/from16 v16, p1

    .line 53
    .local v16, url:Ljava/lang/String;
    if-nez p1, :cond_52

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/sprint/id/updater/DownloadUtil;->getHttpClient(Landroid/content/Context;Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v9

    .line 54
    .local v9, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-object v1, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 56
    :try_start_21
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 57
    .local v12, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v9, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 58
    .local v14, resp:Lorg/apache/http/HttpResponse;
    const/16 v1, 0xc8

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-eq v1, v2, :cond_54

    .line 59
    sget-object v1, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server says: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 77
    const/4 v13, 0x0

    .line 82
    .end local v12           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    :goto_51
    return-object v13

    .line 53
    .end local v9           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_52
    const/4 v1, 0x0

    goto :goto_5

    .line 61
    .restart local v9       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #resp:Lorg/apache/http/HttpResponse;
    :cond_54
    sget-object v1, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server says: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 62
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 63
    .local v10, content:Ljava/io/InputStream;
    const/16 v1, 0x1000

    new-array v7, v1, [B

    .line 65
    .local v7, buffer:[B
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v15, sb:Ljava/lang/StringBuilder;
    :goto_7d
    const/4 v1, -0x1

    invoke-virtual {v10, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, c:I
    if-ne v1, v8, :cond_aa

    .line 69
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/id/updater/DownloadUtil;->parseJsonResponse(Ljava/lang/String;)Lcom/sprint/id/updater/Response;

    move-result-object v13

    .line 73
    .local v13, r:Lcom/sprint/id/updater/Response;
    iget v1, v13, Lcom/sprint/id/updater/Response;->ttl:I

    int-to-long v2, v1

    iget v1, v13, Lcom/sprint/id/updater/Response;->retryInterval:I

    int-to-long v4, v1

    iget v6, v13, Lcom/sprint/id/updater/Response;->maxRetryCount:I

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sprint/id/updater/DownloadUtil;->handleIntervalChanges(Landroid/content/Context;JJI)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_99} :catch_9a

    goto :goto_51

    .line 78
    .end local v7           #buffer:[B
    .end local v8           #c:I
    .end local v10           #content:Ljava/io/InputStream;
    .end local v12           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #r:Lcom/sprint/id/updater/Response;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :catch_9a
    move-exception v11

    .line 79
    .local v11, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    new-instance v13, Lcom/sprint/id/updater/Response;

    invoke-direct {v13}, Lcom/sprint/id/updater/Response;-><init>()V

    .line 81
    .restart local v13       #r:Lcom/sprint/id/updater/Response;
    iput-object v11, v13, Lcom/sprint/id/updater/Response;->error:Ljava/lang/Throwable;

    goto :goto_51

    .line 67
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #r:Lcom/sprint/id/updater/Response;
    .restart local v7       #buffer:[B
    .restart local v8       #c:I
    .restart local v10       #content:Ljava/io/InputStream;
    .restart local v12       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    :cond_aa
    :try_start_aa
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_9a

    goto :goto_7d
.end method

.method public static getHttpClient(Landroid/content/Context;Z)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 6
    .parameter "context"
    .parameter "sharedMode"

    .prologue
    const/16 v3, 0x7530

    .line 159
    if-nez p1, :cond_19

    .line 160
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 161
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v0, Lorg/apache/http/params/HttpConnectionParamBean;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/params/HttpConnectionParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 162
    .local v0, bean:Lorg/apache/http/params/HttpConnectionParamBean;
    invoke-virtual {v0, v3}, Lorg/apache/http/params/HttpConnectionParamBean;->setSoTimeout(I)V

    .line 163
    invoke-virtual {v0, v3}, Lorg/apache/http/params/HttpConnectionParamBean;->setConnectionTimeout(I)V

    .line 174
    .end local v0           #bean:Lorg/apache/http/params/HttpConnectionParamBean;
    .end local v1           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_18
    return-object v1

    .line 166
    :cond_19
    const-class v3, Lcom/sprint/id/updater/DownloadUtil;

    monitor-enter v3

    .line 167
    :try_start_1c
    sget-object v2, Lcom/sprint/id/updater/DownloadUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v2, :cond_3c

    .line 168
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v2, Lcom/sprint/id/updater/DownloadUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 169
    new-instance v0, Lorg/apache/http/params/HttpConnectionParamBean;

    sget-object v2, Lcom/sprint/id/updater/DownloadUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/params/HttpConnectionParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 170
    .restart local v0       #bean:Lorg/apache/http/params/HttpConnectionParamBean;
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Lorg/apache/http/params/HttpConnectionParamBean;->setSoTimeout(I)V

    .line 171
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Lorg/apache/http/params/HttpConnectionParamBean;->setConnectionTimeout(I)V

    .line 166
    .end local v0           #bean:Lorg/apache/http/params/HttpConnectionParamBean;
    :cond_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_40

    .line 174
    sget-object v1, Lcom/sprint/id/updater/DownloadUtil;->sHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_18

    .line 166
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method protected static handleIntervalChanges(Landroid/content/Context;JJI)V
    .registers 21
    .parameter "context"
    .parameter "newTtl"
    .parameter "newRetryInterval"
    .parameter "newMaxRetryCount"

    .prologue
    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 106
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v11, "update_interval"

    const-wide/32 v12, 0x5265c00

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 107
    .local v1, interval:J
    const-wide/16 v11, 0x3c

    mul-long v11, v11, p1

    const-wide/16 v13, 0x3e8

    mul-long v4, v11, v13

    .line 108
    .local v4, newInterval:J
    cmp-long v11, v1, v4

    if-eqz v11, :cond_26

    .line 109
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 110
    const-string v12, "update_interval"

    invoke-interface {v11, v12, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 111
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    :cond_26
    const-string v11, "retry_interval"

    const-wide/32 v12, 0x5265c00

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 114
    .local v8, oldRetryInterval:J
    const-wide/16 v11, 0x3c

    mul-long v11, v11, p3

    const-wide/16 v13, 0x3e8

    mul-long v6, v11, v13

    .line 115
    .local v6, newRetryIntervalMillis:J
    cmp-long v11, v8, v6

    if-eqz v11, :cond_48

    .line 116
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 117
    const-string v12, "retry_interval"

    invoke-interface {v11, v12, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 118
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    :cond_48
    const-string v11, "max_retry_count"

    const/4 v12, 0x3

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 122
    .local v3, maxRetryCount:I
    if-ltz p5, :cond_64

    move/from16 v0, p5

    if-eq v0, v3, :cond_64

    .line 123
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 124
    const-string v12, "max_retry_count"

    move/from16 v0, p5

    invoke-interface {v11, v12, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 125
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_64
    return-void
.end method

.method public static parseInternetDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "dateString"

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, date:Ljava/util/Date;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v2, Lcom/sprint/id/updater/DownloadUtil;->RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v2, v2

    if-lt v1, v2, :cond_8

    .line 139
    :goto_7
    return-object v0

    .line 133
    :cond_8
    :try_start_8
    sget-object v2, Lcom/sprint/id/updater/DownloadUtil;->RFC_822_DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    .line 135
    :catch_11
    move-exception v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected static parseJsonResponse(Ljava/lang/String;)Lcom/sprint/id/updater/Response;
    .registers 10
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a0

    .line 87
    new-instance v6, Lcom/sprint/id/updater/Response;

    invoke-direct {v6}, Lcom/sprint/id/updater/Response;-><init>()V

    .line 88
    .local v6, response:Lcom/sprint/id/updater/Response;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, json:Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 90
    .local v5, resp:Lorg/json/JSONObject;
    const-string v7, "ttl"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/sprint/id/updater/Response;->ttl:I

    .line 91
    const-string v7, "retryInterval"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/sprint/id/updater/Response;->retryInterval:I

    .line 92
    const-string v7, "maxRetryCount"

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/sprint/id/updater/Response;->maxRetryCount:I

    .line 93
    const-string v7, "entries"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 94
    .local v0, entries:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/id/updater/Entry;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_37
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_40

    .line 99
    iput-object v4, v6, Lcom/sprint/id/updater/Response;->entries:Ljava/util/List;

    .line 100
    return-object v6

    .line 96
    :cond_40
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    .local v1, entry:Lorg/json/JSONObject;
    new-instance v7, Lcom/sprint/id/updater/Entry;

    invoke-direct {v7, v1}, Lcom/sprint/id/updater/Entry;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method protected static waitForNetwork(Landroid/content/Context;IIZ)Z
    .registers 11
    .parameter "context"
    .parameter "maxWait"
    .parameter "pollInterval"
    .parameter "wifiOk"

    .prologue
    .line 182
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_27

    .line 184
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-lt v2, p1, :cond_29

    .line 206
    sget-object v4, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Network not available after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 208
    .end local v2           #i:I
    :cond_27
    const/4 v4, 0x0

    :goto_28
    return v4

    .line 185
    .restart local v2       #i:I
    :cond_29
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 186
    .local v3, info:Landroid/net/NetworkInfo;
    if-nez v3, :cond_43

    .line 187
    sget-object v4, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "NetworkInfo is null"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 199
    :goto_36
    sget-object v4, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network is not available"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 201
    int-to-long v4, p2

    :try_start_3e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_7b

    .line 184
    :goto_41
    add-int/2addr v2, p2

    goto :goto_b

    .line 188
    :cond_43
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 189
    if-nez p3, :cond_59

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_59

    .line 190
    sget-object v4, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network type is not MOBILE"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_36

    .line 192
    :cond_59
    sget-object v4, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Network is available"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 193
    const/4 v4, 0x1

    goto :goto_28

    .line 196
    :cond_62
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 197
    .local v1, ds:Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Lcom/sprint/id/updater/DownloadUtil;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Network state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_36

    .line 202
    .end local v1           #ds:Landroid/net/NetworkInfo$DetailedState;
    :catch_7b
    move-exception v4

    goto :goto_41
.end method

.method public static waitForNetwork(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "wifiOk"

    .prologue
    .line 178
    const/16 v0, 0x61a8

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lcom/sprint/id/updater/DownloadUtil;->waitForNetwork(Landroid/content/Context;IIZ)Z

    move-result v0

    return v0
.end method
