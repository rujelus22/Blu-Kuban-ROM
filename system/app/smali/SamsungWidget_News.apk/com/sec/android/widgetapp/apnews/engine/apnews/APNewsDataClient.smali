.class public Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;
.super Ljava/lang/Object;
.source "APNewsDataClient.java"


# static fields
.field private static mInst:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

.field public static mNewsEtagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNewsImageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mstrHeadLineEtag:Ljava/lang/String;


# instance fields
.field public APHeadResStatus:I

.field public hResData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mstrHeadLineEtag:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsEtagMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsImageMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->APHeadResStatus:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->hResData:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 86
    const-class v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mInst:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    if-nez v0, :cond_e

    .line 87
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mInst:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;

    .line 89
    :cond_e
    sget-object v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mInst:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAPNews(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 34
    .parameter "xmlUrl"
    .parameter "NewsEtag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 96
    .local v3, NewsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    if-nez p1, :cond_6

    .line 97
    const/16 v28, 0x0

    .line 255
    :cond_5
    :goto_5
    return-object v28

    .line 100
    :cond_6
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v26

    .line 101
    .local v26, spf:Ljavax/xml/parsers/SAXParserFactory;
    const/16 v25, 0x0

    .line 102
    .local v25, sp:Ljavax/xml/parsers/SAXParser;
    const/16 v27, 0x0

    .line 105
    .local v27, xr:Lorg/xml/sax/XMLReader;
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v25

    .line 106
    invoke-virtual/range {v25 .. v25}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_15} :catch_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_15} :catch_22

    move-result-object v27

    .line 113
    :goto_16
    if-eqz v25, :cond_1a

    if-nez v27, :cond_27

    .line 114
    :cond_1a
    const/16 v28, 0x0

    goto :goto_5

    .line 107
    :catch_1d
    move-exception v6

    .line 108
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_16

    .line 109
    .end local v6           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_22
    move-exception v6

    .line 110
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_16

    .line 117
    .end local v6           #e:Lorg/xml/sax/SAXException;
    :cond_27
    new-instance v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;

    invoke-direct {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;-><init>()V

    .line 118
    .local v8, handler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;
    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 121
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 123
    .local v10, hp:Lorg/apache/http/params/HttpParams;
    const/16 v28, 0x4e20

    move/from16 v0, v28

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 125
    const/16 v28, 0x4e20

    move/from16 v0, v28

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 129
    .local v11, httpClient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_83

    .line 131
    new-instance v13, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v29

    const-string v30, "http"

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .local v13, httpHost:Lorg/apache/http/HttpHost;
    invoke-interface {v11}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.route.default-proxy"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 135
    .end local v13           #httpHost:Lorg/apache/http/HttpHost;
    :cond_83
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    const-string v28, " "

    const-string v29, "%20"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 136
    .local v12, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v28, "User-Agent"

    const-string v29, "SAMSUNG-Android"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v28, "Accept"

    const-string v29, "*, */*"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v28, "Content-Type"

    const-string v29, "text/xml"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v28, "Connection"

    const-string v29, "keep-alive"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v28, "Cache-Control"

    const-string v29, "private, max-age=86400"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v28, "Accept-Encoding"

    const-string v29, "gzip"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz p2, :cond_e5

    .line 146
    const-string v28, "If-None-Match"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 153
    .local v22, pm:Landroid/content/pm/PackageManager;
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 155
    .local v17, info:Landroid/content/pm/PackageInfo;
    const-string v28, "TrafficInfo"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "vender=\"Samsung\"; os=\"android\"; model="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "osver="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "clientver="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ef .. :try_end_14f} :catch_188

    .line 166
    .end local v17           #info:Landroid/content/pm/PackageInfo;
    :goto_14f
    const/16 v20, 0x0

    .line 167
    .local v20, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 170
    .local v15, inStream:Ljava/io/InputStream;
    :try_start_152
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 172
    .local v24, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    .line 173
    .local v9, header:[Lorg/apache/http/Header;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_15b
    array-length v0, v9

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_18d

    .line 174
    aget-object v28, v9, v14

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "ETag"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_185

    .line 175
    sget-object v28, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsEtagMap:Ljava/util/HashMap;

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v29

    aget-object v29, v29, v14

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_185
    .catchall {:try_start_152 .. :try_end_185} :catchall_28f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_152 .. :try_end_185} :catch_216
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_185} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_152 .. :try_end_185} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_152 .. :try_end_185} :catch_25f
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_185} :catch_277

    .line 173
    :cond_185
    add-int/lit8 v14, v14, 0x1

    goto :goto_15b

    .line 161
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v15           #inStream:Ljava/io/InputStream;
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_188
    move-exception v7

    .line 163
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_14f

    .line 178
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v15       #inStream:Ljava/io/InputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_18d
    :try_start_18d
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->setHashResData(Ljava/lang/String;I)V

    .line 179
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0xc8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21a

    .line 181
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    .line 183
    .local v23, resEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 186
    const-string v28, "Content-Encoding"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 187
    .local v5, contentEncoding:Lorg/apache/http/Header;
    if-eqz v5, :cond_20e

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    const-string v29, "gzip"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_20e

    .line 188
    const-string v28, "check gzip"

    const-string v29, "is data Stream gzip used"

    invoke-static/range {v28 .. v29}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v15           #inStream:Ljava/io/InputStream;
    .local v16, inStream:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 196
    .end local v16           #inStream:Ljava/io/InputStream;
    .restart local v15       #inStream:Ljava/io/InputStream;
    :goto_1de
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e3
    .catchall {:try_start_18d .. :try_end_1e3} :catchall_28f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_18d .. :try_end_1e3} :catch_216
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1e3} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_18d .. :try_end_1e3} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_18d .. :try_end_1e3} :catch_25f
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1e3} :catch_277

    .line 198
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .local v21, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 199
    .local v4, a:I
    :goto_1e4
    :try_start_1e4
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_218

    .line 200
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1f3
    .catchall {:try_start_1e4 .. :try_end_1f3} :catchall_2ce
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1e4 .. :try_end_1f3} :catch_1f4
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1f3} :catch_2df
    .catch Ljava/lang/SecurityException; {:try_start_1e4 .. :try_end_1f3} :catch_2da
    .catch Ljava/lang/RuntimeException; {:try_start_1e4 .. :try_end_1f3} :catch_2d6
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1f3} :catch_2d2

    goto :goto_1e4

    .line 206
    :catch_1f4
    move-exception v6

    move-object/from16 v20, v21

    .line 208
    .end local v4           #a:I
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v23           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_1f7
    :try_start_1f7
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1fa
    .catchall {:try_start_1f7 .. :try_end_1fa} :catchall_28f

    .line 209
    const/16 v28, 0x0

    .line 227
    if-eqz v15, :cond_201

    .line 228
    :try_start_1fe
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_201
    if-eqz v20, :cond_5

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_206} :catch_208

    goto/16 :goto_5

    .line 231
    :catch_208
    move-exception v6

    .line 232
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 192
    .end local v6           #e:Ljava/io/IOException;
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v23       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_20e
    :try_start_20e
    const-string v28, "check gzip"

    const-string v29, "is data Stream gzip Not used"

    invoke-static/range {v28 .. v29}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_215
    .catchall {:try_start_20e .. :try_end_215} :catchall_28f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_20e .. :try_end_215} :catch_216
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_215} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_20e .. :try_end_215} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_20e .. :try_end_215} :catch_25f
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_215} :catch_277

    goto :goto_1de

    .line 206
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v23           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_216
    move-exception v6

    goto :goto_1f7

    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #a:I
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v23       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_218
    move-object/from16 v20, v21

    .line 227
    .end local v4           #a:I
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v23           #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_21a
    if-eqz v15, :cond_21f

    .line 228
    :try_start_21c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_21f
    if-eqz v20, :cond_224

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_224} :catch_22a

    .line 236
    :cond_224
    :goto_224
    if-nez v20, :cond_2a0

    .line 237
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 231
    :catch_22a
    move-exception v6

    .line 232
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_224

    .line 210
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_22f
    move-exception v6

    .line 212
    .restart local v6       #e:Ljava/io/IOException;
    :goto_230
    :try_start_230
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_233
    .catchall {:try_start_230 .. :try_end_233} :catchall_28f

    .line 213
    const/16 v28, 0x0

    .line 227
    if-eqz v15, :cond_23a

    .line 228
    :try_start_237
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_23a
    if-eqz v20, :cond_5

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23f} :catch_241

    goto/16 :goto_5

    .line 231
    :catch_241
    move-exception v6

    .line 232
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 214
    .end local v6           #e:Ljava/io/IOException;
    :catch_247
    move-exception v6

    .line 216
    .local v6, e:Ljava/lang/SecurityException;
    :goto_248
    :try_start_248
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_24b
    .catchall {:try_start_248 .. :try_end_24b} :catchall_28f

    .line 217
    const/16 v28, 0x0

    .line 227
    if-eqz v15, :cond_252

    .line 228
    :try_start_24f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_252
    if-eqz v20, :cond_5

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_257} :catch_259

    goto/16 :goto_5

    .line 231
    :catch_259
    move-exception v6

    .line 232
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 218
    .end local v6           #e:Ljava/io/IOException;
    :catch_25f
    move-exception v6

    .line 219
    .local v6, e:Ljava/lang/RuntimeException;
    :goto_260
    :try_start_260
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_263
    .catchall {:try_start_260 .. :try_end_263} :catchall_28f

    .line 220
    const/16 v28, 0x0

    .line 227
    if-eqz v15, :cond_26a

    .line 228
    :try_start_267
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_26a
    if-eqz v20, :cond_5

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_26f} :catch_271

    goto/16 :goto_5

    .line 231
    :catch_271
    move-exception v6

    .line 232
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 221
    .end local v6           #e:Ljava/io/IOException;
    :catch_277
    move-exception v6

    .line 223
    .local v6, e:Ljava/lang/Exception;
    :goto_278
    :try_start_278
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_27b
    .catchall {:try_start_278 .. :try_end_27b} :catchall_28f

    .line 224
    const/16 v28, 0x0

    .line 227
    if-eqz v15, :cond_282

    .line 228
    :try_start_27f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_282
    if-eqz v20, :cond_5

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_287
    .catch Ljava/io/IOException; {:try_start_27f .. :try_end_287} :catch_289

    goto/16 :goto_5

    .line 231
    :catch_289
    move-exception v6

    .line 232
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 226
    .end local v6           #e:Ljava/io/IOException;
    :catchall_28f
    move-exception v28

    .line 227
    :goto_290
    if-eqz v15, :cond_295

    .line 228
    :try_start_292
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_295
    if-eqz v20, :cond_29a

    .line 230
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29a
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_29a} :catch_29b

    .line 233
    :cond_29a
    :goto_29a
    throw v28

    .line 231
    :catch_29b
    move-exception v6

    .line 232
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29a

    .line 241
    .end local v6           #e:Ljava/io/IOException;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_2a0
    :try_start_2a0
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    .local v19, is:Ljava/io/ByteArrayInputStream;
    new-instance v18, Lorg/xml/sax/InputSource;

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 244
    .local v18, input:Lorg/xml/sax/InputSource;
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->initAPNewsData()V

    .line 246
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 248
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->getAPNewsData()Ljava/util/ArrayList;
    :try_end_2bf
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2bf} :catch_2c4
    .catch Lorg/xml/sax/SAXException; {:try_start_2a0 .. :try_end_2bf} :catch_2c9

    move-result-object v3

    .end local v18           #input:Lorg/xml/sax/InputSource;
    .end local v19           #is:Ljava/io/ByteArrayInputStream;
    :goto_2c0
    move-object/from16 v28, v3

    .line 255
    goto/16 :goto_5

    .line 249
    :catch_2c4
    move-exception v6

    .line 250
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c0

    .line 251
    .end local v6           #e:Ljava/io/IOException;
    :catch_2c9
    move-exception v6

    .line 252
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2c0

    .line 226
    .end local v6           #e:Lorg/xml/sax/SAXException;
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #a:I
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v23       #resEntity:Lorg/apache/http/HttpEntity;
    :catchall_2ce
    move-exception v28

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_290

    .line 221
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2d2
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_278

    .line 218
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2d6
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_260

    .line 214
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2da
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_248

    .line 210
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2df
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_230
.end method

