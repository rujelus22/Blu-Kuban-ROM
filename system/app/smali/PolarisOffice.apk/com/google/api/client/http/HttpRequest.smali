.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field public content:Lcom/google/api/client/http/HttpContent;

.field public disableContentLogging:Z

.field public headers:Lcom/google/api/client/http/HttpHeaders;

.field public final method:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field public url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;)V
    .registers 4
    .parameter "transport"
    .parameter "method"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 64
    iget-object v0, p1, Lcom/google/api/client/http/HttpTransport;->defaultHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 65
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/HttpResponse;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v20, v0

    .line 91
    .local v20, transport:Lcom/google/api/client/http/HttpTransport;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/api/client/http/HttpTransport;->intercepters:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/api/client/http/HttpExecuteIntercepter;

    .line 92
    .local v11, intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    move-object/from16 v0, p0

    invoke-interface {v11, v0}, Lcom/google/api/client/http/HttpExecuteIntercepter;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    goto :goto_10

    .line 95
    .end local v11           #intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    :cond_22
    invoke-static {}, Lcom/google/api/client/http/HttpTransport;->useLowLevelHttpTransport()Lcom/google/api/client/http/LowLevelHttpTransport;

    move-result-object v16

    .line 97
    .local v16, lowLevelHttpTransport:Lcom/google/api/client/http/LowLevelHttpTransport;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 98
    .local v17, method:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v21, v0

    .line 99
    .local v21, url:Lcom/google/api/client/http/GenericUrl;
    invoke-virtual/range {v21 .. v21}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v22

    .line 101
    .local v22, urlString:Ljava/lang/String;
    const-string v24, "DELETE"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e3

    .line 102
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v15

    .line 118
    .local v15, lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_4a
    sget-object v14, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 119
    .local v14, logger:Ljava/util/logging/Logger;
    sget-object v24, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    .line 120
    .local v13, loggable:Z
    const/4 v12, 0x0

    .line 122
    .local v12, logbuf:Ljava/lang/StringBuilder;
    if-eqz v13, :cond_82

    .line 123
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .restart local v12       #logbuf:Ljava/lang/StringBuilder;
    const-string v24, "-------------- REQUEST  --------------"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_90
    :goto_90
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_16d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 130
    .local v9, headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 131
    .local v23, value:Ljava/lang/String;
    if-eqz v23, :cond_90

    .line 132
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 133
    .local v18, name:Ljava/lang/String;
    if-eqz v12, :cond_db

    .line 134
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v24, "Authorization"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_166

    sget-object v24, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v24

    if-nez v24, :cond_166

    .line 136
    const-string v24, "<Not Logged>"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :goto_d4
    sget-object v24, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_db
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 103
    .end local v9           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #logbuf:Ljava/lang/StringBuilder;
    .end local v13           #loggable:Z
    .end local v14           #logger:Ljava/util/logging/Logger;
    .end local v15           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v18           #name:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_e3
    const-string v24, "GET"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f9

    .line 104
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v15

    .restart local v15       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_4a

    .line 105
    .end local v15           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_f9
    const-string v24, "PATCH"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11d

    .line 106
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/LowLevelHttpTransport;->supportsPatch()Z

    move-result v24

    if-nez v24, :cond_113

    .line 107
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "HTTP transport doesn\'t support PATCH"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 110
    :cond_113
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v15

    .restart local v15       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_4a

    .line 111
    .end local v15           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_11d
    const-string v24, "POST"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_133

    .line 112
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v15

    .restart local v15       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_4a

    .line 113
    .end local v15           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_133
    const-string v24, "PUT"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_149

    .line 114
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v15

    .restart local v15       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_4a

    .line 116
    .end local v15           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_149
    new-instance v24, Ljava/lang/IllegalArgumentException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "illegal method: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 138
    .restart local v9       #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12       #logbuf:Ljava/lang/StringBuilder;
    .restart local v13       #loggable:Z
    .restart local v14       #logger:Ljava/util/logging/Logger;
    .restart local v15       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v23       #value:Ljava/lang/String;
    :cond_166
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d4

    .line 146
    .end local v9           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18           #name:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_16d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 147
    .local v4, content:Lcom/google/api/client/http/HttpContent;
    if-eqz v4, :cond_267

    .line 149
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, contentEncoding:Ljava/lang/String;
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v7

    .line 151
    .local v7, contentLength:J
    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, contentType:Ljava/lang/String;
    const-wide/16 v24, 0x0

    cmp-long v24, v7, v24

    if-eqz v24, :cond_193

    if-nez v6, :cond_193

    if-eqz v5, :cond_193

    const-string v24, "application/"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_19d

    :cond_193
    const-string v24, "text/"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_264

    .line 156
    :cond_19d
    if-eqz v13, :cond_1a7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->disableContentLogging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1b1

    :cond_1a7
    sget-object v24, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v24

    if-eqz v24, :cond_1b7

    .line 158
    :cond_1b1
    new-instance v3, Lcom/google/api/client/http/LogContent;

    invoke-direct/range {v3 .. v8}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;J)V

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .local v3, content:Lcom/google/api/client/http/HttpContent;
    move-object v4, v3

    .line 163
    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    :cond_1b7
    const-wide/16 v24, 0x100

    cmp-long v24, v7, v24

    if-ltz v24, :cond_264

    .line 164
    new-instance v3, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v3, v4, v5}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 165
    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v7

    .line 170
    :goto_1ca
    if-eqz v13, :cond_234

    .line 171
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Content-Type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-eqz v6, :cond_20e

    .line 174
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Content-Encoding: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_20e
    const-wide/16 v24, 0x0

    cmp-long v24, v7, v24

    if-ltz v24, :cond_234

    .line 178
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Content-Length: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_234
    invoke-virtual {v15, v3}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 184
    .end local v5           #contentType:Ljava/lang/String;
    .end local v6           #contentEncoding:Ljava/lang/String;
    .end local v7           #contentLength:J
    :goto_237
    if-eqz v13, :cond_242

    .line 185
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 188
    :cond_242
    new-instance v19, Lcom/google/api/client/http/HttpResponse;

    invoke-virtual {v15}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/LowLevelHttpResponse;)V

    .line 190
    .local v19, response:Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    move/from16 v24, v0

    if-nez v24, :cond_263

    .line 191
    new-instance v24, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v24

    .line 193
    :cond_263
    return-object v19

    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .end local v19           #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #contentType:Ljava/lang/String;
    .restart local v6       #contentEncoding:Ljava/lang/String;
    .restart local v7       #contentLength:J
    :cond_264
    move-object v3, v4

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_1ca

    .end local v3           #content:Lcom/google/api/client/http/HttpContent;
    .end local v5           #contentType:Ljava/lang/String;
    .end local v6           #contentEncoding:Ljava/lang/String;
    .end local v7           #contentLength:J
    .restart local v4       #content:Lcom/google/api/client/http/HttpContent;
    :cond_267
    move-object v3, v4

    .end local v4           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v3       #content:Lcom/google/api/client/http/HttpContent;
    goto :goto_237
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "encodedUrl"

    .prologue
    .line 70
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 71
    return-void
.end method
