.class public Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryPhotoActivity.java"


# instance fields
.field private mImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

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
    .line 56
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v0

    if-nez v0, :cond_e

    .line 57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing image object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_e
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;->mImage:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->PHOTO:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

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
    .line 33
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->updateActivity()V

    .line 35
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;->mImage:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;->getPlusActivity()Lcom/google/api/services/plus/model/Activity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 41
    .local v0, attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    const-string v3, "photo"

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 42
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;->processImageAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V

    goto :goto_16

    .line 44
    :cond_32
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

    .line 48
    .end local v0           #attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    :cond_4f
    return-void
.end method
