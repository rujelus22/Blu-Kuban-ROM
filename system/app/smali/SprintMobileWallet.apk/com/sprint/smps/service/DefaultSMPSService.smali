.class public Lcom/sprint/smps/service/DefaultSMPSService;
.super Ljava/lang/Object;
.source "DefaultSMPSService.java"

# interfaces
.implements Lcom/sprint/smps/service/SMPSService;


# static fields
.field private static final COLON:Ljava/lang/String; = ":"

.field private static final CONTEXT:Ljava/lang/String; = "context"

.field private static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final EQUALS:Ljava/lang/String; = "="

.field private static final LINE_BREAK:Ljava/lang/String; = "\n"

.field private static final MOBILE_NUMBER:Ljava/lang/String; = "mobileNumber"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final REQUEST_ID:Ljava/lang/String; = "requestID"

.field private static final TAG:Ljava/lang/String; = null

.field private static final UNABLE_TO_FORMAT_DATA:Ljava/lang/String; = "Error formatting data."

.field private static final UNABLE_TO_PROCESS_REQUEST:Ljava/lang/String; = "Error received from server, unable to process request."

.field private static final VERSION_NUMBER:Ljava/lang/String; = "versionNumber"

.field private static final ZERO:Ljava/lang/String; = "0"

.field private static client:Lorg/apache/http/client/HttpClient;

.field private static defaultClient:Lorg/apache/http/client/HttpClient;

.field private static httpsClient:Lorg/apache/http/client/HttpClient;

.field private static final requestID:Ljava/lang/String;


# instance fields
.field private context:Ljava/lang/String;

