.class Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;
.super Ljava/lang/Object;
.source "RlzPingService.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzPingService$RlzPingCommunicatorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingCommunicator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/partnersetup/RlzPingService$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPingService$PingCommunicator;-><init>()V

    return-void
.end method


# virtual methods
.method public sendPingForResult(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .parameter "ping"

    .prologue
    const/4 v6, 0x0

    .line 90
    const-string v7, "Mozilla/4.0 (compatible; Win32)"

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 92
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_10
    invoke-virtual {v0, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 95
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 96
    .local v5, statusCode:I
    const/16 v7, 0xc8

    if-eq v5, v7, :cond_46

    .line 97
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while sending ping."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_bc
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_42} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_42} :catch_94

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 131
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :goto_45
    return-object v6

    .line 101
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    .restart local v5       #statusCode:I
    :cond_46
    :try_start_46
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 102
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_5b

    .line 103
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v9, "Null entity in response"

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_bc
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_57} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_57} :catch_94

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_45

    .line 112
    :cond_5b
    :try_start_5b
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_67

    move-result-object v7

    .line 120
    :try_start_5f
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_bc
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_94

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v6, v7

    goto :goto_45

    .line 120
    :catchall_67
    move-exception v7

    :try_start_68
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v7
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_bc
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_94

    .line 122
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    :catch_6c
    move-exception v1

    .line 123
    .local v1, e:Ljava/io/IOException;
    :try_start_6d
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 124
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "I/O error while sending ping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_6d .. :try_end_90} :catchall_bc

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_45

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    :catch_94
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/Exception;
    :try_start_95
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 127
    invoke-static {}, Lcom/google/android/partnersetup/RlzPingService;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while sending ping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_95 .. :try_end_b8} :catchall_bc

    .line 129
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_45

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_bc
    move-exception v6

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v6
.end method
