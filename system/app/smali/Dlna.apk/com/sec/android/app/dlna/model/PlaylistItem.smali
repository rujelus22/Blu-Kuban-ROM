.class public Lcom/sec/android/app/dlna/model/PlaylistItem;
.super Ljava/lang/Object;
.source "PlaylistItem.java"


# instance fields
.field private checked:Z

.field private contentItem:Lcom/samsung/api/ContentItem;

.field private dimed:Z

.field private isDRMFile:Z

.field private playing:Z

.field private sourceServer:Lcom/samsung/api/DeviceItem;


# direct methods
.method public constructor <init>(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V
    .registers 4
    .parameter "source"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->checked:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->dimed:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->playing:Z

    .line 44
    iput-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRMFile:Z

    .line 47
    iput-object p2, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->sourceServer:Lcom/samsung/api/DeviceItem;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 136
    instance-of v3, p1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v3, :cond_31

    move-object v0, p1

    .line 137
    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 138
    .local v0, p:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 139
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    .line 140
    .local v1, pDefaultResource:Lcom/samsung/api/ContentResource;
    iget-object v3, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    .line 141
    .local v2, tDefaultResource:Lcom/samsung/api/ContentResource;
    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    .line 142
    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 143
    const/4 v3, 0x1

    .line 147
    .end local v0           #p:Lcom/sec/android/app/dlna/model/PlaylistItem;
    .end local v1           #pDefaultResource:Lcom/samsung/api/ContentResource;
    .end local v2           #tDefaultResource:Lcom/samsung/api/ContentResource;
    :goto_30
    return v3

    :cond_31
    const/4 v3, 0x0

    goto :goto_30
.end method

.method public getContentItem()Lcom/samsung/api/ContentItem;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    return-object v0
.end method

.method public getDefaultContentResource()Lcom/samsung/api/ContentResource;
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    .line 112
    .local v0, item:Lcom/samsung/api/ContentItem;
    if-nez v0, :cond_8

    .line 113
    const/4 v1, 0x0

    .line 114
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    goto :goto_7
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    if-nez v0, :cond_7

    .line 93
    const-string v0, "No Content"

    .line 94
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getSelectedDevice()Lcom/samsung/api/DeviceItem;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->sourceServer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    if-nez v0, :cond_6

    .line 99
    const/4 v0, 0x6

    .line 100
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    goto :goto_5
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->checked:Z

    return v0
.end method

.method public isDRM()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRMFile:Z

    return v0
.end method

.method public isDimed()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->dimed:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->playing:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->checked:Z

    .line 70
    return-void
.end method

.method public setDRM(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRMFile:Z

    .line 82
    return-void
.end method

.method public setDimed(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->dimed:Z

    .line 74
    return-void
.end method

.method public setPlaying(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->playing:Z

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->sourceServer:Lcom/samsung/api/DeviceItem;

    if-nez v0, :cond_b

    .line 131
    :cond_8
    const-string v0, ""

    .line 132
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->contentItem:Lcom/samsung/api/ContentItem;

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/model/PlaylistItem;->sourceServer:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
