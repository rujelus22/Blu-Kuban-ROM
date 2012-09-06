.class public Lcom/estrongs/android/pop/netfs/utils/HttpUploader;
.super Ljava/lang/Object;


# instance fields
.field private arg:Ljava/lang/Object;

.field public arg_1:Ljava/lang/Object;

.field public arg_2:Ljava/lang/Object;

.field private d_thread:Ljava/lang/Thread;

.field private exit:Z

.field private l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

.field private params:[Ljava/lang/Object;

.field private requestUrl:Ljava/lang/String;

.field private uploadEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->requestUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->uploadEntity:Lorg/apache/http/HttpEntity;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->exit:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg_1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg_2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/estrongs/android/pop/netfs/utils/HttpUploader;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->upload()V

    return-void
.end method

.method private isReponseSucc(Lorg/apache/http/HttpResponse;)Z
    .registers 4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_18

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private upload()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->requestUrl:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    if-eqz v2, :cond_13

    move v2, v0

    :goto_e
    iget-object v4, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v2, v4, :cond_38

    :cond_13
    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->uploadEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-boolean v3, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->exit:Z

    if-eqz v3, :cond_62

    const-string v0, "Uploader"

    const-string v1, "upload failed, user cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_e

    :cond_62
    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->isReponseSucc(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-nez v3, :cond_b8

    const-string v1, "HttpUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload failed, server ret:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8d
    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadCompleted(Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9a} :catch_9b

    goto :goto_37

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v2, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_ab
    :try_start_ab
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;->uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b7} :catch_9b

    goto :goto_37

    :cond_b8
    move v0, v1

    goto :goto_84
.end method


# virtual methods
.method public setHttpParams([Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->params:[Ljava/lang/Object;

    return-void
.end method

.method public setNotifyListener(Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->l:Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;

    return-void
.end method

.method public setPrivateArg(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->arg:Ljava/lang/Object;

    return-void
.end method

.method public setUploadEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->uploadEntity:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public startUpload()V
    .registers 2

    new-instance v0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;-><init>(Lcom/estrongs/android/pop/netfs/utils/HttpUploader;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopUpload()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->exit:Z

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->d_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->destroy()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method
