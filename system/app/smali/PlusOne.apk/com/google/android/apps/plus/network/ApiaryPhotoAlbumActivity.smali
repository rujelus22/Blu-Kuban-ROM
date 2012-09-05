.class public Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryPhotoAlbumActivity.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mImageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    return-void
.end method

.method private processImageAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V
    .registers 4
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v0

    if-nez v0, :cond_e

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing image object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private processPhotoAlbumAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V
    .registers 3
    .parameter "attachment"

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mDisplayName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->PHOTOALBUM:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method protected updateActivity()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->updateActivity()V

    .line 39
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mDisplayName:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->mImageList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->getPlusActivity()Lcom/google/api/services/plus/model/Activity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 46
    .local v0, attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    const-string v3, "photo-album"

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->processPhotoAlbumAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V

    goto :goto_1b

    .line 48
    :cond_37
    const-string v3, "photo"

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->processImageAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V

    goto :goto_1b

    .line 51
    :cond_47
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected attachment type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    .end local v0           #attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    :cond_64
    return-void
.end method
