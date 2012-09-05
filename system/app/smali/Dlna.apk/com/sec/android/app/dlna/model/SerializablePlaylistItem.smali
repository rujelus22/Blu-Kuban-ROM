.class public Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;
.super Ljava/lang/Object;
.source "SerializablePlaylistItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field content_type:I

.field createddate:Ljava/lang/String;

.field fileDuration:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field fileSize:Ljava/lang/String;

.field fileType:Ljava/lang/String;

.field isLocalDevice:Z

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileName:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileType:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileSize:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->path:Ljava/lang/String;

    .line 27
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->isLocalDevice:Z

    .line 29
    iput v3, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->content_type:I

    .line 31
    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->createddate:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    .line 35
    .local v0, content:Lcom/samsung/api/ContentItem;
    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getSelectedDevice()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    .line 37
    .local v1, device:Lcom/samsung/api/DeviceItem;
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileType:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileSize:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    const-string v3, "23:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 43
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    const-string v3, "23:"

    const-string v4, "00:"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    .line 45
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "then make fileDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_87
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->path:Ljava/lang/String;

    .line 48
    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->isLocalDevice:Z

    .line 49
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->createddate:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a4

    .line 52
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->content_type:I

    .line 56
    :goto_a3
    return-void

    .line 54
    :cond_a4
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->content_type:I

    goto :goto_a3
.end method


# virtual methods
.method public checkType()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->content_type:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalDevice()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;->isLocalDevice:Z

    return v0
.end method
