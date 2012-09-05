.class public Lcom/sec/dsm/system/osp/RestClient;
.super Ljava/lang/Object;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/osp/RestClient$HttpMethod;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private headerUtil:Lcom/sec/dsm/system/osp/HeaderUtil;

.field private headers:Ljava/util/HashMap;
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

.field private pathParam:Ljava/util/HashMap;
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

.field private queryParam:Ljava/util/HashMap;
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

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private timeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "appID"
    .parameter "appSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/RestClientException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_3
    iput-object p1, p0, Lcom/sec/dsm/system/osp/RestClient;->context:Landroid/content/Context;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/dsm/system/osp/RestClient;->pathParam:Ljava/util/HashMap;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/dsm/system/osp/RestClient;->queryParam:Ljava/util/HashMap;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/dsm/system/osp/RestClient;->headers:Ljava/util/HashMap;

    .line 95
    const v1, 0x2bf20

    iput v1, p0, Lcom/sec/dsm/system/osp/RestClient;->timeout:I

    .line 97
    new-instance v1, Lcom/sec/dsm/system/osp/HeaderUtil;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/dsm/system/osp/HeaderUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/dsm/system/osp/RestClient;->headerUtil:Lcom/sec/dsm/system/osp/HeaderUtil;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    .line 101
    return-void

    .line 98
    :catch_27
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/sec/dsm/system/osp/RestClientException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/dsm/system/osp/RestClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute(Lcom/sec/dsm/system/osp/RestClient$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;)Lorg/apache/http/HttpResponse;
    .registers 30
    .parameter "method"
    .parameter "uri"
    .parameter "body"
    .parameter "kindOfSignKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/RestClientException;
        }
    .end annotation

    .prologue
    .line 210
    const/16 v21, 0x0

    .line 213
    .local v21, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    const-string v22, "RestClient"

    const-string v23, "execute begin"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->pathParam:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_57

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 216
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "{"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    .line 220
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_57
    const/4 v5, 0x0

    .line 221
    .local v5, authorizationHeader:Ljava/lang/String;
    const/16 v20, 0x0

    .line 223
    .local v20, queryParamStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->headerUtil:Lcom/sec/dsm/system/osp/HeaderUtil;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/dsm/system/osp/HeaderUtil;->generateAuthorizationHeader(Lcom/sec/dsm/system/osp/RestClient$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;)Ljava/lang/String;

    move-result-object v5

    .line 226
    const/4 v15, 0x0

    .line 227
    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->queryParam:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 228
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v15, :cond_b7

    .line 229
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_7d

    .line 231
    :cond_b7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_7d

    .line 236
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f1
    if-eqz v20, :cond_112

    .line 237
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_112
    sget-object v22, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->GET:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1e0

    .line 241
    new-instance v22, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 266
    :cond_129
    :goto_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "User-Agent"

    const-string v24, "SAMSUNG-Android"

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "Accept"

    const-string v24, "*, */*"

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "Accept-Encoding"

    const-string v24, "identity"

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "Content-Type"

    const-string v24, "text/xml"

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "Connection"

    const-string v24, "keep-alive"

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "x-osp-version"

    const-string v24, "v1"

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    const-string v23, "Authorization"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->headers:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_194
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_282

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 275
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v24, v0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1bb} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1bb} :catch_1f9

    goto :goto_194

    .line 344
    .end local v5           #authorizationHeader:Ljava/lang/String;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #queryParamStr:Ljava/lang/String;
    :catch_1bc
    move-exception v6

    .line 346
    .local v6, e:Ljava/io/IOException;
    :try_start_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1ce

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1ce} :catch_327

    .line 351
    :cond_1ce
    :goto_1ce
    new-instance v22, Lcom/sec/dsm/system/osp/RestClientException;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    const-string v24, "NET_0000"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/dsm/system/osp/RestClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v22

    .line 242
    .end local v6           #e:Ljava/io/IOException;
    .restart local v5       #authorizationHeader:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v20       #queryParamStr:Ljava/lang/String;
    :cond_1e0
    :try_start_1e0
    sget-object v22, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->DELETE:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_208

    .line 243
    new-instance v22, Lorg/apache/http/client/methods/HttpDelete;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_1f7} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_129

    .line 352
    .end local v5           #authorizationHeader:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #queryParamStr:Ljava/lang/String;
    :catch_1f9
    move-exception v6

    .line 353
    .local v6, e:Ljava/lang/Exception;
    new-instance v22, Lcom/sec/dsm/system/osp/RestClientException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lcom/sec/dsm/system/osp/RestClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 244
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #authorizationHeader:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v20       #queryParamStr:Ljava/lang/String;
    :cond_208
    :try_start_208
    sget-object v22, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->PUT:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_241

    .line 245
    new-instance v22, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_21f} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_21f} :catch_1f9

    .line 247
    if-eqz p3, :cond_129

    .line 248
    :try_start_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    check-cast v22, Lorg/apache/http/client/methods/HttpPut;

    new-instance v23, Lorg/apache/http/entity/StringEntity;

    const-string v24, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_239
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_221 .. :try_end_239} :catch_23b
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_239} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_239} :catch_1f9

    goto/16 :goto_129

    .line 250
    :catch_23b
    move-exception v6

    .line 251
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :try_start_23c
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_129

    .line 253
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_241
    sget-object v22, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->POST:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_27a

    .line 254
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_258
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_258} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_258} :catch_1f9

    .line 256
    if-eqz p3, :cond_129

    .line 257
    :try_start_25a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    check-cast v22, Lorg/apache/http/client/methods/HttpPost;

    new-instance v23, Lorg/apache/http/entity/StringEntity;

    const-string v24, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_272
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25a .. :try_end_272} :catch_274
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_272} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_272} :catch_1f9

    goto/16 :goto_129

    .line 259
    :catch_274
    move-exception v6

    .line 260
    .restart local v6       #e:Ljava/io/UnsupportedEncodingException;
    :try_start_275
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_129

    .line 263
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_27a
    new-instance v22, Lcom/sec/dsm/system/osp/RestClientException;

    const-string v23, "Invalid HTTP method."

    invoke-direct/range {v22 .. v23}, Lcom/sec/dsm/system/osp/RestClientException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 278
    :cond_282
    new-instance v14, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v14}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 280
    .local v14, httpParams:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dsm/system/osp/RestClient;->timeout:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v14, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/dsm/system/osp/RestClient;->timeout:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v14, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 285
    .local v18, proxyHostName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v19

    .line 286
    .local v19, proxyHostPort:I
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_2c5

    if-eqz v18, :cond_2c5

    .line 287
    new-instance v17, Lorg/apache/http/HttpHost;

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 288
    .local v17, proxyHost:Lorg/apache/http/HttpHost;
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 291
    .end local v17           #proxyHost:Lorg/apache/http/HttpHost;
    :cond_2c5
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 292
    .local v11, hostUri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, hostName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/Uri;->getPort()I

    move-result v9

    .line 294
    .local v9, hostPort:I
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, hostScheme:Ljava/lang/String;
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_2ed

    .line 297
    const-string v22, "https"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_324

    .line 298
    const/16 v9, 0x1bb

    .line 303
    :cond_2ed
    :goto_2ed
    new-instance v13, Lorg/apache/http/HttpHost;

    invoke-direct {v13, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    .local v13, httpHost:Lorg/apache/http/HttpHost;
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 309
    .local v12, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez v18, :cond_300

    .line 310
    const-string v22, "RestClient"

    const-string v23, "ProxyHostName: null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_300
    if-eqz p3, :cond_302

    .line 321
    :cond_302
    new-instance v22, Lcom/sec/dsm/system/osp/RestClient$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/dsm/system/osp/RestClient$1;-><init>(Lcom/sec/dsm/system/osp/RestClient;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/RestClient;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v13, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 343
    const-string v22, "RestClient"

    const-string v23, "execute end"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_323
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_323} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_323} :catch_1f9

    .line 356
    return-object v21

    .line 300
    .end local v12           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #httpHost:Lorg/apache/http/HttpHost;
    :cond_324
    const/16 v9, 0x50

    goto :goto_2ed

    .line 349
    .end local v5           #authorizationHeader:Ljava/lang/String;
    .end local v8           #hostName:Ljava/lang/String;
    .end local v9           #hostPort:I
    .end local v10           #hostScheme:Ljava/lang/String;
    .end local v11           #hostUri:Landroid/net/Uri;
    .end local v14           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #proxyHostName:Ljava/lang/String;
    .end local v19           #proxyHostPort:I
    .end local v20           #queryParamStr:Ljava/lang/String;
    .local v6, e:Ljava/io/IOException;
    :catch_327
    move-exception v22

    goto/16 :goto_1ce
.end method
