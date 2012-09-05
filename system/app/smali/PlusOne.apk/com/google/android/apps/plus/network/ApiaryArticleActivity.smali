.class public Lcom/google/android/apps/plus/network/ApiaryArticleActivity;
.super Lcom/google/android/apps/plus/network/ApiaryActivity;
.source "ApiaryArticleActivity.java"


# instance fields
.field private mArticle:Lcom/google/api/services/plus/model/ActivityObjectAttachments;

.field private mContent:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageObjectIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachments;",
            ">;"
        }
    .end annotation
.end field

.field private mImageObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachments;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedImage:Lcom/google/api/services/plus/model/ActivityObjectAttachments;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectList:Ljava/util/List;

    return-void
.end method

.method private processArticleAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V
    .registers 3
    .parameter "attachment"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mArticle:Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 79
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mDisplayName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/StringUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mContent:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mUrl:Ljava/lang/String;

    .line 82
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
    .line 90
    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v0

    if-nez v0, :cond_e

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing image object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mDisplayName:Ljava/lang/String;

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
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlusActivity()Lcom/google/api/services/plus/model/Activity;
    .registers 4

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->getPlusActivity()Lcom/google/api/services/plus/model/Activity;

    move-result-object v0

    .line 168
    .local v0, activity:Lcom/google/api/services/plus/model/Activity;
    if-eqz v0, :cond_1b

    .line 169
    invoke-virtual {v0}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mArticle:Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v2, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mSelectedImage:Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v1           #attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    :cond_1b
    return-object v0
.end method

.method public getType()Lcom/google/android/apps/plus/network/ApiaryActivity$Type;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/apps/plus/network/ApiaryActivity$Type;->ARTICLE:Lcom/google/android/apps/plus/network/ApiaryActivity$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mUrl:Ljava/lang/String;

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
    const/4 v3, 0x0

    .line 45
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->updateActivity()V

    .line 47
    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mDisplayName:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mContent:Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 50
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 52
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryActivity;->getPlusActivity()Lcom/google/api/services/plus/model/Activity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/Activity;->getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/plus/model/ActivityObject;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 56
    .local v0, attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    const-string v3, "article"

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 57
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->processArticleAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V

    goto :goto_22

    .line 58
    :cond_3e
    const-string v3, "photo"

    invoke-virtual {v0}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->getObjectType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->processImageAttachment(Lcom/google/api/services/plus/model/ActivityObjectAttachments;)V

    goto :goto_22

    .line 61
    :cond_4e
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

    .line 66
    .end local v0           #attachment:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    :cond_6b
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectIter:Ljava/util/Iterator;

    .line 67
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_86

    .line 68
    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mImageObjectList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    iput-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->mSelectedImage:Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 70
    :cond_86
    return-void
.end method
