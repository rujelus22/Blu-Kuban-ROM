.class final Lcom/sprint/w/installer/util/HttpUtil$2;
.super Lorg/apache/http/impl/client/BasicResponseHandler;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/util/HttpUtil;->executeAuthHttp(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$psiRequestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sprint/w/installer/util/HttpUtil$2;->val$psiRequestUrl:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/util/HttpUtil$2;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 14
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 262
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 263
    .local v1, code:I
    const/16 v8, 0x194

    if-ge v1, v8, :cond_d9

    .line 264
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP GET for URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/w/installer/util/HttpUtil$2;->val$psiRequestUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server says: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 266
    sparse-switch v1, :sswitch_data_116

    .line 307
    :cond_4a
    :goto_4a
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v8

    :goto_4e
    return-object v8

    .line 270
    :sswitch_4f
    const-string v8, "Location"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, location:Ljava/lang/String;
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Location: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 272
    if-eqz v7, :cond_4a

    .line 274
    :try_start_75
    invoke-static {v7}, Lcom/sprint/w/installer/util/HttpUtil;->executeAuthHttp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_7a

    move-result-object v8

    goto :goto_4e

    .line 275
    :catch_7a
    move-exception v2

    .line 276
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Failed HTTP Auth request after 301|302|304"

    invoke-virtual {v8, v9, v2}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Failed HTTP Auth request after 301|302|304"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_4a

    .line 283
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #location:Ljava/lang/String;
    :sswitch_8e
    const-string v8, "Reason"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 284
    .local v4, headers:[Lorg/apache/http/Header;
    move-object v0, v4

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_97
    if-ge v5, v6, :cond_4a

    aget-object v3, v0, v5

    .line 285
    .local v3, h:Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Expired Authentication Cookie"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 286
    sput-object v11, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "AUTH TOKEN EXPIRED FOR HTTP GET"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 288
    sget-boolean v8, Lcom/sprint/w/installer/util/HttpUtil;->authCookieRequested:Z

    if-nez v8, :cond_4a

    .line 289
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sprint/w/installer/util/HttpUtil;->authCookieRequested:Z

    .line 290
    sput-object v11, Lcom/sprint/w/installer/util/HttpUtil;->authCookie:Ljava/lang/String;

    .line 292
    :try_start_bb
    iget-object v8, p0, Lcom/sprint/w/installer/util/HttpUtil$2;->val$psiRequestUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/sprint/w/installer/util/HttpUtil;->executeAuthHttp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c0} :catch_c1

    goto :goto_4a

    .line 293
    :catch_c1
    move-exception v2

    .line 294
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Failed HTTP Auth request after 403"

    invoke-virtual {v8, v9, v2}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    const-string v9, "Failed HTTP Auth request after 403"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 284
    .end local v2           #e:Ljava/lang/Exception;
    :cond_d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 304
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v3           #h:Lorg/apache/http/Header;
    .end local v4           #headers:[Lorg/apache/http/Header;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_d9
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP GET failed for URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/w/installer/util/HttpUtil$2;->val$psiRequestUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server says: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 266
    nop

    :sswitch_data_116
    .sparse-switch
        0x12d -> :sswitch_4f
        0x12e -> :sswitch_4f
        0x130 -> :sswitch_4f
        0x193 -> :sswitch_8e
    .end sparse-switch
.end method
