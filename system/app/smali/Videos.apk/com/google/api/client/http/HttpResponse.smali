.class public final Lcom/google/api/client/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field public final contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field public final contentType:Ljava/lang/String;

.field public disableContentLogging:Z

.field public final headers:Lcom/google/api/client/http/HttpHeaders;

.field public final isSuccessStatusCode:Z

.field public final request:Lcom/google/api/client/http/HttpRequest;

.field private response:Lcom/google/api/client/http/LowLevelHttpResponse;

.field public final statusCode:I

.field public final statusMessage:Ljava/lang/String;

.field public final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    .line 104
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponse;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 105
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 106
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/api/client/http/HttpResponse;->contentLength:J

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusCode()I

    move-result v2

    .line 111
    iput v2, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 112
    invoke-static {v2}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 114
    iput-object v3, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 115
    sget-object v5, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 116
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    .line 117
    const/4 v1, 0x0

    .line 118
    if-eqz v6, :cond_160

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string v4, "-------------- RESPONSE --------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    .line 122
    if-eqz v4, :cond_ed

    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_5f
    :goto_5f
    sget-object v2, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    .line 133
    :goto_65
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderCount()I

    move-result v7

    .line 134
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 135
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 136
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v9

    .line 137
    invoke-static {v1}, Lcom/google/api/client/http/HttpHeaders;->getFieldNameMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v10

    .line 138
    new-instance v11, Lcom/google/api/client/util/ArrayValueMap;

    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v11, v1}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 139
    const/4 v1, 0x0

    move v4, v1

    :goto_8a
    if-ge v4, v7, :cond_150

    .line 140
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderName(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v12

    .line 142
    if-eqz v6, :cond_ba

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ": "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v13, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_ba
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    if-nez v1, :cond_15d

    .line 150
    :goto_c2
    invoke-virtual {v9, v3}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v13

    .line 151
    if-eqz v13, :cond_138

    .line 152
    invoke-virtual {v13}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 154
    invoke-static {v3}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 156
    invoke-static {v3}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 158
    invoke-virtual {v13}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v1, v8, v12}, Lcom/google/api/client/http/HttpResponse;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v3, v1, v12}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 139
    :goto_e9
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8a

    .line 125
    :cond_ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    if-eqz v3, :cond_5f

    .line 127
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5f

    .line 160
    :cond_fd
    invoke-static {v8, v3}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v14, Ljava/lang/Iterable;

    invoke-static {v1, v14}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 164
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v13, v1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 165
    if-nez v1, :cond_11c

    .line 166
    invoke-static {v3}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    .line 167
    iget-object v14, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v13, v14, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    :cond_11c
    const-class v13, Ljava/lang/Object;

    if-ne v3, v13, :cond_129

    const/4 v3, 0x0

    .line 170
    :goto_121
    invoke-static {v3, v8, v12}, Lcom/google/api/client/http/HttpResponse;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 169
    :cond_129
    invoke-static {v3}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_121

    .line 173
    :cond_12e
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-static {v3, v8, v12}, Lcom/google/api/client/http/HttpResponse;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e9

    .line 178
    :cond_138
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 179
    if-nez v1, :cond_14c

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v13, p0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v13, v3, v1}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    :cond_14c
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 186
    :cond_150
    invoke-virtual {v11}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    .line 188
    if-eqz v6, :cond_15c

    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 191
    :cond_15c
    return-void

    :cond_15d
    move-object v3, v1

    goto/16 :goto_c2

    :cond_160
    move-object v2, v1

    goto/16 :goto_65
.end method

