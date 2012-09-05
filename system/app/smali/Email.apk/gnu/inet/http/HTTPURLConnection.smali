.class public Lgnu/inet/http/HTTPURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HTTPURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;
    }
.end annotation


# static fields
.field private static final connectionPool:Ljava/util/Map;


# instance fields
.field private agent:Ljava/lang/String;

.field private connection:Lgnu/inet/http/HTTPConnection;

.field private errorSink:Ljava/io/ByteArrayInputStream;

.field private keepAlive:Z

.field private maxConnections:I

.field private proxyHostname:Ljava/lang/String;

.field private proxyPort:I

.field private request:Lgnu/inet/http/Request;

.field private requestHeaders:Lgnu/inet/http/Headers;

.field private requestMethodSetExplicitly:Z

.field private requestSink:Ljava/io/ByteArrayOutputStream;

.field private response:Lgnu/inet/http/Response;

.field private responseSink:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 99
    new-instance v0, Lgnu/inet/http/Headers;

    invoke-direct {v0}, Lgnu/inet/http/Headers;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    .line 100
    new-instance v0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;

    invoke-direct {v0, p0}, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;-><init>(Lgnu/inet/http/HTTPURLConnection;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lgnu/inet/http/HTTPURLConnection;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lgnu/inet/http/HTTPURLConnection;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    return p1
.end method

.method static synthetic access$202(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lgnu/inet/http/HTTPURLConnection;->agent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lgnu/inet/http/HTTPURLConnection;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lgnu/inet/http/HTTPURLConnection;->keepAlive:Z

    return p1
.end method

.method static synthetic access$402(Lgnu/inet/http/HTTPURLConnection;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lgnu/inet/http/HTTPURLConnection;->maxConnections:I

    return p1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-nez v0, :cond_e

    .line 411
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1, p2}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :goto_d
    return-void

    .line 415
    :cond_e
    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public connect()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v12, -0x1

    const/16 v11, 0x2f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 137
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-eqz v0, :cond_b

    .line 297
    :goto_a
    return-void

    .line 141
    :cond_b
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 143
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 145
    if-gez v0, :cond_29

    .line 147
    if-eqz v5, :cond_117

    const/16 v0, 0x1bb

    .line 150
    :cond_29
    :goto_29
    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 151
    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    .line 153
    if-eqz v6, :cond_202

    .line 155
    const/16 v1, 0x3a

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 156
    if-eq v9, v12, :cond_202

    .line 158
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move-object v6, v1

    .line 162
    :goto_4b
    if-nez v9, :cond_11b

    move-object v1, v2

    :goto_4e
    move-object v13, v3

    move v3, v0

    move-object v0, v13

    .line 169
    :cond_51
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    if-nez v6, :cond_5b

    .line 171
    invoke-virtual {p0, v4, v3, v5}, Lgnu/inet/http/HTTPURLConnection;->getConnection(Ljava/lang/String;IZ)Lgnu/inet/http/HTTPConnection;

    move-result-object v6

    iput-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    .line 173
    :cond_5b
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    if-eqz v6, :cond_72

    .line 175
    iget v6, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    if-gez v6, :cond_69

    .line 177
    if-eqz v5, :cond_122

    const/16 v6, 0x1bb

    :goto_67
    iput v6, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    .line 180
    :cond_69
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    iget v10, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    invoke-virtual {v6, v9, v10}, Lgnu/inet/http/HTTPConnection;->setProxy(Ljava/lang/String;I)V

    .line 182
    :cond_72
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v6, v9, v0}, Lgnu/inet/http/HTTPConnection;->newRequest(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/http/Request;

    move-result-object v6

    iput-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    .line 183
    iget-boolean v6, p0, Lgnu/inet/http/HTTPURLConnection;->keepAlive:Z

    if-nez v6, :cond_89

    .line 185
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    const-string v9, "Connection"

    const-string v10, "close"

    invoke-virtual {v6, v9, v10}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_89
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->agent:Ljava/lang/String;

    if-eqz v6, :cond_96

    .line 189
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    const-string v9, "User-Agent"

    iget-object v10, p0, Lgnu/inet/http/HTTPURLConnection;->agent:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_96
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v6}, Lgnu/inet/http/Request;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v6

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v6, v9}, Lgnu/inet/http/Headers;->putAll(Ljava/util/Map;)V

    .line 192
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_b5

    .line 194
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 195
    new-instance v9, Lgnu/inet/http/ByteArrayRequestBodyWriter;

    invoke-direct {v9, v6}, Lgnu/inet/http/ByteArrayRequestBodyWriter;-><init>([B)V

    .line 196
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v6, v9}, Lgnu/inet/http/Request;->setRequestBodyWriter(Lgnu/inet/http/RequestBodyWriter;)V

    .line 198
    :cond_b5
    new-instance v6, Lgnu/inet/http/ByteArrayResponseBodyReader;

    invoke-direct {v6}, Lgnu/inet/http/ByteArrayResponseBodyReader;-><init>()V

    .line 199
    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v9, v6}, Lgnu/inet/http/Request;->setResponseBodyReader(Lgnu/inet/http/ResponseBodyReader;)V

    .line 200
    if-eqz v1, :cond_cb

    .line 202
    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    new-instance v10, Lgnu/inet/http/HTTPURLConnection$1;

    invoke-direct {v10, p0, v1}, Lgnu/inet/http/HTTPURLConnection$1;-><init>(Lgnu/inet/http/HTTPURLConnection;Lgnu/inet/http/Credentials;)V

    invoke-virtual {v9, v10}, Lgnu/inet/http/Request;->setAuthenticator(Lgnu/inet/http/Authenticator;)V

    .line 209
    :cond_cb
    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v9}, Lgnu/inet/http/Request;->dispatch()Lgnu/inet/http/Response;

    move-result-object v9

    iput-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    .line 210
    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v9}, Lgnu/inet/http/Response;->getCodeClass()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1d3

    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->getInstanceFollowRedirects()Z

    move-result v9

    if-eqz v9, :cond_1d3

    .line 213
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    const-string v9, "Location"

    invoke-virtual {v6, v9}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    if-eqz v6, :cond_1fb

    .line 216
    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v9}, Lgnu/inet/http/HTTPConnection;->getURI()Ljava/lang/String;

    move-result-object v9

    .line 217
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 218
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_126

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_126

    .line 221
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v7

    :goto_10b
    move v13, v0

    move-object v0, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v13

    .line 295
    :goto_111
    if-nez v6, :cond_51

    .line 296
    iput-boolean v7, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    goto/16 :goto_a

    .line 147
    :cond_117
    const/16 v0, 0x50

    goto/16 :goto_29

    .line 162
    :cond_11b
    new-instance v1, Lgnu/inet/http/Credentials;

    invoke-direct {v1, v9, v6}, Lgnu/inet/http/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 177
    :cond_122
    const/16 v6, 0x50

    goto/16 :goto_67

    .line 224
    :cond_126
    const-string v9, "http:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_161

    .line 226
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->close()V

    .line 227
    iput-object v2, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    .line 229
    const/4 v0, 0x7

    .line 230
    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 231
    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 232
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 233
    if-eq v5, v12, :cond_15e

    .line 235
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 236
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 242
    :goto_154
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move v6, v8

    move-object v3, v4

    move v4, v0

    move v0, v7

    .line 244
    goto :goto_10b

    .line 240
    :cond_15e
    const/16 v0, 0x50

    goto :goto_154

    .line 245
    :cond_161
    const-string v9, "https:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19e

    .line 247
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->close()V

    .line 248
    iput-object v2, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    .line 250
    const/16 v0, 0x8

    .line 251
    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 252
    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 253
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 254
    if-eq v5, v12, :cond_19b

    .line 256
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 257
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 263
    :goto_190
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move v6, v7

    move-object v3, v4

    move v4, v0

    move v0, v7

    .line 265
    goto/16 :goto_10b

    .line 261
    :cond_19b
    const/16 v0, 0x1bb

    goto :goto_190

    .line 266
    :cond_19e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1fb

    .line 269
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_1b2

    move-object v0, v6

    :goto_1ab
    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v7

    .line 281
    goto/16 :goto_10b

    .line 277
    :cond_1b2
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 278
    if-ne v9, v12, :cond_1cc

    const-string v0, "/"

    .line 279
    :goto_1ba
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1ab

    .line 278
    :cond_1cc
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1ba

    .line 287
    :cond_1d3
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Lgnu/inet/http/ByteArrayResponseBodyReader;->toByteArray()[B

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->responseSink:Ljava/io/ByteArrayInputStream;

    .line 288
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v6}, Lgnu/inet/http/Response;->getCode()I

    move-result v6

    const/16 v9, 0x194

    if-ne v6, v9, :cond_1f8

    .line 290
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->responseSink:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->errorSink:Ljava/io/ByteArrayInputStream;

    .line 291
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f8
    move v6, v8

    goto/16 :goto_111

    :cond_1fb
    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v8

    goto/16 :goto_10b

    :cond_202
    move-object v9, v6

    move-object v6, v2

    goto/16 :goto_4b
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    if-eqz v0, :cond_9

    .line 343
    :try_start_4
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 349
    :cond_9
    :goto_9
    return-void

    .line 345
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method getConnection(Ljava/lang/String;IZ)Lgnu/inet/http/HTTPConnection;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->keepAlive:Z

    if-eqz v0, :cond_58

    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    if-eqz p3, :cond_52

    const-string v0, "https://"

    :goto_a
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    sget-object v2, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    monitor-enter v2

    .line 315
    :try_start_1f
    sget-object v0, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/http/HTTPConnection;

    .line 316
    if-nez v0, :cond_50

    .line 318
    new-instance v0, Lgnu/inet/http/HTTPConnection;

    invoke-direct {v0, p1, p2, p3}, Lgnu/inet/http/HTTPConnection;-><init>(Ljava/lang/String;IZ)V

    .line 320
    sget-object v3, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Lgnu/inet/http/HTTPURLConnection;->maxConnections:I

    if-ne v3, v4, :cond_4b

    .line 323
    sget-object v3, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 324
    sget-object v4, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_4b
    sget-object v3, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_55

    .line 334
    :goto_51
    return-object v0

    .line 308
    :cond_52
    const-string v0, "http://"

    goto :goto_a

    .line 328
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    .line 332
    :cond_58
    new-instance v0, Lgnu/inet/http/HTTPConnection;

    invoke-direct {v0, p1, p2, p3}, Lgnu/inet/http/HTTPConnection;-><init>(Ljava/lang/String;IZ)V

    goto :goto_51
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 602
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lgnu/inet/http/HTTPURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->errorSink:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_8

    .line 507
    :try_start_5
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_11

    .line 514
    :cond_8
    if-nez p1, :cond_14

    .line 516
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {p0, v0}, Lgnu/inet/http/HTTPURLConnection;->getStatusLine(Lgnu/inet/http/Response;)Ljava/lang/String;

    move-result-object v0

    .line 531
    :goto_10
    return-object v0

    .line 509
    :catch_11
    move-exception v0

    move-object v0, v2

    .line 511
    goto :goto_10

    .line 518
    :cond_14
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 520
    const/4 v0, 0x1

    move v1, v0

    .line 523
    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    move-object v0, v2

    .line 525
    goto :goto_10

    .line 527
    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 528
    add-int/lit8 v1, v1, 0x1

    .line 530
    if-le v1, p1, :cond_24

    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 569
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 573
    :try_start_4
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_e

    .line 580
    :cond_7
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    .line 575
    :catch_e
    move-exception v0

    .line 577
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 585
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 589
    :try_start_4
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_15

    .line 596
    :cond_7
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Response;->getDateHeader(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 597
    if-nez v0, :cond_10

    :goto_f
    return-wide p2

    :cond_10
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    goto :goto_f

    .line 591
    :catch_15
    move-exception v0

    goto :goto_f
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_8

    .line 540
    :try_start_5
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_c

    .line 547
    :cond_8
    if-nez p1, :cond_f

    move-object v0, v2

    .line 564
    :goto_b
    return-object v0

    .line 542
    :catch_c
    move-exception v0

    move-object v0, v2

    .line 544
    goto :goto_b

    .line 551
    :cond_f
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 553
    const/4 v0, 0x1

    move v1, v0

    .line 556
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    move-object v0, v2

    .line 558
    goto :goto_b

    .line 560
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 561
    add-int/lit8 v1, v1, 0x1

    .line 563
    if-le v1, p1, :cond_1f

    .line 564
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 5

    .prologue
    .line 469
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 473
    :try_start_4
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_49

    .line 480
    :cond_7
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v0

    .line 481
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 482
    const-string v1, ""

    iget-object v3, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {p0, v3}, Lgnu/inet/http/HTTPURLConnection;->getStatusLine(Lgnu/inet/http/Response;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 475
    :catch_49
    move-exception v0

    .line 477
    const/4 v0, 0x0

    .line 490
    :goto_4b
    return-object v0

    :cond_4c
    move-object v0, v2

    goto :goto_4b
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 453
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V

    .line 455
    :cond_7
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->doInput:Z

    if-nez v0, :cond_13

    .line 457
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "doInput is false"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_13
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->responseSink:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 424
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_c
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->doOutput:Z

    if-nez v0, :cond_18

    .line 428
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "doOutput is false"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_18
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestMethodSetExplicitly:Z

    if-nez v0, :cond_20

    .line 437
    const-string v0, "POST"

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->method:Ljava/lang/String;

    .line 439
    :cond_20
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_2b

    .line 441
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    .line 443
    :cond_2b
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 610
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V

    .line 612
    :cond_7
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 620
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V

    .line 622
    :cond_7
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStatusLine(Lgnu/inet/http/Response;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 366
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-eqz v0, :cond_c

    .line 368
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 373
    if-nez v2, :cond_1e

    .line 375
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Empty method name"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v2, :cond_53

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 380
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2d

    const/16 v4, 0x5a

    if-le v3, v4, :cond_50

    .line 382
    :cond_2d
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal character \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 387
    :cond_53
    iput-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->method:Ljava/lang/String;

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestMethodSetExplicitly:Z

    .line 389
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1, p2}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