.method public getAPNewsHeadline(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 33
    .parameter "HeadLineEtag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    const/4 v3, 0x0

    .line 540
    .local v3, NewsHeadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v26

    .line 541
    .local v26, spf:Ljavax/xml/parsers/SAXParserFactory;
    const/16 v25, 0x0

    .line 542
    .local v25, sp:Ljavax/xml/parsers/SAXParser;
    const/16 v27, 0x0

    .line 545
    .local v27, xr:Lorg/xml/sax/XMLReader;
    :try_start_9
    invoke-virtual/range {v26 .. v26}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v25

    .line 546
    invoke-virtual/range {v25 .. v25}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_10
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_10} :catch_18
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_10} :catch_1d

    move-result-object v27

    .line 553
    :goto_11
    if-eqz v25, :cond_15

    if-nez v27, :cond_22

    .line 554
    :cond_15
    const/16 v28, 0x0

    .line 696
    :cond_17
    :goto_17
    return-object v28

    .line 547
    :catch_18
    move-exception v6

    .line 548
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_11

    .line 549
    .end local v6           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1d
    move-exception v6

    .line 550
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_11

    .line 557
    .end local v6           #e:Lorg/xml/sax/SAXException;
    :cond_22
    new-instance v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;

    invoke-direct {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;-><init>()V

    .line 558
    .local v8, handler:Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;
    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 561
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 563
    .local v10, hp:Lorg/apache/http/params/HttpParams;
    const/16 v28, 0x4e20

    move/from16 v0, v28

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 565
    const/16 v28, 0x4e20

    move/from16 v0, v28

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 567
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 569
    .local v11, httpClient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_7e

    .line 571
    new-instance v13, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v29

    const-string v30, "http"

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 572
    .local v13, httpHost:Lorg/apache/http/HttpHost;
    invoke-interface {v11}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.route.default-proxy"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 575
    .end local v13           #httpHost:Lorg/apache/http/HttpHost;
    :cond_7e
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    const-string v28, "http://samsungrss.vrvm.com/capi/ap/hierarchy?pageBlockId=6715"

    const-string v29, " "

    const-string v30, "%20"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 576
    .local v12, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v28, "User-Agent"

    const-string v29, "SAMSUNG-Android"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v28, "Accept"

    const-string v29, "*, */*"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v28, "Content-Type"

    const-string v29, "text/xml"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v28, "Connection"

    const-string v29, "keep-alive"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v28, "Cache-Control"

    const-string v29, "private, max-age=86400"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v28, "Accept-Encoding"

    const-string v29, "gzip"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    if-eqz p1, :cond_dc

    .line 585
    const-string v28, "If-None-Match"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 592
    .local v22, pm:Landroid/content/pm/PackageManager;
    :try_start_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 594
    .local v17, info:Landroid/content/pm/PackageInfo;
    const-string v28, "TrafficInfo"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "vender=\"Samsung\"; os=\"android\"; model="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "osver="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "clientver="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_146
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e6 .. :try_end_146} :catch_172

    .line 605
    .end local v17           #info:Landroid/content/pm/PackageInfo;
    :goto_146
    const/16 v20, 0x0

    .line 606
    .local v20, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 610
    .local v15, inStream:Ljava/io/InputStream;
    :try_start_149
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 611
    .local v24, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    .line 612
    .local v9, header:[Lorg/apache/http/Header;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_152
    array-length v0, v9

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_177

    .line 613
    aget-object v28, v9, v14

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "ETag"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16f

    .line 614
    aget-object v28, v9, v14

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mstrHeadLineEtag:Ljava/lang/String;
    :try_end_16f
    .catchall {:try_start_149 .. :try_end_16f} :catchall_276
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_149 .. :try_end_16f} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_16f} :catch_216
    .catch Ljava/lang/SecurityException; {:try_start_149 .. :try_end_16f} :catch_22e
    .catch Ljava/lang/RuntimeException; {:try_start_149 .. :try_end_16f} :catch_246
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_16f} :catch_25e

    .line 612
    :cond_16f
    add-int/lit8 v14, v14, 0x1

    goto :goto_152

    .line 600
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v15           #inStream:Ljava/io/InputStream;
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_172
    move-exception v7

    .line 602
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_146

    .line 618
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v15       #inStream:Ljava/io/InputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_177
    :try_start_177
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->APHeadResStatus:I

    .line 620
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0xc8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_201

    .line 622
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    .line 624
    .local v23, resEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 627
    const-string v28, "Content-Encoding"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 628
    .local v5, contentEncoding:Lorg/apache/http/Header;
    if-eqz v5, :cond_1f5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    const-string v29, "gzip"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1f5

    .line 629
    const-string v28, "check gzip"

    const-string v29, "is data Stream gzip used"

    invoke-static/range {v28 .. v29}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v15           #inStream:Ljava/io/InputStream;
    .local v16, inStream:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 637
    .end local v16           #inStream:Ljava/io/InputStream;
    .restart local v15       #inStream:Ljava/io/InputStream;
    :goto_1c5
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1ca
    .catchall {:try_start_177 .. :try_end_1ca} :catchall_276
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_177 .. :try_end_1ca} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_1ca} :catch_216
    .catch Ljava/lang/SecurityException; {:try_start_177 .. :try_end_1ca} :catch_22e
    .catch Ljava/lang/RuntimeException; {:try_start_177 .. :try_end_1ca} :catch_246
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1ca} :catch_25e

    .line 639
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .local v21, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 640
    .local v4, a:I
    :goto_1cb
    :try_start_1cb
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_1ff

    .line 641
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1da
    .catchall {:try_start_1cb .. :try_end_1da} :catchall_2b5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1cb .. :try_end_1da} :catch_1db
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1da} :catch_2c6
    .catch Ljava/lang/SecurityException; {:try_start_1cb .. :try_end_1da} :catch_2c1
    .catch Ljava/lang/RuntimeException; {:try_start_1cb .. :try_end_1da} :catch_2bd
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1da} :catch_2b9

    goto :goto_1cb

    .line 647
    :catch_1db
    move-exception v6

    move-object/from16 v20, v21

    .line 649
    .end local v4           #a:I
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v23           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_1de
    :try_start_1de
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1e1
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_276

    .line 650
    const/16 v28, 0x0

    .line 668
    if-eqz v15, :cond_1e8

    .line 669
    :try_start_1e5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_1e8
    if-eqz v20, :cond_17

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_1ed} :catch_1ef

    goto/16 :goto_17

    .line 672
    :catch_1ef
    move-exception v6

    .line 673
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 633
    .end local v6           #e:Ljava/io/IOException;
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v23       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_1f5
    :try_start_1f5
    const-string v28, "check gzip"

    const-string v29, "is data Stream gzip Not used"

    invoke-static/range {v28 .. v29}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fc
    .catchall {:try_start_1f5 .. :try_end_1fc} :catchall_276
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1f5 .. :try_end_1fc} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1fc} :catch_216
    .catch Ljava/lang/SecurityException; {:try_start_1f5 .. :try_end_1fc} :catch_22e
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_1fc} :catch_246
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_1fc} :catch_25e

    goto :goto_1c5

    .line 647
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v23           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_1fd
    move-exception v6

    goto :goto_1de

    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #a:I
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v23       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_1ff
    move-object/from16 v20, v21

    .line 668
    .end local v4           #a:I
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v23           #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_201
    if-eqz v15, :cond_206

    .line 669
    :try_start_203
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_206
    if-eqz v20, :cond_20b

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_20b} :catch_211

    .line 677
    :cond_20b
    :goto_20b
    if-nez v20, :cond_287

    .line 678
    const/16 v28, 0x0

    goto/16 :goto_17

    .line 672
    :catch_211
    move-exception v6

    .line 673
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20b

    .line 651
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #header:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_216
    move-exception v6

    .line 653
    .restart local v6       #e:Ljava/io/IOException;
    :goto_217
    :try_start_217
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21a
    .catchall {:try_start_217 .. :try_end_21a} :catchall_276

    .line 654
    const/16 v28, 0x0

    .line 668
    if-eqz v15, :cond_221

    .line 669
    :try_start_21e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_221
    if-eqz v20, :cond_17

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_226} :catch_228

    goto/16 :goto_17

    .line 672
    :catch_228
    move-exception v6

    .line 673
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 655
    .end local v6           #e:Ljava/io/IOException;
    :catch_22e
    move-exception v6

    .line 657
    .local v6, e:Ljava/lang/SecurityException;
    :goto_22f
    :try_start_22f
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_232
    .catchall {:try_start_22f .. :try_end_232} :catchall_276

    .line 658
    const/16 v28, 0x0

    .line 668
    if-eqz v15, :cond_239

    .line 669
    :try_start_236
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_239
    if-eqz v20, :cond_17

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_23e} :catch_240

    goto/16 :goto_17

    .line 672
    :catch_240
    move-exception v6

    .line 673
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 659
    .end local v6           #e:Ljava/io/IOException;
    :catch_246
    move-exception v6

    .line 660
    .local v6, e:Ljava/lang/RuntimeException;
    :goto_247
    :try_start_247
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_24a
    .catchall {:try_start_247 .. :try_end_24a} :catchall_276

    .line 661
    const/16 v28, 0x0

    .line 668
    if-eqz v15, :cond_251

    .line 669
    :try_start_24e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_251
    if-eqz v20, :cond_17

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_24e .. :try_end_256} :catch_258

    goto/16 :goto_17

    .line 672
    :catch_258
    move-exception v6

    .line 673
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 662
    .end local v6           #e:Ljava/io/IOException;
    :catch_25e
    move-exception v6

    .line 664
    .local v6, e:Ljava/lang/Exception;
    :goto_25f
    :try_start_25f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_262
    .catchall {:try_start_25f .. :try_end_262} :catchall_276

    .line 665
    const/16 v28, 0x0

    .line 668
    if-eqz v15, :cond_269

    .line 669
    :try_start_266
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_269
    if-eqz v20, :cond_17

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_26e} :catch_270

    goto/16 :goto_17

    .line 672
    :catch_270
    move-exception v6

    .line 673
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 667
    .end local v6           #e:Ljava/io/IOException;
    :catchall_276
    move-exception v28

    .line 668
    :goto_277
    if-eqz v15, :cond_27c

    .line 669
    :try_start_279
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_27c
    if-eqz v20, :cond_281

    .line 671
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_281
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_281} :catch_282

    .line 674
    :cond_281
    :goto_281
    throw v28

    .line 672
    :catch_282
    move-exception v6

    .line 673
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_281

    .line 682
    .end local v6           #e:Ljava/io/IOException;
    .restart local v9       #header:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_287
    :try_start_287
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 683
    .local v19, is:Ljava/io/ByteArrayInputStream;
    new-instance v18, Lorg/xml/sax/InputSource;

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 685
    .local v18, input:Lorg/xml/sax/InputSource;
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->initAPNewsHeadLineData()V

    .line 687
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 689
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->getAPNewsHeadLineData()Ljava/util/ArrayList;
    :try_end_2a6
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_2a6} :catch_2ab
    .catch Lorg/xml/sax/SAXException; {:try_start_287 .. :try_end_2a6} :catch_2b0

    move-result-object v3

    .end local v18           #input:Lorg/xml/sax/InputSource;
    .end local v19           #is:Ljava/io/ByteArrayInputStream;
    :goto_2a7
    move-object/from16 v28, v3

    .line 696
    goto/16 :goto_17

    .line 690
    :catch_2ab
    move-exception v6

    .line 691
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a7

    .line 692
    .end local v6           #e:Ljava/io/IOException;
    :catch_2b0
    move-exception v6

    .line 693
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2a7

    .line 667
    .end local v6           #e:Lorg/xml/sax/SAXException;
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #a:I
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v23       #resEntity:Lorg/apache/http/HttpEntity;
    :catchall_2b5
    move-exception v28

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_277

    .line 662
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2b9
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_25f

    .line 659
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2bd
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_247

    .line 655
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2c1
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_22f

    .line 651
    .end local v20           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2c6
    move-exception v6

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_217
.end method

