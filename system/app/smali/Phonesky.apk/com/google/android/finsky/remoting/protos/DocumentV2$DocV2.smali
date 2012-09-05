.class public final Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocV2"
.end annotation


# instance fields
.field private aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private annotations_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

.field private availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

.field private backendDocid_:Ljava/lang/String;

.field private backendId_:I

.field private backendUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation
.end field

.field private containerMetadata_:Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

.field private creator_:Ljava/lang/String;

.field private descriptionHtml_:Ljava/lang/String;

.field private detailsReusable_:Z

.field private detailsUrl_:Ljava/lang/String;

.field private details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

.field private docType_:I

.field private docid_:Ljava/lang/String;

.field private hasAggregateRating:Z

.field private hasAnnotations:Z

.field private hasAvailability:Z

.field private hasBackendDocid:Z

.field private hasBackendId:Z

.field private hasBackendUrl:Z

.field private hasContainerMetadata:Z

.field private hasCreator:Z

.field private hasDescriptionHtml:Z

.field private hasDetails:Z

.field private hasDetailsReusable:Z

.field private hasDetailsUrl:Z

.field private hasDocType:Z

.field private hasDocid:Z

.field private hasPurchaseDetailsUrl:Z

.field private hasReviewsUrl:Z

.field private hasShareUrl:Z

.field private hasTitle:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseDetailsUrl_:Ljava/lang/String;

.field private reviewsUrl_:Ljava/lang/String;

.field private shareUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->docid_:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendDocid_:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->docType_:I

    .line 65
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendId_:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->title_:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->creator_:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->descriptionHtml_:Ljava/lang/String;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->offer_:Ljava/util/List;

    .line 166
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->image_:Ljava/util/List;

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->child_:Ljava/util/List;

    .line 252
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->containerMetadata_:Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    .line 272
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    .line 292
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 312
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->annotations_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    .line 332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->detailsUrl_:Ljava/lang/String;

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->shareUrl_:Ljava/lang/String;

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->reviewsUrl_:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendUrl_:Ljava/lang/String;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->purchaseDetailsUrl_:Ljava/lang/String;

    .line 417
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->detailsReusable_:Z

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 235
    if-nez p1, :cond_8

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 238
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->child_:Ljava/util/List;

    .line 241
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-object p0
.end method

.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 202
    if-nez p1, :cond_8

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->image_:Ljava/util/List;

    .line 208
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 149
    if-nez p1, :cond_8

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->offer_:Ljava/util/List;

    .line 155
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object p0
.end method

.method public getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->annotations_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    return-object v0
.end method

.method public getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    return-object v0
.end method

.method public getBackendDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendDocid_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackendId()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendId_:I

    return v0
.end method

.method public getBackendUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 551
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->cachedSize:I

    if-gez v0, :cond_7

    .line 553
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getSerializedSize()I

    .line 555
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->cachedSize:I

    return v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->containerMetadata_:Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    return-object v0
.end method

.method public getDetailsReusable()Z
    .registers 2

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->detailsReusable_:Z

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocType()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->docType_:I

    return v0
.end method

.method public getDocid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->docid_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getPurchaseDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->purchaseDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->reviewsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 559
    const/4 v2, 0x0

    .line 560
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocid()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 561
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 564
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendDocid()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 565
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendDocid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 568
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocType()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 569
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 572
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendId()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 573
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 576
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 577
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 580
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasCreator()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 581
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getCreator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 584
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDescriptionHtml()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 585
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 588
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getOfferList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 589
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_79

    .line 592
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 593
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 596
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 597
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_a6

    .line 600
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 601
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/16 v3, 0xb

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_c2

    .line 604
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_d6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 605
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 608
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetails()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 609
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 612
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAggregateRating()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 613
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 616
    :cond_109
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 617
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 620
    :cond_11a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsUrl()Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 621
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 624
    :cond_12b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasShareUrl()Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 625
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 628
    :cond_13c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasReviewsUrl()Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 629
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getReviewsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 632
    :cond_14d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendUrl()Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 633
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 636
    :cond_15e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl()Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 637
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getPurchaseDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 640
    :cond_16f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsReusable()Z

    move-result v3

    if-eqz v3, :cond_180

    .line 641
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsReusable()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 644
    :cond_180
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->cachedSize:I

    .line 645
    return v2
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->shareUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateRating()Z
    .registers 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAggregateRating:Z

    return v0
.end method

.method public hasAnnotations()Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations:Z

    return v0
.end method

.method public hasAvailability()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability:Z

    return v0
.end method

.method public hasBackendDocid()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    return v0
.end method

.method public hasBackendId()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendId:Z

    return v0
.end method

.method public hasBackendUrl()Z
    .registers 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    return v0
.end method