.field private mobileNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-class v0, Lcom/sprint/smps/service/DefaultSMPSService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/service/DefaultSMPSService;->TAG:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    .line 67
    sput-object v2, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;

    .line 68
    sput-object v2, Lcom/sprint/smps/service/DefaultSMPSService;->httpsClient:Lorg/apache/http/client/HttpClient;

    .line 69
    sput-object v2, Lcom/sprint/smps/service/DefaultSMPSService;->defaultClient:Lorg/apache/http/client/HttpClient;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static final convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .parameter "is"

    .prologue
    .line 1154
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1155
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1157
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1160
    .local v1, line:Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_28

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1171
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_3b

    .line 1176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1162
    :cond_1e
    :try_start_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_10

    .line 1165
    :catch_28
    move-exception v0

    .line 1167
    .local v0, e:Ljava/io/IOException;
    :try_start_29
    new-instance v4, Lcom/sprint/smps/service/LogRuntimeException;

    invoke-direct {v4, v0}, Lcom/sprint/smps/service/LogRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    .line 1170
    .end local v0           #e:Ljava/io/IOException;
    :catchall_2f
    move-exception v4

    .line 1171
    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 1174
    throw v4

    .line 1171
    :catch_34
    move-exception v0

    .line 1172
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v4, Lcom/sprint/smps/service/LogRuntimeException;

    invoke-direct {v4, v0}, Lcom/sprint/smps/service/LogRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1171
    .end local v0           #e:Ljava/io/IOException;
    :catch_3b
    move-exception v0

    .line 1172
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v4, Lcom/sprint/smps/service/LogRuntimeException;

    invoke-direct {v4, v0}, Lcom/sprint/smps/service/LogRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static genMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "mobileNumber"
    .parameter "password"
    .parameter "requestId"
    .parameter "cak"

    .prologue
    .line 1181
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1182
    .local v4, now:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1184
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0xc8

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1185
    .local v6, sb:Ljava/lang/StringBuffer;
    const-string v7, "mobileNumber"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz p0, :cond_8b

    .end local p0
    :goto_1d
    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "password"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz p1, :cond_8e

    .end local p1
    :goto_34
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1187
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "requestID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz p2, :cond_91

    .end local p2
    :goto_4b
    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    const-string v7, ":ts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v4, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    :try_start_5d
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_62
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5d .. :try_end_62} :catch_94

    move-result-object v1

    .line 1200
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 1201
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1203
    .local v3, messageDigest:[B
    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1204
    .local v5, number:Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, authStr:Ljava/lang/String;
    :goto_7e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_9b

    .line 1209
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1185
    .end local v0           #authStr:Ljava/lang/String;
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #messageDigest:[B
    .end local v5           #number:Ljava/math/BigInteger;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_8b
    const-string p0, ""

    goto :goto_1d

    .line 1186
    .end local p0
    :cond_8e
    const-string p1, ""

    goto :goto_34

    .line 1187
    .end local p1
    :cond_91
    const-string p2, ""

    goto :goto_4b

    .line 1195
    .end local p2
    :catch_94
    move-exception v2

    .line 1197
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Lcom/sprint/smps/service/LogRuntimeException;

    invoke-direct {v7, v2}, Lcom/sprint/smps/service/LogRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1207
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #authStr:Ljava/lang/String;
    .restart local v1       #digest:Ljava/security/MessageDigest;
    .restart local v3       #messageDigest:[B
    .restart local v5       #number:Ljava/math/BigInteger;
    :cond_9b
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e
.end method

.method private getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 5
    .parameter "errorNo"
    .parameter "errorMsg"

    .prologue
    .line 937
    new-instance v0, Lcom/sprint/smps/service/ClientResponse;

    invoke-direct {v0}, Lcom/sprint/smps/service/ClientResponse;-><init>()V

    .line 938
    .local v0, response:Lcom/sprint/smps/service/ClientResponse;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/service/ClientResponse;->setErrorNo(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/service/ClientResponse;->setStatus(Ljava/lang/String;)V

    .line 940
    const-string v1, "Error received from server, unable to process request."

    invoke-virtual {v0, v1}, Lcom/sprint/smps/service/ClientResponse;->setErrorDesc(Ljava/lang/String;)V

    .line 942
    return-object v0
.end method

.method private getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1110
    const/4 v1, 0x0

    .line 1112
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1113
    .local v3, supportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1114
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    new-instance v6, Lcom/sprint/smps/service/AllCertSSLSocketFactory;

    invoke-direct {v6}, Lcom/sprint/smps/service/AllCertSSLSocketFactory;-><init>()V

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1117
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1118
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1119
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1120
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 1123
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1124
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v1           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1126
    .restart local v1       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v1
.end method

.method private processRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 25
    .parameter "md5Hash"
    .parameter "operationName"
    .parameter "lstRequestData"
    .parameter "append"
    .parameter "preappend"
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/smps/service/LogRuntimeException;
        }
    .end annotation

    .prologue
    .line 1008
    const/4 v10, 0x0

    .line 1009
    .local v10, result:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1010
    .local v6, httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    .line 1013
    :try_start_5
    sget-boolean v13, Lcom/sprint/smps/properties/Properties;->useTls:Z

    if-eqz v13, :cond_101

    if-eqz p5, :cond_15

    const-string v13, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_101

    .line 1015
    :cond_15
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->httpsClient:Lorg/apache/http/client/HttpClient;

    if-nez v13, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/sprint/smps/service/DefaultSMPSService;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    sput-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->httpsClient:Lorg/apache/http/client/HttpClient;

    .line 1016
    :cond_1f
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->httpsClient:Lorg/apache/http/client/HttpClient;

    sput-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;

    .line 1024
    :goto_23
    const/4 v12, 0x0

    .line 1025
    .local v12, urlString:Ljava/lang/String;
    if-nez p5, :cond_2a

    sget-boolean v13, Lcom/sprint/smps/properties/Properties;->useTls:Z

    if-nez v13, :cond_123

    .line 1026
    :cond_2a
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/sprint/smps/properties/Properties;->SMPS_2ID_REST_URL:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1030
    :goto_3f
    if-eqz p4, :cond_54

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1031
    :cond_54
    if-eqz p5, :cond_6b

    sget-boolean v13, Lcom/sprint/smps/properties/Properties;->useTls:Z

    if-eqz v13, :cond_6b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1034
    :cond_6b
    if-eqz p6, :cond_13a

    .line 1035
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .end local v6           #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v7, httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v7

    .line 1048
    .end local v7           #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_73
    const-string v13, "X-Cardinal-Identifier"

    sget-object v14, Lcom/sprint/smps/properties/Properties;->encryptedNai:Ljava/lang/String;

    invoke-interface {v6, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v13, "Content-Type"

    const-string v14, "application/json"

    invoke-interface {v6, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v13, "Accept"

    const-string v14, "application/json"

    invoke-interface {v6, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    if-eqz p5, :cond_c1

    sget-object v13, Lcom/sprint/smps/properties/Properties;->nai:Ljava/lang/String;

    if-eqz v13, :cond_c1

    .line 1056
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/sprint/smps/properties/Properties;->nai:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ":pcs"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Lcom/sprint/smps/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 1057
    .local v2, encodedString:Ljava/lang/String;
    if-eqz v2, :cond_c1

    .line 1058
    const-string v13, "Proxy-Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Basic "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .end local v2           #encodedString:Ljava/lang/String;
    :cond_c1
    if-eqz p6, :cond_d3

    .line 1066
    move-object v0, v6

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v13, v0

    new-instance v14, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1068
    :cond_d3
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1070
    .local v9, response:Lorg/apache/http/HttpResponse;
    const-string v5, ""

    .line 1071
    .local v5, hdrs:Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v14

    array-length v15, v14

    const/4 v13, 0x0

    :goto_e1
    if-lt v13, v15, :cond_142

    .line 1075
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 1076
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 1079
    .local v8, respStream:Ljava/io/InputStream;
    invoke-static {v8}, Lcom/sprint/smps/service/DefaultSMPSService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_f2
    .catchall {:try_start_5 .. :try_end_f2} :catchall_17f
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_f2} :catch_112
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f2} :catch_171

    move-result-object v11

    .line 1084
    .local v11, strResponse:Ljava/lang/String;
    move-object v10, v11

    .line 1101
    const/4 v13, 0x0

    sput-boolean v13, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    .line 1102
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1105
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #hdrs:Ljava/lang/String;
    .end local v8           #respStream:Ljava/io/InputStream;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #strResponse:Ljava/lang/String;
    .end local v12           #urlString:Ljava/lang/String;
    :goto_100
    return-object v10

    .line 1020
    :cond_101
    :try_start_101
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->defaultClient:Lorg/apache/http/client/HttpClient;

    if-nez v13, :cond_10c

    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->defaultClient:Lorg/apache/http/client/HttpClient;

    .line 1021
    :cond_10c
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->defaultClient:Lorg/apache/http/client/HttpClient;

    sput-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_17f
    .catch Ljava/net/UnknownHostException; {:try_start_101 .. :try_end_110} :catch_112
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_110} :catch_171

    goto/16 :goto_23

    .line 1086
    :catch_112
    move-exception v1

    .line 1088
    .local v1, e:Ljava/net/UnknownHostException;
    const/4 v13, 0x0

    :try_start_114
    sput-boolean v13, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z
    :try_end_116
    .catchall {:try_start_114 .. :try_end_116} :catchall_17f

    .line 1101
    const/4 v13, 0x0

    sput-boolean v13, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    .line 1102
    sget-object v13, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    goto :goto_100

    .line 1028
    .end local v1           #e:Ljava/net/UnknownHostException;
    .restart local v12       #urlString:Ljava/lang/String;
    :cond_123
    :try_start_123
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/sprint/smps/properties/Properties;->SMPS_2ID_REST_TLS_URL:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3f

    .line 1037
    :cond_13a
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local v6           #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v7       #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v7

    .end local v7           #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #httpUriReq:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_73

    .line 1071
    .restart local v5       #hdrs:Ljava/lang/String;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    :cond_142
    aget-object v4, v14, v13

    .local v4, h:Lorg/apache/http/Header;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16c
    .catchall {:try_start_123 .. :try_end_16c} :catchall_17f
    .catch Ljava/net/UnknownHostException; {:try_start_123 .. :try_end_16c} :catch_112
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_16c} :catch_171

    move-result-object v5

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e1

    .line 1092
    .end local v4           #h:Lorg/apache/http/Header;
    .end local v5           #hdrs:Ljava/lang/String;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #urlString:Ljava/lang/String;
    :catch_171
    move-exception v1

    .line 1094
    .local v1, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    :try_start_173
    sput-boolean v13, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    .line 1096
    new-instance v13, Lcom/sprint/smps/service/LogRuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sprint/smps/service/LogRuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_17f
    .catchall {:try_start_173 .. :try_end_17f} :catchall_17f

    .line 1099
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_17f
    move-exception v13

    .line 1101
    const/4 v14, 0x0

    sput-boolean v14, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    .line 1102
    sget-object v14, Lcom/sprint/smps/service/DefaultSMPSService;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v14}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1103
    throw v13