.method public getAPNewsImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 28
    .parameter "index"
    .parameter "url"
    .parameter "NewsImageEtag"

    .prologue
    .line 409
    const/4 v15, 0x0

    .line 412
    .local v15, outStream:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 414
    .local v9, hp:Lorg/apache/http/params/HttpParams;
    const/16 v21, 0x4e20

    move/from16 v0, v21

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 416
    const/16 v21, 0x4e20

    move/from16 v0, v21

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 418
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 419
    .local v4, client:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_53

    .line 421
    new-instance v10, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v22

    const-string v23, "http"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v10, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 422
    .local v10, httpHost:Lorg/apache/http/HttpHost;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.route.default-proxy"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 425
    .end local v10           #httpHost:Lorg/apache/http/HttpHost;
    :cond_53
    const/16 v18, 0x0

    .line 428
    .local v18, request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/widgetapp/apnews/engine/Util;->isQ1Metrics(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/widgetapp/apnews/engine/Util;->isNormalXHdpi(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_195

    .line 429
    :cond_6d
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    .end local v18           #request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    const-string v23, "%20"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&width=380"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 435
    .restart local v18       #request:Lorg/apache/http/client/methods/HttpGet;
    :goto_97
    const-string v21, "User-Agent"

    const-string v22, "SAMSUNG-Android"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v21, "Connection"

    const-string v22, "keep-alive"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v21, "Accept"

    const-string v22, "*, */*"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v21, "Content-Type"

    const-string v22, "image/jpeg"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v21, "Accept-Encoding"

    const-string v22, "gzip"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v21, "Cache-Control"

    const-string v22, "private, max-age=86400"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p3, :cond_f2

    .line 443
    const-string v21, "If-None-Match"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 450
    .local v17, pm:Landroid/content/pm/PackageManager;
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 452
    .local v14, info:Landroid/content/pm/PackageInfo;
    const-string v21, "TrafficInfo"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "vender=\"Samsung\"; os=\"android\"; model="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "osver="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "clientver="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fc .. :try_end_15c} :catch_1c1

    .line 464
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    :goto_15c
    const/4 v12, 0x0

    .line 466
    .local v12, inStream:Ljava/io/InputStream;
    :try_start_15d
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 467
    .local v20, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v8

    .line 468
    .local v8, header:[Lorg/apache/http/Header;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_168
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_1c6

    .line 469
    aget-object v21, v8, v11

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ETag"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_192

    .line 470
    sget-object v21, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->mNewsImageMap:Ljava/util/HashMap;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v22

    aget-object v22, v22, v11

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_192
    .catchall {:try_start_15d .. :try_end_192} :catchall_2a5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_15d .. :try_end_192} :catch_230
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_192} :catch_24d
    .catch Ljava/lang/SecurityException; {:try_start_15d .. :try_end_192} :catch_263
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_192} :catch_279
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_192} :catch_28f

    .line 468
    :cond_192
    add-int/lit8 v11, v11, 0x1

    goto :goto_168

    .line 431
    .end local v8           #header:[Lorg/apache/http/Header;
    .end local v11           #i:I
    .end local v12           #inStream:Ljava/io/InputStream;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #response:Lorg/apache/http/HttpResponse;
    :cond_195
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    .end local v18           #request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    const-string v23, "%20"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&width=256"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v18       #request:Lorg/apache/http/client/methods/HttpGet;
    goto/16 :goto_97

    .line 458
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    :catch_1c1
    move-exception v7

    .line 460
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_15c

    .line 474
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #header:[Lorg/apache/http/Header;
    .restart local v11       #i:I
    .restart local v12       #inStream:Ljava/io/InputStream;
    .restart local v20       #response:Lorg/apache/http/HttpResponse;
    :cond_1c6
    :try_start_1c6
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_234

    .line 476
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    .line 478
    .local v19, resEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 481
    const-string v21, "Content-Encoding"

    invoke-interface/range {v20 .. v21}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 482
    .local v5, contentEncoding:Lorg/apache/http/Header;
    if-eqz v5, :cond_228

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "gzip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_228

    .line 483
    const-string v21, "ImageTest"

    const-string v22, "is data Stream gzip used"

    invoke-static/range {v21 .. v22}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v13, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v13, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v12           #inStream:Ljava/io/InputStream;
    .local v13, inStream:Ljava/io/InputStream;
    move-object v12, v13

    .line 491
    .end local v13           #inStream:Ljava/io/InputStream;
    .restart local v12       #inStream:Ljava/io/InputStream;
    :goto_1ff
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_204
    .catchall {:try_start_1c6 .. :try_end_204} :catchall_2a5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1c6 .. :try_end_204} :catch_230
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_204} :catch_24d
    .catch Ljava/lang/SecurityException; {:try_start_1c6 .. :try_end_204} :catch_263
    .catch Ljava/lang/RuntimeException; {:try_start_1c6 .. :try_end_204} :catch_279
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_204} :catch_28f

    .line 493
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .local v16, outStream:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 494
    .local v3, a:I
    :goto_205
    :try_start_205
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v3, v0, :cond_232

    .line 495
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_214
    .catchall {:try_start_205 .. :try_end_214} :catchall_2bc
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_205 .. :try_end_214} :catch_215
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_214} :catch_2cc
    .catch Ljava/lang/SecurityException; {:try_start_205 .. :try_end_214} :catch_2c8
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_214} :catch_2c4
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_214} :catch_2c0

    goto :goto_205

    .line 501
    :catch_215
    move-exception v6

    move-object/from16 v15, v16

    .line 503
    .end local v3           #a:I
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v8           #header:[Lorg/apache/http/Header;
    .end local v11           #i:I
    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v19           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #response:Lorg/apache/http/HttpResponse;
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_218
    :try_start_218
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_21b
    .catchall {:try_start_218 .. :try_end_21b} :catchall_2a5

    .line 504
    const/16 v21, 0x0

    .line 522
    if-eqz v12, :cond_222

    .line 523
    :try_start_21f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_222
    if-eqz v15, :cond_227

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_227} :catch_248

    .line 534
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_227
    :goto_227
    return-object v21

    .line 487
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v8       #header:[Lorg/apache/http/Header;
    .restart local v11       #i:I
    .restart local v19       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #response:Lorg/apache/http/HttpResponse;
    :cond_228
    :try_start_228
    const-string v21, "ImageTest"

    const-string v22, "is data Stream gzip Not used"

    invoke-static/range {v21 .. v22}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22f
    .catchall {:try_start_228 .. :try_end_22f} :catchall_2a5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_228 .. :try_end_22f} :catch_230
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_22f} :catch_24d
    .catch Ljava/lang/SecurityException; {:try_start_228 .. :try_end_22f} :catch_263
    .catch Ljava/lang/RuntimeException; {:try_start_228 .. :try_end_22f} :catch_279
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_22f} :catch_28f

    goto :goto_1ff

    .line 501
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v8           #header:[Lorg/apache/http/Header;
    .end local v11           #i:I
    .end local v19           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v20           #response:Lorg/apache/http/HttpResponse;
    :catch_230
    move-exception v6

    goto :goto_218

    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #a:I
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v8       #header:[Lorg/apache/http/Header;
    .restart local v11       #i:I
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v20       #response:Lorg/apache/http/HttpResponse;
    :cond_232
    move-object/from16 v15, v16

    .line 522
    .end local v3           #a:I
    .end local v5           #contentEncoding:Lorg/apache/http/Header;
    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v19           #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_234
    if-eqz v12, :cond_239

    .line 523
    :try_start_236
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_239
    if-eqz v15, :cond_23e

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_23e} :catch_243

    .line 531
    :cond_23e
    :goto_23e
    if-nez v15, :cond_2b6

    .line 532
    const/16 v21, 0x0

    goto :goto_227

    .line 526
    :catch_243
    move-exception v6

    .line 527
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23e

    .line 526
    .end local v8           #header:[Lorg/apache/http/Header;
    .end local v11           #i:I
    .end local v20           #response:Lorg/apache/http/HttpResponse;
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    :catch_248
    move-exception v6

    .line 527
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_227

    .line 505
    .end local v6           #e:Ljava/io/IOException;
    :catch_24d
    move-exception v6

    .line 507
    .restart local v6       #e:Ljava/io/IOException;
    :goto_24e
    :try_start_24e
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_251
    .catchall {:try_start_24e .. :try_end_251} :catchall_2a5

    .line 508
    const/16 v21, 0x0

    .line 522
    if-eqz v12, :cond_258

    .line 523
    :try_start_255
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_258
    if-eqz v15, :cond_227

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_25d} :catch_25e

    goto :goto_227

    .line 526
    :catch_25e
    move-exception v6

    .line 527
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_227

    .line 509
    .end local v6           #e:Ljava/io/IOException;
    :catch_263
    move-exception v6

    .line 511
    .local v6, e:Ljava/lang/SecurityException;
    :goto_264
    :try_start_264
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_267
    .catchall {:try_start_264 .. :try_end_267} :catchall_2a5

    .line 512
    const/16 v21, 0x0

    .line 522
    if-eqz v12, :cond_26e

    .line 523
    :try_start_26b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_26e
    if-eqz v15, :cond_227

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_273} :catch_274

    goto :goto_227

    .line 526
    :catch_274
    move-exception v6

    .line 527
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_227

    .line 513
    .end local v6           #e:Ljava/io/IOException;
    :catch_279
    move-exception v6

    .line 514
    .local v6, e:Ljava/lang/RuntimeException;
    :goto_27a
    :try_start_27a
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_27d
    .catchall {:try_start_27a .. :try_end_27d} :catchall_2a5

    .line 515
    const/16 v21, 0x0

    .line 522
    if-eqz v12, :cond_284

    .line 523
    :try_start_281
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_284
    if-eqz v15, :cond_227

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_281 .. :try_end_289} :catch_28a

    goto :goto_227

    .line 526
    :catch_28a
    move-exception v6

    .line 527
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_227

    .line 516
    .end local v6           #e:Ljava/io/IOException;
    :catch_28f
    move-exception v6

    .line 518
    .local v6, e:Ljava/lang/Exception;
    :goto_290
    :try_start_290
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_293
    .catchall {:try_start_290 .. :try_end_293} :catchall_2a5

    .line 519
    const/16 v21, 0x0

    .line 522
    if-eqz v12, :cond_29a

    .line 523
    :try_start_297
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_29a
    if-eqz v15, :cond_227

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29f
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_29f} :catch_2a0

    goto :goto_227

    .line 526
    :catch_2a0
    move-exception v6

    .line 527
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_227

    .line 521
    .end local v6           #e:Ljava/io/IOException;
    :catchall_2a5
    move-exception v21

    .line 522
    :goto_2a6
    if-eqz v12, :cond_2ab

    .line 523
    :try_start_2a8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 524
    :cond_2ab
    if-eqz v15, :cond_2b0

    .line 525
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b0
    .catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2b0} :catch_2b1

    .line 528
    :cond_2b0
    :goto_2b0
    throw v21

    .line 526
    :catch_2b1
    move-exception v6

    .line 527
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b0

    .line 534
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #header:[Lorg/apache/http/Header;
    .restart local v11       #i:I
    .restart local v20       #response:Lorg/apache/http/HttpResponse;
    :cond_2b6
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    goto/16 :goto_227

    .line 521
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #a:I
    .restart local v5       #contentEncoding:Lorg/apache/http/Header;
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #resEntity:Lorg/apache/http/HttpEntity;
    :catchall_2bc
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2a6

    .line 516
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2c0
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_290

    .line 513
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2c4
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_27a

    .line 509
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2c8
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_264

    .line 505
    .end local v15           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_2cc
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_24e
.end method

.method public getHashResData(Ljava/lang/String;)I
    .registers 4
    .parameter "xmlUrl"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, resData:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->hResData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    return v0
.end method

.method public getResHead()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->APHeadResStatus:I

    return v0
.end method

.method public setHashResData(Ljava/lang/String;I)V
    .registers 5
    .parameter "xmlUrl"
    .parameter "resData"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->hResData:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public setResHead(I)V
    .registers 2
    .parameter "resData"

    .prologue
    .line 65
    iput p1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsDataClient;->APHeadResStatus:I

    .line 66
    return-void
.end method