.method public static isSuccessStatusCode(I)Z
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 342
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "valueType"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 195
    .local v0, resolved:Ljava/lang/reflect/Type;
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v8, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 208
    .local v8, response:Lcom/google/api/client/http/LowLevelHttpResponse;
    if-nez v8, :cond_7

    .line 209
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    .line 246
    :cond_6
    :goto_6
    return-object v0

    .line 211
    :cond_7
    iget-object v9, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v9}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 212
    .local v0, content:Ljava/io/InputStream;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 213
    if-eqz v0, :cond_6

    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, debugContentByteArray:[B
    sget-object v7, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 216
    .local v7, logger:Ljava/util/logging/Logger;
    iget-boolean v9, p0, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    if-nez v9, :cond_21

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-nez v9, :cond_29

    :cond_21
    sget-object v9, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_9b

    :cond_29
    const/4 v6, 0x1

    .line 218
    .local v6, loggable:Z
    :goto_2a
    if-eqz v6, :cond_5a

    .line 219
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v5, debugStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v5}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 221
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 222
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0           #content:Ljava/io/InputStream;
    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    .restart local v0       #content:Ljava/io/InputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 226
    .end local v5           #debugStream:Ljava/io/ByteArrayOutputStream;
    :cond_5a
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 227
    .local v2, contentEncoding:Ljava/lang/String;
    if-eqz v2, :cond_82

    const-string v9, "gzip"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 228
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    .end local v0           #content:Ljava/io/InputStream;
    .local v1, content:Ljava/io/InputStream;
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/google/api/client/http/HttpResponse;->contentLength:J

    .line 230
    if-eqz v6, :cond_9d

    .line 231
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .restart local v5       #debugStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v5}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 233
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 237
    .end local v1           #content:Ljava/io/InputStream;
    .end local v5           #debugStream:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #content:Ljava/io/InputStream;
    :cond_82
    :goto_82
    if-eqz v6, :cond_97

    .line 239
    iget-object v3, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 240
    .local v3, contentType:Ljava/lang/String;
    array-length v9, v4

    if-eqz v9, :cond_97

    invoke-static {v3}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 241
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v9}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 244
    .end local v3           #contentType:Ljava/lang/String;
    :cond_97
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    goto/16 :goto_6

    .line 216
    .end local v2           #contentEncoding:Ljava/lang/String;
    .end local v6           #loggable:Z
    :cond_9b
    const/4 v6, 0x0

    goto :goto_2a

    .end local v0           #content:Ljava/io/InputStream;
    .restart local v1       #content:Ljava/io/InputStream;
    .restart local v2       #contentEncoding:Ljava/lang/String;
    .restart local v6       #loggable:Z
    :cond_9d
    move-object v0, v1

    .end local v1           #content:Ljava/io/InputStream;
    .restart local v0       #content:Ljava/io/InputStream;
    goto :goto_82
.end method

.method public getParser()Lcom/google/api/client/http/HttpParser;
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    iget-object v1, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->getParser(Ljava/lang/String;)Lcom/google/api/client/http/HttpParser;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 254
    .local v0, content:Ljava/io/InputStream;
    if-eqz v0, :cond_9

    .line 255
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 257
    :cond_9
    return-void
.end method

.method public parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    .local p1, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getParser()Lcom/google/api/client/http/HttpParser;

    move-result-object v1

    .line 287
    .local v1, parser:Lcom/google/api/client/http/HttpParser;
    if-nez v1, :cond_4a

    .line 288
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 289
    .local v0, content:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    if-nez v2, :cond_2f

    .line 290
    if-eqz v0, :cond_2d

    .line 291
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing Content-Type header in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_2d
    const/4 v2, 0x0

    .line 298
    .end local v0           #content:Ljava/io/InputStream;
    :goto_2e
    return-object v2

    .line 296
    .restart local v0       #content:Ljava/io/InputStream;
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No parser defined for Content-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    .end local v0           #content:Ljava/io/InputStream;
    :cond_4a
    invoke-interface {v1, p0, p1}, Lcom/google/api/client/http/HttpParser;->parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2e
.end method

.method public parseAsString()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x1000

    .line 311
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 312
    .local v3, content:Ljava/io/InputStream;
    if-nez v3, :cond_b

    .line 313
    const-string v9, ""

    .line 334
    :goto_a
    return-object v9

    .line 316
    :cond_b
    :try_start_b
    iget-wide v4, p0, Lcom/google/api/client/http/HttpResponse;->contentLength:J

    .line 317
    .local v4, contentLength:J
    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-nez v9, :cond_3b

    .line 318
    .local v1, bufferSize:I
    :goto_13
    const/4 v6, 0x0

    .line 319
    .local v6, length:I
    new-array v0, v1, [B

    .line 320
    .local v0, buffer:[B
    const/16 v9, 0x1000

    new-array v8, v9, [B

    .line 322
    .local v8, tmp:[B
    :goto_1a
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, bytesRead:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3d

    .line 323
    add-int v9, v6, v2

    if-le v9, v1, :cond_35

    .line 324
    shl-int/lit8 v9, v1, 0x1

    add-int v10, v6, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 325
    new-array v7, v1, [B

    .line 326
    .local v7, newbuffer:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    move-object v0, v7

    .line 329
    .end local v7           #newbuffer:[B
    :cond_35
    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    add-int/2addr v6, v2

    goto :goto_1a

    .line 317
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #bytesRead:I
    .end local v6           #length:I
    .end local v8           #tmp:[B
    :cond_3b
    long-to-int v1, v4

    goto :goto_13

    .line 332
    .restart local v0       #buffer:[B
    .restart local v1       #bufferSize:I
    .restart local v2       #bytesRead:I
    .restart local v6       #length:I
    .restart local v8       #tmp:[B
    :cond_3d
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_47

    .line 334
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_a

    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #bytesRead:I
    .end local v4           #contentLength:J
    .end local v6           #length:I
    .end local v8           #tmp:[B
    :catchall_47
    move-exception v9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9
.end method
