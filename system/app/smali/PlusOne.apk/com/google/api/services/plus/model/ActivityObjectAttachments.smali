.class public final Lcom/google/api/services/plus/model/ActivityObjectAttachments;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObjectAttachments.java"


# instance fields
.field private categories:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field private contentsource:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsContentsource;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "contentsource"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "displayName"
    .end annotation
.end field

.field private embed:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsEmbed;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "embed"
    .end annotation
.end field

.field private fullImage:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsFullImage;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fullImage"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private image:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image"
    .end annotation
.end field

.field private objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "objectType"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/ActivityObjectAttachmentsCategories;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsource()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsContentsource;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->contentsource:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsContentsource;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbed()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsEmbed;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->embed:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsEmbed;

    return-object v0
.end method

.method public getImage()Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->image:Lcom/google/api/services/plus/model/ActivityObjectAttachmentsImage;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->objectType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    .registers 2
    .parameter "displayName"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->displayName:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    .registers 2
    .parameter "url"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->url:Ljava/lang/String;

    .line 102
    return-object p0
.end method