.end method

.method private sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 5
    .parameter "requestID"
    .parameter "request"
    .parameter "op"

    .prologue
    .line 947
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 12
    .parameter "requestID"
    .parameter "request"
    .parameter "op"
    .parameter "responseOp"

    .prologue
    .line 952
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;
    .registers 19
    .parameter "requestID"
    .parameter "request"
    .parameter "op"
    .parameter "responseOp"
    .parameter "append"
    .parameter "preappend"
    .parameter "post"

    .prologue
    .line 982
    const/4 v8, 0x0

    .line 987
    .local v8, response:Lcom/sprint/smps/service/ClientResponse;
    :try_start_1
    iget-object v0, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Lcom/sprint/smps/service/DefaultSMPSService;->genMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, authStr:Ljava/lang/String;
    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 988
    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->processRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 990
    .local v9, strResponse:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 991
    .local v7, out:Lorg/json/JSONObject;
    new-instance v8, Lcom/sprint/smps/service/ClientResponse;

    .end local v8           #response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Result"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v7}, Lcom/sprint/smps/service/ClientResponse;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_34

    .line 1002
    .end local v1           #authStr:Ljava/lang/String;
    .end local v7           #out:Lorg/json/JSONObject;
    .end local v9           #strResponse:Ljava/lang/String;
    .restart local v8       #response:Lcom/sprint/smps/service/ClientResponse;
    :goto_33
    return-object v8

    .line 993
    .end local v8           #response:Lcom/sprint/smps/service/ClientResponse;
    :catch_34
    move-exception v10

    .line 995
    .local v10, t:Ljava/lang/Throwable;
    new-instance v8, Lcom/sprint/smps/service/ClientResponse;

    invoke-direct {v8}, Lcom/sprint/smps/service/ClientResponse;-><init>()V

    .line 996
    .restart local v8       #response:Lcom/sprint/smps/service/ClientResponse;
    const-string v0, "-1"

    invoke-virtual {v8, v0}, Lcom/sprint/smps/service/ClientResponse;->setErrorNo(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sprint/smps/service/ClientResponse;->setStatus(Ljava/lang/String;)V

    .line 998
    const-string v0, "Error received from server, unable to process request."

    invoke-virtual {v8, v0}, Lcom/sprint/smps/service/ClientResponse;->setErrorDesc(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;
    .registers 18
    .parameter "requestID"
    .parameter "request"
    .parameter "op"
    .parameter "responseOp"
    .parameter "append"
    .parameter "post"

    .prologue
    .line 957
    const/4 v8, 0x0

    .line 962
    .local v8, response:Lcom/sprint/smps/service/ClientResponse;
    :try_start_1
    iget-object v0, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Lcom/sprint/smps/service/DefaultSMPSService;->genMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, authStr:Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v4, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->processRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 965
    .local v9, strResponse:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 966
    .local v7, out:Lorg/json/JSONObject;
    new-instance v8, Lcom/sprint/smps/service/ClientResponse;

    .end local v8           #response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Result"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v7}, Lcom/sprint/smps/service/ClientResponse;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_33

    .line 977
    .end local v1           #authStr:Ljava/lang/String;
    .end local v7           #out:Lorg/json/JSONObject;
    .end local v9           #strResponse:Ljava/lang/String;
    .restart local v8       #response:Lcom/sprint/smps/service/ClientResponse;
    :goto_32
    return-object v8

    .line 968
    .end local v8           #response:Lcom/sprint/smps/service/ClientResponse;
    :catch_33
    move-exception v10

    .line 970
    .local v10, t:Ljava/lang/Throwable;
    new-instance v8, Lcom/sprint/smps/service/ClientResponse;

    invoke-direct {v8}, Lcom/sprint/smps/service/ClientResponse;-><init>()V

    .line 971
    .restart local v8       #response:Lcom/sprint/smps/service/ClientResponse;
    const-string v0, "-1"

    invoke-virtual {v8, v0}, Lcom/sprint/smps/service/ClientResponse;->setErrorNo(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sprint/smps/service/ClientResponse;->setStatus(Ljava/lang/String;)V

    .line 973
    const-string v0, "Error received from server, unable to process request."

    invoke-virtual {v8, v0}, Lcom/sprint/smps/service/ClientResponse;->setErrorDesc(Ljava/lang/String;)V

    goto :goto_32
.end method

.method private final toHttpPostString(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10
    .parameter "poster"
    .parameter "httpBody"

    .prologue
    .line 1131
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1133
    .local v2, out:Ljava/lang/StringBuffer;
    const-string v3, "HTTP URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1134
    const-string v3, "HTTP Method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1136
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 1137
    .local v1, headers:[Lorg/apache/http/Header;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_31
    if-lt v3, v4, :cond_47

    .line 1141
    const-string v3, "HTTP Body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1143
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1137
    :cond_47
    aget-object v0, v1, v3

    .line 1139
    .local v0, header:Lorg/apache/http/Header;
    const-string v5, "HTTP Header: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    add-int/lit8 v3, v3, 0x1

    goto :goto_31
.end method


# virtual methods
.method public addAlternativePayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 11
    .parameter "paymentType"
    .parameter "accountNickname"
    .parameter "apUserIdentifier"

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    const-string v5, "requestID"

    sget-object v6, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 86
    const-string v5, "mobileNumber"

    iget-object v6, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 87
    const-string v5, "paymentType"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 88
    const-string v5, "accountNickname"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    const-string v5, "apUserIdentifier"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "AddAlternativePayment"

    .line 92
    .local v1, op:Ljava/lang/String;
    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_36} :catch_38

    move-result-object v3

    .line 99
    .end local v1           #op:Ljava/lang/String;
    :goto_37
    return-object v3

    .line 94
    :catch_38
    move-exception v0

    .line 96
    .local v0, e:Lorg/json/JSONException;
    const/16 v4, -0x10

    const-string v5, "Error formatting data."

    invoke-direct {p0, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    goto :goto_37
.end method

.method public addNewAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 13
    .parameter "firstName"
    .parameter "lastName"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zip"

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    const-string v4, "lastName"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 118
    const-string v4, "firstName"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    const-string v4, "zip"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    const-string v4, "state"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 121
    const-string v4, "city"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 122
    const-string v4, "mobilenumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 123
    const-string v4, "street1"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "AddNewAddress"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_48} :catch_4a

    move-result-object v2

    .line 132
    :goto_49
    return-object v2

    .line 127
    :catch_4a
    move-exception v0

    .line 129
    .local v0, e:Lorg/json/JSONException;
    const/4 v3, -0x2

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_49
.end method

.method public addUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 20
    .parameter "ccNo"
    .parameter "cvvNumber"
    .parameter "nameonCard"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zip"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "accountNickname"

    .prologue
    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v3, request:Lorg/json/JSONObject;
    :try_start_6
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 149
    .local v5, security:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v1, credentials:Lorg/json/JSONObject;
    const-string v6, "Key"

    const-string v7, "cvv"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Value"

    invoke-virtual {v6, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    const-string v6, "context"

    iget-object v7, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 153
    const-string v7, "requestID"

    sget-object v8, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 154
    const-string v7, "zip"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 155
    const-string v7, "state"

    invoke-virtual {v6, v7, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 156
    const-string v7, "ccNo"

    invoke-virtual {v6, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    const-string v7, "securityInfo"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 158
    const-string v7, "expMonth"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 159
    const-string v7, "expYear"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 160
    const-string v7, "nameonCard"

    invoke-virtual {v6, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 161
    const-string v7, "accountNickname"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 162
    const-string v7, "city"

    invoke-virtual {v6, v7, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 163
    const-string v7, "mobileNumber"

    iget-object v8, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 164
    const-string v7, "street1"

    invoke-virtual {v6, v7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    sget-object v6, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v7, "AddSMPSUserPayment"

    invoke-direct {p0, v6, v3, v7}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_82} :catch_84

    move-result-object v4

    .line 174
    .end local v1           #credentials:Lorg/json/JSONObject;
    .end local v5           #security:Lorg/json/JSONArray;
    :goto_83
    return-object v4

    .line 169
    :catch_84
    move-exception v2

    .line 171
    .local v2, e:Lorg/json/JSONException;
    const/4 v6, -0x3

    const-string v7, "Error formatting data."

    invoke-direct {p0, v6, v7}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v4

    goto :goto_83
.end method

.method public authenticateUserClientWallet(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 13
    .parameter "mobileNumber"
    .parameter "password"

    .prologue
    .line 184
    const/4 v9, 0x0

    .line 185
    .local v9, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v0, "requestID"

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 189
    const-string v1, "preLoginContext"

    sget-object v4, Lcom/sprint/smps/properties/Properties;->isUserRegisteredContext:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    const-string v1, "mobileNumber"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v3, "AuthenticateSMPSUserClientWallet"

    .line 194
    .local v3, op:Ljava/lang/String;
    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v9

    .line 196
    invoke-virtual {v9}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 198
    invoke-virtual {v9}, Lcom/sprint/smps/service/ClientResponse;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_42} :catch_43

    .line 207
    .end local v3           #op:Ljava/lang/String;
    :cond_42
    :goto_42
    return-object v9

    .line 202
    :catch_43
    move-exception v8

    .line 204
    .local v8, e:Lorg/json/JSONException;
    const/4 v0, -0x4

    const-string v1, "Error formatting data."

    invoke-direct {p0, v0, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v9

    goto :goto_42
.end method

.method public changePIN(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 9
    .parameter "newPIN"
    .parameter "oldPIN"

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 220
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 221
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 222
    const-string v4, "newPIN"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 223
    const-string v4, "oldPIN"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 224
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "ChangePin"

    const-string v5, "changePIN"

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_32} :catch_34

    move-result-object v2

    .line 233
    :goto_33
    return-object v2

    .line 228
    :catch_34
    move-exception v0

    .line 230
    .local v0, e:Lorg/json/JSONException;
    const/4 v3, -0x5

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_33
.end method

.method public completeAlternativePaymentAdd(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 8
    .parameter "apPayloadRes"

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 244
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 245
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 246
    const-string v4, "apPayloadRes"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "CompleteAlternativePaymentAdd"

    const-string v5, "completeAlternativePaymentAdd"

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2c} :catch_2e

    move-result-object v2

    .line 255
    :goto_2d
    return-object v2

    .line 250
    :catch_2e
    move-exception v0

    .line 252
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0x11

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_2d
.end method

.method public createSecurityQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;
    .registers 14
    .parameter "mdn"
    .parameter "txnPIN"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/smps/service/ClientResponse;"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, questionAnswers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 265
    .local v5, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 268
    .local v4, request:Lorg/json/JSONObject;
    :try_start_6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 269
    .local v6, secAnswers:Lorg/json/JSONArray;
    invoke-virtual {p3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 270
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_3f

    .line 278
    const-string v7, "requestID"

    sget-object v8, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 279
    const-string v8, "mobileNumber"

    invoke-virtual {v7, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 280
    const-string v8, "txnPIN"

    invoke-virtual {v7, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 281
    const-string v8, "context"

    iget-object v9, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 282
    const-string v8, "securityQuestionsAnswers"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    sget-object v7, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v8, "CreateSecurityQuestion"

    invoke-direct {p0, v7, v4, v8}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v5

    .line 291
    .end local v1           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6           #secAnswers:Lorg/json/JSONArray;
    :goto_3e
    return-object v5

    .line 272
    .restart local v1       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #secAnswers:Lorg/json/JSONArray;
    :cond_3f
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, questionId:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v2, questAnswer:Lorg/json/JSONObject;
    const-string v7, "Key"

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Value"

    invoke-virtual {p3, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_5c} :catch_5d

    goto :goto_f

    .line 286
    .end local v1           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #questAnswer:Lorg/json/JSONObject;
    .end local v3           #questionId:Ljava/lang/String;
    .end local v6           #secAnswers:Lorg/json/JSONArray;
    :catch_5d
    move-exception v0

    .line 288
    .local v0, e:Lorg/json/JSONException;
    const/4 v7, -0x6

    const-string v8, "Error formatting data."

    invoke-direct {p0, v7, v8}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v5

    goto :goto_3e
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;
    .registers 30
    .parameter "mobileNumber"
    .parameter "emailAddress"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "txnPIN"
    .parameter "ccNo"
    .parameter "cvvNumber"
    .parameter "nameonCard"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zip"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "accountNickname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sprint/smps/service/ClientResponse;"
        }
    .end annotation

    .prologue
    .line 304
    .local p16, questionAnswers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 305
    .local v7, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 308
    .local v6, request:Lorg/json/JSONObject;
    :try_start_6
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 309
    .local v9, security:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v1, credentials:Lorg/json/JSONObject;
    const-string v10, "Key"

    const-string v11, "cvv"

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Value"

    move-object/from16 v0, p7

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 314
    .local v8, secAnswers:Lorg/json/JSONArray;
    invoke-virtual/range {p16 .. p16}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 315
    .local v3, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_b1

    .line 323
    const-string v10, "lastName"

    move-object/from16 v0, p4

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 324
    const-string v11, "ccNo"

    move-object/from16 v0, p6

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 325
    const-string v11, "zip"

    move-object/from16 v0, p12

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 326
    const-string v11, "expMonth"

    move-object/from16 v0, p13

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 327
    const-string v11, "mobileNumber"

    invoke-virtual {v10, v11, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 328
    const-string v11, "securityInfo"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 329
    const-string v11, "txnPIN"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 330
    const-string v11, "city"

    move-object/from16 v0, p10

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 331
    const-string v11, "street1"

    move-object/from16 v0, p9

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 332
    const-string v11, "state"

    move-object/from16 v0, p11

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 333
    const-string v11, "emailAddress"

    invoke-virtual {v10, v11, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 334
    const-string v11, "nameonCard"

    move-object/from16 v0, p8

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 335
    const-string v11, "expYear"

    move-object/from16 v0, p14

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 336
    const-string v11, "firstName"

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 337
    const-string v11, "accountNickname"

    move-object/from16 v0, p15

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    .line 338
    const-string v11, "securityQuestionsAnswers"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    sget-object v10, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v11, "CreateSMPSUser"

    invoke-direct {p0, v10, v6, v11}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v7

    .line 347
    .end local v1           #credentials:Lorg/json/JSONObject;
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8           #secAnswers:Lorg/json/JSONArray;
    .end local v9           #security:Lorg/json/JSONArray;
    :goto_b0
    return-object v7

    .line 317
    .restart local v1       #credentials:Lorg/json/JSONObject;
    .restart local v3       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v8       #secAnswers:Lorg/json/JSONArray;
    .restart local v9       #security:Lorg/json/JSONArray;
    :cond_b1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 318
    .local v5, questionId:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 319
    .local v4, questAnswer:Lorg/json/JSONObject;
    const-string v10, "Key"

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Value"

    move-object/from16 v0, p16

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_d0} :catch_d2

    goto/16 :goto_2b

    .line 342
    .end local v1           #credentials:Lorg/json/JSONObject;
    .end local v3           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #questAnswer:Lorg/json/JSONObject;
    .end local v5           #questionId:Ljava/lang/String;
    .end local v8           #secAnswers:Lorg/json/JSONArray;
    .end local v9           #security:Lorg/json/JSONArray;
    :catch_d2
    move-exception v2

    .line 344
    .local v2, e:Lorg/json/JSONException;
    const/4 v10, -0x6

    const-string v11, "Error formatting data."

    invoke-direct {p0, v10, v11}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v7

    goto :goto_b0
.end method

.method public deleteAccount(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 9
    .parameter "mdn"

    .prologue
    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 360
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 361
    const-string v5, "mobileNumber"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 362
    const-string v5, "context"

    iget-object v6, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v1, "RemoveSMPSAccount"

    .line 365
    .local v1, op:Ljava/lang/String;
    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v1, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_22} :catch_24

    move-result-object v3

    .line 372
    .end local v1           #op:Ljava/lang/String;
    :goto_23
    return-object v3

    .line 367
    :catch_24
    move-exception v0

    .line 369
    .local v0, e:Lorg/json/JSONException;
    const/4 v4, -0x6

    const-string v5, "Error formatting data."

    invoke-direct {p0, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    goto :goto_23
.end method

.method public getDefaultAddress()Lcom/sprint/smps/service/ClientResponse;
    .registers 7

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 382
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 383
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 384
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetDefaultAddress"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v2

    .line 393
    :goto_25
    return-object v2

    .line 388
    :catch_26
    move-exception v0

    .line 390
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0x11

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_25
.end method

.method public getDefaultPayment()Lcom/sprint/smps/service/ClientResponse;
    .registers 7

    .prologue
    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 403
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 404
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 405
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetDefaultPayment"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v2

    .line 414
    :goto_25
    return-object v2

    .line 409
    :catch_26
    move-exception v0

    .line 411
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0x11

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_25
.end method

.method public getDocumentation()[B
    .registers 2

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFAQs(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 12
    .parameter "language"

    .prologue
    .line 433
    const/4 v9, 0x0

    .line 434
    .local v9, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 437
    .local v2, request:Lorg/json/JSONObject;
    move-object v8, p1

    .line 438
    .local v8, lang:Ljava/lang/String;
    if-nez p1, :cond_b

    .line 439
    :try_start_9
    const-string v8, "en-us"

    .line 441
    :cond_b
    const-string v0, "requestID"

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 442
    const-string v1, "language"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, append:Ljava/lang/String;
    const-string v3, "GetFAQ"

    .line 447
    .local v3, op:Ljava/lang/String;
    const/4 v6, 0x0

    .line 448
    .local v6, post:Z
    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3d} :catch_3f

    move-result-object v9

    .line 455
    .end local v3           #op:Ljava/lang/String;
    .end local v5           #append:Ljava/lang/String;
    .end local v6           #post:Z
    :goto_3e
    return-object v9

    .line 450
    :catch_3f
    move-exception v7

    .line 452
    .local v7, e:Lorg/json/JSONException;
    const/4 v0, -0x6

    const-string v1, "Error formatting data."

    invoke-direct {p0, v0, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v9

    goto :goto_3e
.end method

.method public getPaymentAccounts()Lcom/sprint/smps/service/ClientResponse;
    .registers 7

    .prologue
    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 467
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "requestID"

    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 468
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 469
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetSMPSUserPaymentAccounts"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v2

    .line 478
    :goto_25
    return-object v2

    .line 473
    :catch_26
    move-exception v0

    .line 475
    .local v0, e:Lorg/json/JSONException;
    const/4 v3, -0x7

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_25
.end method

.method public getSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 12
    .parameter "language"

    .prologue
    .line 487
    const/4 v9, 0x0

    .line 488
    .local v9, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 491
    .local v2, request:Lorg/json/JSONObject;
    move-object v8, p1

    .line 492
    .local v8, lang:Ljava/lang/String;
    if-nez p1, :cond_b

    .line 493
    :try_start_9
    const-string v8, "en-us"

    .line 495
    :cond_b
    const-string v0, "requestID"

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 496
    const-string v1, "language"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, append:Ljava/lang/String;
    const-string v3, "GetSecurityQuestions"

    .line 501
    .local v3, op:Ljava/lang/String;
    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3d} :catch_3f

    move-result-object v9

    .line 508
    .end local v3           #op:Ljava/lang/String;
    .end local v5           #append:Ljava/lang/String;
    :goto_3e
    return-object v9

    .line 503
    :catch_3f
    move-exception v7

    .line 505
    .local v7, e:Lorg/json/JSONException;
    const/4 v0, -0x6

    const-string v1, "Error formatting data."

    invoke-direct {p0, v0, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v9

    goto :goto_3e
.end method

.method public getSprintUserInfo(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 8
    .parameter "mdn"

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 522
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 523
    const-string v4, "strMDN"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetSprintUserInfo"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_22} :catch_24

    move-result-object v2

    .line 532
    :goto_23
    return-object v2

    .line 527
    :catch_24
    move-exception v0

    .line 529
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0xe

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_23
.end method

.method public getTermsAndConditions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 12
    .parameter "language"

    .prologue
    .line 541
    const/4 v9, 0x0

    .line 542
    .local v9, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v2, request:Lorg/json/JSONObject;
    move-object v8, p1

    .line 546
    .local v8, lang:Ljava/lang/String;
    if-nez p1, :cond_b

    .line 547
    :try_start_9
    const-string v8, "en-us"

    .line 549
    :cond_b
    const-string v0, "requestID"

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 550
    const-string v1, "language"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, append:Ljava/lang/String;
    const-string v3, "GetTermsConditions"

    .line 555
    .local v3, op:Ljava/lang/String;
    sget-object v1, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sprint/smps/service/ClientResponse;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3d} :catch_3f

    move-result-object v9

    .line 562
    .end local v3           #op:Ljava/lang/String;
    .end local v5           #append:Ljava/lang/String;
    :goto_3e
    return-object v9

    .line 557
    :catch_3f
    move-exception v7

    .line 559
    .local v7, e:Lorg/json/JSONException;
    const/4 v0, -0x6

    const-string v1, "Error formatting data."

    invoke-direct {p0, v0, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v9

    goto :goto_3e
.end method

.method public getTransactions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 8
    .parameter "range"

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 575
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "requestID"

    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 576
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 577
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 578
    const-string v4, "range"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetSMPSTransactions"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2a} :catch_2c

    move-result-object v2

    .line 587
    :goto_2b
    return-object v2

    .line 582
    :catch_2c
    move-exception v0

    .line 584
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0x9

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_2b
.end method

.method public getUserAddressBook()Lcom/sprint/smps/service/ClientResponse;
    .registers 7

    .prologue
    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 600
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "requestID"

    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 601
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 602
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetUserAddressBook"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v2

    .line 611
    :goto_25
    return-object v2

    .line 606
    :catch_26
    move-exception v0

    .line 608
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0xa

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_25
.end method

.method public getUserProfile()Lcom/sprint/smps/service/ClientResponse;
    .registers 7

    .prologue
    .line 620
    const/4 v2, 0x0

    .line 621
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 624
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "requestID"

    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 625
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 626
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetSMPSUserProfile"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v2

    .line 635
    :goto_25
    return-object v2

    .line 630
    :catch_26
    move-exception v0

    .line 632
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0xb

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_25
.end method

.method public getUserSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 9
    .parameter "mdn"

    .prologue
    .line 644
    const/4 v2, 0x0

    .line 645
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 648
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "requestID"

    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 649
    const-string v4, "strMDN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "GetUserSecurityQuestions"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_29} :catch_2b

    move-result-object v2

    .line 658
    :goto_2a
    return-object v2

    .line 653
    :catch_2b
    move-exception v0

    .line 655
    .local v0, e:Lorg/json/JSONException;
    const/4 v3, -0x6

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_2a
.end method

.method public isUserRegistered(Landroid/app/Activity;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 10
    .parameter "activity"
    .parameter "mobileNumber"

    .prologue
    .line 664
    const/4 v3, 0x0

    .line 665
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 670
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 671
    const-string v5, "requestID"

    sget-object v6, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 672
    const-string v5, "mobileNumber"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 673
    const-string v5, "deviceId"

    const-string v6, "ANDROID|1"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 674
    const-string v5, "versionNumber"

    sget-object v6, Lcom/sprint/smps/properties/Properties;->appVersionName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    const-string v1, "isUserRegistered"

    .line 678
    .local v1, op:Ljava/lang/String;
    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v1}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    .line 680
    if-eqz v3, :cond_3b

    .line 681
    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getIsUserRegisteredContext()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sprint/smps/properties/Properties;->isUserRegisteredContext:Ljava/lang/String;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_3b} :catch_3c

    .line 696
    .end local v1           #op:Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-object v3

    .line 691
    :catch_3c
    move-exception v0

    .line 693
    .local v0, e:Lorg/json/JSONException;
    const/16 v4, -0xf

    const-string v5, "Error formatting data."

    invoke-direct {p0, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    goto :goto_3b
.end method

.method public resetPIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 13
    .parameter "mobileNumber"
    .parameter "strNewPIN"
    .parameter "secQuestion1"
    .parameter "secAnswer1"
    .parameter "secQuestion2"
    .parameter "secAnswer2"

    .prologue
    .line 707
    const/4 v2, 0x0

    .line 708
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 710
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "secAnswer1"

    invoke-virtual {v1, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 711
    const-string v4, "secAnswer2"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 712
    const-string v4, "strNewPIN"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 713
    const-string v4, "strMDN"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 714
    const-string v4, "secQuestion1"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 715
    const-string v4, "secQuestion2"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 716
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "ResetSMPSPIN"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_38} :catch_3a

    move-result-object v2

    .line 725
    :goto_39
    return-object v2

    .line 720
    :catch_3a
    move-exception v0

    .line 722
    .local v0, e:Lorg/json/JSONException;
    const/4 v3, -0x8

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_39
.end method

.method public resetSMPSPINEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 14
    .parameter "mdn"
    .parameter "newPIN"
    .parameter "questionId"
    .parameter "answer"

    .prologue
    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 738
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 739
    .local v4, secAnswers:Lorg/json/JSONArray;
    if-eqz p3, :cond_22

    if-eqz p4, :cond_22

    .line 741
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 742
    .local v1, questAnswer:Lorg/json/JSONObject;
    const-string v5, "Key"

    invoke-virtual {v1, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Value"

    invoke-virtual {v5, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 746
    .end local v1           #questAnswer:Lorg/json/JSONObject;
    :cond_22
    const-string v5, "requestID"

    sget-object v6, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 747
    const-string v6, "strMDN"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "+1"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 748
    const-string v6, "strNewPIN"

    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 749
    const-string v6, "securityQuestionsAnswers"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v6, "ResetSMPSPINEx"

    invoke-direct {p0, v5, v2, v6}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_51} :catch_53

    move-result-object v3

    .line 758
    .end local v4           #secAnswers:Lorg/json/JSONArray;
    :goto_52
    return-object v3

    .line 753
    :catch_53
    move-exception v0

    .line 755
    .local v0, e:Lorg/json/JSONException;
    const/4 v5, -0x6

    const-string v6, "Error formatting data."

    invoke-direct {p0, v5, v6}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    goto :goto_52
.end method

.method public setDefaultAddress(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 8
    .parameter "addressKey"

    .prologue
    .line 764
    const/4 v2, 0x0

    .line 765
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 768
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 769
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 770
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 771
    const-string v4, "addressKey"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "SetDefaultAddress"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2a} :catch_2c

    move-result-object v2

    .line 780
    :goto_2b
    return-object v2

    .line 775
    :catch_2c
    move-exception v0

    .line 777
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0x11

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_2b
.end method

.method public setDefaultPayment(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 8
    .parameter "paymentKey"

    .prologue
    .line 786
    const/4 v2, 0x0

    .line 787
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 790
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 791
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 792
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 793
    const-string v4, "paymentKey"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "SetDefaultPayment"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2a} :catch_2c

    move-result-object v2

    .line 802
    :goto_2b
    return-object v2

    .line 797
    :catch_2c
    move-exception v0

    .line 799
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0x11

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_2b
.end method

.method public updateAddress(Lcom/sprint/smps/pojo/Address;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 14
    .parameter "address"
    .parameter "active"

    .prologue
    .line 846
    iget-object v1, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getAddressKey()Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getStreet()Ljava/lang/String;

    move-result-object v6

    .line 848
    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/Address;->getZipcode()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v10, p2

    .line 846
    invoke-virtual/range {v0 .. v10}, Lcom/sprint/smps/service/DefaultSMPSService;->updateAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    return-object v0
.end method

.method public updateAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 18
    .parameter "context"
    .parameter "mobileNumber"
    .parameter "addressKey"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zip"
    .parameter "active"

    .prologue
    .line 814
    const/4 v3, 0x0

    .line 815
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 818
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v4, "context"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 819
    const-string v5, "requestID"

    sget-object v6, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 820
    const-string v5, "addressKey"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 821
    const-string v5, "lastName"

    invoke-virtual {v4, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 822
    const-string v5, "firstName"

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 823
    const-string v5, "zip"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 824
    const-string v5, "state"

    invoke-virtual {v4, v5, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 825
    const-string v5, "city"

    invoke-virtual {v4, v5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 826
    const-string v5, "mobileNumber"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 827
    const-string v5, "street1"

    invoke-virtual {v4, v5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 828
    const-string v5, "active"

    move-object/from16 v0, p10

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v5, "UpdateAddress"

    invoke-direct {p0, v4, v2, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_54} :catch_56

    move-result-object v3

    .line 837
    :goto_55
    return-object v3

    .line 832
    :catch_56
    move-exception v1

    .line 834
    .local v1, e:Lorg/json/JSONException;
    const/16 v4, -0xc

    const-string v5, "Error formatting data."

    invoke-direct {p0, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    goto :goto_55
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 14
    .parameter "firstName"
    .parameter "lastName"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zip"
    .parameter "emailAddr"

    .prologue
    .line 858
    const/4 v2, 0x0

    .line 859
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 861
    .local v1, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v3, "context"

    iget-object v4, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 862
    const-string v4, "requestID"

    sget-object v5, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 863
    const-string v4, "mobileNumber"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 864
    const-string v4, "firstName"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 865
    const-string v4, "lastName"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 866
    const-string v4, "street"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 867
    const-string v4, "city"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 868
    const-string v4, "state"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 869
    const-string v4, "zip"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 870
    const-string v4, "emailAddress"

    invoke-virtual {v3, v4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    sget-object v3, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v4, "UpdateProfile"

    invoke-direct {p0, v3, v1, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_4e} :catch_50

    move-result-object v2

    .line 879
    :goto_4f
    return-object v2

    .line 874
    :catch_50
    move-exception v0

    .line 876
    .local v0, e:Lorg/json/JSONException;
    const/16 v3, -0xd

    const-string v4, "Error formatting data."

    invoke-direct {p0, v3, v4}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    goto :goto_4f
.end method

.method public updateUserPayment(Lcom/sprint/smps/pojo/PaymentAccount;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 15
    .parameter "pa"
    .parameter "active"

    .prologue
    .line 930
    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getPaKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getNameOnAccount()Ljava/lang/String;

    move-result-object v3

    .line 931
    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getZip()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getExpiryMonth()Ljava/lang/String;

    move-result-object v8

    .line 932
    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getExpiryYear()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v11, p2

    .line 930
    invoke-virtual/range {v0 .. v11}, Lcom/sprint/smps/service/DefaultSMPSService;->updateUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    return-object v0
.end method

.method public updateUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    .registers 19
    .parameter "paymentKey"
    .parameter "ccNo"
    .parameter "nameonCard"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zip"
    .parameter "expMonth"
    .parameter "expYear"
    .parameter "accountNickname"
    .parameter "active"

    .prologue
    .line 895
    const/4 v3, 0x0

    .line 896
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 898
    .local v2, request:Lorg/json/JSONObject;
    :try_start_6
    const-string v4, "context"

    iget-object v5, p0, Lcom/sprint/smps/service/DefaultSMPSService;->context:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 899
    const-string v5, "requestID"

    sget-object v6, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 900
    const-string v5, "paymentKey"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 901
    const-string v5, "zip"

    invoke-virtual {v4, v5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 902
    const-string v5, "state"

    invoke-virtual {v4, v5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 903
    const-string v5, "ccNo"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 904
    const-string v5, "expMonth"

    invoke-virtual {v4, v5, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 905
    const-string v5, "expYear"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 906
    const-string v5, "nameonCard"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 907
    const-string v5, "accountNickname"

    move-object/from16 v0, p10

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 908
    const-string v5, "city"

    invoke-virtual {v4, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 909
    const-string v5, "mobileNumber"

    iget-object v6, p0, Lcom/sprint/smps/service/DefaultSMPSService;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 910
    const-string v5, "street1"

    invoke-virtual {v4, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 911
    const-string v5, "active"

    move-object/from16 v0, p11

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 913
    sget-object v4, Lcom/sprint/smps/service/DefaultSMPSService;->requestID:Ljava/lang/String;

    const-string v5, "UpdateSMPSUserPayment"

    invoke-direct {p0, v4, v2, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->sendRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6c} :catch_6e

    move-result-object v3

    .line 920
    :goto_6d
    return-object v3

    .line 915
    :catch_6e
    move-exception v1

    .line 917
    .local v1, e:Lorg/json/JSONException;
    const/16 v4, -0xd

    const-string v5, "Error formatting data."

    invoke-direct {p0, v4, v5}, Lcom/sprint/smps/service/DefaultSMPSService;->getErrorClientRequest(ILjava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    goto :goto_6d
.end method
