.class public Lcom/sec/android/app/sns/http/SnsHttpRequest;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "SnsHttpRequest.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# instance fields
.field final CONTENT_ENCODING_UTF_8:Ljava/lang/String;

.field mFwkReqID:I

.field mFwkReqType:I

.field mHttpMethod:Ljava/lang/String;

.field mInputStream:Ljava/io/InputStream;

.field mbOnSending:Z


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "httpMethod"
    .parameter "reqUri"

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 62
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->CONTENT_ENCODING_UTF_8:Ljava/lang/String;

    .line 73
    iput p1, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mFwkReqID:I

    .line 74
    iput p2, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mFwkReqType:I

    .line 75
    iput-object p3, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mHttpMethod:Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mbOnSending:Z

    .line 79
    :try_start_10
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->setURI(Ljava/net/URI;)V
    :try_end_18
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_18} :catch_19

    .line 84
    :goto_18
    return-void

    .line 80
    :catch_19
    move-exception v0

    .line 81
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 82
    const-string v1, "SNS_HTTPMGR"

    const-string v2, "SnsHttpRequest : CONSTRUCTOR : URISyntaxException occur"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 15
    .parameter "reqID"
    .parameter "reqType"
    .parameter "httpMethod"
    .parameter "reqUri"
    .parameter "userAgent"
    .parameter "body"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p8, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/http/SnsHttpRequest;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz p6, :cond_49

    move-object v2, p6

    .line 130
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 131
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 136
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 137
    .local v0, ise:Lorg/apache/http/entity/InputStreamEntity;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {p7, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, mimeType:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 149
    if-eqz p5, :cond_49

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_49

    .line 150
    const-string v3, "User-Agent"

    invoke-virtual {p0, v3, p5}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0           #ise:Lorg/apache/http/entity/InputStreamEntity;
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_49
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 13
    .parameter "reqID"
    .parameter "reqType"
    .parameter "httpMethod"
    .parameter "reqUri"
    .parameter "userAgent"
    .parameter "body"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p7, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/http/SnsHttpRequest;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p6, :cond_53

    .line 96
    :try_start_5
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    check-cast p6, Ljava/lang/String;

    .end local p6
    const-string v3, "UTF-8"

    invoke-virtual {p6, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 100
    .local v0, be:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v3, "text/xml"

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 101
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 104
    if-eqz p5, :cond_2c

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 105
    const-string v3, "User-Agent"

    invoke-virtual {p0, v3, p5}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2c
    if-eqz p7, :cond_53

    invoke-virtual {p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 109
    invoke-virtual {p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 110
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/message/BasicHeader;>;"
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/Header;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_47} :catch_48

    goto :goto_38

    .line 114
    .end local v0           #be:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/message/BasicHeader;>;"
    :catch_48
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 116
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "SnsHttpRequest : CONSTRUCTOR : UnsupportedEncodingException occur"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_53
    return-void
.end method


# virtual methods
.method public closeInputStream()V
    .registers 3

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 183
    :goto_5
    return-void

    .line 180
    :catch_6
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public getFwkReqID()I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mFwkReqID:I

    return v0
.end method

.method public getFwkReqType()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mFwkReqType:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mHttpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSendingFlag()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mbOnSending:Z

    return v0
.end method

.method public setSendingFlag(Z)V
    .registers 2
    .parameter "bSend"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/sec/android/app/sns/http/SnsHttpRequest;->mbOnSending:Z

    .line 187
    return-void
.end method
