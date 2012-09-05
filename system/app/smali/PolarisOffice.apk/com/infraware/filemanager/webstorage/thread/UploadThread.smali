.class public Lcom/infraware/filemanager/webstorage/thread/UploadThread;
.super Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.source "UploadThread.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .parameter "serviceType"
    .parameter "userId"
    .parameter "resultHandler"

    .prologue
    .line 13
    const-string v0, "UPLOAD"

    invoke-direct {p0, v0, p3}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 15
    const-string v0, "UPLOAD"

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->threadType:Ljava/lang/String;

    .line 17
    iput p1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->serviceType:I

    .line 18
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->userId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0xb

    const/4 v9, -0x1

    .line 23
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v5, ""

    invoke-virtual {p0, v10, v1, v2, v5}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v0

    .line 26
    .local v0, webManager:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    const/4 v6, 0x1

    .line 28
    .local v6, bResult:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_15
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v7, v1, :cond_2f

    .line 53
    :goto_1d
    const/4 v1, 0x5

    const-string v2, ""

    invoke-virtual {p0, v10, v1, v9, v2}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    .line 55
    if-eqz v6, :cond_2b

    .line 56
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v10, v1, v9, v2}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    .line 58
    :cond_2b
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->done()V

    .line 59
    return-void

    .line 30
    :cond_2f
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sourceList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    .local v3, sourceFile:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v8, tempFile:Ljava/io/File;
    const/4 v1, 0x3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10, v1, v9, v2}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->targetPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, targetFile:Ljava/lang/String;
    iget v1, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->serviceType:I

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->userId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z

    move-result v6

    .line 39
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->isCancel()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 41
    const/4 v1, -0x7

    const-string v2, ""

    invoke-virtual {p0, v10, v1, v9, v2}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    goto :goto_1d

    .line 45
    :cond_77
    if-nez v6, :cond_7f

    .line 47
    const-string v1, ""

    invoke-virtual {p0, v10, v9, v9, v1}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    goto :goto_1d

    .line 50
    :cond_7f
    const/4 v1, 0x4

    const-string v2, ""

    invoke-virtual {p0, v10, v1, v9, v2}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;->sendMessage(IIILjava/lang/String;)V

    .line 28
    add-int/lit8 v7, v7, 0x1

    goto :goto_15
.end method
