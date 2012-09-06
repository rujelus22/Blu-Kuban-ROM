.class public Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;
.super Ljava/lang/Object;
.source "CloudRecognizer.java"

# interfaces
.implements Lcom/google/research/handwriting/base/HandwritingRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;,
        Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;,
        Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;,
        Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudRecognizer"


# instance fields
.field private final feedbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;


# direct methods
.method public constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)V
    .registers 5
    .parameter "spec"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->feedbacks:Ljava/util/List;

    .line 74
    invoke-static {}, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;->getNewHttpClient()Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 75
    new-instance v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-direct {v1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;-><init>()V

    iput-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    .line 76
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getCloudSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;

    move-result-object v0

    .line 77
    .local v0, cspec:Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->language:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasServer()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 79
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getServer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->server:Ljava/lang/String;

    .line 81
    :cond_31
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->hasRecoPath()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 82
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getRecoPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->recoPath:Ljava/lang/String;

    .line 84
    :cond_3f
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getCompressRequests()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->compressRequests:Z

    .line 85
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->deviceName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getDeviceVersion()I

    move-result v2

    iput v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->deviceVersion:I

    .line 87
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->clientName:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getClientVersion()I

    move-result v2

    iput v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->clientVersion:I

    .line 89
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getVerbosity()I

    move-result v2

    iput v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->verbosity:I

    .line 90
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$CloudRecognizerSpec;->getSendFeedbackImmediately()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->sendFeedbackImmediately:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;Landroid/content/Context;)V
    .registers 3
    .parameter "spec"
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;)V
    .registers 4
    .parameter "httpClient"
    .parameter "settings"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->feedbacks:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 95
    iput-object p2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;Lcom/google/research/handwriting/base/StrokeList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addWritingGuide(Lorg/json/JSONObject;Lcom/google/research/handwriting/base/StrokeList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addContext(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addContext(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "request"
    .parameter "preContext"
    .parameter "postContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 285
    const-string v0, "pre_context"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_d
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 288
    const-string v0, "post_context"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_1a
    return-void
.end method

.method private static addInputType(Lorg/json/JSONObject;I)V
    .registers 3
    .parameter "req"
    .parameter "inputType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 269
    const-string v0, "input_type"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    return-void
.end method

.method private static addWritingGuide(Lorg/json/JSONObject;Lcom/google/research/handwriting/base/StrokeList;)V
    .registers 5
    .parameter "iRequest"
    .parameter "strokes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 275
    .local v0, writingGuide:Lorg/json/JSONObject;
    const-string v1, "writing_area_width"

    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v1, "writing_area_height"

    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 279
    const-string v1, "writing_guide"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    return-void
.end method

.method private buildFeedbackRequest(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;)Ljava/lang/String;
    .registers 5
    .parameter "fb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->prepareJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 251
    .local v0, outerRequest:Lorg/json/JSONObject;
    iget-object v2, p1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    if-eqz v2, :cond_11

    .line 252
    iget-object v2, p1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->getInputType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addInputType(Lorg/json/JSONObject;I)V

    .line 254
    :cond_11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 255
    .local v1, requests:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->asJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 256
    const-string v2, "requests"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static gzipString(Ljava/lang/String;)[B
    .registers 6
    .parameter "inputString"

    .prologue
    .line 293
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v1, output:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 296
    .local v2, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_1c

    .line 301
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    :goto_17
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 298
    :catch_1c
    move-exception v0

    .line 299
    .local v0, ignored:Ljava/io/IOException;
    const-string v3, "CloudRecognizer"

    const-string v4, "gzipString"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private logVi(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "level"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    if-nez v0, :cond_5

    .line 434
    :cond_4
    :goto_4
    return-void

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->verbosity:I

    if-lt v0, p1, :cond_4

    .line 432
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private prepareJSONObject()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .local v0, req:Lorg/json/JSONObject;
    const-string v1, "app_version"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->clientVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v1, "api_level"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->deviceVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    const-string v1, "device"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    return-object v0
.end method

.method private static setHttpDebugging()V
    .registers 2

    .prologue
    .line 455
    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 457
    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 460
    const-string v0, "org.apache.commons.logging.Log"

    const-string v1, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    const-string v0, "org.apache.commons.logging.simplelog.showdatetime"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    const-string v0, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    return-void
.end method

.method private timing(JILjava/lang/String;)V
    .registers 10
    .parameter "time"
    .parameter "id"
    .parameter "message"

    .prologue
    .line 438
    const/4 v0, 0x3

    const-string v1, "CloudRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timing("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method


# virtual methods
.method public buildFeedbackRequest(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "label"
    .parameter "strokes"
    .parameter "mode"
    .parameter "debugInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;-><init>(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->buildFeedbackRequest(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method buildRecognitionRequestString(Lcom/google/research/handwriting/base/StrokeList;)Ljava/lang/String;
    .registers 9
    .parameter "strokes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->prepareJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 232
    .local v3, outerRequest:Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getInputType()I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addInputType(Lorg/json/JSONObject;I)V

    .line 233
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v2, iRequest:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 235
    .local v4, requests:Lorg/json/JSONArray;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    const-string v5, "requests"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-static {v2, p1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addWritingGuide(Lorg/json/JSONObject;Lcom/google/research/handwriting/base/StrokeList;)V

    .line 238
    const-string v5, "language"

    iget-object v6, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v6, v6, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v5, "ink"

    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->asJsonArray()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPreContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPostContext()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addContext(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->feedbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;

    .line 243
    .local v0, fb:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;
    iget-object v5, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v5, v5, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->asJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_43

    .line 245
    .end local v0           #fb:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;
    :cond_5b
    iget-object v5, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->feedbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 246
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method executeHttpRequest(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 22
    .parameter "requestString"
    .parameter "creationTime"
    .parameter "requestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/client/HttpResponseException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v4, "before creating request"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v4, v4, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v5, v5, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->recoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v6, v6, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->clientName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-boolean v7, v7, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v8, v8, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-object v9, v9, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->targetLanguage:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizerProtocolStrings;->recognitionUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 201
    .local v16, uri:Ljava/lang/String;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 202
    .local v12, request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-boolean v4, v4, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->compressRequests:Z

    if-eqz v4, :cond_cd

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->gzipString(Ljava/lang/String;)[B

    move-result-object v13

    .line 204
    .local v13, requestBytes:[B
    const-string v4, "passed after building request string"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 205
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v10, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 206
    .local v10, entity:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v4, "application/octet-stream"

    invoke-virtual {v10, v4}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v12, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 213
    .end local v10           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v13           #requestBytes:[B
    :goto_5e
    const/4 v4, 0x3

    const-string v5, "CloudRecognizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SENDING to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "before sending request to server"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 216
    .local v11, httpResponse:Lorg/apache/http/HttpResponse;
    const-string v4, "got response from server"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 217
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 218
    .local v15, statusCode:I
    const/4 v14, 0x0

    .line 219
    .local v14, response:Ljava/lang/String;
    const/16 v4, 0xc8

    if-ne v4, v15, :cond_df

    .line 220
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v14

    .line 221
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 226
    const-string v4, "network handling done entirely"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 227
    return-object v14

    .line 209
    .end local v11           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #response:Ljava/lang/String;
    .end local v15           #statusCode:I
    :cond_cd
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v10, entity:Lorg/apache/http/entity/StringEntity;
    const-string v4, "application/json"

    invoke-virtual {v10, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v12, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_5e

    .line 224
    .end local v10           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v11       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #response:Ljava/lang/String;
    .restart local v15       #statusCode:I
    :cond_df
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v15, v5}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method public feedback(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "label"
    .parameter "strokes"
    .parameter "mode"
    .parameter "debugInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-boolean v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->sendFeedbackImmediately:Z

    if-eqz v2, :cond_40

    .line 149
    :try_start_6
    new-instance v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;-><init>(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->buildFeedbackRequest(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->executeHttpRequest(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, res:Ljava/lang/String;
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->parseServerResponse(Ljava/lang/String;JLcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    .line 152
    const-string v2, "CloudRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending feedback succeeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_37

    .line 159
    .end local v1           #res:Ljava/lang/String;
    :goto_36
    return-void

    .line 153
    :catch_37
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;

    const-string v3, "Sending feedback failed"

    invoke-direct {v2, v3, v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :cond_40
    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->feedbacks:Ljava/util/List;

    new-instance v3, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;-><init>(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public feedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "label"
    .parameter "resultId"
    .parameter "mode"
    .parameter "debugInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-boolean v2, v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->sendFeedbackImmediately:Z

    if-eqz v2, :cond_47

    .line 166
    :try_start_6
    new-instance v2, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->buildFeedbackRequest(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->executeHttpRequest(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, res:Ljava/lang/String;
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->parseServerResponse(Ljava/lang/String;JLcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    .line 169
    const-string v2, "CloudRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending feedback succeeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_37

    .line 177
    .end local v1           #res:Ljava/lang/String;
    :goto_36
    return-void

    .line 170
    :catch_37
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CloudRecognizer"

    const-string v3, "Doof"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    new-instance v2, Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;

    const-string v3, "Sending feedback failed"

    invoke-direct {v2, v3, v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :cond_47
    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->feedbacks:Ljava/util/List;

    new-instance v3, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method public getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;
    .registers 2

    .prologue
    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    return-object v0
.end method

.method public hasSecondaryRecognizer()Z
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method parseServerResponse(Ljava/lang/String;JLcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    .registers 28
    .parameter "serverResponse"
    .parameter "creationTime"
    .parameter "strokes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;
        }
    .end annotation

    .prologue
    .line 308
    if-nez p1, :cond_10

    .line 309
    new-instance v19, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;

    const-string v20, "No answer."

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;-><init>(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;Ljava/lang/String;)V

    throw v19

    .line 312
    :cond_10
    new-instance v19, Lorg/json/JSONTokener;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONArray;

    .line 313
    .local v12, responseArray:Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "SUCCESS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3d

    .line 314
    new-instance v19, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;

    const-string v20, "Not SUCCESS."

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;-><init>(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;Ljava/lang/String;)V

    throw v19

    .line 318
    :cond_3d
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    .line 322
    .local v13, responses:Lorg/json/JSONArray;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    .line 335
    .local v11, response:Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_67

    .line 336
    new-instance v19, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;

    const-string v20, "Invalid response. Less than two entries in response."

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;-><init>(Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;Ljava/lang/String;)V

    throw v19

    .line 339
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    move/from16 v19, v0

    if-eqz v19, :cond_168

    .line 340
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_ad

    .line 341
    const/16 v19, 0x1

    const-string v20, "CloudRecognizer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Strange response. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " entries."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_ad
    :goto_ad
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 352
    .local v10, inkHash:Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    .line 353
    .local v14, resultsArray:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 354
    .local v7, completionsArray:Lorg/json/JSONArray;
    const-string v8, ""

    .line 355
    .local v8, debugInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d5

    .line 356
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a2

    .line 357
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    .line 358
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 390
    :cond_ea
    :goto_ea
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_234

    const-string v19, " IME:"

    :goto_fd
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, p2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 393
    new-instance v15, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;

    invoke-direct {v15, v10}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;-><init>(Ljava/lang/String;)V

    .line 394
    .local v15, rr:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;
    invoke-virtual {v15, v8}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->setDebugInfo(Ljava/lang/String;)V

    .line 395
    const/16 v17, 0x0

    .local v17, w:I
    :goto_123
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_257

    .line 396
    new-instance v6, Ljava/util/ArrayList;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    .local v6, completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_238

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v17

    if-le v0, v1, :cond_238

    .line 398
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 399
    .local v5, comp:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    .restart local v6       #completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, c:I
    :goto_154
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_238

    .line 401
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_154

    .line 344
    .end local v4           #c:I
    .end local v5           #comp:Lorg/json/JSONArray;
    .end local v6           #completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #completionsArray:Lorg/json/JSONArray;
    .end local v8           #debugInfo:Ljava/lang/String;
    .end local v10           #inkHash:Ljava/lang/String;
    .end local v14           #resultsArray:Lorg/json/JSONArray;
    .end local v15           #rr:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;
    .end local v17           #w:I
    :cond_168
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_ad

    .line 345
    const/16 v19, 0x1

    const-string v20, "CloudRecognizer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Strange response. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " entries."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ad

    .line 359
    .restart local v7       #completionsArray:Lorg/json/JSONArray;
    .restart local v8       #debugInfo:Ljava/lang/String;
    .restart local v10       #inkHash:Ljava/lang/String;
    .restart local v14       #resultsArray:Lorg/json/JSONArray;
    :cond_1a2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_ea

    .line 361
    const/16 v19, 0x2

    :try_start_1b0
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_1b5
    .catch Lorg/json/JSONException; {:try_start_1b0 .. :try_end_1b5} :catch_1b8

    move-result-object v7

    goto/16 :goto_ea

    .line 362
    :catch_1b8
    move-exception v9

    .line 363
    .local v9, e:Lorg/json/JSONException;
    const/16 v19, 0x1

    const-string v20, "CloudRecognizer"

    const-string v21, "3 entries, but no completions array -> debug_info"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v7, 0x0

    .line 365
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 366
    goto/16 :goto_ea

    .line 370
    .end local v9           #e:Lorg/json/JSONException;
    :cond_1d5
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1f7

    .line 371
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    .line 373
    const/16 v19, 0x3

    :try_start_1eb
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "debug_info"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f6
    .catch Lorg/json/JSONException; {:try_start_1eb .. :try_end_1f6} :catch_20d

    move-result-object v8

    .line 380
    :cond_1f7
    :goto_1f7
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_ea

    .line 382
    const/16 v19, 0x2

    :try_start_205
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_20a
    .catch Lorg/json/JSONException; {:try_start_205 .. :try_end_20a} :catch_217

    move-result-object v7

    goto/16 :goto_ea

    .line 374
    :catch_20d
    move-exception v9

    .line 375
    .restart local v9       #e:Lorg/json/JSONException;
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f7

    .line 383
    .end local v9           #e:Lorg/json/JSONException;
    :catch_217
    move-exception v9

    .line 384
    .restart local v9       #e:Lorg/json/JSONException;
    const/16 v19, 0x1

    const-string v20, "CloudRecognizer"

    const-string v21, "3 entries, but no completions array -> debug_info"

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v7, 0x0

    .line 386
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_ea

    .line 390
    .end local v9           #e:Lorg/json/JSONException;
    :cond_234
    const-string v19, "IME:"

    goto/16 :goto_fd

    .line 404
    .restart local v6       #completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15       #rr:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;
    .restart local v17       #w:I
    :cond_238
    new-instance v19, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;-><init>(Ljava/lang/String;FLjava/util/List;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->add(Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;)V

    .line 395
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_123

    .line 407
    .end local v6           #completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2a6

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2a6

    .line 408
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v18

    .line 409
    .local v18, wordTranslationsArray:Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->targetTexts:Ljava/util/List;

    .line 410
    const/16 v17, 0x0

    :goto_28e
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2a6

    .line 411
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, targetText:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_2a7

    .line 420
    .end local v16           #targetText:Ljava/lang/String;
    .end local v18           #wordTranslationsArray:Lorg/json/JSONArray;
    :cond_2a6
    return-object v15

    .line 417
    .restart local v16       #targetText:Ljava/lang/String;
    .restart local v18       #wordTranslationsArray:Lorg/json/JSONArray;
    :cond_2a7
    iget-object v0, v15, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->targetTexts:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v17, v17, 0x1

    goto :goto_28e
.end method

.method public recognize(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    .registers 15
    .parameter "strokes"
    .parameter "cs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 108
    .local v1, creationTime:J
    const/4 v4, 0x0

    .line 110
    .local v4, requestId:I
    const/4 v6, 0x0

    .line 111
    .local v6, response:Ljava/lang/String;
    const/4 v7, 0x0

    .line 113
    .local v7, result:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    :try_start_7
    const-string v9, "before creating JSON"

    invoke-direct {p0, v1, v2, v4, v9}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->buildRecognitionRequestString(Lcom/google/research/handwriting/base/StrokeList;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, requestString:Ljava/lang/String;
    const-string v9, "JSON created"

    invoke-direct {p0, v1, v2, v4, v9}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->timing(JILjava/lang/String;)V

    .line 116
    invoke-virtual {p0, v5, v1, v2, v4}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->executeHttpRequest(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {p0, v6, v1, v2, p1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->parseServerResponse(Ljava/lang/String;JLcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    move-result-object v7

    .line 118
    iget-object v9, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->settings:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;

    iget-boolean v9, v9, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognizerSettings;->useTranslateApi:Z

    if-eqz v9, :cond_4c

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v8, sourceText:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPreContext()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_35

    .line 121
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPreContext()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_35
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPostContext()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_42

    .line 124
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->getPostContext()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_42
    move-object v0, v7

    check-cast v0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;

    move-object v9, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->sourceText:Ljava/lang/String;
    :try_end_4c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_7 .. :try_end_4c} :catch_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_4c} :catch_56
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_4c} :catch_5f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4c} :catch_68
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_4c} :catch_71
    .catch Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException; {:try_start_7 .. :try_end_4c} :catch_7a

    .line 141
    .end local v8           #sourceText:Ljava/lang/StringBuilder;
    :cond_4c
    return-object v7

    .line 128
    .end local v5           #requestString:Ljava/lang/String;
    :catch_4d
    move-exception v3

    .line 129
    .local v3, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v9, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;

    const-string v10, "network problems"

    invoke-direct {v9, v10, v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 130
    .end local v3           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_56
    move-exception v3

    .line 131
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;

    const-string v10, "encoding problem"

    invoke-direct {v9, v10, v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 132
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_5f
    move-exception v3

    .line 133
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v9, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;

    const-string v10, "protocol problem"

    invoke-direct {v9, v10, v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 134
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_68
    move-exception v3

    .line 135
    .local v3, e:Ljava/io/IOException;
    new-instance v9, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;

    const-string v10, "network io problem"

    invoke-direct {v9, v10, v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 136
    .end local v3           #e:Ljava/io/IOException;
    :catch_71
    move-exception v3

    .line 137
    .local v3, e:Lorg/json/JSONException;
    new-instance v9, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;

    const-string v10, "json problem"

    invoke-direct {v9, v10, v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 138
    .end local v3           #e:Lorg/json/JSONException;
    :catch_7a
    move-exception v3

    .line 139
    .local v3, e:Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;
    new-instance v9, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$InvalidResponseFromServerException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
.end method

.method public setSecondaryRecognizer(Lcom/google/research/handwriting/base/HandwritingRecognizer;)V
    .registers 2
    .parameter "recognizer"

    .prologue
    .line 476
    return-void
.end method