.method public hasContainerMetadata()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata:Z

    return v0
.end method

.method public hasCreator()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasCreator:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasDetails()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetails:Z

    return v0
.end method

.method public hasDetailsReusable()Z
    .registers 2

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    return v0
.end method

.method public hasDocType()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocType:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocid:Z

    return v0
.end method

.method public hasPurchaseDetailsUrl()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    return v0
.end method

.method public hasReviewsUrl()Z
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    return v0
.end method

.method public hasShareUrl()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasShareUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 653
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_e0

    .line 657
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    :sswitch_d
    return-object p0

    .line 663
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 667
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 671
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setDocType(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 675
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setBackendId(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 679
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 683
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 687
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 691
    :sswitch_46
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 692
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 693
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 697
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_52
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;-><init>()V

    .line 698
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 699
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 703
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    :sswitch_5e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 704
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 705
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 709
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_6a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 710
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 711
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->addChild(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto :goto_0

    .line 715
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :sswitch_76
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;-><init>()V

    .line 716
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 717
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setContainerMetadata(Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 721
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    :sswitch_83
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;-><init>()V

    .line 722
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 723
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 727
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    :sswitch_90
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 728
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 729
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 733
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_9d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;-><init>()V

    .line 734
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 735
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setAnnotations(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 739
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    :sswitch_aa
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 743
    :sswitch_b3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 747
    :sswitch_bc
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 751
    :sswitch_c5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setBackendUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 755
    :sswitch_ce
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setPurchaseDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 759
    :sswitch_d7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->setDetailsReusable(Z)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    .line 653
    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
        0x4a -> :sswitch_52
        0x52 -> :sswitch_5e
        0x5a -> :sswitch_6a
        0x62 -> :sswitch_76
        0x6a -> :sswitch_83
        0x72 -> :sswitch_90
        0x7a -> :sswitch_9d
        0x82 -> :sswitch_aa
        0x8a -> :sswitch_b3
        0x92 -> :sswitch_bc
        0x9a -> :sswitch_c5
        0xa2 -> :sswitch_ce
        0xa8 -> :sswitch_d7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 296
    if-nez p1, :cond_8

    .line 297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 299
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAggregateRating:Z

    .line 300
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 301
    return-object p0
.end method

.method public setAnnotations(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 316
    if-nez p1, :cond_8

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations:Z

    .line 320
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->annotations_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    .line 321
    return-object p0
.end method

.method public setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 170
    if-nez p1, :cond_8

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability:Z

    .line 174
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 175
    return-object p0
.end method

.method public setBackendDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendDocid_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setBackendId(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendId:Z

    .line 70
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendId_:I

    .line 71
    return-object p0
.end method

.method public setBackendUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    .line 388
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->backendUrl_:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public setContainerMetadata(Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 256
    if-nez p1, :cond_8

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 259
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata:Z

    .line 260
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->containerMetadata_:Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    .line 261
    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasCreator:Z

    .line 104
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->creator_:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    .line 121
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->descriptionHtml_:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 276
    if-nez p1, :cond_8

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetails:Z

    .line 280
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->details_:Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    .line 281
    return-object p0
.end method

.method public setDetailsReusable(Z)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    .line 422
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->detailsReusable_:Z

    .line 423
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    .line 337
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->detailsUrl_:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public setDocType(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocType:Z

    .line 53
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->docType_:I

    .line 54
    return-object p0
.end method

.method public setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocid:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->docid_:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setPurchaseDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    .line 405
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->purchaseDetailsUrl_:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    .line 371
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->reviewsUrl_:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasShareUrl:Z

    .line 354
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->shareUrl_:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .registers 3
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasTitle:Z

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->title_:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 485
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 487
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendDocid()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 488
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendDocid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 490
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocType()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 491
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 493
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendId()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 494
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 496
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 497
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 499
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 500
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 502
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDescriptionHtml()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 503
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 505
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 506
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_6a

    .line 508
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 509
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 511
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 512
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_93

    .line 514
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 515
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_ad

    .line 517
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 518
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 520
    :cond_ce
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetails()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 521
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 523
    :cond_dd
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAggregateRating()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 524
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 526
    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 527
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 529
    :cond_fb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsUrl()Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 530
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 532
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasShareUrl()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 533
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getShareUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 535
    :cond_119
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasReviewsUrl()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 536
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getReviewsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 538
    :cond_128
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasBackendUrl()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 539
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 541
    :cond_137
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl()Z

    move-result v2

    if-eqz v2, :cond_146

    .line 542
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getPurchaseDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 544
    :cond_146
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetailsReusable()Z

    move-result v2

    if-eqz v2, :cond_155

    .line 545
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsReusable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 547
    :cond_155
    return-void
.end method
